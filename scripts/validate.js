/**
        * ?�d�r�Ŧ�O�_?�X�kQQ??
        * @param {String} �r�Ŧ�
        * @return {bool} �O�_?�X�kQQ??
        */
        function isQQ(aQQ) {
            var bValidate = RegExp(/^[1-9][0-9]{4,9}$/).test(aQQ);
            if (bValidate) {
                return true;
            }
            else
                return false;
        }
        /**
        * ?�d�r�Ŧ�O�_?�X�k����??
        * @param {String} �r�Ŧ�
        * @return {bool} �O�_?�X�k����??
        */
        function isPhone(aPhone) {        	
            var bValidate = RegExp(/^[09]{2}[0-9]{8}$/).test(aPhone);
            //var bValidate = RegExp(/^(0|86|17951)?(13[0-9]|15[012356789]|18[0-9]|14[57])[0-9]{8}$/).test(aPhone);
            
            if (bValidate) {
                return true;
            }
            else
                return false;
        }
        /**
        * ?�d�r�Ŧ�O�_?�X�kemail�a�}
        * @param {String} �r�Ŧ�
        * @return {bool} �O�_?�X�kemail�a�}
        */
        function isEmail(aEmail) {
            var bValidate = RegExp(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/).test(aEmail);
            if (bValidate) {
                return true;
            }
            else
                return false;
        }
        /**
        * ?�d�r�Ŧ�O�_�O��?
        * @param {String} �r�Ŧ�
        * @return {bool} �O�_�O��?
        */
        function isInteger(s) {
            var isInteger = RegExp(/^[0-9]+$/);
            return (isInteger.test(s));
        }
        /*
            �P?�r��?��
        */
        function CharMode(iN) {
            if (iN >= 48 && iN <= 57) //?�r  
                return 1;
            if (iN >= 65 && iN <= 90) //�j?�r��  
                return 2;
            if (iN >= 97 && iN <= 122) //�p?  
                return 4;
            else
                return 8; //�S��r��  
        }
        /*
            ??�r��?��
        */
        function bitTotal(num) {
            modes = 0;
            for (i = 0; i < 4; i++) {
                if (num & 1) modes++;
                num >>>= 1;
            }
            return modes;
        }
        /*
            ��^�K?��?��??
        */
        function checkStrong(sPW) {
            if (sPW.length <= 4)
                return 0; //�K?�ӵu  
            Modes = 0;
            for (i = 0; i < sPW.length; i++) {
                //??�C�@?�r�Ū�??�}??�@�@���h�����Ҧ�.  
                Modes |= CharMode(sPW.charCodeAt(i));
            }
            return bitTotal(Modes);
        }