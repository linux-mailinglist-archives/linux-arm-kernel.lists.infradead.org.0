Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD635156468
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 14:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QGVLrClstS03czkSS4OEbJFADlzavJN5vVc0CB1UQ/s=; b=ieHnvPzBDAuOMB9ssBIwoVJhL0
	4s0KCF2gSn/pn3dl0TlSTvDXD8j8jGuv8Sk+k0zmBWQ/h27wZsPkgXisxll4VfAy79wZEy+IZVTpo
	LHteoZQwV1/geYsJaFNdo9dJIj8RZBK4kvOYEgyjP7xbIvn8vMVX9+Es/bzBuOHmgoIa1hCHPgwt8
	Nqw3BJpXeIQh5rMbbjv4EkZnVtzbp9QXiu1FsQRqs8f6zhkQzovQ6c7JUV6C2UlOVXRjshkqjX6a3
	QfPwqf/ErngwvnqnLq6k1Pq65oOspGsE+dpwu75O3n/RJ1YmtyhHccdaWZodcfpc6K9rXc/pQaFEL
	+NwabNIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0Pm7-0005uz-76; Sat, 08 Feb 2020 13:03:55 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Pli-0005ol-Sd
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 13:03:32 +0000
Received: from localhost.localdomain ([37.4.249.150]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1N4yNG-1jhDG63lHY-010xUE; Sat, 08 Feb 2020 14:03:19 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 2/4] pinctrl: bcm2835: Refactor platform data
Date: Sat,  8 Feb 2020 14:02:53 +0100
Message-Id: <1581166975-22949-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:uGjHYXYsoUjn7jcdElSEse07P4rKkudkAWc75trRLVK7NNyLgPs
 T+EAYDcjQyv2ng5IJ6G1ooPLNRU+i+UqfAgOlvRghOYExKScy9bWF5hEZx4myvVDgukqtgH
 G7JJylsxITYmpHfq4pTH1rsrKJG9AOS45G2eaDoGkjJetfFKCb5ZweFPWLLrTfm3falruzr
 UloZe3+Dimm54S23tCszw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:14f1Up/WEKY=:PT3+SP10fiNt/Lqu2fyEMJ
 pUI3is9ANn/SR8uU9YwW0DTC5Tz4GiNiiizxtMKocQzqCq+rSZfb9wAze4enakuH/s3/7dZiE
 JVT3ZMvX/ZtOA8AXx7fN8ckc7QCk1u7LOtZbocCbDEP9HdI6W4SE7LFChl7Ocmu6dMc5SbDHf
 XSgW/LNEWe2aOuauhIkAlIwnDYA1eDNzdI7q14jezejK4o9Ahj361VDA9STpKg8oVnacQ+uF6
 TDWhyTGm/Bam+gMnMnUF1BI3b2bK5MgR6FFTnLxlLa/Q/tDjsIv7DF8iQXqpQ/cYhqU+cbp6y
 lmYX5KKIue48BSLRtGYB0J8rKs1l75C6IKjhlYNE1C5jE7k2p+9sGiShUA+/N0rTfxIQEC8Js
 w9sTe7U/eGiBaO+wOxZjg0DJm4IqjelNb/40KO8W+AL7ND0AUpT7BYPH87357k9fmyJ4S+HR5
 hkRze67/3Av+R71/m0wzcVA0tJMcrRMh7rO/q8SIVQkhsrWCIuO4xPepVaLCiQgf98dTOchgq
 4v97hwAFDFmedW44cqjn0bYhyZcuU4EaS3qQl3jbJW/cxuH9Ypld+S/uePKIIhnVkB4fZqdId
 hR798M+/mnIbsEBUTj61+Df8CAr2uub2bL/300cmWu35XM9NWY+I6uNSesCNdS/Dy216JR+l2
 CyOVQhdQjDSCRGnT7jqFra9F1xl518QQarYCu7LSD/KF3necKcYPz5aUVsSmWtnpawb6e8AVF
 wTdZQrGwrDoXkVDAyMLtaozQnBPMsuI4XqkcNZoFBXvhjutRJhAX1Z0JA7J5sonetk736e4Zy
 TrtV7sooEN4qnynOEDi5VHDNQnJyttgqlDl4HzEP0dlaQPeXL2ZM28gkiUiKd7MMii3iiPl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_050331_212091_873A374E 
