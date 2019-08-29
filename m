Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE1F6A109A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 06:53:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=b5t7rhSWk71UY1O6rDPt1hQC6nly7/H6wZ1LTxxXk2E=; b=IX9pbo6CE96tHL6c4x4nlpoUxV
	1OqcBxOZxiC3oOsj3+sCN/3nzDxTtQ3YkvuRBbAu0rL9WleMKcnKoRj4utrMY0zWDi1m7RtBmgHpd
	HYy1TPoLzCaZC0WDm2gv6vv0bnYhsa4ontPskk0uTJinBFF0+4yfX7KigV+iZqqQNOhr7PQqeNg/8
	TAQN7RX7lTAD1cKxx/ViFuJ4Zyxg6omciuafVOjWpUZgvY6iryfgmBAVMHJD/UicQqJSxzOz/HVH2
	1sRNc/lkyAVSU/gP/aYYXHskkUnCKGDtxXTxCc390hcPWFuSG2mn9yddCo2VNfeu+Tajqy8asJIP9
	cAd85b+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3CQm-0007E5-ST; Thu, 29 Aug 2019 04:53:08 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3CQQ-00073b-Ud
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 04:52:48 +0000
Received: by mail-pg1-x544.google.com with SMTP id m3so891921pgv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 21:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GCLG1kPIx0rd7IagBsMwUhjowBuwlFvCVnng2CH8svk=;
 b=iKOn7hOCaIVZcrOHWCkfmLWfviTEu1RKAsOiFZfxyMt/vMfup9dOzSqBWboJpzURDo
 kvaWv0lM7jAHKqbx1S+8dPVj3zbhb0WZjyRS7LxTvU6JJcTAebPqVozuPKBtEoqsPhyO
 aKn2Pz2LEIxU3otPcQUqJA2Bne5qs9MPMo7NI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GCLG1kPIx0rd7IagBsMwUhjowBuwlFvCVnng2CH8svk=;
 b=gk5MU4sw+/XQQYXYcjsteUButtLZvsokf1HwU5Jvx7Y4y9AjCHujixt+CahbifrGM2
 8ZzzLQD7JZLddzQ7ulbjaJYV4YN8/qdKbJ+ChGNiGffNqDAaSRf7ZwwAXQ9xeaxoWUkF
 je5KMCaZzhrrOnMab6pbAkOAGqJAIsCyoRG0Lgb8LaFZ6rQlZnoLaFRmaMdjhUCwfQ0h
 hOuRoQQp733lZR9EooMjeH5J9yePEa4QxoK4QbIa+jTzj/U6p64ckze54xIjATbQotlf
 8Oo4FjWL0jhOzx9bj4Y6nYbMdt50P13uNZC2UrTqDaGoVhII+tm+B7X0FqGV8d55wg7V
 oDEg==
X-Gm-Message-State: APjAAAV1xmwbWuyKwxaignF8eFL1POJSl1ZZ4tSJ8w1G57A3kaIONgx9
 ETfTodXkd9a2LHL7yTRA+Eqlyw==
X-Google-Smtp-Source: APXvYqyxQlRKRlCbsPkEMA0E+QjPu7/dCEJkZn515O5MtBCgQcoVOkdpI/NmCIYx7StMQBqgclFALg==
X-Received: by 2002:a62:3644:: with SMTP id d65mr9034834pfa.128.1567054363603; 
 Wed, 28 Aug 2019 21:52:43 -0700 (PDT)
Received: from mannams-OptiPlex-7010.dhcp.broadcom.net ([192.19.234.250])
 by smtp.gmail.com with ESMTPSA id j1sm1131440pfh.174.2019.08.28.21.52.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 21:52:42 -0700 (PDT)
