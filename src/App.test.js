import React from "react";
import { render } from "@testing-library/react";
import App from "./App";

const text = "Hello !!!";
test("renders learn react link", () => {
  const { getByText } = render(<App />);
  const linkElement = getByText(text);
  expect(linkElement).toBeInTheDocument();
});

test("renders learn react link 2", () => {
  const { getByText } = render(<App />);
  const linkElement = getByText(text);
  expect(linkElement).toBeInTheDocument();
});

test("fix test", () => {
  expect(1).toEqual(1);
});
