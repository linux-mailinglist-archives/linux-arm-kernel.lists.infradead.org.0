Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8621F1B90
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 17:01:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=vhiDkFTaSaNhInEJFRRncrl5eO6FlZTfawd2qeQlGC4=; b=fIKBgbhgvXms5O
	cX8tmn4QPWb8JVWM8LZgc/YcOnDtZIRXS1HbeGgGTEvMng1ToxguJI3aPD5eyF2dlGY5q/lbrCt//
	fFNgHFzRI3+LTGBtSA+4GSTLLBnRb5pyNikavBrpEhifLn3EGEb91NoNrjPYfkTdXSpqKf4T5NNra
	Jl2p78ao3K+G86uJwhSkbKX+LTt4HPgwcMrg2baAhUI8z9lg+c3+u7jFxdo4ESQh5gB0EsH94oZ7j
	kOk8DM77qOTkQflZfMZq3SJm/bj7ee3Q6xD9mRfQWG9k84OzBwy/5uTjZMOGNIg9E5BVEGDDyt94p
	Pws0431W8rfPnff+9aTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiJHD-00062C-4V; Mon, 08 Jun 2020 15:01:27 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiJH4-00061R-NP
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 15:01:20 +0000
IronPort-SDR: KVvz+3Tzr6y+9dykawWAhseyKZEewPcWgHRaY04n987/UqePT8rZRbC9XVVqR1Cg7D3qzy+QLV
 QawYqI3LRwRA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Jun 2020 08:01:17 -0700
IronPort-SDR: qk19wMuB5NTP1uhyGuehwhAT0ySMHmi+z3MF99ChcbZ2MX6hiD8ivvEKHQyNffbsw5Uvs3gXmx
 MmWyMS0KOLAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,487,1583222400"; d="scan'208";a="472714449"
Received: from xsang-optiplex-9020.sh.intel.com (HELO xsang-OptiPlex-9020)
 ([10.239.159.140])
 by fmsmga005.fm.intel.com with ESMTP; 08 Jun 2020 08:01:14 -0700
Date: Mon, 8 Jun 2020 23:12:47 +0800
From: kernel test robot <lkp@intel.com>
To: Michael Walle <michael@walle.cc>, linux-gpio@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-hwmon@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-watchdog@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v4 03/11] irqchip: add sl28cpld interrupt controller
 support