From: Srinath Mannam <srinath.mannam@broadcom.com>
To: Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 1/2] gpio: iproc-gpio: Fix incorrect pinconf configurations
Date: Thu, 29 Aug 2019 10:22:27 +0530
Message-Id: <1567054348-19685-2-git-send-email-srinath.mannam@broadcom.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
References: <1567054348-19685-1-git-send-email-srinath.mannam@broadcom.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_215246_992040_555575F4 
X-CRM114-Status: GOOD (  17.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Li Jin <li.jin@broadcom.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Li Jin <li.jin@broadcom.com>

Fix drive strength for AON/CRMU controller; fix pull-up/down setting
for CCM/CDRU controller.

Fixes: 616043d58a89 ("pinctrl: Rename gpio driver from cygnus to iproc")
Signed-off-by: Li Jin <li.jin@broadcom.com>
---
 drivers/pinctrl/bcm/pinctrl-iproc-gpio.c | 96 +++++++++++++++++++++++++-------
 1 file changed, 77 insertions(+), 19 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
index b70058c..20b9864 100644
--- a/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
+++ b/drivers/pinctrl/bcm/pinctrl-iproc-gpio.c
@@ -54,8 +54,12 @@
 /* drive strength control for ASIU GPIO */
 #define IPROC_GPIO_ASIU_DRV0_CTRL_OFFSET 0x58
 
-/* drive strength control for CCM/CRMU (AON) GPIO */
-#define IPROC_GPIO_DRV0_CTRL_OFFSET  0x00
+/* pinconf for CCM GPIO */
+#define IPROC_GPIO_PULL_DN_OFFSET   0x10
+#define IPROC_GPIO_PULL_UP_OFFSET   0x14
+
+/* pinconf for CRMU(aon) GPIO and CCM GPIO*/
+#define IPROC_GPIO_DRV_CTRL_OFFSET  0x00
 
 #define GPIO_BANK_SIZE 0x200
 #define NGPIOS_PER_BANK 32
@@ -76,6 +80,12 @@ enum iproc_pinconf_param {
 	IPROC_PINCON_MAX,
 };
 
+enum iproc_pinconf_ctrl_type {
+	IOCTRL_TYPE_AON = 1,
+	IOCTRL_TYPE_CDRU,
+	IOCTRL_TYPE_INVALID,
+};
+
 /*
  * Iproc GPIO core
  *
@@ -100,6 +110,7 @@ struct iproc_gpio {
 
 	void __iomem *base;
 	void __iomem *io_ctrl;
+	enum iproc_pinconf_ctrl_type io_ctrl_type;
 
 	raw_spinlock_t lock;
 
@@ -461,20 +472,44 @@ static const struct pinctrl_ops iproc_pctrl_ops = {
 static int iproc_gpio_set_pull(struct iproc_gpio *chip, unsigned gpio,
 				bool disable, bool pull_up)
 {
+	void __iomem *base;
 	unsigned long flags;
+	unsigned int shift;
+	u32 val_1, val_2;
 
 	raw_spin_lock_irqsave(&chip->lock, flags);
-
-	if (disable) {
-		iproc_set_bit(chip, IPROC_GPIO_RES_EN_OFFSET, gpio, false);
+	if (chip->io_ctrl_type == IOCTRL_TYPE_CDRU) {
+		base = chip->io_ctrl;
+		shift = IPROC_GPIO_SHIFT(gpio);
+
+		val_1 = readl(base + IPROC_GPIO_PULL_UP_OFFSET);
+		val_2 = readl(base + IPROC_GPIO_PULL_DN_OFFSET);
+		if (disable) {
+			/* no pull-up or pull-down */
+			val_1 &= ~BIT(shift);
+			val_2 &= ~BIT(shift);
+		} else if (pull_up) {
+			val_1 |= BIT(shift);
+			val_2 &= ~BIT(shift);
+		} else {
+			val_1 &= ~BIT(shift);
+			val_2 |= BIT(shift);
+		}
+		writel(val_1, base + IPROC_GPIO_PULL_UP_OFFSET);
+		writel(val_2, base + IPROC_GPIO_PULL_DN_OFFSET);
 	} else {
-		iproc_set_bit(chip, IPROC_GPIO_PAD_RES_OFFSET, gpio,
-			       pull_up);
-		iproc_set_bit(chip, IPROC_GPIO_RES_EN_OFFSET, gpio, true);
+		if (disable) {
+			iproc_set_bit(chip, IPROC_GPIO_RES_EN_OFFSET, gpio,
+				      false);
+		} else {
+			iproc_set_bit(chip, IPROC_GPIO_PAD_RES_OFFSET, gpio,
+				      pull_up);
+			iproc_set_bit(chip, IPROC_GPIO_RES_EN_OFFSET, gpio,
+				      true);
+		}
 	}
 
 	raw_spin_unlock_irqrestore(&chip->lock, flags);
-
 	dev_dbg(chip->dev, "gpio:%u set pullup:%d\n", gpio, pull_up);
 
 	return 0;
