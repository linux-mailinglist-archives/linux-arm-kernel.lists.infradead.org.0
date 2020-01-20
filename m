Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35471431DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 19:59:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5wyKTM9elLH8zhDvu7MOI5GNGT7o8oMSR1WM64j2Frk=; b=AS0
	vmHz7SXFNCYvBpkDDVdM5XF6ROl17Ud7yor9LDsM8ovadCnmahYKS0opDG5geqOocGN4F9b6oE7T/
	r5a9drAw/6fE5G5jmH7KwCbXBIuCrETkldZOSieebJPCsoe+OHq1pTgTP/yOLAhKuPHKpGkfsnEMU
	fbPEgzQoZBHrxOcnp5hy1k3sVEhS33JG53KYdUbrEyZ4+GYs4hU4k8YbPA/VDpv+L2nMWEBYkicCW
	mdnUvf7x1KJCws3Mlmh5fKOWhmRQTm1FaXVNbYR660X/lblVlMs/V0mqG/rkjp/uFIUnkMEkSOxi4
	Vz1YbGUQEBtIGpx4JrMZUPlwmUtjISQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itcGr-0006xX-1I; Mon, 20 Jan 2020 18:59:33 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itcGf-0006x1-Pp
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 18:59:23 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 10:59:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,343,1574150400"; 
 d="gz'50?scan'50,208,50";a="374390036"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by orsmga004.jf.intel.com with ESMTP; 20 Jan 2020 10:59:18 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1itcGb-000F5C-Rn; Tue, 21 Jan 2020 02:59:17 +0800
Date: Tue, 21 Jan 2020 02:59:12 +0800
From: kbuild test robot <lkp@intel.com>
To: Yash Shah <yash.shah@sifive.com>
Subject: [arm-platforms:irq/irqchip-next 5/28]
 drivers/gpio/gpio-sifive.c:83:2: error: implicit declaration of function
 'irq_chip_enable_parent'; did you mean 'gpiochip_enable_irq'?
Message-ID: <202001210210.Abjd7Hni%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="5twplswgdtgebqdi"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_105921_874074_0B7A0CFB 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kbuild-all@lists.01.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Marc Zyngier <maz@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Atish Patra <atish.patra@wdc.com>, "Wesley W. Terpstra" <wesley@sifive.com>,
 linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--5twplswgdtgebqdi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git irq/irqchip-next
head:   c7f5b05c27a8501dc5a88bab49b6010e375e91f8
commit: cd2abc8e87fef699d0da106103b65f6ca8dcbfe7 [5/28] gpio/sifive: Add GPIO driver for SiFive SoCs
config: c6x-randconfig-a001-20200121 (attached as .config)
compiler: c6x-elf-gcc (GCC) 7.5.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout cd2abc8e87fef699d0da106103b65f6ca8dcbfe7
        # save the attached .config to linux build tree
        GCC_VERSION=7.5.0 make.cross ARCH=c6x 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_irq_enable':
>> drivers/gpio/gpio-sifive.c:83:2: error: implicit declaration of function 'irq_chip_enable_parent'; did you mean 'gpiochip_enable_irq'? [-Werror=implicit-function-declaration]
     irq_chip_enable_parent(d);
     ^~~~~~~~~~~~~~~~~~~~~~
     gpiochip_enable_irq
   drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_irq_disable':
>> drivers/gpio/gpio-sifive.c:109:2: error: implicit declaration of function 'irq_chip_disable_parent'; did you mean 'gpiochip_disable_irq'? [-Werror=implicit-function-declaration]
     irq_chip_disable_parent(d);
     ^~~~~~~~~~~~~~~~~~~~~~~
     gpiochip_disable_irq
   drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_irq_eoi':
>> drivers/gpio/gpio-sifive.c:128:2: error: implicit declaration of function 'irq_chip_eoi_parent'; did you mean 'irq_chip_pm_put'? [-Werror=implicit-function-declaration]
     irq_chip_eoi_parent(d);
     ^~~~~~~~~~~~~~~~~~~
     irq_chip_pm_put
   drivers/gpio/gpio-sifive.c: At top level:
>> drivers/gpio/gpio-sifive.c:134:14: error: 'irq_chip_mask_parent' undeclared here (not in a function); did you mean 'irq_chip_pm_put'?
     .irq_mask = irq_chip_mask_parent,
                 ^~~~~~~~~~~~~~~~~~~~
                 irq_chip_pm_put
