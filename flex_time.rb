class Array

    def quicksort(&prc)

        prc ||= Proc.new { |ele1, ele2| ele1 <=> ele2 }

        return self if self.length <= 1

        pivote = self[0]
        rest = self[1..-1]

        smaller = rest.select { |el| prc.call(el,pivot) == -1}
        larger = rest.select { |el| prc.call(el,pivot) >= 0 }

        smaller.quick(&prc) + [pivot]] + larger.quicksort(&prc)


    end
end

