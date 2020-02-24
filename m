Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4BF16B30F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 22:46:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=M1z8096r9tnurJKqXqBxV7foE3RrKPCVM8H78EmCQaU=; b=NVp
	QQGE9VZshb5Ff+XTirAOjvH93q8inEY/9CjSyXNFh6LoyatxGqvHj6+24UojlRGesYnSg8ImQ+gH+
	wuGBoCSNaVY7UVo0Hk7j7stXRzwFESlf16rE477T2zPguHqbTkCGzX+EtQMV5bLPYyLNEwZ7y4Lmq
	Y3DOnzceAwwwNRRIXqKM2dEN2BfZFHIjNBysLX2ligH7DaEnz32ua7gDIOXH2gQrrhFIZrfE7ol/I
	ef+9kHvFCWGR7azWxI3IiAsx+tawWfZ3Dt689CF4bpULhFMNkiyt38Z1H7lO3/wAhhbOHw9uKNZQy
	/5xJcwVSL5odkaDH1YIANBHdp5XI0bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6LYQ-0000uS-KU; Mon, 24 Feb 2020 21:46:18 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6LYF-0000tI-L3
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 21:46:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 Feb 2020 13:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,481,1574150400"; 
 d="gz'50?scan'50,208,50";a="237456815"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga003.jf.intel.com with ESMTP; 24 Feb 2020 13:46:03 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1j6LYA-0004Uy-TY; Tue, 25 Feb 2020 05:46:02 +0800
Date: Tue, 25 Feb 2020 05:45:31 +0800
From: kbuild test robot <lkp@intel.com>
To: Michal Simek <monstr@monstr.eu>
Subject: [xlnx:master 48/53] drivers//gpio/gpio-xilinx.c:68:25: error: field
 'mmchip' has incomplete type
Message-ID: <202002250502.3nHjNFnn%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="nFreZHaLTZJo0R7j"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_134607_806366_68E3C1D2 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx master
head:   0bf5e5fe96bf3663f5d47e01d7f8d0e4d737e492
commit: 8a0be21c42a2613cc1b9ddb339447b9fe199134b [48/53] Merge remote-tracking branch 'xlnx_rebase_v5.4' into master-next-test
config: i386-randconfig-f001-20200224 (attached as .config)
compiler: gcc-7 (Debian 7.5.0-5) 7.5.0
reproduce:
        git checkout 8a0be21c42a2613cc1b9ddb339447b9fe199134b
        # save the attached .config to linux build tree
        make ARCH=i386 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All error/warnings (new ones prefixed by >>):

>> drivers//gpio/gpio-xilinx.c:68:25: error: field 'mmchip' has incomplete type
     struct of_mm_gpio_chip mmchip;
                            ^~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_get':
>> drivers//gpio/gpio-xilinx.c:94:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror=implicit-function-declaration]
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
>> drivers//gpio/gpio-xilinx.c:96:6: note: in expansion of macro 'container_of'
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
>> drivers//gpio/gpio-xilinx.c:277:8: error: 'struct gpio_chip' has no member named 'of_gpio_n_cells'
     if (gc->of_gpio_n_cells == 3 && flags)
           ^~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_to_irq':
   drivers//gpio/gpio-xilinx.c:392:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_remove':
>> drivers//gpio/gpio-xilinx.c:576:2: error: implicit declaration of function 'of_mm_gpiochip_remove'; did you mean 'gpiochip_remove'? [-Werror=implicit-function-declaration]
     of_mm_gpiochip_remove(&chip->mmchip);
     ^~~~~~~~~~~~~~~~~~~~~
     gpiochip_remove
   drivers//gpio/gpio-xilinx.c: In function 'xgpio_of_probe':
>> drivers//gpio/gpio-xilinx.c:676:11: error: implicit declaration of function 'of_mm_gpiochip_add'; did you mean 'gpiochip_add'? [-Werror=implicit-function-declaration]
     status = of_mm_gpiochip_add(np, &chip->mmchip);
              ^~~~~~~~~~~~~~~~~~
              gpiochip_add
   cc1: some warnings being treated as errors
--
   drivers/gpio/gpio-xilinx.c:68:25: error: field 'mmchip' has incomplete type
     struct of_mm_gpio_chip mmchip;
                            ^~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_get':
   drivers/gpio/gpio-xilinx.c:94:34: error: implicit declaration of function 'to_of_mm_gpio_chip' [-Werror=implicit-function-declaration]
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
   drivers/gpio/gpio-xilinx.c:277:8: error: 'struct gpio_chip' has no member named 'of_gpio_n_cells'
     if (gc->of_gpio_n_cells == 3 && flags)
           ^~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_to_irq':
   drivers/gpio/gpio-xilinx.c:392:34: warning: initialization makes pointer from integer without a cast [-Wint-conversion]
     struct of_mm_gpio_chip *mm_gc = to_of_mm_gpio_chip(gc);
                                     ^~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_remove':
   drivers/gpio/gpio-xilinx.c:576:2: error: implicit declaration of function 'of_mm_gpiochip_remove'; did you mean 'gpiochip_remove'? [-Werror=implicit-function-declaration]
     of_mm_gpiochip_remove(&chip->mmchip);
     ^~~~~~~~~~~~~~~~~~~~~
     gpiochip_remove
   drivers/gpio/gpio-xilinx.c: In function 'xgpio_of_probe':
   drivers/gpio/gpio-xilinx.c:676:11: error: implicit declaration of function 'of_mm_gpiochip_add'; did you mean 'gpiochip_add'? [-Werror=implicit-function-declaration]
     status = of_mm_gpiochip_add(np, &chip->mmchip);
              ^~~~~~~~~~~~~~~~~~
              gpiochip_add
   cc1: some warnings being treated as errors

vim +/mmchip +68 drivers//gpio/gpio-xilinx.c

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
fb2379e7035e98 drivers/gpio/gpio-xilinx.c Michal Simek       2012-10-19  @96  	    container_of(mm_gc, struct xgpio_instance, mmchip);
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

--nFreZHaLTZJo0R7j
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--nFreZHaLTZJo0R7j
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--nFreZHaLTZJo0R7j--

