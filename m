Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E5286F986
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 08:24:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u9FJSNwO0ToNETzV5ipIz1O6ex8pvzvlwL+WWcg4iaQ=; b=dhYLRosbb5T6l0HVR+Bbazbzqt
	cLmhMv606dq+4sAK5Lh9iGK8u6pBeImBGsJg1riTeTvHUYSy9uNYRInngH7ErlrAnH+xUg5dIe4et
	2V/K1pPEvoTulCceoNc6mqBEZJ5VVula+vVUT0yh5dr+gTH3p+jbXp3oS4t5H1DgRzZ157Dr6Y4Od
	A7uM4lofWjjAx3vmRPnELos7Fmxj696Wb8TUw/TvvUHBdYnG9AI2r33bzX2NG/VT6rG2jVKaCIiH7
	0ScRZI+r6RL3nmMyvlE8kUT3TFS0XZwBob7YUTWVEYmQg889aXMnoCKm/bjLF8c3qtbv5FRabCIxf
	PIi2LNGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpRkd-0002k1-Mq; Mon, 22 Jul 2019 06:24:47 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpRjm-0002HP-JQ; Mon, 22 Jul 2019 06:23:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563776617;
 bh=z18lzCFKYvrFVHVAu6EYGbfVShdzolb5W7gum8yzyTw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=PMdr0Xs/BDri+k3ruvU8E9f/PTmshqM6ZbByqU7iwcn/Dy/nXqizy9VAvnSXbE4Ld
 c6S6qO0zAsM7gJtOwYOMZCW7Dh+aFAwq1bwafDg0YjXgeO5SL0JwHJzx2vLHyPFzbU
 5jn8oAn2ygsdSWwzmq8YDJGK5e8hvYoUtBOn4OfM=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.98]) by mail.gmx.com (mrgmx102
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0M7UUd-1ib4501cDX-00xMvP; Mon, 22
 Jul 2019 08:23:37 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Matthias Brugger <mbrugger@suse.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>
Subject: [PATCH 12/18] pinctrl: bcm2835: Add support for BCM2711 pull-up
 functionality
Date: Mon, 22 Jul 2019 08:23:25 +0200
Message-Id: <1563776607-8368-3-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
References: <1563776607-8368-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:u2uoodlY+pN+Yt0/KqiyLNu3m1qW+77cDAglaFHSsNtyIg4arci
 xpcOOoDUd4oUqtApolU0S4riyjvuP7IazUsOruOL4gmvzzQAreVjN9S6bt8Y46SwuQoK0Jd
 EBDWaBdxfUT1ChZRjSanjF2HfBTYO/cdkiLVN4RGvAav0FNdVPzP+MJ4aOHm1O5jjhNXkeI
 r5HE7wDU/vL5e8wDpPH+g==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:AveKtSrtcwk=:/pzazmDMPlHZNGUm/hg4oZ
 RfPB3NsoyQuPW1rNfOrOraTHLYBGEGpo2ie8+mlZUIeCqcfXVZ58OF8sKwMyvp/dNYUAfnUJQ
 yzLs+tR/REyMsUJZtHvd+HAJMOQ0920zlJkxUPTxBk+mAWaCQfGJRtRcjTWDCjE5KrrrN9icO
 M5ghuBmnGrVpga9pF7ViO5HDzLq0DeA/UVU5dTAxX5ia+s9GnC71ycKrVsDh2MP0h8d7pmM8f
 DyYL8n0/ioWgoUyolIQ7S6KT+sDGxzrPBB70rXZtiSQH4Le7WPA+XS6l5RfGCwWLo/VfXhogh
 xGuH5uH5I1bwWQZS/lDIugk7BZndIxbGUUX440kRawtl/D3eyq9fqVUH6+vBkE8iaCBwm9jfm
 orj92IXKnVadIVdZ5rkIXsaEo31dJtmsAAwxKauT0gGo/wGWr3qTzXtmZJ+JSP86qG86Xaalg
 IIsTgYbW+rDueI0JZRob1PivQJMwZBZZFeuyTNtmu9pNtDuSHqmcDH+RB70EBa5MsxeuvaEiJ
 Vu0Kct6C8uh5O/rg9865chVRaJ3jvvCx9w6WhGhjUjW5Utn4Mkv6v6h2oNM+kQoER1pX/upY9
 BtLe9LbVauRG5chUP1v8xQ3DEHUrr4Y7FnytzINlVcJozUT/Of4LW+OomvOICYm5OQZopmHEG
 LobIZaV5B1KW6KqX7ZBZ/GFLDbpHVL5ym7nKlHRDJm07oMXVSvG/SKc+H7uxoRwQyuHwUNov0
 1Kao4EwrejKk0tHRbzWtXqX/2mjRajuzN8SCSHbxGVi5e6J8F+Uiv7eCeYJSaFftVcpOmyzA3
 peIniS1wwXbIwqqTh/P+bQ+4y5PI6uVqx15Ybui2mxcpmAAKjqm18a0PDSpSnCgGZzG/NTD00
 CK1FUG534G4vdRQqDWMUH/ig0wFPpigA+4/bhccyAzCXgNGx5iW8eQe79OICo9aHbevl6cd4Y
 egwG3kZmUSJANPU/XJ+1J5Wyk/MMczykf86G7QJwBS2ayvQsCn9WkyNLxvHQJyyvDxJZ+jJnr
 hH4tQ/kOqMDkjgOnjFE1ooBF8PoYt/Ig+NNcjH70tcZ0W/N0Y+PPqd0DqXZb73nUV1LtQnq5X
 ODTtmZY0TNorNQ=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_232354_933420_B862D5B7 
X-CRM114-Status: GOOD (  18.88  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-mmc@vger.kernel.org, linux-gpio@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Stefan Wahren <wahrenst@gmx.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The BCM2711 has a new way of selecting the pull-up/pull-down setting
for a GPIO pin. The registers used for the BCM2835, GP_PUD and
GP_PUDCLKn0, are no longer connected. A new set of registers,
GP_GPIO_PUP_PDN_CNTRL_REGx must be used. This commit will add
a new compatible string "brcm,bcm2711-gpio" and the kernel
driver will use it to select which method is used to select
pull-up/pull-down.

This patch based on a patch by Al Cooper which was intended for the
BCM7211. This is a bugfixed and improved version.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 105 ++++++++++++++++++++++++++++++++--
 1 file changed, 100 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 183d1ff..a493205 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -57,15 +57,24 @@
 #define GPAFEN0		0x88	/* Pin Async Falling Edge Detect */
 #define GPPUD		0x94	/* Pin Pull-up/down Enable */
 #define GPPUDCLK0	0x98	/* Pin Pull-up/down Enable Clock */
+#define GP_GPIO_PUP_PDN_CNTRL_REG0 0xe4 /* 2711 Pin Pull-up/down select */

 #define FSEL_REG(p)		(GPFSEL0 + (((p) / 10) * 4))
 #define FSEL_SHIFT(p)		(((p) % 10) * 3)
 #define GPIO_REG_OFFSET(p)	((p) / 32)
 #define GPIO_REG_SHIFT(p)	((p) % 32)

+#define PUD_2711_MASK		0x3
+#define PUD_2711_REG_OFFSET(p)	((p) / 16)
+#define PUD_2711_REG_SHIFT(p)	(((p) % 16) * 2)
+
 /* argument: bcm2835_pinconf_pull */
 #define BCM2835_PINCONF_PARAM_PULL	(PIN_CONFIG_END + 1)

+#define BCM2711_PULL_NONE	0x0
+#define BCM2711_PULL_UP		0x1
+#define BCM2711_PULL_DOWN	0x2
+
 struct bcm2835_pinctrl {
 	struct device *dev;
 	void __iomem *base;
@@ -975,6 +984,77 @@ static const struct pinconf_ops bcm2835_pinconf_ops = {
 	.pin_config_set = bcm2835_pinconf_set,
 };

+static void bcm2711_pull_config_set(struct bcm2835_pinctrl *pc,
+				    unsigned int pin, unsigned int arg)
+{
+	u32 shifter;
+	u32 value;
+	u32 off;
+
+	off = PUD_2711_REG_OFFSET(pin);
+	shifter = PUD_2711_REG_SHIFT(pin);
+
+	value = bcm2835_gpio_rd(pc, GP_GPIO_PUP_PDN_CNTRL_REG0 + (off * 4));
+	value &= ~(PUD_2711_MASK << shifter);
+	value |= (arg << shifter);
+	bcm2835_gpio_wr(pc, GP_GPIO_PUP_PDN_CNTRL_REG0 + (off * 4), value);
+}
+
+static int bcm2711_pinconf_set(struct pinctrl_dev *pctldev,
+			       unsigned int pin, unsigned long *configs,
+			       unsigned int num_configs)
+{
+	struct bcm2835_pinctrl *pc = pinctrl_dev_get_drvdata(pctldev);
+	u32 param, arg;
+	int i;
+
+	for (i = 0; i < num_configs; i++) {
+		param = pinconf_to_config_param(configs[i]);
+		arg = pinconf_to_config_argument(configs[i]);
+
+		switch (param) {
+		/* convert legacy brcm,pull */
+		case BCM2835_PINCONF_PARAM_PULL:
+			if (arg == BCM2835_PUD_UP)
+				arg = BCM2711_PULL_UP;
+			else if (arg == BCM2835_PUD_DOWN)
+				arg = BCM2711_PULL_DOWN;
+			else
+				arg = BCM2711_PULL_NONE;
+
+			bcm2711_pull_config_set(pc, pin, arg);
+			break;
+
+		/* Set pull generic bindings */
+		case PIN_CONFIG_BIAS_DISABLE:
+			bcm2711_pull_config_set(pc, pin, BCM2711_PULL_NONE);
+			break;
+		case PIN_CONFIG_BIAS_PULL_DOWN:
+			bcm2711_pull_config_set(pc, pin, BCM2711_PULL_DOWN);
+			break;
+		case PIN_CONFIG_BIAS_PULL_UP:
+			bcm2711_pull_config_set(pc, pin, BCM2711_PULL_UP);
+			break;
+
+		/* Set output-high or output-low */
+		case PIN_CONFIG_OUTPUT:
+			bcm2835_gpio_set_bit(pc, arg ? GPSET0 : GPCLR0, pin);
+			break;
+
+		default:
+			return -ENOTSUPP;
+		}
+	} /* for each config */
+
+	return 0;
+}
+
+static const struct pinconf_ops bcm2711_pinconf_ops = {
+	.is_generic = true,
+	.pin_config_get = bcm2835_pinconf_get,
+	.pin_config_set = bcm2711_pinconf_set,
+};
+
 static struct pinctrl_desc bcm2835_pinctrl_desc = {
 	.name = MODULE_NAME,
 	.pins = bcm2835_gpio_pins,
@@ -990,6 +1070,18 @@ static struct pinctrl_gpio_range bcm2835_pinctrl_gpio_range = {
 	.npins = BCM2835_NUM_GPIOS,
 };

+static const struct of_device_id bcm2835_pinctrl_match[] = {
+	{
+		.compatible = "brcm,bcm2835-gpio",
+		.data = &bcm2835_pinconf_ops,
+	},
+	{
+		.compatible = "brcm,bcm2711-gpio",
+		.data = &bcm2711_pinconf_ops,
+	},
+	{}
+};
+
 static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -997,6 +1089,8 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	struct bcm2835_pinctrl *pc;
 	struct resource iomem;
 	int err, i;
+	const struct of_device_id *match;
+
 	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_pins) != BCM2835_NUM_GPIOS);
 	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_groups) != BCM2835_NUM_GPIOS);

@@ -1073,6 +1167,12 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 					     bcm2835_gpio_irq_handler);
 	}

+	match = of_match_node(bcm2835_pinctrl_match, pdev->dev.of_node);
+	if (match) {
+		bcm2835_pinctrl_desc.confops =
+			(const struct pinconf_ops *)match->data;
+	}
+
 	pc->pctl_dev = devm_pinctrl_register(dev, &bcm2835_pinctrl_desc, pc);
 	if (IS_ERR(pc->pctl_dev)) {
 		gpiochip_remove(&pc->gpio_chip);
@@ -1087,11 +1187,6 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	return 0;
 }

-static const struct of_device_id bcm2835_pinctrl_match[] = {
-	{ .compatible = "brcm,bcm2835-gpio" },
-	{}
-};
-
 static struct platform_driver bcm2835_pinctrl_driver = {
 	.probe = bcm2835_pinctrl_probe,
 	.driver = {
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
