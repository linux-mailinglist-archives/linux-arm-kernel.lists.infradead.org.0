Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79DF118324C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 15:05:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j89M+WIqEq/ZKVrT9gidFfeWWzs1WP3WOh78e+6lBA8=; b=Csn
	WUoK9dIi0Qiq/qVzPH1vNmNXbYLmFW0xBSSpydr1NqVjsiw8AqtWxbmuN6zKKYQH/z2nLMPHzK8aY
	aNa7Au9DOcBOP2GAmCH4y/mxFP/NMiW23iEsXBD+2pFUTE9Z1ys4YyjPJXWC2NaoFfrLoJODKaagg
	9sYGnuaZ6y6b2phCIiSi07+0H7beGr4loYJ+BKT6igiFil0FYFw3+KHL1KuLz8eDkJADtsCWxJIXO
	TH79VQoG2093G2qv7v+CDeYjP84Ctmpv34ErVmCFnvnrn+A4NNwKNE7deh0pk3NcoYsA4z0BwqEzP
	z6gyYVSOf3CfKJffFWwq/lIj/0BGubw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCOSG-00034P-4Z; Thu, 12 Mar 2020 14:04:56 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCOS4-00033v-Ua
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 14:04:48 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Mar 2020 07:04:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,545,1574150400"; 
 d="gz'50?scan'50,208,50";a="277811488"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga002.fm.intel.com with ESMTP; 12 Mar 2020 07:04:40 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1jCOS0-0008os-5z; Thu, 12 Mar 2020 22:04:40 +0800
Date: Thu, 12 Mar 2020 22:04:28 +0800
From: kbuild test robot <lkp@intel.com>
To: Michal Simek <monstr@monstr.eu>
Subject: [xlnx:master 48/158] drivers/gpio/gpio-xilinx.c:68:25: error: field
 'mmchip' has incomplete type
Message-ID: <202003122213.kOufGztA%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qMm9M+Fa2AknHoGS"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_070445_176828_4C760C90 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [134.134.136.24 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: kbuild-all@lists.01.org, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Michal,

FYI, the error/warning still remains.

tree:   https://github.com/Xilinx/linux-xlnx master
head:   6d1ffa89fc67781a31f8119d6bf3748ef23bdf9a
commit: 8a0be21c42a2613cc1b9ddb339447b9fe199134b [48/158] Merge remote-tracking branch 'xlnx_rebase_v5.4' into master-next-test
config: i386-randconfig-d002-20200312 (attached as .config)
compiler: gcc-7 (Debian 7.5.0-5) 7.5.0
reproduce:
        git checkout 8a0be21c42a2613cc1b9ddb339447b9fe199134b
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpio/gpio-xilinx.c:68:25: error: field 'mmchip' has incomplete type
     struct of_mm_gpio_chip mmchip;
                            ^~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_get':
>> drivers/gpio/gpio-xilinx.c:94:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror=implicit-function-declaration]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c:94:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
   In file included from arch/x86/include/asm/bitops.h:16:0,
                    from include/linux/bitops.h:26,
                    from drivers/gpio/gpio-xilinx.c:15:
>> include/linux/kernel.h:994:32: error: dereferencing pointer to incomplete type 'struct of_mm_gpio_chip'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
                                   ^~~~~~
   include/linux/compiler.h:330:9: note: in definition of macro '__compiletime_assert'
      if (!(condition))     \
            ^~~~~~~~~
   include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
     _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:994:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
     ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:994:20: note: in expansion of macro '__same_type'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
                       ^~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c:96:6: note: in expansion of macro 'container_of'
         container_of(mm_gc, struct xgpio_instance, mmchip);
         ^~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_set':
   drivers/gpio/gpio-xilinx.c:115:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_set_multiple':
   drivers/gpio/gpio-xilinx.c:147:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_dir_in':
   drivers/gpio/gpio-xilinx.c:187:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_dir_out':
   drivers/gpio/gpio-xilinx.c:218:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_xlate':
   drivers/gpio/gpio-xilinx.c:274:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
