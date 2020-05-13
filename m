Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6B5D1D13AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d2rm9Ewbjc7KdWlp/LVNfNVVq2/MIWOzvHmyCdNQOvY=; b=pziBfiPF/SrZZn
	vVgDXewPzYif126b0fe4FXZCOEG08naTdpgBsA4Wn9ml7F5akOkdLtPeXmyED4Lan8itcj46Gd0ik
	go8Mol7GqmdVQHf/zjjp7zyi9yMd4F2yBERyaMNYEPTKlKwjeQO7zepde117ejdcMRoVwEZguC3Ls
	K4vgp4dPl8p5paGcrWoYVbApFFZJtDsygZgkj7ejHKSXsGEyOJTOy9iv8e7BPbSSxIYMZUsm47DYe
	jkXzWmgPB3Ro2iErQ659pYF41tLk/JPbAtXuiSCcuDrXOAP/B1qmGDqOHtBbpLbNjY+L1dTAKBCs3
	UXSm8vMT5Qu2Am7CDSGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqyT-0003ih-Dt; Wed, 13 May 2020 12:59:01 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqwW-0002Et-Hz
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:57:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374620; x=1620910620;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=hA4OX1mSziNsTvtVpMot129OMg9lWLR7B6z30eBBgfc=;
 b=f34nJP27lXg0QnhhdtJAf1B0vbcEX56OrWXUwV4W4E3QKvhmVsQG2zYn
 3Nmog2xyY1xo/mSd2IkVGr9f7MTnr4pk3uM5n1dXOKIlh9Q9rYuXMgyqD
 ZKn4zmo3Aptl/MKmULUiT152pCJsTEFI4tQkEmM/v82jTNYxfumHzdJAG
 riqiKkgT/jwvHuGW8ICMawvtnxpVAukm7XvQ35icoyY9IgjGuuegxkdZ6
 TiHXq1p61/GKMuU9bC4vSbJC3GsJcEMWtuKqjGA0Y4TDIFig/PMDkduY7
 TErLNqHCptKWFiWeTzMSAUaD9wHIF9ACQRbmkLtqOz5sn/EID2AigITER g==;
IronPort-SDR: 8pxY2N4AhB5MDJIuUrKYkIFV93fsdFGNQlld5+o4rlzgWrKz/MZqXRyfzpzjus0mV7HZQBOz7k
 XEsbjszk1kXRTzv2hnfEMu8xNz9dzLupDN3tYE65D/YkA5ivupI1xf+uOGZLUYp58wwLmQvVEG
 9yGXIk8T3xSBo9YeFEoXgVw4c/oO9OyGRIJoTKlavgCn0WEevHkXEM2WLAlaTPV7h8H1PUJAOM
 EzcFzaDPT+ZwDQSrVDPdqktK4LxHFVcT/yURBd+tF+jQxNPo11db2birKxo+5zA/zMj67TVzEI
 sic=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79436349"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:56:59 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:56:58 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:56:55 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 09/14] pinctrl: ocelot: Add Sparx5 SoC support
