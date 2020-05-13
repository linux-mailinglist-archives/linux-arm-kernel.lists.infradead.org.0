Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1781D137F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 14:57:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AVmioQbOVLALuJUdJMv8q/yP4kwWwpsJaAqzh5S3/lo=; b=B2vCCsHAlw3RLN
	Pntgk+45+28obzZ4jGxOCoQNqlqL6x8s99lRLZhlU9CKTE3zeJsmEzN4Jaa8n7dv5SUq+LLU/rtcs
	vUSOb4QH9BmG4KjEySCl8cg0Mj/zHRrrZ/rj90/NKo2SP3ySpUtr3NzuAGj1ZbxQ0CHvUE2QOfrFO
	nSzIW2k8Pwuzy3yI6BYafKoyQ/J5VaToLYA3IgLkdJp4Ws9rxGs/sd1Z8x8RXa+sMG5Cki9qkStDZ
	2BtE8LPk4pauiMVcexmkFuQ4Gx1G9/+KcGWRxE6FKf3O7vJHhTdns74WIPBjsvOo2Wj2aebKbwB5w
	BPBqqyX1rEu5PD2OVzcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYqwP-0001py-Br; Wed, 13 May 2020 12:56:53 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYqvm-0001QK-Uj
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 12:56:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589374574; x=1620910574;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Z3RtA3Is19gMLuQPixC7qZLhsQ/ltAtQlKTqxZJF4kc=;
 b=jR/VJEPUiuFQGCv06qY7H99xgOfuvOKlz9tOGBGrltjGqBkkOQp6vGIy
 QEDBWfpQkhHPgZSaROGSHlCH15L5V7KJBsXn2C+oDNgnA4ub/v69RKaze
 zpXH0S27EHkc7m+hAmSoWvkJ8RLUrrpqBuyegVE+yPkvvb5VWzxSKWeH8
 0pBeih/F5vOiK+Q+lvMuKN/+IEnXBBcFZLHOPLgeTAXAbwj48FUEpyjk3
 j1FQzUcC/nJUqKTzR1hIENiD9BcZx6lmqkeDJ2cSOac7LXQrMQTMwyMu6
 czi9BP1JQAyJxYj/9ecKM/N+yDSz3B6lNKbicBx15iYO2xNFyIWVh6c/B Q==;
IronPort-SDR: lO6DOcnAhr84ZBSxSAxSdxBBd5w2TOugv8+G0o0Vq5kEETCRHS/5YLSTywa4ycsGzA1J4ByVAq
 0aS6FSaHetV7NqZ3WCeiHYIfI//XOXuyourN3Jp1z2/a1cSJLwCmZvqi2VGZ07o6j/1bUGyyOx
 SlYno5D6xVWWhZkAU6os1SH41UkBGaSEVxdsgvmUFQ9CA42JixTkKyJ3FJbtTLB1PEcJFqWcit
 3xoupXRGh9bPwFty1g3eLsZpsguJOLBYe/iTZXIn37JhtZSaRjGeiSLroSxuzed6U5uCtgLv6G
 fwI=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79436261"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 05:56:14 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 05:56:14 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 05:56:11 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH 02/14] pinctrl: ocelot: Remove instance number from pin
 functions
Date: Wed, 13 May 2020 14:55:20 +0200
Message-ID: <20200513125532.24585-3-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200513125532.24585-1-lars.povlsen@microchip.com>
References: <20200513125532.24585-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_055615_044916_D5871921 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -1.7 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.7 points)
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
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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

This patch removes the instance number from the "miim", "reco_clk" and
"sfp" pin function.

The change needed is to prepare the driver for adding new platforms
with more of these instances. The instance number is also redundant,
as this is implicit for each pin.

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 drivers/pinctrl/pinctrl-ocelot.c | 94 ++++++++++----------------------
 1 file changed, 30 insertions(+), 64 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-ocelot.c b/drivers/pinctrl/pinctrl-ocelot.c