@@ -483,14 +518,35 @@ static int iproc_gpio_set_pull(struct iproc_gpio *chip, unsigned gpio,
 static void iproc_gpio_get_pull(struct iproc_gpio *chip, unsigned gpio,
 				 bool *disable, bool *pull_up)
 {
+	void __iomem *base;
 	unsigned long flags;
+	unsigned int shift;
+	u32 val_1, val_2;
 
 	raw_spin_lock_irqsave(&chip->lock, flags);
-	*disable = !iproc_get_bit(chip, IPROC_GPIO_RES_EN_OFFSET, gpio);
-	*pull_up = iproc_get_bit(chip, IPROC_GPIO_PAD_RES_OFFSET, gpio);
+	if (chip->io_ctrl_type == IOCTRL_TYPE_CDRU) {
+		base = chip->io_ctrl;
+		shift = IPROC_GPIO_SHIFT(gpio);
+
+		val_1 = readl(base + IPROC_GPIO_PULL_UP_OFFSET) & BIT(shift);
+		val_2 = readl(base + IPROC_GPIO_PULL_DN_OFFSET) & BIT(shift);
+
+		*pull_up = val_1 ? true : false;
+		*disable = (val_1 | val_2) ? false : true;
+
+	} else {
+		*disable = !iproc_get_bit(chip, IPROC_GPIO_RES_EN_OFFSET, gpio);
+		*pull_up = iproc_get_bit(chip, IPROC_GPIO_PAD_RES_OFFSET, gpio);
+	}
 	raw_spin_unlock_irqrestore(&chip->lock, flags);
 }
 
+#define DRV_STRENGTH_OFFSET(gpio, bit, type)  ((type) == IOCTRL_TYPE_AON ? \
+	((2 - (bit)) * 4 + IPROC_GPIO_DRV_CTRL_OFFSET) : \
+	((type) == IOCTRL_TYPE_CDRU) ? \
+	((bit) * 4 + IPROC_GPIO_DRV_CTRL_OFFSET) : \
+	((bit) * 4 + IPROC_GPIO_REG(gpio, IPROC_GPIO_ASIU_DRV0_CTRL_OFFSET)))
+
 static int iproc_gpio_set_strength(struct iproc_gpio *chip, unsigned gpio,
 				    unsigned strength)
 {
@@ -505,11 +561,8 @@ static int iproc_gpio_set_strength(struct iproc_gpio *chip, unsigned gpio,
 
 	if (chip->io_ctrl) {
 		base = chip->io_ctrl;
-		offset = IPROC_GPIO_DRV0_CTRL_OFFSET;
 	} else {
 		base = chip->base;
-		offset = IPROC_GPIO_REG(gpio,
-					 IPROC_GPIO_ASIU_DRV0_CTRL_OFFSET);
 	}
 
 	shift = IPROC_GPIO_SHIFT(gpio);
@@ -520,11 +573,11 @@ static int iproc_gpio_set_strength(struct iproc_gpio *chip, unsigned gpio,
 	raw_spin_lock_irqsave(&chip->lock, flags);
 	strength = (strength / 2) - 1;
 	for (i = 0; i < GPIO_DRV_STRENGTH_BITS; i++) {
+		offset = DRV_STRENGTH_OFFSET(gpio, i, chip->io_ctrl_type);
 		val = readl(base + offset);
 		val &= ~BIT(shift);
 		val |= ((strength >> i) & 0x1) << shift;
 		writel(val, base + offset);
-		offset += 4;
 	}
 	raw_spin_unlock_irqrestore(&chip->lock, flags);
 
@@ -541,11 +594,8 @@ static int iproc_gpio_get_strength(struct iproc_gpio *chip, unsigned gpio,
 
 	if (chip->io_ctrl) {
 		base = chip->io_ctrl;
-		offset = IPROC_GPIO_DRV0_CTRL_OFFSET;
 	} else {
 		base = chip->base;
-		offset = IPROC_GPIO_REG(gpio,
-					 IPROC_GPIO_ASIU_DRV0_CTRL_OFFSET);
 	}
 
 	shift = IPROC_GPIO_SHIFT(gpio);
@@ -553,10 +603,10 @@ static int iproc_gpio_get_strength(struct iproc_gpio *chip, unsigned gpio,
 	raw_spin_lock_irqsave(&chip->lock, flags);
 	*strength = 0;
 	for (i = 0; i < GPIO_DRV_STRENGTH_BITS; i++) {
+		offset = DRV_STRENGTH_OFFSET(gpio, i, chip->io_ctrl_type);
 		val = readl(base + offset) & BIT(shift);
 		val >>= shift;
 		*strength += (val << i);
-		offset += 4;
 	}
 
 	/* convert to mA */
@@ -734,6 +784,7 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 	u32 ngpios, pinconf_disable_mask = 0;
 	int irq, ret;
 	bool no_pinconf = false;
+	enum iproc_pinconf_ctrl_type io_ctrl_type = IOCTRL_TYPE_INVALID;
 
 	/* NSP does not support drive strength config */
 	if (of_device_is_compatible(dev->of_node, "brcm,iproc-nsp-gpio"))
@@ -764,8 +815,15 @@ static int iproc_gpio_probe(struct platform_device *pdev)
 			dev_err(dev, "unable to map I/O memory\n");
 			return PTR_ERR(chip->io_ctrl);
 		}
+		if (of_device_is_compatible(dev->of_node,
+					    "brcm,cygnus-ccm-gpio"))
+			io_ctrl_type = IOCTRL_TYPE_CDRU;
+		else
+			io_ctrl_type = IOCTRL_TYPE_AON;
 	}
 
+	chip->io_ctrl_type = io_ctrl_type;
+
 	if (of_property_read_u32(dev->of_node, "ngpios", &ngpios)) {
 		dev_err(&pdev->dev, "missing ngpios DT property\n");
 		return -ENODEV;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
