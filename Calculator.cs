namespace CalculatorLib
{
    public class Calculator
    {
        int Add()
        {
            throw new NotImplementedException();
        }
        int Multiply()
        {
            throw new NotImplementedException();
        }

 GHT-003_Development_Added_SquareRoot_Function
        int Square_Root()
        {
            throw new NotImplementedException();
        }


        int Divide(int number1, int number2)
        {
            int result = (number1 / number2);
        }


        //Adding subtract function
        int Subtract()
        {
            throw new NotImplementedException();
        }

 Development_merge
    
        //Function to determine Cube root of a number
        public double FindCubeRoot(double number)
        {
            return Math.Pow(number, 1 / 3.0);
        }
    }


}