>> drivers/gpio/gpio-xilinx.c:277:8: error: 'struct gpio_chip' has no member named 'of_gpio_n_cells'
     if (gc->of_gpio_n_cells == 3 && flags)
           ^~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_to_irq':
   drivers/gpio/gpio-xilinx.c:392:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_remove':
>> drivers/gpio/gpio-xilinx.c:576:2: error: implicit declaration of function 'of_mm_gpiochip_remove'; did you mean 'gpiochip_remove'? [-Werror=implicit-function-declaration]
     of_mm_gpiochip_remove(&chip->mmchip);
     ^~~~~~~~~~~~~~~~~~~~~
     gpiochip_remove
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_of_probe':
>> drivers/gpio/gpio-xilinx.c:676:11: error: implicit declaration of function 'of_mm_gpiochip_add'; did you mean 'gpiochip_add'? [-Werror=implicit-function-declaration]
     status = of_mm_gpiochip_add(np, &chip->mmchip);
              ^~~~~~~~~~~~~~~~~~
              gpiochip_add
   cc1: some warnings being treated as errors
--
   drivers//gpio/gpio-xilinx.c:68:25: error: field 'mmchip' has incomplete type
     struct of_mm_gpio_chip mmchip;
                            ^~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_get':
   drivers//gpio/gpio-xilinx.c:94:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror=implicit-function-declaration]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c:94:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
   In file included from arch/x86/include/asm/bitops.h:16:0,
                    from include/linux/bitops.h:26,
                    from drivers//gpio/gpio-xilinx.c:15:
