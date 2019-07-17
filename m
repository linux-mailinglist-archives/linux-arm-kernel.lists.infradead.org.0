Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6426C1C5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 21:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R0ZfjjW40uUyvpHBUbMJNrYXY2UXCYo9H4Eh/GcQCRc=; b=imSQ1yhG64p0KLg9ev5A0rMPZB
	RpcrgRDMIFe1CTnVi9krT0O/KsEB8bAwPmPC9aUpcG5buzKzF4wdQ1XPwfD6Cg9hl+M1Zt9NrQo96
	K3dMGouhiDmBD9llQjgVEPHwsfi84ZeUUPNpCTcEJiGkvEMPFjXRryPqjmnmjRnN3zIHbVLcMvpd+
	BpUHXFzuTGvEcy/lOOJdUvK03Z/7sSpwCBGLKX/IhRGsS3qGhIBocpXa6Fqz1CTj2LP33cXL1i01z
	OcIB37Rw8EFLstl9pDueXZyt0bBFmp83dOhPjneTkpk2X6RYIsDsRx5zrRcLdsqoX5APaP3ibn02T
	YMSta90A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnq1F-00064z-ME; Wed, 17 Jul 2019 19:55:17 +0000
Received: from mout.gmx.net ([212.227.17.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnpx4-0002tS-QO; Wed, 17 Jul 2019 19:51:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1563393046;
 bh=MjYDuc6QsIM+npV5DIdNaHuG0Osttr0SwYf0sdv6rIE=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=bmYIaZHGx5y2WkhrQTWNwaY5vdQpDp0siZAv+UndP0QpacyT/9gpwuDTeEtuDFc2H
 EzgGM9kHluVPyTpfU+N3Ir6eZHUg0RMP6N68yd3xpPoerK3P3qUlHzVYRcemLlrBLo
 ZTfOlNLeO/3bv3iuhF+jqg9XW6rzYhiADTjDH+n0=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([37.4.249.103]) by mail.gmx.com
 (mrgmx101 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0Lfolq-1iFxuB3kL4-00pNjB; Wed, 17 Jul 2019 21:50:46 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Eric Anholt <eric@anholt.net>, Florian Fainelli <f.fainelli@gmail.com>,
 Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>,
 Adrian Hunter <adrian.hunter@intel.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH RFC 10/18] pinctrl: bcm2835: bcm7211: Add support for 7211
 pull-up functionality
Date: Wed, 17 Jul 2019 21:50:18 +0200
Message-Id: <1563393026-17118-11-git-send-email-wahrenst@gmx.net>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
References: <1563393026-17118-1-git-send-email-wahrenst@gmx.net>
X-Provags-ID: V03:K1:jsna6FmkwWfK0Sozkjk0lkfkTYaHeb7wn5FR1K/E07/BZkelD0W
 u0Ca3BGKkiOAdkz/djPgS9xnYGj7fWM+1/1dA+8l56a5h6//Bqou29lU4sFuf/1N9DzGvIr
 AepyXGAzE3f/zmrECcqkLHZVtua/stCGo+p5rmNa5e+VOiGtzgOhrv8MciEKXlxdRNR5Q/A
 39MrSXyc1/wql7D1VZUXA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:CANcB4XUUT4=:NHucmbzKfiyJLkmOYVjID1
 tSSxwf/rs9uLOnteIWSsN+0V7cmt6HpzpuZZ7LjgI5ZGSJcAVyjHPz1Sabt8kcDsxtOqj/FHd
 o4Cmt+n3ejeSMqr4XP/TrUTempwNlFstgm5d/tz/4EMfsRIzgoaprUGULH8Eq1MzoZFVJ2c3h
 5XmOCbhjVMhKQCWZi6rGy9YfHxgBhvCGRfUubciB0EU9gMqVlXHEYEd6/wrWh3procI17whx6
 AyyNhjpgmz9Gl0eAQiGEdXz5O0kMX0PSBw2dTZNcNtUpPgmo3k2Xh6KOaVLP6ZMC566WAdnlW
 5wI6/F1vwG8NcjUXpUgN11HqF05jJMqIi4NkJ8xGPTT6BmRcko9XSB+IT+McuH8SlR7okRCQk
 LAxM6qTyH3vxQvRcMinWy6JIr4+jj8S1KiXcP67Pmpo//BYW3I0u2HIP3sa+g4cs0LsZ7hpoa
 h0nzRNOZp4PSFqIVvbbyKJLZSJbzvja1ryEQOdAYHg/OKYC8z3aEF8yu8GtW0O0CZ0guW1Lts
 nx7nByitTlgZd+rC5zS/ZUckDdEa942VSvDuy77ItNogJzJ/zx/y6LWQthcuyNMwbPEflZKq1
 aJ5Hty/3VzTocu1nRvNhei9Xoq6K6kx8x4XDWs0eSNDlaJQayT9SySdgZsXE0b2r2uFeU1N5a
 GJKc4bV/gGneKj5lhqdrH3LuNybWYA6qcTQODKBpdaorV87WcSyJd7qom2ALGHOGdwH0wqH0y
 gacVCU+2LEZ1lqKgPNik0+F+5BJeWRM/pulqPl7LC8ClbK/b2RPGs6aWG9Z15PQpw+TSOfKw/
 C3sdjH1f7m4yIDPV2Rpk9MmDjG8InaXdG37SVGsTM9FNChPAVsmuRDo+xnOZgTbHAQhhRnoVa
 mwzEaelhate8zbzK9A62gZfJM6OtDD2uQeo/JUVAXZdy6162Y7RS1Yq8Eq1/qe0+fQ/bgKWQa
 c4BQV5OyM5KnCSL/qeXX9i/p9X/4kzjcbeUyItWLjelf5lJssPkKO6dHqqE1GSj6ZG1MkgmJw
 eCImzx7opUsRCVWbAIjGUUoU0kJmxGZ8kMTWLvkMzIKCBvVeP8qi5msgaR6rXbbJD9W5NIFMC
 ZOAiGf1WKzLLa4=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_125059_188851_EC8604FD 
X-CRM114-Status: GOOD (  18.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.21 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Al Cooper <alcooperx@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Al Cooper <alcooperx@gmail.com>

The 7211 has a new way of selecting the pull-up/pull-down setting
for a GPIO pin. The registers used for the bcm2837, GP_PUD and
GP_PUDCLKn0, are no longer connected. A new set of registers,
GP_GPIO_PUP_PDN_CNTRL_REGx must be used. This commit will add
a new compatible string "brcm,bcm7211-gpio" and the kernel
driver will use it to select which method is used to select
pull-up/pull-down.

Signed-off-by: Al Cooper <alcooperx@gmail.com>
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/pinctrl/bcm/pinctrl-bcm2835.c | 85 ++++++++++++++++++++++++++++++++---
 1 file changed, 80 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
index 183d1ff..35d9f95 100644
--- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
+++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
@@ -57,15 +57,26 @@
 #define GPAFEN0		0x88	/* Pin Async Falling Edge Detect */
 #define GPPUD		0x94	/* Pin Pull-up/down Enable */
 #define GPPUDCLK0	0x98	/* Pin Pull-up/down Enable Clock */
+#define GP_GPIO_PUP_PDN_CNTRL_REG0 0xe4 /* 7211 Pin Pull-up/down select */

 #define FSEL_REG(p)		(GPFSEL0 + (((p) / 10) * 4))
 #define FSEL_SHIFT(p)		(((p) % 10) * 3)
 #define GPIO_REG_OFFSET(p)	((p) / 32)
 #define GPIO_REG_SHIFT(p)	((p) % 32)

+#define PUD_7211_MASK		0x3
+#define PUD_7211_REG_OFFSET(p)	((p) / 16)
+#define PUD_7211_REG_SHIFT(p)	(((p) % 16) * 2)
+
 /* argument: bcm2835_pinconf_pull */
 #define BCM2835_PINCONF_PARAM_PULL	(PIN_CONFIG_END + 1)

+enum bcm7211_pinconf_pull {
+	BCM7211_PINCONFIG_PULL_NONE,
+	BCM7211_PINCONFIG_PULL_UP,
+	BCM7211_PINCONFIG_PULL_DOWN,
+};
+
 struct bcm2835_pinctrl {
 	struct device *dev;
 	void __iomem *base;
@@ -975,6 +986,55 @@ static const struct pinconf_ops bcm2835_pinconf_ops = {
 	.pin_config_set = bcm2835_pinconf_set,
 };

+static int bcm7211_pinconf_set(struct pinctrl_dev *pctldev,
+			       unsigned int pin, unsigned long *configs,
+			       unsigned int num_configs)
+{
+	struct bcm2835_pinctrl *pc = pinctrl_dev_get_drvdata(pctldev);
+	u32 param, arg;
+	u32 shifter;
+	u32 value;
+	u32 off;
+	int i;
+
+	for (i = 0; i < num_configs; i++) {
+		param = pinconf_to_config_param(configs[i]);
+		if (param != BCM2835_PINCONF_PARAM_PULL)
+			return -EINVAL;
+		arg = pinconf_to_config_argument(configs[i]);
+
+		/* convert to 7211 value */
+		switch (arg) {
+		case PIN_CONFIG_BIAS_DISABLE:
+			arg = BCM7211_PINCONFIG_PULL_NONE;
+			break;
+		case PIN_CONFIG_BIAS_PULL_DOWN:
+			arg = BCM7211_PINCONFIG_PULL_DOWN;
+			break;
+		case PIN_CONFIG_BIAS_PULL_UP:
+			arg = BCM7211_PINCONFIG_PULL_UP;
+			break;
+		}
+
+		off = PUD_7211_REG_OFFSET(pin);
+		shifter = PUD_7211_REG_SHIFT(pin);
+
+		value = bcm2835_gpio_rd(pc, GP_GPIO_PUP_PDN_CNTRL_REG0 +
+					(off * 4));
+		value &= ~(PUD_7211_MASK << shifter);
+		value |= (arg << shifter);
+		bcm2835_gpio_wr(pc, GP_GPIO_PUP_PDN_CNTRL_REG0 + (off * 4),
+				value);
+	} /* for each config */
+
+	return 0;
+}
+
+static const struct pinconf_ops bcm7211_pinconf_ops = {
+	.pin_config_get = bcm2835_pinconf_get,
+	.pin_config_set = bcm7211_pinconf_set,
+};
+
 static struct pinctrl_desc bcm2835_pinctrl_desc = {
 	.name = MODULE_NAME,
 	.pins = bcm2835_gpio_pins,
@@ -990,6 +1050,18 @@ static struct pinctrl_gpio_range bcm2835_pinctrl_gpio_range = {
 	.npins = BCM2835_NUM_GPIOS,
 };

+static const struct of_device_id bcm2835_pinctrl_match[] = {
+	{
+		.compatible = "brcm,bcm2835-gpio",
+		.data = &bcm2835_pinconf_ops,
+	},
+	{
+		.compatible = "brcm,bcm7211-gpio",
+		.data = &bcm7211_pinconf_ops,
+	},
+	{}
+};
+
 static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
@@ -997,6 +1069,8 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
 	struct bcm2835_pinctrl *pc;
 	struct resource iomem;
 	int err, i;
+	const struct of_device_id *match;
+
 	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_pins) != BCM2835_NUM_GPIOS);
 	BUILD_BUG_ON(ARRAY_SIZE(bcm2835_gpio_groups) != BCM2835_NUM_GPIOS);

@@ -1073,6 +1147,12 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
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
@@ -1087,11 +1167,6 @@ static int bcm2835_pinctrl_probe(struct platform_device *pdev)
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
