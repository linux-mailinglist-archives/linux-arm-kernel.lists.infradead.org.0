Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0321715646B
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  8 Feb 2020 14:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=037e82hlnxep2shUWL7Uezr52iZ/aFaACGvDnzKHrrY=; b=Ewcix0JmSZ2lxoiyQNr8GCVbEH
	CTUP1VUaWmgS8OE1NR/v95gJSXQmAG9gDr6zxqKCQ2OOX9s6qPFBsl8Gni0cifzmADc2leyQH3/wx
	98yHwYvz4e3hf127Ig2f5VWBJp+uB8lJw7iFhRFx41iDCgmf+KZ+ePtRruD/omQx0VhfPNJHc8Jo8
	GS0PnvjXG+hX8PnZzQNWQ9QhoupzJEvthuJHH9rcVQjQNUpRpFnbvqh8Kxy20UNZvY5fzipcvpZbA
	TOyBYh3eDxNYDp+ob38qTdqlkOmA2WHJafc8xKgk6CKGspN6IXv7ehJeSEfpK+wJbnS1qnxGXFTTo
	ivLkTwZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j0PmV-0006Og-7a; Sat, 08 Feb 2020 13:04:19 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j0Plk-0005on-NC
 for linux-arm-kernel@lists.infradead.org; Sat, 08 Feb 2020 13:03:34 +0000
Received: from localhost.localdomain ([37.4.249.150]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.183]) with ESMTPSA (Nemesis)
 id 1MZk1p-1j3Sim1Nfr-00WpfZ; Sat, 08 Feb 2020 14:03:19 +0100
From: Stefan Wahren <stefan.wahren@i2se.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Florian Fainelli <f.fainelli@gmail.com>,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Scott Branden <sbranden@broadcom.com>
Subject: [PATCH 3/4] pinctrl: bcm2835: Add support for all GPIOs on BCM2711
Date: Sat,  8 Feb 2020 14:02:54 +0100
Message-Id: <1581166975-22949-4-git-send-email-stefan.wahren@i2se.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
References: <1581166975-22949-1-git-send-email-stefan.wahren@i2se.com>
X-Provags-ID: V03:K1:wJFZVLd4LAH2KKoFnRbTI1bwj8OU+7/wamfwGoKhMQQPyMbTOI3
 Urk+o+hSYh/HrZhSS88Ip91Bpn2nja8i4que++w4tNYBdQ+jhBq5nfvgqlVvBEhgIIKuMyT
 dJx+QbZOHFxMI3sXHaoI/BG4+/9CnYEwpOhsqGAzZjZCYzFPyo0di+p7XXLzE7+iooe35h+
 0QfYeMfjL8muoKCtbjZAw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:yZaTjOcI+Uc=:lwSaM89T+roULt9OSy5ZGc
 o0IsdafnsqzMJJnnvFl+yvn7K0/H2FP9RwGlbV4dOdfgwAfouwl37ZTzQ3qGfu+0SNYhKRAAS
 i9BqkVQZfbDx8DyOvZrUYLviexZ+T8ygjXRxVHgFdprKjlDkD+LX8XuvK1yqsS45zuo10IIjJ
 d5ovesXPP7eZd2r1N6KK0iLYs8fLDpfJYSARNbqgMRG+IZMmfyFdcZagtTJm7G7A9+ie7W0es
 iOVrsgBwN4xWf4HGlAh3QxHbNqwO7lRstMboZoxgbEF1+GSaXjltweUcOaU2molrweVqI6VYj
 GphWmTklhZjpZgvs1+64mXUMRUc5fpmKJnkt9u1Hg/y7+j+cEq0GfrhZ71CNjsgau5MWvR/Nj
 Os7nL+71Jk2FBrZj88ZZpdgIP3DD7CmgPBng9LZaFa7QR5q9eMoKBd1mzqpcxrSUURzGYVCDD
 ied1/pYHs3v/JrEQV52/UNFTgOrd4sLAHz4csVuw2NUAH9mpJUTWBkVR+ye5fEkcCq4p2CunA
 fYdLE+TqCEkBj+8YOIfwGWZTIZWyrmGzn7NIEIMYPEBV0VIfq0Vkvf4JJaHAue2eSTd6XuLJS
 Tdlhxx2tIcm+rjfwivm0jYvpFgCp02JUcrT5SScRjbxm8zKlIvJk+RlqavmwdVGmzcDj7Bm4e
 BJoA61svGPMtfCoaO63DiobbPrYwKlaxvJF4bFxJG05Bzz3tBmsWiL7knF+WzOXPxme0r1Och
 8U+Z6Hdlm25/q7DlqPwLsWVJiJb7UR2SdL7JcWdB+szrBxEr9EB/OVNgTH/gFfR0RKlJoYtKi
 +V29XnEq1UcvIZcuX/cy2kzS72q/quk3vjLrMSlTb7JmsL8lWdRnqNwTjyKmUbJL2JlrzDT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200208_050333_048833_F42E0C03 