Message-ID: <20200608151247.GC31689@xsang-OptiPlex-9020>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604211039.12689-4-michael@walle.cc>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_080118_772492_5931262F 
X-CRM114-Status: UNSURE (   9.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 kbuild-all@lists.01.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michael,

I love your patch! Perhaps something to improve:

[auto build test WARNING on next-20200604]
[cannot apply to gpio/for-next hwmon/hwmon-next ljones-mfd/for-mfd-next shawnguo/for-next v5.7 v5.7-rc7 v5.7-rc6 v5.7]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Michael-Walle/Add-support-for-Kontron-sl28cpld/20200605-051333
base:    d4899e5542c15062cc55cac0ca99025bb64edc61
:::::: branch date: 26 hours ago
:::::: commit date: 26 hours ago
compiler: gcc-9 (Debian 9.3.0-13) 9.3.0

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>


cppcheck warnings: (new ones prefixed by >>)

>> drivers/irqchip/irq-sl28cpld.c:56:10: warning: Checking if unsigned variable 'irq' is less than zero. [unsignedLessThanZero]
    if (irq < 0)
            ^

# https://github.com/0day-ci/linux/commit/b13743c1f1a52746beaa071e5d008c84d59fbd7f
git remote add linux-review https://github.com/0day-ci/linux
git remote update linux-review
git checkout b13743c1f1a52746beaa071e5d008c84d59fbd7f
vim +/irq +56 drivers/irqchip/irq-sl28cpld.c

b13743c1f1a527 Michael Walle 2020-06-04  35  
b13743c1f1a527 Michael Walle 2020-06-04  36  static int sl28cpld_intc_probe(struct platform_device *pdev)
b13743c1f1a527 Michael Walle 2020-06-04  37  {
b13743c1f1a527 Michael Walle 2020-06-04  38  	struct device *dev = &pdev->dev;
b13743c1f1a527 Michael Walle 2020-06-04  39  	struct sl28cpld_intc *irqchip;
b13743c1f1a527 Michael Walle 2020-06-04  40  	unsigned int irq;
b13743c1f1a527 Michael Walle 2020-06-04  41  	u32 base;
b13743c1f1a527 Michael Walle 2020-06-04  42  	int ret;
b13743c1f1a527 Michael Walle 2020-06-04  43  
b13743c1f1a527 Michael Walle 2020-06-04  44  	if (!dev->parent)
b13743c1f1a527 Michael Walle 2020-06-04  45  		return -ENODEV;
b13743c1f1a527 Michael Walle 2020-06-04  46  
b13743c1f1a527 Michael Walle 2020-06-04  47  	irqchip = devm_kzalloc(dev, sizeof(*irqchip), GFP_KERNEL);
b13743c1f1a527 Michael Walle 2020-06-04  48  	if (!irqchip)
b13743c1f1a527 Michael Walle 2020-06-04  49  		return -ENOMEM;
b13743c1f1a527 Michael Walle 2020-06-04  50  
b13743c1f1a527 Michael Walle 2020-06-04  51  	irqchip->regmap = dev_get_regmap(dev->parent, NULL);
b13743c1f1a527 Michael Walle 2020-06-04  52  	if (!irqchip->regmap)
b13743c1f1a527 Michael Walle 2020-06-04  53  		return -ENODEV;
b13743c1f1a527 Michael Walle 2020-06-04  54  
b13743c1f1a527 Michael Walle 2020-06-04  55  	irq = platform_get_irq(pdev, 0);
b13743c1f1a527 Michael Walle 2020-06-04 @56  	if (irq < 0)
b13743c1f1a527 Michael Walle 2020-06-04  57  		return irq;
b13743c1f1a527 Michael Walle 2020-06-04  58  
b13743c1f1a527 Michael Walle 2020-06-04  59  	ret = device_property_read_u32(&pdev->dev, "reg", &base);
b13743c1f1a527 Michael Walle 2020-06-04  60  	if (ret)
b13743c1f1a527 Michael Walle 2020-06-04  61  		return -EINVAL;
b13743c1f1a527 Michael Walle 2020-06-04  62  
b13743c1f1a527 Michael Walle 2020-06-04  63  	irqchip->chip.name = "sl28cpld-intc";
b13743c1f1a527 Michael Walle 2020-06-04  64  	irqchip->chip.irqs = sl28cpld_irqs;
b13743c1f1a527 Michael Walle 2020-06-04  65  	irqchip->chip.num_irqs = ARRAY_SIZE(sl28cpld_irqs);
b13743c1f1a527 Michael Walle 2020-06-04  66  	irqchip->chip.num_regs = 1;
b13743c1f1a527 Michael Walle 2020-06-04  67  	irqchip->chip.status_base = base + INTC_IP;
b13743c1f1a527 Michael Walle 2020-06-04  68  	irqchip->chip.mask_base = base + INTC_IE;
b13743c1f1a527 Michael Walle 2020-06-04  69  	irqchip->chip.mask_invert = true,
b13743c1f1a527 Michael Walle 2020-06-04  70  	irqchip->chip.ack_base = base + INTC_IP;
b13743c1f1a527 Michael Walle 2020-06-04  71  
b13743c1f1a527 Michael Walle 2020-06-04  72  	return devm_regmap_add_irq_chip_np(&pdev->dev, dev->of_node,
b13743c1f1a527 Michael Walle 2020-06-04  73  					   irqchip->regmap, irq,
b13743c1f1a527 Michael Walle 2020-06-04  74  					   IRQF_SHARED | IRQF_ONESHOT, 0,
b13743c1f1a527 Michael Walle 2020-06-04  75  					   &irqchip->chip, &irqchip->irq_data);
b13743c1f1a527 Michael Walle 2020-06-04  76  }
b13743c1f1a527 Michael Walle 2020-06-04  77  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
