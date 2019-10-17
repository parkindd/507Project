void drawBackground() {
  background(200);
}

void drawSidebar() {
  stroke(0, 0, 0);
  fill(128, 128, 128);
  rect(500, 0, 200, 500);
  drawNetcuts(countNetcuts());
  if (nodeMode == true) {
    text("Node", 550, 30);
  }
  if (edgeMode == true) {
    text("Edge", 550, 30);
  }
  drawCellList();
}

void drawNodes() {
  for (int i = 0; i < nodes.length; i++) {
    drawNode(nodes[i]);
  }
}

void drawNode(Node node) {
  stroke(0, 0, 0);
  fill(255, 255, 255);
  circle(node.xpos, node.ypos, 50);
  textSize(25);
  fill(0, 0, 0);
  text(node.id, node.xpos-9, node.ypos+8);
}

void drawCursor() {
  stroke(0, 0, 0);
  line(mouseX+5, mouseY, mouseX-5, mouseY);
  line(mouseX, mouseY-5, mouseX, mouseY+5);
}

void drawEdgemaker() {
  if (edgeMode) {
    if (!firstEdge) {
      stroke(255, 0, 0);
      line(firstNode.xpos, firstNode.ypos, mouseX, mouseY);
    }
  }
}

void drawCellList() {
  char [] a = count_partition(partition_x1, true);
  if (a.length>13) {
    a = splice(a, '\n', 13);
  }
  String a_list = new String(a);

  char [] b = count_partition(partition_x1, false);
  if (b.length>13) {
    b = splice(b, '\n', 13);
  }
  String b_list = new String(b);
  textSize(16); 
  text("A: " + a_list, 510, 400);
  text("B: " + b_list, 510, 450);
}

void drawNetcuts(int cuts) {
  textSize(25);
  stroke(0, 0, 0);
  fill(0, 0, 0);
  text("NC: " + str(cuts), 550, 100);
}

void drawConnections() {
  if (nodes.length > 0) {
    for (int i = 0; i < connections.length; i++) {
      stroke(0, 0, 0);
      line(connections[i].node1.xpos,connections[i].node1.ypos,connections[i].node2.xpos,connections[i].node2.ypos);
    }
  }
}

void drawPartition() {
  stroke(255, 0, 0);
  line(partition_x1, 0, partition_x1, 500); //Guarantees that line goes off screen in
  textSize(150);
  fill(128, 128, 128);
  text("A", 75, 300);  //Labels to show the two partitions
  text("B", 325, 300);
}