X-CRM114-Status: GOOD (  17.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.72.192.74 listed in wl.mailspike.net]
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

The BCM2711 supports 58 GPIOs. So extend pinctrl and GPIOs accordingly.

Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 54 +++++++++++++++++++++++++++--------
 1 file changed, 42 insertions(+), 12 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 7f0a9c6..061e70e 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -37,6 +37,7 @@
 
 #define MODULE_NAME "pinctrl-bcm2835"
 #define BCM2835_NUM_GPIOS 54
+#define BCM2711_NUM_GPIOS 58
 #define BCM2835_NUM_BANKS 2
 #define BCM2835_NUM_IRQS  3
 
@@ -78,7 +79,7 @@ struct bcm2835_pinctrl {
 
 	/* note: locking assumes each bank will have its own unsigned long */
 	unsigned long enabled_irq_map[BCM2835_NUM_BANKS];
-	unsigned int irq_type[BCM2835_NUM_GPIOS];
+	unsigned int irq_type[BCM2711_NUM_GPIOS];
 
 	struct pinctrl_dev *pctl_dev;
 	struct gpio_chip gpio_chip;
@@ -145,6 +146,10 @@ static struct pinctrl_pin_desc bcm2835_gpio_pins[] = {
 	BCM2835_GPIO_PIN(51),
 	BCM2835_GPIO_PIN(52),
 	BCM2835_GPIO_PIN(53),
+	BCM2835_GPIO_PIN(54),
+	BCM2835_GPIO_PIN(55),
+	BCM2835_GPIO_PIN(56),
+	BCM2835_GPIO_PIN(57),
 };
 
 /* one pin per group */
@@ -203,6 +208,10 @@ static const char * const bcm2835_gpio_groups[] = {
 	"gpio51",
 	"gpio52",
 	"gpio53",
+	"gpio54",
+	"gpio55",
+	"gpio56",
+	"gpio57",
 };
 
 enum bcm2835_fsel {
@@ -353,6 +362,22 @@ static const struct gpio_chip bcm2835_gpio_chip = {
 	.can_sleep = false,
 };
 
+static const struct gpio_chip bcm2711_gpio_chip = {
+	.label = "pinctrl-bcm2711",
+	.owner = THIS_MODULE,
+	.request = gpiochip_generic_request,
+	.free = gpiochip_generic_free,
+	.direction_input = bcm2835_gpio_direction_input,
+	.direction_output = bcm2835_gpio_direction_output,
+	.get_direction = bcm2835_gpio_get_direction,
+	.get = bcm2835_gpio_get,
+	.set = bcm2835_gpio_set,
+	.set_config = gpiochip_generic_config,
+	.base = -1,
+	.ngpio = BCM2711_NUM_GPIOS,
+	.can_sleep = false,
+};
+
 static void bcm2835_gpio_irq_handle_bank(struct bcm2835_pinctrl *pc,
 					 unsigned int bank, u32 mask)
 {
@@ -399,7 +424,7 @@ static void bcm2835_gpio_irq_handler(struct irq_desc *desc)
 		bcm2835_gpio_irq_handle_bank(pc, 0, 0xf0000000);
 		bcm2835_gpio_irq_handle_bank(pc, 1, 0x00003fff);
 		break;
-	case 2: /* IRQ2 covers GPIOs 46-53 */
+	case 2: /* IRQ2 covers GPIOs 46-57 */
 		bcm2835_gpio_irq_handle_bank(pc, 1, 0x003fc000);
 		break;
 	}
@@ -618,7 +643,7 @@ static struct irq_chip bcm2835_gpio_irq_chip = {
 
 static int bcm2835_pctl_get_groups_count(struct pinctrl_dev *pctldev)
 {
-	return ARRAY_SIZE(bcm2835_gpio_groups);
+	return BCM2835_NUM_GPIOS;
 }
 
 static const char *bcm2835_pctl_get_group_name(struct pinctrl_dev *pctldev,
@@ -776,7 +801,7 @@ static int bcm2835_pctl_dt_node_to_map(struct pinctrl_dev *pctldev,
 		err = of_property_read_u32_index(np, "brcm,pins", i, &pin);
 		if (err)
 			goto out;
-		if (pin >= ARRAY_SIZE(bcm2835_gpio_pins)) {
+		if (pin >= pc->pctl_desc.npins) {
 			dev_err(pc->dev, "%pOF: invalid brcm,pins value %d\n",
 				np, pin);
 			err = -EINVAL;
@@ -852,7 +877,7 @@ static int bcm2835_pmx_get_function_groups(struct pinctrl_dev *pctldev,
 {
 	/* every pin can do every function */
 	*groups = bcm2835_gpio_groups;
-	*num_groups = ARRAY_SIZE(bcm2835_gpio_groups);
+	*num_groups = BCM2835_NUM_GPIOS;
 
 	return 0;
 }
@@ -1055,7 +1080,7 @@ static const struct pinconf_ops bcm2711_pinconf_ops = {
 static const struct pinctrl_desc bcm2835_pinctrl_desc = {
 	.name = MODULE_NAME,
 	.pins = bcm2835_gpio_pins,
-	.npins = ARRAY_SIZE(bcm2835_gpio_pins),
+	.npins = BCM2835_NUM_GPIOS,
 	.pctlops = &bcm2835_pctl_ops,
 	.pmxops = &bcm2835_pmx_ops,
 	.confops = &bcm2835_pinconf_ops,
@@ -1063,9 +1088,9 @@ static const struct pinctrl_desc bcm2835_pinctrl_desc = {
 };
 
 static const struct pinctrl_desc bcm2711_pinctrl_desc = {
-	.name = MODULE_NAME,
+	.name = "pinctrl-bcm2711",
 	.pins = bcm2835_gpio_pins,
-	.npins = ARRAY_SIZE(bcm2835_gpio_pins),
+	.npins = BCM2711_NUM_GPIOS,
 	.pctlops = &bcm2835_pctl_ops,
 	.pmxops = &bcm2835_pmx_ops,
 	.confops = &bcm2711_pinconf_ops,
@@ -1077,6 +1102,11 @@ static const struct pinctrl_gpio_range bcm2835_pinctrl_gpio_range = {
 	.npins = BCM2835_NUM_GPIOS,
 };
 
+static const struct pinctrl_gpio_range bcm2711_pinctrl_gpio_range = {
+	.name = "pinctrl-bcm2711",
+	.npins = BCM2711_NUM_GPIOS,
+};
+
 struct bcm_plat_data {
 	const struct gpio_chip *gpio_chip;
 	const struct pinctrl_desc *pctl_desc;
@@ -1090,9 +1120,9 @@ static const struct bcm_plat_data bcm2835_plat_data = {
 };
 
 static const struct bcm_plat_data bcm2711_plat_data = {
-	.gpio_chip = &bcm2835_gpio_chip,
+	.gpio_chip = &bcm2711_gpio_chip,
 	.pctl_desc = &bcm2711_pinctrl_desc,
-	.gpio_range = &bcm2835_pinctrl_gpio_range,
+	.gpio_range = &bcm2711_pinctrl_gpio_range,
 };
 
 static const struct of_device_id bcm2835_pinctrl_match[] = {
@@ -1118,8 +1148,8 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	int err, i;
 	const struct of_device_id *match;
 
-	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_pins) != BCM2835_NUM_GPIOS);
-	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_groups) != BCM2835_NUM_GPIOS);
+	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_pins) != BCM2711_NUM_GPIOS);
+	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_groups) != BCM2711_NUM_GPIOS);
 
 	pc = devm_kzalloc(dev, sizeof(*pc), GFP_KERNEL);
 	if (!pc)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
