Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D84143302
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 21:45:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EUOuY9luXZy1RRlL7YseDzAB0Rp1tUJEvkt71QC4ZtQ=; b=BcS
	CZpYp5ZaD77q4iCSQPnKGYET184uU8ENiNGlh3Qm5ZGXmQSKW7Cknb/B5fsNvwY6kLlmzRz1afeE3
	kzbJRPT31WJXf7Zi7EwbDeuVQfR3toxGRQPC0QxWbOsurOAVnvOArOyaEOCeOgOPLQ/MJlN+YO5hu
	J7TU8ZqdUZ8XkCCIDQcVzonL3puaYBks4FP8JO+DLjSOJUwfAOieasWMDFyxTtVt4NX2QVN3IpY+u
	6/9FwpIhecLeBfG7efXgugRvckjTUTZ9dqwGuGf/h6WSpUj6I5MIPGkP+CHDREaSZF8fW2yTH6LDg
	51g0x4z4s/wUWY8yEb50W2u5i/23gvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdv8-0005g8-WD; Mon, 20 Jan 2020 20:45:15 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdut-0005bU-Im
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 20:45:01 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Jan 2020 12:44:54 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,343,1574150400"; 
 d="gz'50?scan'50,208,50";a="426855547"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
 by fmsmga006.fm.intel.com with ESMTP; 20 Jan 2020 12:44:52 -0800
Received: from kbuild by lkp-server01 with local (Exim 4.89)
 (envelope-from <lkp@intel.com>)
 id 1itdum-0007Ha-Fn; Tue, 21 Jan 2020 04:44:52 +0800
Date: Tue, 21 Jan 2020 04:43:57 +0800
From: kbuild test robot <lkp@intel.com>
To: Yash Shah <yash.shah@sifive.com>
Subject: [arm-platforms:irq/irqchip-next 5/28]
 drivers/gpio/gpio-sifive.c:83:2: error: implicit declaration of function
 'irq_chip_enable_parent'
Message-ID: <202001210451.llP8IxDX%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rpy4qlgvuq4ljdri"
Content-Disposition: inline
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_124459_654281_FBDBF9AB 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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


--rpy4qlgvuq4ljdri
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/maz/arm-platforms.git irq/irqchip-next
head:   c7f5b05c27a8501dc5a88bab49b6010e375e91f8
commit: cd2abc8e87fef699d0da106103b65f6ca8dcbfe7 [5/28] gpio/sifive: Add GPIO driver for SiFive SoCs
config: nds32-randconfig-a001-20200121 (attached as .config)
compiler: nds32le-linux-gcc (GCC) 9.2.0
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout cd2abc8e87fef699d0da106103b65f6ca8dcbfe7
        # save the attached .config to linux build tree
        GCC_VERSION=9.2.0 make.cross ARCH=nds32 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_irq_enable':
>> drivers/gpio/gpio-sifive.c:83:2: error: implicit declaration of function 'irq_chip_enable_parent' [-Werror=implicit-function-declaration]
      83 |  irq_chip_enable_parent(d);
         |  ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_irq_disable':
>> drivers/gpio/gpio-sifive.c:109:2: error: implicit declaration of function 'irq_chip_disable_parent' [-Werror=implicit-function-declaration]
     109 |  irq_chip_disable_parent(d);
         |  ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_irq_eoi':
   drivers/gpio/gpio-sifive.c:128:2: error: implicit declaration of function 'irq_chip_eoi_parent'; did you mean 'irq_chip_pm_put'? [-Werror=implicit-function-declaration]
     128 |  irq_chip_eoi_parent(d);
         |  ^~~~~~~~~~~~~~~~~~~
         |  irq_chip_pm_put
   drivers/gpio/gpio-sifive.c: At top level:
>> drivers/gpio/gpio-sifive.c:134:14: error: 'irq_chip_mask_parent' undeclared here (not in a function)
     134 |  .irq_mask = irq_chip_mask_parent,
         |              ^~~~~~~~~~~~~~~~~~~~
>> drivers/gpio/gpio-sifive.c:135:16: error: 'irq_chip_unmask_parent' undeclared here (not in a function)
     135 |  .irq_unmask = irq_chip_unmask_parent,
         |                ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpio/gpio-sifive.c: In function 'sifive_gpio_probe':
   drivers/gpio/gpio-sifive.c:229:6: error: 'struct gpio_irq_chip' has no member named 'fwnode'
     229 |  girq->fwnode = of_node_to_fwnode(node);
         |      ^~
>> drivers/gpio/gpio-sifive.c:230:6: error: 'struct gpio_irq_chip' has no member named 'parent_domain'
     230 |  girq->parent_domain = parent;
         |      ^~
   drivers/gpio/gpio-sifive.c:231:6: error: 'struct gpio_irq_chip' has no member named 'child_to_parent_hwirq'
     231 |  girq->child_to_parent_hwirq = sifive_gpio_child_to_parent_hwirq;
         |      ^~
   cc1: some warnings being treated as errors

vim +/irq_chip_enable_parent +83 drivers/gpio/gpio-sifive.c

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
   128		irq_chip_eoi_parent(d);
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
   229		girq->fwnode = of_node_to_fwnode(node);
 > 230		girq->parent_domain = parent;
   231		girq->child_to_parent_hwirq = sifive_gpio_child_to_parent_hwirq;
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

--rpy4qlgvuq4ljdri
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AQA=

--rpy4qlgvuq4ljdri
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--rpy4qlgvuq4ljdri--