>> drivers/gpio/gpio-sifive.c:135:16: error: 'irq_chip_unmask_parent' undeclared here (not in a function); did you mean 'irq_chip_mask_parent'?
     .irq_unmask = irq_chip_unmask_parent,
                   ^~~~~~~~~~~~~~~~~~~~~~
                   irq_chip_mask_parent
   drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_probe':
>> drivers/gpio/gpio-sifive.c:229:6: error: 'struct gpio_irq_chip' has no member named 'fwnode'
     girq->fwnode = of_node_to_fwnode(node);
         ^~
>> drivers/gpio/gpio-sifive.c:230:8: error: 'struct gpio_irq_chip' has no member named 'parent_domain'; did you mean 'parent_handler'?
     girq->parent_domain = parent;
           ^~~~~~~~~~~~~
           parent_handler
>> drivers/gpio/gpio-sifive.c:231:6: error: 'struct gpio_irq_chip' has no member named 'child_to_parent_hwirq'
     girq->child_to_parent_hwirq = sifive_gpio_child_to_parent_hwirq;
         ^~
   cc1: some warnings being treated as errors

vim +83 drivers/gpio/gpio-sifive.c

    74	
    75	static void sifive_gpio_irq_enable(struct irq_data *d)
    76	{
    77		struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
    78		struct sifive_gpio *chip = gpiochip_get_data(gc);
    79		int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
    80		u32 bit = BIT(offset);
    81		unsigned long flags;
    82	
  > 83		irq_chip_enable_parent(d);
    84	
    85		/* Switch to input */
    86		gc->direction_input(gc, offset);
    87	
    88		spin_lock_irqsave(&gc->bgpio_lock, flags);
    89		/* Clear any sticky pending interrupts */
    90		regmap_write(chip->regs, SIFIVE_GPIO_RISE_IP, bit);
    91		regmap_write(chip->regs, SIFIVE_GPIO_FALL_IP, bit);
    92		regmap_write(chip->regs, SIFIVE_GPIO_HIGH_IP, bit);
    93		regmap_write(chip->regs, SIFIVE_GPIO_LOW_IP, bit);
    94		spin_unlock_irqrestore(&gc->bgpio_lock, flags);
    95	
    96		/* Enable interrupts */
    97		assign_bit(offset, (unsigned long *)&chip->irq_state, 1);
    98		sifive_gpio_set_ie(chip, offset);
    99	}
   100	
   101	static void sifive_gpio_irq_disable(struct irq_data *d)
   102	{
   103		struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
   104		struct sifive_gpio *chip = gpiochip_get_data(gc);
   105		int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
   106	
   107		assign_bit(offset, (unsigned long *)&chip->irq_state, 0);
   108		sifive_gpio_set_ie(chip, offset);
 > 109		irq_chip_disable_parent(d);
   110	}
   111	
   112	static void sifive_gpio_irq_eoi(struct irq_data *d)
   113	{
   114		struct gpio_chip *gc = irq_data_get_irq_chip_data(d);
   115		struct sifive_gpio *chip = gpiochip_get_data(gc);
   116		int offset = irqd_to_hwirq(d) % SIFIVE_GPIO_MAX;
   117		u32 bit = BIT(offset);
   118		unsigned long flags;
   119	
   120		spin_lock_irqsave(&gc->bgpio_lock, flags);
   121		/* Clear all pending interrupts */
   122		regmap_write(chip->regs, SIFIVE_GPIO_RISE_IP, bit);
   123		regmap_write(chip->regs, SIFIVE_GPIO_FALL_IP, bit);
   124		regmap_write(chip->regs, SIFIVE_GPIO_HIGH_IP, bit);
   125		regmap_write(chip->regs, SIFIVE_GPIO_LOW_IP, bit);
   126		spin_unlock_irqrestore(&gc->bgpio_lock, flags);
   127	
 > 128		irq_chip_eoi_parent(d);
   129	}
   130	
   131	static struct irq_chip sifive_gpio_irqchip = {
   132		.name		= "sifive-gpio",
   133		.irq_set_type	= sifive_gpio_irq_set_type,
 > 134		.irq_mask	= irq_chip_mask_parent,
 > 135		.irq_unmask	= irq_chip_unmask_parent,
   136		.irq_enable	= sifive_gpio_irq_enable,
   137		.irq_disable	= sifive_gpio_irq_disable,
   138		.irq_eoi	= sifive_gpio_irq_eoi,
   139	};
   140	
   141	static int sifive_gpio_child_to_parent_hwirq(struct gpio_chip *gc,
   142						     unsigned int child,
   143						     unsigned int child_type,
   144						     unsigned int *parent,
   145						     unsigned int *parent_type)
   146	{
   147		*parent_type = IRQ_TYPE_NONE;
   148		*parent = child + SIFIVE_GPIO_IRQ_OFFSET;
   149		return 0;
   150	}
   151	
   152	static const struct regmap_config sifive_gpio_regmap_config = {
   153		.reg_bits = 32,
   154		.reg_stride = 4,
   155		.val_bits = 32,
   156		.fast_io = true,
   157		.disable_locking = true,
   158	};
   159	
   160	static int sifive_gpio_probe(struct platform_device *pdev)
   161	{
   162		struct device *dev = &pdev->dev;
   163		struct device_node *node = pdev->dev.of_node;
   164		struct device_node *irq_parent;
   165		struct irq_domain *parent;
   166		struct gpio_irq_chip *girq;
   167		struct sifive_gpio *chip;
   168		int ret, ngpio;
   169	
   170		chip = devm_kzalloc(dev, sizeof(*chip), GFP_KERNEL);
   171		if (!chip)
   172			return -ENOMEM;
   173	
   174		chip->base = devm_platform_ioremap_resource(pdev, 0);
   175		if (IS_ERR(chip->base)) {
   176			dev_err(dev, "failed to allocate device memory\n");
   177			return PTR_ERR(chip->base);
   178		}
   179	
   180		chip->regs = devm_regmap_init_mmio(dev, chip->base,
   181						   &sifive_gpio_regmap_config);
   182		if (IS_ERR(chip->regs))
   183			return PTR_ERR(chip->regs);
   184	
   185		ngpio = of_irq_count(node);
   186		if (ngpio >= SIFIVE_GPIO_MAX) {
   187			dev_err(dev, "Too many GPIO interrupts (max=%d)\n",
   188				SIFIVE_GPIO_MAX);
   189			return -ENXIO;
   190		}
   191	
   192		irq_parent = of_irq_find_parent(node);
   193		if (!irq_parent) {
   194			dev_err(dev, "no IRQ parent node\n");
   195			return -ENODEV;
   196		}
   197		parent = irq_find_host(irq_parent);
   198		if (!parent) {
   199			dev_err(dev, "no IRQ parent domain\n");
   200			return -ENODEV;
   201		}
   202	
   203		ret = bgpio_init(&chip->gc, dev, 4,
   204				 chip->base + SIFIVE_GPIO_INPUT_VAL,
   205				 chip->base + SIFIVE_GPIO_OUTPUT_VAL,
   206				 NULL,
   207				 chip->base + SIFIVE_GPIO_OUTPUT_EN,
   208				 chip->base + SIFIVE_GPIO_INPUT_EN,
   209				 0);
   210		if (ret) {
   211			dev_err(dev, "unable to init generic GPIO\n");
   212			return ret;
   213		}
   214	
   215		/* Disable all GPIO interrupts before enabling parent interrupts */
   216		regmap_write(chip->regs, SIFIVE_GPIO_RISE_IE, 0);
   217		regmap_write(chip->regs, SIFIVE_GPIO_FALL_IE, 0);
   218		regmap_write(chip->regs, SIFIVE_GPIO_HIGH_IE, 0);
   219		regmap_write(chip->regs, SIFIVE_GPIO_LOW_IE, 0);
   220		chip->irq_state = 0;
   221	
   222		chip->gc.base = -1;
   223		chip->gc.ngpio = ngpio;
   224		chip->gc.label = dev_name(dev);
   225		chip->gc.parent = dev;
   226		chip->gc.owner = THIS_MODULE;
   227		girq = &chip->gc.irq;
   228		girq->chip = &sifive_gpio_irqchip;
 > 229		girq->fwnode = of_node_to_fwnode(node);
 > 230		girq->parent_domain = parent;
 > 231		girq->child_to_parent_hwirq = sifive_gpio_child_to_parent_hwirq;
   232		girq->handler = handle_bad_irq;
   233		girq->default_type = IRQ_TYPE_NONE;
   234	
   235		platform_set_drvdata(pdev, chip);
   236		return gpiochip_add_data(&chip->gc, chip);
   237	}
   238	

---
0-DAY kernel test infrastructure                 Open Source Technology Center
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation

--5twplswgdtgebqdi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
2Eal+AbvWZ6qK7b/A95WTtEQUAEA

--5twplswgdtgebqdi
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--5twplswgdtgebqdi--