Date: Wed, 13 May 2020 14:55:27 +0200
Message-ID: <20200513125532.24585-10-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055700_693006_1EEB0DFA 
X-CRM114-Status: GOOD (  17.01  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Steen Hegelund <Steen.Hegelund@microchip.com>, linux-clk@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
 linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Olof Johansson <olof@lixom.net>, Michael
 Turquette <mturquette@baylibre.com>, Lars Povlsen <lars.povlsen@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This add support for Sparx5 pinctrl, using the ocelot drives as
basis. It adds pinconfig support as well, as supported by the
platform.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/pinctrl/pinctrl-ocelot.c | 431 ++++++++++++++++++++++++++++++-
 1 file changed, 430 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-ocelot.c b/drivers/pinctrl/pinctrl-ocelot.c
index 95c225bc7572f..35a482dc6b1a0 100644
--- a/drivers/pinctrl/pinctrl-ocelot.c
+++ b/drivers/pinctrl/pinctrl-ocelot.c
@@ -25,6 +25,23 @@
 #include "pinconf.h"
 #include "pinmux.h"

+#define clrsetbits(addr, clear, set) \
+	writel((readl(addr) & ~(clear)) | (set), (addr))
+
+/* PINCONFIG bits (sparx5 only) */
+enum {
+	PINCONF_BIAS,
+	PINCONF_SCHMITT,
+	PINCONF_DRIVE_STRENGTH,
+};
+
+#define BIAS_PD_BIT BIT(4)
+#define BIAS_PU_BIT BIT(3)
+#define BIAS_BITS   (BIAS_PD_BIT|BIAS_PU_BIT)
+#define SCHMITT_BIT BIT(2)
+#define DRIVE_BITS  GENMASK(1, 0)
+
+/* GPIO standard registers */
 #define OCELOT_GPIO_OUT_SET	0x0
 #define OCELOT_GPIO_OUT_CLR	0x4
 #define OCELOT_GPIO_OUT		0x8
@@ -42,12 +59,17 @@
 enum {
 	FUNC_NONE,
 	FUNC_GPIO,
+	FUNC_IRQ0,
 	FUNC_IRQ0_IN,
 	FUNC_IRQ0_OUT,
+	FUNC_IRQ1,
 	FUNC_IRQ1_IN,
 	FUNC_IRQ1_OUT,
+	FUNC_EXT_IRQ,
 	FUNC_MIIM,
+	FUNC_PHY_LED,
 	FUNC_PCI_WAKE,
+	FUNC_MD,
 	FUNC_PTP0,
 	FUNC_PTP1,
 	FUNC_PTP2,
@@ -59,24 +81,36 @@ enum {
 	FUNC_SG1,
 	FUNC_SG2,
 	FUNC_SI,
+	FUNC_SI2,
 	FUNC_TACHO,
 	FUNC_TWI,
 	FUNC_TWI2,
+	FUNC_TWI3,
 	FUNC_TWI_SCL_M,
 	FUNC_UART,
 	FUNC_UART2,
+	FUNC_UART3,
+	FUNC_PLL_STAT,
+	FUNC_EMMC,
+	FUNC_REF_CLK,
+	FUNC_RCVRD_CLK,
 	FUNC_MAX
 };

 static const char *const ocelot_function_names[] = {
 	[FUNC_NONE]		= "none",
 	[FUNC_GPIO]		= "gpio",
+	[FUNC_IRQ0]		= "irq0",
 	[FUNC_IRQ0_IN]		= "irq0_in",
 	[FUNC_IRQ0_OUT]		= "irq0_out",
+	[FUNC_IRQ1]		= "irq1",
 	[FUNC_IRQ1_IN]		= "irq1_in",
 	[FUNC_IRQ1_OUT]		= "irq1_out",
+	[FUNC_EXT_IRQ]		= "ext_irq",
 	[FUNC_MIIM]		= "miim",
+	[FUNC_PHY_LED]		= "phy_led",
 	[FUNC_PCI_WAKE]		= "pci_wake",
+	[FUNC_MD]		= "md",
 	[FUNC_PTP0]		= "ptp0",
 	[FUNC_PTP1]		= "ptp1",
 	[FUNC_PTP2]		= "ptp2",
@@ -88,12 +122,19 @@ static const char *const ocelot_function_names[] = {
 	[FUNC_SG1]		= "sg1",
 	[FUNC_SG2]		= "sg2",
 	[FUNC_SI]		= "si",
+	[FUNC_SI2]		= "si2",
 	[FUNC_TACHO]		= "tacho",
 	[FUNC_TWI]		= "twi",
 	[FUNC_TWI2]		= "twi2",
+	[FUNC_TWI3]		= "twi3",
 	[FUNC_TWI_SCL_M]	= "twi_scl_m",
 	[FUNC_UART]		= "uart",
 	[FUNC_UART2]		= "uart2",
+	[FUNC_UART3]		= "uart3",
+	[FUNC_PLL_STAT]		= "pll_stat",
+	[FUNC_EMMC]		= "emmc",
+	[FUNC_REF_CLK]		= "ref_clk",
+	[FUNC_RCVRD_CLK]	= "rcvrd_clk",
 };

 struct ocelot_pmx_func {
@@ -111,6 +152,7 @@ struct ocelot_pinctrl {
 	struct pinctrl_dev *pctl;
 	struct gpio_chip gpio_chip;
 	struct regmap *map;
+	void __iomem *pincfg;
 	struct pinctrl_desc *desc;
 	struct ocelot_pmx_func func[FUNC_MAX];
 	u8 stride;
@@ -324,6 +366,152 @@ static const struct pinctrl_pin_desc jaguar2_pins[] = {
 	JAGUAR2_PIN(63),
 };

+#define SPARX5_P(p, f0, f1, f2)					\
+static struct ocelot_pin_caps sparx5_pin_##p = {			\
+	.pin = p,							\
+	.functions = {							\
+		FUNC_GPIO, FUNC_##f0, FUNC_##f1, FUNC_##f2		\
+	},								\
+}
+
+SPARX5_P(0,  SG0,       PLL_STAT,  NONE);
+SPARX5_P(1,  SG0,       NONE,      NONE);
+SPARX5_P(2,  SG0,       NONE,      NONE);
+SPARX5_P(3,  SG0,       NONE,      NONE);
+SPARX5_P(4,  SG1,       NONE,      NONE);
+SPARX5_P(5,  SG1,       NONE,      NONE);
+SPARX5_P(6,  IRQ0_IN,   IRQ0_OUT,  SFP);
+SPARX5_P(7,  IRQ1_IN,   IRQ1_OUT,  SFP);
+SPARX5_P(8,  PTP0,      NONE,      SFP);
+SPARX5_P(9,  PTP1,      SFP,       TWI_SCL_M);
+SPARX5_P(10, UART,      NONE,      NONE);
+SPARX5_P(11, UART,      NONE,      NONE);
+SPARX5_P(12, SG1,       NONE,      NONE);
+SPARX5_P(13, SG1,       NONE,      NONE);
+SPARX5_P(14, TWI,       TWI_SCL_M, NONE);
+SPARX5_P(15, TWI,       NONE,      NONE);
+SPARX5_P(16, SI,        TWI_SCL_M, SFP);
+SPARX5_P(17, SI,        TWI_SCL_M, SFP);
+SPARX5_P(18, SI,        TWI_SCL_M, SFP);
+SPARX5_P(19, PCI_WAKE,  TWI_SCL_M, SFP);
+SPARX5_P(20, IRQ0_OUT,  TWI_SCL_M, SFP);
+SPARX5_P(21, IRQ1_OUT,  TACHO,     SFP);
+SPARX5_P(22, TACHO,     IRQ0_OUT,  TWI_SCL_M);
+SPARX5_P(23, PWM,       UART3,     TWI_SCL_M);
+SPARX5_P(24, PTP2,      UART3,     TWI_SCL_M);
+SPARX5_P(25, PTP3,      SI,        TWI_SCL_M);
+SPARX5_P(26, UART2,     SI,        TWI_SCL_M);
+SPARX5_P(27, UART2,     SI,        TWI_SCL_M);
+SPARX5_P(28, TWI2,      SI,        SFP);
+SPARX5_P(29, TWI2,      SI,        SFP);
+SPARX5_P(30, SG2,       SI,        PWM);
+SPARX5_P(31, SG2,       SI,        TWI_SCL_M);
+SPARX5_P(32, SG2,       SI,        TWI_SCL_M);
+SPARX5_P(33, SG2,       SI,        SFP);
+SPARX5_P(34, NONE,      TWI_SCL_M, EMMC);
+SPARX5_P(35, SFP,       TWI_SCL_M, EMMC);
+SPARX5_P(36, SFP,       TWI_SCL_M, EMMC);
+SPARX5_P(37, SFP,       NONE,      EMMC);
+SPARX5_P(38, NONE,      TWI_SCL_M, EMMC);
+SPARX5_P(39, SI2,       TWI_SCL_M, EMMC);
+SPARX5_P(40, SI2,       TWI_SCL_M, EMMC);
+SPARX5_P(41, SI2,       TWI_SCL_M, EMMC);
+SPARX5_P(42, SI2,       TWI_SCL_M, EMMC);
+SPARX5_P(43, SI2,       TWI_SCL_M, EMMC);
+SPARX5_P(44, SI,        SFP,       EMMC);
+SPARX5_P(45, SI,        SFP,       EMMC);
+SPARX5_P(46, NONE,      SFP,       EMMC);
+SPARX5_P(47, NONE,      SFP,       EMMC);
+SPARX5_P(48, TWI3,      SI,        SFP);
+SPARX5_P(49, TWI3,      NONE,      SFP);
+SPARX5_P(50, SFP,       NONE,      TWI_SCL_M);
+SPARX5_P(51, SFP,       SI,        TWI_SCL_M);
+SPARX5_P(52, SFP,       MIIM,      TWI_SCL_M);
+SPARX5_P(53, SFP,       MIIM,      TWI_SCL_M);
+SPARX5_P(54, SFP,       PTP2,      TWI_SCL_M);
+SPARX5_P(55, SFP,       PTP3,      PCI_WAKE);
+SPARX5_P(56, MIIM,      SFP,       TWI_SCL_M);
+SPARX5_P(57, MIIM,      SFP,       TWI_SCL_M);
+SPARX5_P(58, MIIM,      SFP,       TWI_SCL_M);
+SPARX5_P(59, MIIM,      SFP,       NONE);
+SPARX5_P(60, RECO_CLK,  NONE,      NONE);
+SPARX5_P(61, RECO_CLK,  NONE,      NONE);
+SPARX5_P(62, RECO_CLK,  PLL_STAT,  NONE);
+SPARX5_P(63, RECO_CLK,  NONE,      NONE);
+
+#define SPARX5_PIN(n) {					\
+	.number = n,						\
+	.name = "GPIO_"#n,					\
+	.drv_data = &sparx5_pin_##n				\
+}
+
+static const struct pinctrl_pin_desc sparx5_pins[] = {
+	SPARX5_PIN(0),
+	SPARX5_PIN(1),
+	SPARX5_PIN(2),
+	SPARX5_PIN(3),
+	SPARX5_PIN(4),
+	SPARX5_PIN(5),
+	SPARX5_PIN(6),
+	SPARX5_PIN(7),
+	SPARX5_PIN(8),
+	SPARX5_PIN(9),
+	SPARX5_PIN(10),
+	SPARX5_PIN(11),
+	SPARX5_PIN(12),
+	SPARX5_PIN(13),
+	SPARX5_PIN(14),
+	SPARX5_PIN(15),
+	SPARX5_PIN(16),
+	SPARX5_PIN(17),
+	SPARX5_PIN(18),
+	SPARX5_PIN(19),
+	SPARX5_PIN(20),
+	SPARX5_PIN(21),
+	SPARX5_PIN(22),
+	SPARX5_PIN(23),
+	SPARX5_PIN(24),
+	SPARX5_PIN(25),
+	SPARX5_PIN(26),
+	SPARX5_PIN(27),
+	SPARX5_PIN(28),
+	SPARX5_PIN(29),
+	SPARX5_PIN(30),
+	SPARX5_PIN(31),
+	SPARX5_PIN(32),
+	SPARX5_PIN(33),
+	SPARX5_PIN(34),
+	SPARX5_PIN(35),
+	SPARX5_PIN(36),
+	SPARX5_PIN(37),
+	SPARX5_PIN(38),
+	SPARX5_PIN(39),
+	SPARX5_PIN(40),
+	SPARX5_PIN(41),
+	SPARX5_PIN(42),
+	SPARX5_PIN(43),
+	SPARX5_PIN(44),
+	SPARX5_PIN(45),
+	SPARX5_PIN(46),
+	SPARX5_PIN(47),
+	SPARX5_PIN(48),
+	SPARX5_PIN(49),
+	SPARX5_PIN(50),
+	SPARX5_PIN(51),
+	SPARX5_PIN(52),
+	SPARX5_PIN(53),
+	SPARX5_PIN(54),
+	SPARX5_PIN(55),
+	SPARX5_PIN(56),
+	SPARX5_PIN(57),
+	SPARX5_PIN(58),
+	SPARX5_PIN(59),
+	SPARX5_PIN(60),
+	SPARX5_PIN(61),
+	SPARX5_PIN(62),
+	SPARX5_PIN(63),
+};
+
 static int ocelot_get_functions_count(struct pinctrl_dev *pctldev)
 {
 	return ARRAY_SIZE(ocelot_function_names);
@@ -382,6 +570,7 @@ static int ocelot_pinmux_set_mux(struct pinctrl_dev *pctldev,
 	 * ALT[1]
 	 * This is racy because both registers can't be updated at the same time
 	 * but it doesn't matter much for now.
+	 * Note: ALT0/ALT1 are organized specially for 64 gpio targets
 	 */
 	regmap_update_bits(info->map, REG_ALT(0, info, pin->pin),
 			   BIT(p), f << p);
@@ -458,6 +647,220 @@ static int ocelot_pctl_get_group_pins(struct pinctrl_dev *pctldev,
 	return 0;
 }

+static int ocelot_hw_get_value(struct ocelot_pinctrl *info,
+			       unsigned int pin,
+			       unsigned int reg,
+			       int *val)
+{
+	int ret = -ENOTSUPP;
+
+	if (info->pincfg) {
+		u32 regcfg = readl(info->pincfg + (pin * sizeof(u32)));
+		u32 value;
+
+		ret = 0;
+		switch (reg) {
+		case PINCONF_BIAS:
+			value = regcfg & BIAS_BITS;
+			break;
+
+		case PINCONF_SCHMITT:
+			value = regcfg & SCHMITT_BIT;
+			break;
+
+		case PINCONF_DRIVE_STRENGTH:
+			value = regcfg & DRIVE_BITS;
+			break;
+
+		default:
+			ret = -ENOTSUPP;
+			break;
+		}
+	}
+	return ret;
+}
+
+static int ocelot_hw_set_value(struct ocelot_pinctrl *info,
+			       unsigned int pin,
+			       unsigned int reg,
+			       int val)
+{
+	int ret = -ENOTSUPP;
+
+	if (info->pincfg) {
+		void __iomem *regaddr = info->pincfg + (pin * sizeof(u32));
+
+		ret = 0;
+		switch (reg) {
+		case PINCONF_BIAS:
+			clrsetbits(regaddr, BIAS_BITS, val);
+			break;
+
+		case PINCONF_SCHMITT:
+			clrsetbits(regaddr, SCHMITT_BIT, val);
+			break;
+
+		case PINCONF_DRIVE_STRENGTH:
+			if (val <= 3)
+				clrsetbits(regaddr, DRIVE_BITS, val);
+			else
+				ret = -EINVAL;
+			break;
+
+		default:
+			ret = -ENOTSUPP;
+			break;
+		}
+	}
+	return ret;
+}
+
+static int ocelot_pinconf_get(struct pinctrl_dev *pctldev,
+			      unsigned int pin, unsigned long *config)
+{
+	struct ocelot_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
+	u32 param = pinconf_to_config_param(*config);
+	int val, err;
+
+	switch (param) {
+	case PIN_CONFIG_BIAS_DISABLE:
+	case PIN_CONFIG_BIAS_PULL_UP:
+	case PIN_CONFIG_BIAS_PULL_DOWN:
+		err = ocelot_hw_get_value(info, pin, PINCONF_BIAS, &val);
+		if (err)
+			return err;
+		if (param == PIN_CONFIG_BIAS_DISABLE)
+			val = (val == 0 ? true : false);
+		else if (param == PIN_CONFIG_BIAS_PULL_DOWN)
+			val = (val & BIAS_PD_BIT ? true : false);
+		else    /* PIN_CONFIG_BIAS_PULL_UP */
+			val = (val & BIAS_PU_BIT ? true : false);
+		break;
+
+	case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
+		err = ocelot_hw_get_value(info, pin, PINCONF_SCHMITT, &val);
+		if (err)
+			return err;
+
+		val = (val & SCHMITT_BIT ? true : false);
+		break;
+
+	case PIN_CONFIG_DRIVE_STRENGTH:
+		err = ocelot_hw_get_value(info, pin, PINCONF_DRIVE_STRENGTH,
+					  &val);
+		if (err)
+			return err;
+		break;
+
+	case PIN_CONFIG_OUTPUT:
+		err = regmap_read(info->map, REG(OCELOT_GPIO_OUT, info, pin),
+				  &val);
+		if (err)
+			return err;
+		val = !!(val & BIT(pin % 32));
+		break;
+
+	case PIN_CONFIG_INPUT_ENABLE:
+	case PIN_CONFIG_OUTPUT_ENABLE:
+		err = regmap_read(info->map, REG(OCELOT_GPIO_OE, info, pin),
+				  &val);
+		if (err)
+			return err;
+		val = val & BIT(pin % 32);
+		if (param == PIN_CONFIG_OUTPUT_ENABLE)
+			val = !!val;
+		else
+			val = !val;
+		break;
+
+	default:
+		return -ENOTSUPP;
+	}
+
+	*config = pinconf_to_config_packed(param, val);
+
+	return 0;
+}
+
+noinline int ocelot_pinconf_set(struct pinctrl_dev *pctldev, unsigned int pin,
+			      unsigned long *configs, unsigned int num_configs)
+{
+	struct ocelot_pinctrl *info = pinctrl_dev_get_drvdata(pctldev);
+	u32 param, arg, p;
+	int cfg, err = 0;
+
+	for (cfg = 0; cfg < num_configs; cfg++) {
+		param = pinconf_to_config_param(configs[cfg]);
+		arg = pinconf_to_config_argument(configs[cfg]);
+
+		switch (param) {
+		case PIN_CONFIG_BIAS_DISABLE:
+		case PIN_CONFIG_BIAS_PULL_UP:
+		case PIN_CONFIG_BIAS_PULL_DOWN:
+			arg = (param == PIN_CONFIG_BIAS_DISABLE) ? 0 :
+			(param == PIN_CONFIG_BIAS_PULL_UP) ? BIAS_PU_BIT :
+			BIAS_PD_BIT;
+
+			err = ocelot_hw_set_value(info, pin, PINCONF_BIAS, arg);
+			if (err)
+				goto err;
+
+			break;
+
+		case PIN_CONFIG_INPUT_SCHMITT_ENABLE:
+			arg = arg ? SCHMITT_BIT : 0;
+			err = ocelot_hw_set_value(info, pin, PINCONF_SCHMITT,
+						  arg);
+			if (err)
+				goto err;
+
+			break;
+
+		case PIN_CONFIG_DRIVE_STRENGTH:
+			err = ocelot_hw_set_value(info, pin,
+						  PINCONF_DRIVE_STRENGTH,
+						  arg);
+			if (err)
+				goto err;
+
+			break;
+
+		case PIN_CONFIG_OUTPUT_ENABLE:
+		case PIN_CONFIG_INPUT_ENABLE:
+		case PIN_CONFIG_OUTPUT:
+			p = pin % 32;
+			if (arg)
+				regmap_write(info->map,
+					     REG(OCELOT_GPIO_OUT_SET, info,
+						 pin),
+					     BIT(p));
+			else
+				regmap_write(info->map,
+					     REG(OCELOT_GPIO_OUT_CLR, info,
+						 pin),
+					     BIT(p));
+			regmap_update_bits(info->map,
+					   REG(OCELOT_GPIO_OE, info, pin),
+					   BIT(p),
+					   param == PIN_CONFIG_INPUT_ENABLE ?
+					   0 : BIT(p));
+			break;
+
+		default:
+			err = -ENOTSUPP;
+		}
+	}
+err:
+	return err;
+}
+
+static const struct pinconf_ops ocelot_confops = {
+	.is_generic = true,
+	.pin_config_get = ocelot_pinconf_get,
+	.pin_config_set = ocelot_pinconf_set,
+	.pin_config_config_dbg_show = pinconf_generic_dump_config,
+};
+
 static const struct pinctrl_ops ocelot_pctl_ops = {
 	.get_groups_count = ocelot_pctl_get_groups_count,
 	.get_group_name = ocelot_pctl_get_group_name,
@@ -484,6 +887,16 @@ static struct pinctrl_desc jaguar2_desc = {
 	.owner = THIS_MODULE,
 };

+static struct pinctrl_desc sparx5_desc = {
+	.name = "sparx5-pinctrl",
+	.pins = sparx5_pins,
+	.npins = ARRAY_SIZE(sparx5_pins),
+	.pctlops = &ocelot_pctl_ops,
+	.pmxops = &ocelot_pmx_ops,
+	.confops = &ocelot_confops,
+	.owner = THIS_MODULE,
+};
+
 static int ocelot_create_group_func_map(struct device *dev,
 					struct ocelot_pinctrl *info)
 {
@@ -511,7 +924,8 @@ static int ocelot_create_group_func_map(struct device *dev,
 		}

 		for (i = 0; i < npins; i++)
-			info->func[f].groups[i] = info->desc->pins[pins[i]].name;
+			info->func[f].groups[i] =
+				info->desc->pins[pins[i]].name;
 	}

 	kfree(pins);
@@ -744,6 +1158,7 @@ static int ocelot_gpiochip_register(struct platform_device *pdev,
 static const struct of_device_id ocelot_pinctrl_of_match[] = {
 	{ .compatible = "mscc,ocelot-pinctrl", .data = &ocelot_desc },
 	{ .compatible = "mscc,jaguar2-pinctrl", .data = &jaguar2_desc },
+	{ .compatible = "microchip,sparx5-pinctrl", .data = &sparx5_desc },
 	{},
 };

@@ -752,6 +1167,7 @@ static int ocelot_pinctrl_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct ocelot_pinctrl *info;
 	void __iomem *base;
+	struct resource *res;
 	int ret;
 	struct regmap_config regmap_config = {
 		.reg_bits = 32,
@@ -773,6 +1189,7 @@ static int ocelot_pinctrl_probe(struct platform_device *pdev)
 	}

 	info->stride = 1 + (info->desc->npins - 1) / 32;
+
 	regmap_config.max_register = OCELOT_GPIO_SD_MAP * info->stride + 15 * 4;

 	info->map = devm_regmap_init_mmio(dev, base, &regmap_config);
@@ -783,6 +1200,16 @@ static int ocelot_pinctrl_probe(struct platform_device *pdev)
 	dev_set_drvdata(dev, info->map);
 	info->dev = dev;

+	/* Pinconf registers */
+	if (info->desc->confops) {
+		res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
+		base = devm_ioremap_resource(dev, res);
+		if (IS_ERR(base))
+			dev_dbg(dev, "Failed to ioremap config registers (no extended pinconf)\n");
+		else
+			info->pincfg = base;
+	}
+
 	ret = ocelot_pinctrl_register(pdev, info);
 	if (ret)
 		return ret;
@@ -791,6 +1218,8 @@ static int ocelot_pinctrl_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;

+	dev_info(dev, "driver registered\n");
+
 	return 0;
 }

--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