index d4ac65b1efc0b..375f3ea3b80c4 100644
--- a/drivers/pinctrl/pinctrl-ocelot.c
+++ b/drivers/pinctrl/pinctrl-ocelot.c
@@ -46,32 +46,15 @@ enum {
 	FUNC_IRQ0_OUT,
 	FUNC_IRQ1_IN,
 	FUNC_IRQ1_OUT,
-	FUNC_MIIM1,
-	FUNC_MIIM2,
+	FUNC_MIIM,
 	FUNC_PCI_WAKE,
 	FUNC_PTP0,
 	FUNC_PTP1,
 	FUNC_PTP2,
 	FUNC_PTP3,
 	FUNC_PWM,
-	FUNC_RECO_CLK0,
-	FUNC_RECO_CLK1,
-	FUNC_SFP0,
-	FUNC_SFP1,
-	FUNC_SFP2,
-	FUNC_SFP3,
-	FUNC_SFP4,
-	FUNC_SFP5,
-	FUNC_SFP6,
-	FUNC_SFP7,
-	FUNC_SFP8,
-	FUNC_SFP9,
-	FUNC_SFP10,
-	FUNC_SFP11,
-	FUNC_SFP12,
-	FUNC_SFP13,
-	FUNC_SFP14,
-	FUNC_SFP15,
+	FUNC_RECO_CLK,
+	FUNC_SFP,
 	FUNC_SG0,
 	FUNC_SG1,
 	FUNC_SG2,
@@ -92,32 +75,15 @@ static const char *const ocelot_function_names[] = {
 	[FUNC_IRQ0_OUT]		= "irq0_out",
 	[FUNC_IRQ1_IN]		= "irq1_in",
 	[FUNC_IRQ1_OUT]		= "irq1_out",
-	[FUNC_MIIM1]		= "miim1",
-	[FUNC_MIIM2]		= "miim2",
+	[FUNC_MIIM]		= "miim",
 	[FUNC_PCI_WAKE]		= "pci_wake",
 	[FUNC_PTP0]		= "ptp0",
 	[FUNC_PTP1]		= "ptp1",
 	[FUNC_PTP2]		= "ptp2",
 	[FUNC_PTP3]		= "ptp3",
 	[FUNC_PWM]		= "pwm",
-	[FUNC_RECO_CLK0]	= "reco_clk0",
-	[FUNC_RECO_CLK1]	= "reco_clk1",
-	[FUNC_SFP0]		= "sfp0",
-	[FUNC_SFP1]		= "sfp1",
-	[FUNC_SFP2]		= "sfp2",
-	[FUNC_SFP3]		= "sfp3",
-	[FUNC_SFP4]		= "sfp4",
-	[FUNC_SFP5]		= "sfp5",
-	[FUNC_SFP6]		= "sfp6",
-	[FUNC_SFP7]		= "sfp7",
-	[FUNC_SFP8]		= "sfp8",
-	[FUNC_SFP9]		= "sfp9",
-	[FUNC_SFP10]		= "sfp10",
-	[FUNC_SFP11]		= "sfp11",
-	[FUNC_SFP12]		= "sfp12",
-	[FUNC_SFP13]		= "sfp13",
-	[FUNC_SFP14]		= "sfp14",
-	[FUNC_SFP15]		= "sfp15",
+	[FUNC_RECO_CLK]		= "reco_clk",
+	[FUNC_SFP]		= "sfp",
 	[FUNC_SG0]		= "sg0",
 	[FUNC_SG1]		= "sg1",
 	[FUNC_SG2]		= "sg2",
@@ -168,18 +134,18 @@ OCELOT_P(6,  UART,      TWI_SCL_M, NONE);
 OCELOT_P(7,  UART,      TWI_SCL_M, NONE);
 OCELOT_P(8,  SI,        TWI_SCL_M, IRQ0_OUT);
 OCELOT_P(9,  SI,        TWI_SCL_M, IRQ1_OUT);
-OCELOT_P(10, PTP2,      TWI_SCL_M, SFP0);
-OCELOT_P(11, PTP3,      TWI_SCL_M, SFP1);
-OCELOT_P(12, UART2,     TWI_SCL_M, SFP2);
-OCELOT_P(13, UART2,     TWI_SCL_M, SFP3);
-OCELOT_P(14, MIIM1,     TWI_SCL_M, SFP4);
-OCELOT_P(15, MIIM1,     TWI_SCL_M, SFP5);
+OCELOT_P(10, PTP2,      TWI_SCL_M, SFP);
+OCELOT_P(11, PTP3,      TWI_SCL_M, SFP);
+OCELOT_P(12, UART2,     TWI_SCL_M, SFP);
+OCELOT_P(13, UART2,     TWI_SCL_M, SFP);
+OCELOT_P(14, MIIM,      TWI_SCL_M, SFP);
+OCELOT_P(15, MIIM,      TWI_SCL_M, SFP);
 OCELOT_P(16, TWI,       NONE,      SI);
 OCELOT_P(17, TWI,       TWI_SCL_M, SI);
 OCELOT_P(18, PTP0,      TWI_SCL_M, NONE);
 OCELOT_P(19, PTP1,      TWI_SCL_M, NONE);
-OCELOT_P(20, RECO_CLK0, TACHO,     NONE);
-OCELOT_P(21, RECO_CLK1, PWM,       NONE);
+OCELOT_P(20, RECO_CLK,  TACHO,     TWI_SCL_M);
+OCELOT_P(21, RECO_CLK,  PWM,       TWI_SCL_M);

 #define OCELOT_PIN(n) {						\
 	.number = n,						\
@@ -264,22 +230,22 @@ JAGUAR2_P(40, NONE,      TWI_SCL_M);
 JAGUAR2_P(41, NONE,      TWI_SCL_M);
 JAGUAR2_P(42, NONE,      TWI_SCL_M);
 JAGUAR2_P(43, NONE,      TWI_SCL_M);
-JAGUAR2_P(44, NONE,      SFP8);
-JAGUAR2_P(45, NONE,      SFP9);
-JAGUAR2_P(46, NONE,      SFP10);
-JAGUAR2_P(47, NONE,      SFP11);
-JAGUAR2_P(48, SFP0,      NONE);
-JAGUAR2_P(49, SFP1,      SI);
-JAGUAR2_P(50, SFP2,      SI);
-JAGUAR2_P(51, SFP3,      SI);
-JAGUAR2_P(52, SFP4,      NONE);
-JAGUAR2_P(53, SFP5,      NONE);
-JAGUAR2_P(54, SFP6,      NONE);
-JAGUAR2_P(55, SFP7,      NONE);
-JAGUAR2_P(56, MIIM1,     SFP12);
-JAGUAR2_P(57, MIIM1,     SFP13);
-JAGUAR2_P(58, MIIM2,     SFP14);
-JAGUAR2_P(59, MIIM2,     SFP15);
+JAGUAR2_P(44, NONE,      SFP);
+JAGUAR2_P(45, NONE,      SFP);
+JAGUAR2_P(46, NONE,      SFP);
+JAGUAR2_P(47, NONE,      SFP);
+JAGUAR2_P(48, SFP,       NONE);
+JAGUAR2_P(49, SFP,       SI);
+JAGUAR2_P(50, SFP,       SI);
+JAGUAR2_P(51, SFP,       SI);
+JAGUAR2_P(52, SFP,       NONE);
+JAGUAR2_P(53, SFP,       NONE);
+JAGUAR2_P(54, SFP,       NONE);
+JAGUAR2_P(55, SFP,       NONE);
+JAGUAR2_P(56, MIIM,      SFP);
+JAGUAR2_P(57, MIIM,      SFP);
+JAGUAR2_P(58, MIIM,      SFP);
+JAGUAR2_P(59, MIIM,      SFP);
 JAGUAR2_P(60, NONE,      NONE);
 JAGUAR2_P(61, NONE,      NONE);
 JAGUAR2_P(62, NONE,      NONE);
--
2.26.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
