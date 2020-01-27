Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9375414A9A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 19:16:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zl633DOCOOf5sEmBHgEEmRs3zIL6xCyAbRmQHF/5twU=; b=BBcc5MYWdf7TBI7GF8KvMnZTXP
	vwSri+G4Xg+SfQ0x1b4jtd8AwTGL1tYuyopmjQCdIt42APOehPRUttV2YvvQ9suKeJoNobnLxLcBr
	zvQYgSNAwt21baLbOyQi0HJWd2BzeIpRw419olVPp37cUGLwE4hpNIv0peCB/6uhTDXyN4YPrXKmW
	P7fz/gK+8yj6qz6VZeILYNYiE5DjbkwPSIoD8X/NZhppDvPNCkO3tmD4Z1UQDhMoZNooqIWcGRKIh
	umTkq58tIYGNOTccLaKvcW8Elm9ZHK7ssai4uhpgfmL0tId3saEqMuJzSccyqF6ENztpgOra2qWKS
	cVX67vMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw8wA-0008UK-QS; Mon, 27 Jan 2020 18:16:38 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw8vJ-0007pN-PH
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 18:15:48 +0000
Received: from localhost.localdomain ([37.4.249.152]) by
 mrelayeu.kundenserver.de (mreue010 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1MdvVu-1jTpmM3Tfy-00b6tv; Mon, 27 Jan 2020 19:15:40 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [RFC PATCH 2/4] pinctrl: bcm2835: Refactor platform data
Date: Mon, 27 Jan 2020 19:15:06 +0100
Message-Id: <1580148908-4863-3-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
References: <1580148908-4863-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:VruPCfmk9mM3xiAf4DG/6aoXzCy4UDEsxr5SC+GDP4iRdgXZX29
 MFCNoD27qBqcSq1LjDl1+NGtNJ3+c1twK3aKoFUdWC05HKxzJPuizB6xDkWYoCIsLzUx75H
 HiA0SBUlw/LN+bHlzoczcUQzu+qFL0N3XAwKX9HxzpPzSFwl1lRDgLB6suBZjq4VTFrw6QP
 xptjL6VDFkgqBb05XjOfA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:f2Tec5CMQUc=:niiLUGM7C+e//7RIjf+wMq
 wLFHtqjv1ynGaEgrTEwtjnWYqI/r72m4A6fdxd06jGD2Uyp8tpT//zGZgAMatxGP2tJCKPrs8
 H50QvZYrkhyeWT1e/b/43xnEBFcJ26c6kKbSdwNEaPpeQ2pSXrJ+fWFg4rgyr2kyb0a6fODwi
 glMJlRcbMvRam6bDw57BliG4DhkYgMl0WB+vE3ztB/xJo+NhTzPKfEpK10WVhz1N+MdOE8gPM
 Ed3HaUcq1KYSZvZRKVS8rOnqLfx2aLsXvrn+YKEvs5xzV1w8QpRWEIYZcLOwKvY23kJzQG9eq
 MIIG4Or4qhijuBXiW2q6mwUPh2z1lLVKOHwzEHdCAb+4bDlzo8dAxIoc40B0H6ZxVg4/5LHFJ
 La0bD0qwfKTemPRPvdCrUGRjVY38hB0RBGSXLrWBfL0PkTsuaEeRZvCVEY80YYfxmOaIKNCZI
 KTZTGrVvZWUrz2smObUJlIIzYVznL4L5rWMZjNaLpWxwyNpAg0eDTqVYFmDT+qIxNN4PgQhRy
 tSUqMKFEgm7xT/YoZD4jdOe5rJJ0dEmy9DgnlvjmjzCBjXAGdPFrFO9kKivLmdSPaubJ7DdcC
 tcrGiqydtDkturFJvTsQYH+PmTQvbe4oBqgNIRZo8f1X5RgRS0fFLp3LA8/+FKUufNNqrLMao
 +41TZ2JeFAJBnB9x8z5VMa7EVYvu5Vv7a6UPbF0i7yUPlzFy4OB0vDTMzjH7rW414iarBNvIy
 QDypz6a5PwveJ4Fe9ATD7LILVISmcIjM7r29JF4LAmFeYo0lVn6a4kM0PnIwd/wQsax1Rp9/Y
 J1/TI8TQICVBl0N9CsxgAPc+X49YqHbFXpoqbsqqK9BIb3Bj+cJJ6Owe9HtjZLb6ifZLnyA
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_101546_108760_0514F0F4 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
index 3fc2638..ffd069a 100644
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
@@ -1083,6 +1112,7 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
 	struct bcm2835_pinctrl *pc;
+	struct bcm_plat_data *pdata;
 	struct gpio_irq_chip *girq;
 	struct resource iomem;
 	int err, i;
@@ -1108,7 +1138,13 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	if (IS_ERR(pc->base))
 		return PTR_ERR(pc->base);
 
-	pc->gpio_chip = bcm2835_gpio_chip;
+	match = of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
+	if (!match)
+		return -EINVAL;
+
+	pdata = (struct bcm_plat_data *)match->data;
+
+	memcpy(&pc->gpio_chip, pdata->gpio_chip, sizeof(pc->gpio_chip));
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
+	memcpy(&pc->pctl_desc, pdata->pctl_desc, sizeof(pc->pctl_desc));
+	pc->pctl_dev = devm_pinctrl_register(dev, &pc->pctl_desc, pc);
 	if (IS_ERR(pc->pctl_dev)) {
 		gpiochip_remove(&pc->gpio_chip);
 		return PTR_ERR(pc->pctl_dev);
 	}
 
-	pc->gpio_range = bcm2835_pinctrl_gpio_range;
+	memcpy(&pc->gpio_range, pdata->gpio_range, sizeof(pc->gpio_range));
 	pc->gpio_range.base = pc->gpio_chip.base;
 	pc->gpio_range.gc = &pc->gpio_chip;
 	pinctrl_add_gpio_range(pc->pctl_dev, &pc->gpio_range);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