X-CRM114-Status: GOOD (  15.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This prepares the platform data to be easier to extend for more GPIOs.
Except of this there is no functional change.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 57 +++++++++++++++++++++++++++--------
 1 file changed, 44 insertions(+), 13 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 3fc2638..7f0a9c6 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -82,6 +82,7 @@ struct bcm2835_pinctrl {
 
 	struct pinctrl_dev *pctl_dev;
 	struct gpio_chip gpio_chip;
+	struct pinctrl_desc pctl_desc;
 	struct pinctrl_gpio_range gpio_range;
 
 	raw_spinlock_t irq_lock[BCM2835_NUM_BANKS];
@@ -1051,7 +1052,7 @@ static const struct pinconf_ops bcm2711_pinconf_ops = {
 	.pin_config_set = bcm2711_pinconf_set,
 };
 
-static struct pinctrl_desc bcm2835_pinctrl_desc = {
+static const struct pinctrl_desc bcm2835_pinctrl_desc = {
 	.name = MODULE_NAME,
 	.pins = bcm2835_gpio_pins,
 	.npins = ARRAY_SIZE(bcm2835_gpio_pins),
@@ -1061,19 +1062,47 @@ static struct pinctrl_desc bcm2835_pinctrl_desc = {
 	.owner = THIS_MODULE,
 };
 
-static struct pinctrl_gpio_range bcm2835_pinctrl_gpio_range = {
+static const struct pinctrl_desc bcm2711_pinctrl_desc = {
+	.name = MODULE_NAME,
+	.pins = bcm2835_gpio_pins,
+	.npins = ARRAY_SIZE(bcm2835_gpio_pins),
+	.pctlops = &bcm2835_pctl_ops,
+	.pmxops = &bcm2835_pmx_ops,
+	.confops = &bcm2711_pinconf_ops,
+	.owner = THIS_MODULE,
+};
+
+static const struct pinctrl_gpio_range bcm2835_pinctrl_gpio_range = {
 	.name = MODULE_NAME,
 	.npins = BCM2835_NUM_GPIOS,
 };
 
+struct bcm_plat_data {
+	const struct gpio_chip *gpio_chip;
+	const struct pinctrl_desc *pctl_desc;
+	const struct pinctrl_gpio_range *gpio_range;
+};
+
+static const struct bcm_plat_data bcm2835_plat_data = {
+	.gpio_chip = &bcm2835_gpio_chip,
+	.pctl_desc = &bcm2835_pinctrl_desc,
+	.gpio_range = &bcm2835_pinctrl_gpio_range,
+};
+
+static const struct bcm_plat_data bcm2711_plat_data = {
+	.gpio_chip = &bcm2835_gpio_chip,
+	.pctl_desc = &bcm2711_pinctrl_desc,
+	.gpio_range = &bcm2835_pinctrl_gpio_range,
+};
+
 static const struct of_device_id bcm2835_pinctrl_match[] = {
 	{
 		.compatible = "brcm,bcm2835-gpio",
-		.data = &bcm2835_pinconf_ops,
+		.data = &bcm2835_plat_data,
 	},
 	{
 		.compatible = "brcm,bcm2711-gpio",
-		.data = &bcm2711_pinconf_ops,
+		.data = &bcm2711_plat_data,
 	},
 	{}
 };
@@ -1082,6 +1111,7 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
+	const struct bcm_plat_data *pdata;
 	struct bcm2835_pinctrl *pc;
 	struct gpio_irq_chip *girq;
 	struct resource iomem;
@@ -1108,7 +1138,13 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	if (IS_ERR(pc->base))
 		return PTR_ERR(pc->base);
 
-	pc->gpio_chip = bcm2835_gpio_chip;
+	match = of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
+	if (!match)
+		return -EINVAL;
+
+	pdata = match->data;
+
+	pc->gpio_chip = *pdata->gpio_chip;
 	pc->gpio_chip.parent = dev;
 	pc->gpio_chip.of_node = np;
 
@@ -1159,19 +1195,14 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	match = of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
-	if (match) {
-		bcm2835_pinctrl_desc.confops =
-			(const struct pinconf_ops *)match->data;
-	}
-
-	pc->pctl_dev = devm_pinctrl_register(dev, &bcm2835_pinctrl_desc, pc);
+	pc->pctl_desc = *pdata->pctl_desc;
+	pc->pctl_dev = devm_pinctrl_register(dev, &pc->pctl_desc, pc);
 	if (IS_ERR(pc->pctl_dev)) {
 		gpiochip_remove(&pc->gpio_chip);
 		return PTR_ERR(pc->pctl_dev);
 	}
 
-	pc->gpio_range = bcm2835_pinctrl_gpio_range;
+	pc->gpio_range = *pdata->gpio_range;
 	pc->gpio_range.base = pc->gpio_chip.base;
 	pc->gpio_range.gc = &pc->gpio_chip;
 	pinctrl_add_gpio_range(pc->pctl_dev, &pc->gpio_range);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