>> include/linux/kernel.h:994:32: error: dereferencing pointer to incomplete type 'struct of_mm_gpio_chip'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
                                   ^~~~~~
   include/linux/compiler.h:330:9: note: in definition of macro '__compiletime_assert'
      if (!(condition))     \
            ^~~~~~~~~
   include/linux/compiler.h:350:2: note: in expansion of macro '_compiletime_assert'
     _compiletime_assert(condition, msg, __compiletime_assert_, __LINE__)
     ^~~~~~~~~~~~~~~~~~~
   include/linux/build_bug.h:39:37: note: in expansion of macro 'compiletime_assert'
    #define BUILD_BUG_ON_MSG(cond, msg) compiletime_assert(!(cond), msg)
                                        ^~~~~~~~~~~~~~~~~~
   include/linux/kernel.h:994:2: note: in expansion of macro 'BUILD_BUG_ON_MSG'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
     ^~~~~~~~~~~~~~~~
   include/linux/kernel.h:994:20: note: in expansion of macro '__same_type'
     BUILD_BUG_ON_MSG(!__same_type(*(ptr), ((type *)0)->member) && \
                       ^~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c:96:6: note: in expansion of macro 'container_of'
         container_of(mm_gc, struct xgpio_instance, mmchip);
         ^~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_set':
   drivers//gpio/gpio-xilinx.c:115:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_set_multiple':
   drivers//gpio/gpio-xilinx.c:147:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_dir_in':
   drivers//gpio/gpio-xilinx.c:187:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_dir_out':
   drivers//gpio/gpio-xilinx.c:218:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_xlate':
   drivers//gpio/gpio-xilinx.c:274:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c:277:8: error: 'struct gpio_chip' has no member named 'of_gpio_n_cells'
     if (gc->of_gpio_n_cells == 3 && flags)
           ^~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_to_irq':
   drivers//gpio/gpio-xilinx.c:392:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_remove':
   drivers//gpio/gpio-xilinx.c:576:2: error: implicit declaration of function 'of_mm_gpiochip_remove'; did you mean 'gpiochip_remove'? [-Werror=implicit-function-declaration]
     of_mm_gpiochip_remove(&chip->mmchip);
     ^~~~~~~~~~~~~~~~~~~~~
     gpiochip_remove
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_of_probe':
   drivers//gpio/gpio-xilinx.c:676:11: error: implicit declaration of function 'of_mm_gpiochip_add'; did you mean 'gpiochip_add'? [-Werror=implicit-function-declaration]
     status = of_mm_gpiochip_add(np, &chip->mmchip);
              ^~~~~~~~~~~~~~~~~~
              gpiochip_add
   cc1: some warnings being treated as errors

vim +/mmchip +68 drivers/gpio/gpio-xilinx.c

e9a98626baf3b3 drivers/gpio/gpio-xilinx.c John Linn          2012-06-29   52  
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   53  /**
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   54   * struct xgpio_instance - Stores information about GPIO device
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   55   * @mmchip: OF GPIO chip for memory mapped banks
7c9997cc698ba9 drivers/gpio/gpio-xilinx.c Nava kishore Manne 2018-10-16   56   * @mmchip_dual: Pointer to the OF dual gpio chip
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   57   * @gpio_state: GPIO state shadow register
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   58   * @gpio_dir: GPIO direction shadow register
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   59   * @offset: GPIO channel offset
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   60   * @irq_base: GPIO channel irq base address
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   61   * @irq_enable: GPIO irq enable/disable bitfield
184f4682479b34 drivers/gpio/gpio-xilinx.c Shubhrajyoti Datta 2018-05-03   62   * @no_init: No intitialisation at probe
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   63   * @gpio_lock: Lock used for synchronization
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   64   * @irq_domain: irq_domain of the controller
34b6b71b142476 drivers/gpio/gpio-xilinx.c Maulik Jodhani     2017-02-10   65   * @clk: clock resource for this driver
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   66   */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   67  struct xgpio_instance {
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  @68  	struct of_mm_gpio_chip mmchip;
7c9997cc698ba9 drivers/gpio/gpio-xilinx.c Nava kishore Manne 2018-10-16   69  	struct of_mm_gpio_chip *mmchip_dual;
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   70  	u32 gpio_state;
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   71  	u32 gpio_dir;
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   72  	u32 offset;
32161b344f3eb8 drivers/gpio/gpio-xilinx.c Michal Simek       2013-09-03   73  	int irq_base;
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   74  	u32 irq_enable;
184f4682479b34 drivers/gpio/gpio-xilinx.c Shubhrajyoti Datta 2018-05-03   75  	bool no_init;
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29   76  	spinlock_t gpio_lock;
796ae5e3e4ae5f drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   77  	struct irq_domain *irq_domain;
34b6b71b142476 drivers/gpio/gpio-xilinx.c Maulik Jodhani     2017-02-10   78  	struct clk *clk;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   79  };
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   80  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   81  /**
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   82   * xgpio_get - Read the specified signal of the GPIO device.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   83   * @gc:     Pointer to gpio_chip device structure.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   84   * @gpio:   GPIO signal number.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   85   *
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   86   * This function reads the specified signal of the GPIO device.
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   87   *
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   88   * Return:
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   89   * 0 if direction of GPIO signals is set as input otherwise it
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19   90   * returns negative error value.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   91   */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   92  static int xgpio_get(struct gpio_chip *gc, unsigned int gpio)
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12   93  {
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  @94  	struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   95  	struct xgpio_instance *chip =
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   96  	    container_of(mm_gc, struct xgpio_instance, mmchip);
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   97  
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19   98  	void __iomem *regs = mm_gc->regs + chip->offset;
324c11445a4877 drivers/gpio/gpio-xilinx.c Michal Simek       2012-11-27   99  
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29  100  	return !!(xgpio_readreg(regs + XGPIO_DATA_OFFSET) & BIT(gpio));
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  101  }
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  102  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  103  /**
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  104   * xgpio_set - Write the specified signal of the GPIO device.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  105   * @gc:     Pointer to gpio_chip device structure.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  106   * @gpio:   GPIO signal number.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  107   * @val:    Value to be written to specified signal.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  108   *
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  109   * This function writes the specified value in to the specified signal of the
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  110   * GPIO device.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  111   */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  112  static void xgpio_set(struct gpio_chip *gc, unsigned int gpio, int val)
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  113  {
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  114  	unsigned long flags;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  115  	struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  116  	struct xgpio_instance *chip =
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  117  	    container_of(mm_gc, struct xgpio_instance, mmchip);
e9a98626baf3b3 drivers/gpio/gpio-xilinx.c John Linn          2012-06-29  118  	void __iomem *regs = mm_gc->regs;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  119  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  120  	spin_lock_irqsave(&chip->gpio_lock, flags);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  121  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  122  	/* Write to GPIO signal and set its direction to output */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  123  	if (val)
568fae334bb6ea drivers/gpio/gpio-xilinx.c Michal Simek       2013-06-03  124  		chip->gpio_state |= BIT(gpio);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  125  	else
568fae334bb6ea drivers/gpio/gpio-xilinx.c Michal Simek       2013-06-03  126  		chip->gpio_state &= ~BIT(gpio);
e9a98626baf3b3 drivers/gpio/gpio-xilinx.c John Linn          2012-06-29  127  
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19  128  	xgpio_writereg(regs + chip->offset + XGPIO_DATA_OFFSET,
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19  129  							 chip->gpio_state);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  130  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  131  	spin_unlock_irqrestore(&chip->gpio_lock, flags);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  132  }
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  133  
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  134  /**
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  135   * xgpio_set_multiple - Write the specified signals of the GPIO device.
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  136   * @gc:     Pointer to gpio_chip device structure.
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  137   * @mask:   Mask of the GPIOS to modify.
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  138   * @bits:   Value to be wrote on each GPIO
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  139   *
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  140   * This function writes the specified values into the specified signals of the
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  141   * GPIO devices.
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  142   */
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  143  static void xgpio_set_multiple(struct gpio_chip *gc, unsigned long *mask,
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  144  			       unsigned long *bits)
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  145  {
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  146  	unsigned long flags;
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  147  	struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  148  	struct xgpio_instance *chip =
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  149  	    container_of(mm_gc, struct xgpio_instance, mmchip);
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  150  	void __iomem *regs = mm_gc->regs;
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  151  	int i;
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  152  
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  153  	spin_lock_irqsave(&chip->gpio_lock, flags);
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  154  
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  155  	/* Write to GPIO signals */
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  156  	for (i = 0; i < gc->ngpio; i++) {
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  157  		if (*mask == 0)
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  158  			break;
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  159  		if (__test_and_clear_bit(i, mask)) {
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  160  			if (test_bit(i, bits))
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  161  				chip->gpio_state |= BIT(i);
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  162  			else
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  163  				chip->gpio_state &= ~BIT(i);
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  164  		}
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  165  	}
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  166  
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  167  	xgpio_writereg(regs + chip->offset + XGPIO_DATA_OFFSET,
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  168  		       chip->gpio_state);
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  169  
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  170  	spin_unlock_irqrestore(&chip->gpio_lock, flags);
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  171  }
63bcc8b82965b1 drivers/gpio/gpio-xilinx.c Iban Rodriguez     2016-05-13  172  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  173  /**
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  174   * xgpio_dir_in - Set the direction of the specified GPIO signal as input.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  175   * @gc:     Pointer to gpio_chip device structure.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  176   * @gpio:   GPIO signal number.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  177   *
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  178   * This function sets the direction of specified GPIO signal as input.
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19  179   *
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19  180   * Return:
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19  181   * 0 - if direction of GPIO signals is set as input
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19  182   * otherwise it returns negative error value.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  183   */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  184  static int xgpio_dir_in(struct gpio_chip *gc, unsigned int gpio)
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  185  {
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  186  	unsigned long flags;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  187  	struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  188  	struct xgpio_instance *chip =
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  189  	    container_of(mm_gc, struct xgpio_instance, mmchip);
e9a98626baf3b3 drivers/gpio/gpio-xilinx.c John Linn          2012-06-29  190  	void __iomem *regs = mm_gc->regs;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  191  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  192  	spin_lock_irqsave(&chip->gpio_lock, flags);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  193  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  194  	/* Set the GPIO bit in shadow register and set direction as input */
568fae334bb6ea drivers/gpio/gpio-xilinx.c Michal Simek       2013-06-03  195  	chip->gpio_dir |= BIT(gpio);
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19  196  	xgpio_writereg(regs + chip->offset + XGPIO_TRI_OFFSET, chip->gpio_dir);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  197  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  198  	spin_unlock_irqrestore(&chip->gpio_lock, flags);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  199  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  200  	return 0;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  201  }
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  202  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  203  /**
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  204   * xgpio_dir_out - Set the direction of the specified GPIO signal as output.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  205   * @gc:     Pointer to gpio_chip device structure.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  206   * @gpio:   GPIO signal number.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  207   * @val:    Value to be written to specified signal.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  208   *
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19  209   * This function sets the direction of specified GPIO signal as output.
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19  210   *
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19  211   * Return:
8fd1942dec9edd drivers/gpio/gpio-xilinx.c Michal Simek       2013-07-19  212   * If all GPIO signals of GPIO chip is configured as input then it returns
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  213   * error otherwise it returns 0.
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  214   */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  215  static int xgpio_dir_out(struct gpio_chip *gc, unsigned int gpio, int val)
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  216  {
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  217  	unsigned long flags;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12 @218  	struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  219  	struct xgpio_instance *chip =
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  220  	    container_of(mm_gc, struct xgpio_instance, mmchip);
e9a98626baf3b3 drivers/gpio/gpio-xilinx.c John Linn          2012-06-29  221  	void __iomem *regs = mm_gc->regs;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  222  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  223  	spin_lock_irqsave(&chip->gpio_lock, flags);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  224  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  225  	/* Write state of GPIO signal */
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  226  	if (val)
568fae334bb6ea drivers/gpio/gpio-xilinx.c Michal Simek       2013-06-03  227  		chip->gpio_state |= BIT(gpio);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  228  	else
568fae334bb6ea drivers/gpio/gpio-xilinx.c Michal Simek       2013-06-03  229  		chip->gpio_state &= ~BIT(gpio);
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29  230  	xgpio_writereg(regs + chip->offset + XGPIO_DATA_OFFSET,
b23d352f6774a3 drivers/gpio/gpio-xilinx.c Michal Simek       2013-05-29  231  		       chip->gpio_state);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  232  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  233  	/* Clear the GPIO bit in shadow register and set direction as output */
568fae334bb6ea drivers/gpio/gpio-xilinx.c Michal Simek       2013-06-03  234  	chip->gpio_dir &= ~BIT(gpio);
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19  235  	xgpio_writereg(regs + chip->offset + XGPIO_TRI_OFFSET, chip->gpio_dir);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  236  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  237  	spin_unlock_irqrestore(&chip->gpio_lock, flags);
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  238  
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  239  	return 0;
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  240  }
0bcb6069a6e1af drivers/gpio/xilinx_gpio.c John Linn          2008-11-12  241  

:::::: The code at line 68 was first introduced by commit
:::::: 0bcb6069a6e1af5c114a2a8873ec43ada8933596 GPIO: add new Xilinx driver for powerpc

:::::: TO: John Linn <john.linn@xilinx.com>
:::::: CC: Linus Torvalds <torvalds@linux-foundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--qMm9M+Fa2AknHoGS
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
b1vsVZxg91HI94hTb6z/BwlI6h+i6gEA

--qMm9M+Fa2AknHoGS
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--qMm9M+Fa2AknHoGS--

