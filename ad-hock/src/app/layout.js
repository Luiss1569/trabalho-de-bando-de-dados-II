import "./globals.css";
import { Poppins } from "next/font/google";

import FilterProvider from "../contexts/Filters";
import SortProvider from "../contexts/Sorts";
import ColumnProvider from "../contexts/Columns";

const poppins = Poppins({
  subsets: ["latin"],
  weight: ["400", "500", "600", "700", "800"],
});

export const metadata = {
  title: "Create Next App",
  description: "Generated by create next app",
};

export default function RootLayout({ children }) {
  return (
    <html lang="en">
      <body className={poppins.className + " bg-gray-50"}>
        <FilterProvider>
          <ColumnProvider>
            <SortProvider>{children}</SortProvider>
          </ColumnProvider>
        </FilterProvider>
      </body>
    </html>
  );
}
