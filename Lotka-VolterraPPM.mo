model Model1
  Modelica.Blocks.Math.Gain gain1(k = alpha) annotation(Placement(visible = true, transformation(origin = {-90, 65}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = beta) annotation(Placement(visible = true, transformation(origin = {-90, 25}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1(k = 1, y_start = 40) annotation(Placement(visible = true, transformation(origin = {27.209, 42.813}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator2(k = 1, y_start = 9) annotation(Placement(visible = true, transformation(origin = {48.015, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  constant Real alpha = 0.1;
  constant Real beta = 0.02;
  constant Real gamma = 0.1;
  constant Real delta = 0.01;
  Modelica.Blocks.Math.Add add1(k1 = 1, k2 = -1) annotation(Placement(visible = true, transformation(origin = {-35, 45}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2(k2 = -1) annotation(Placement(visible = true, transformation(origin = {-10, -35}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain3(k = delta) annotation(Placement(visible = true, transformation(origin = {-85, -17.205}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain4(k = gamma) annotation(Placement(visible = true, transformation(origin = {-85, -60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product1 annotation(Placement(visible = true, transformation(origin = {-35, 5}, extent = {{-10, -10}, {10, 10}}, rotation = -180)));
equation
  connect(add2.y, integrator2.u) annotation(Line(visible = true, origin = {18.508, -35}, points = {{-17.508, 0}, {17.508, 0}}, color = {0, 0, 127}));
  connect(add1.y, integrator1.u) annotation(Line(visible = true, origin = {-11.698, 43.907}, points = {{-12.302, 1.093}, {-7.302, 1.093}, {-7.302, -1.093}, {26.906, -1.093}}, color = {0, 0, 127}));
  connect(gain2.y, add1.u2) annotation(Line(visible = true, origin = {-68.5, 32}, points = {{-10.5, -7}, {-5.5, -7}, {-5.5, 7}, {21.5, 7}}, color = {0, 0, 127}));
  connect(gain1.y, add1.u1) annotation(Line(visible = true, origin = {-68.5, 58}, points = {{-10.5, 7}, {-5.5, 7}, {-5.5, -7}, {21.5, -7}}, color = {0, 0, 127}));
  connect(gain4.y, add2.u2) annotation(Line(visible = true, origin = {-58.5, -50.5}, points = {{-15.5, -9.5}, {-10.5, -9.5}, {-10.5, 9.5}, {36.5, 9.5}}, color = {0, 0, 127}));
  connect(gain3.y, add2.u1) annotation(Line(visible = true, origin = {-58.5, -23.103}, points = {{-15.5, 5.897}, {-10.5, 5.897}, {-10.5, -5.897}, {36.5, -5.897}}, color = {0, 0, 127}));
  connect(integrator2.y, product1.u1) annotation(Line(visible = true, origin = {41.011, -18}, points = {{18.004, -17}, {23.004, -17}, {23.004, 17}, {-64.011, 17}}, color = {0, 0, 127}));
  connect(integrator1.y, product1.u2) annotation(Line(visible = true, origin = {25.406, 26.907}, points = {{12.802, 15.907}, {17.802, 15.907}, {17.802, -15.907}, {-48.406, -15.907}}, color = {0, 0, 127}));
  connect(product1.y, gain2.u) annotation(Line(visible = true, origin = {-90.5, 15}, points = {{44.5, -10}, {-16.5, -10}, {-16.5, 10}, {-11.5, 10}}, color = {0, 0, 127}));
  connect(product1.y, gain3.u) annotation(Line(visible = true, origin = {-86.75, -6.103}, points = {{40.75, 11.103}, {-15.25, 11.103}, {-15.25, -11.103}, {-10.25, -11.103}}, color = {0, 0, 127}));
  connect(integrator2.y, gain4.u) annotation(Line(visible = true, origin = {-22.997, -60}, points = {{82.013, 25}, {87.997, 25}, {87.997, -25}, {-92.003, -25}, {-92.003, 0}, {-74.003, 0}}, color = {0, 0, 127}));
  connect(integrator1.y, gain1.u) annotation(Line(visible = true, origin = {-29.777, 63.413}, points = {{67.986, -20.6}, {84.777, -20.6}, {84.777, 19.013}, {-82.658, 19.013}, {-82.658, 1.587}, {-72.223, 1.587}}, color = {0, 0, 127}));
  annotation(experiment(StopTime = 30), uses(Modelica(version = "4.0.0")), Diagram(coordinateSystem(extent = {{-150, -90}, {150, 90}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Model1;
