Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2961F990C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 15:37:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LgnELysMZW6WjrhdBauYHWo1S+GS7tnThhgAMvQ3v98=; b=YNLqAEIzilIsRF
	BXMReLmLjy2BtcvRn9hidAPddpuu71sMhdbaNWY2bF6VquF0qS39sJJ8cvHqQ3m49svjJKIFTJ52P
	wo7C5FO7Vq9GrK1e944QauNMNku1RcyrD480bB7KQOvTXW1NzxpJNJXF4MDDfGZTp94Esnlj3jKau
	RbI4SGTlWQU7PleBxxvovbTt9fH+rrcK/3YsUQ4TQLB7Svzp5eOVRAnaWJagqLwR0OUJDD5jSUmkp
	Z5rFDZzUD5vbQrk0yc+ae6m1xj3uTTttXSn83I7tRZ30I3hhpLc9ewkURwNktopFF7t4SgX+J3jud
	4wnyLQOEUVYysYTcuoQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkpIZ-0004IR-3g; Mon, 15 Jun 2020 13:37:15 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkpEv-0007jS-Ox
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 13:33:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1592228009; x=1623764009;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=pq7+Cad0Upf0gR5pSZeWVklhIYbcWc/Z2/yeAnUUmgY=;
 b=fpDLtFCx/Jv/9FBAr5z4aCyxpCVoyPZZVFt1A0Vlr4kCTaKz020soRxD
 n38SX6xSsGO94bATIsoHG0dgacApGKWzzwWSkgYjdFfxBu/ML7JA4Q14k
 YWOeUFfdhSLeu1WNKrYRwzeMIJRfv7UAtSTvTr12Z2NnRwFgNU+lbgAiU
 73CWgmOd9HNdmibblF9WesTP5vZsS601Rd/j9+HXsP2JefILqLa9E6NcQ
 UkVow9vzBHtha+x/vTvQ0jMKq4wbJXR5LKfIWibxbzP/sPcnKHv3oOg18
 BAfJa7YtzRyoG6OsMsyv/RiJKjjTd0J5jkcD9m7VFowchufeMT8yyE1gw g==;
IronPort-SDR: FJq1dMJI7LFLn52yKCI4CKrNZiG6i7Sm9giGAEhs/bVB0SewWfe7/PoRUA/fXDL9TBeGYWzisc
 YikhRiOl+0k/r3hzLODMcL6ZPd2jtMCp415K/YWsdQCzcswxDL5a1qSNPWN2bGwoH2BuTy8RrL
 GjOsPGH3HRJL7qfnlWo8BLfpUyEvS3btrLrQfcpeq9BAXG8hLjVWUAD7wzwZLchNspqGOT+shw
 YApGwLj/7mNu2/lIBXMO5ioEcdnfZYQMtrgexxEhHBbkqVfFWYI4MC8eNSmio7Kl5+eFgLSZhf
 dJ8=
X-IronPort-AV: E=Sophos;i="5.73,514,1583218800"; d="scan'208";a="15805535"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 Jun 2020 06:33:28 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Mon, 15 Jun 2020 06:33:28 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server id
 15.1.1979.3 via Frontend Transport; Mon, 15 Jun 2020 06:33:25 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Stephen Boyd
 <sboyd@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 09/10] arm64: dts: sparx5: Add Sparx5 SoC DPLL clock
Date: Mon, 15 Jun 2020 15:32:41 +0200
Message-ID: <20200615133242.24911-10-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200615133242.24911-1-lars.povlsen@microchip.com>
References: <20200615133242.24911-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_063329_887480_FE43C6FE 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [216.71.154.253 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

This adds a DPLL clock to the Sparx5 SoC. It is used to generate clock
to misc peripherals, specifically the SDHCI/eMMC controller.

Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 39 +++++++++++++----------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index baf4176ce1dfe..161846caf9c94 100644
--- a/arch/arm64/boot/dts/microchip/sparx5.dtsi
+++ b/arch/arm64/boot/dts/microchip/sparx5.dtsi
@@ -72,20 +72,29 @@ timer {
 			     <GIC_PPI 10 IRQ_TYPE_LEVEL_LOW>;
 	};
 
-	clocks: clocks {
-		#address-cells = <2>;
-		#size-cells = <1>;
-		ranges;
-		ahb_clk: ahb-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <250000000>;
-		};
-		sys_clk: sys-clk {
-			compatible = "fixed-clock";
-			#clock-cells = <0>;
-			clock-frequency = <625000000>;
-		};
+	lcpll_clk: lcpll-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <2500000000>;
+	};
+
+	clks: clock-controller@61110000c {
+		compatible = "microchip,sparx5-dpll";
+		#clock-cells = <1>;
+		clocks = <&lcpll_clk>;
+		reg = <0x6 0x1110000c 0x24>;
+	};
+
+	ahb_clk: ahb-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <250000000>;
+	};
+
+	sys_clk: sys-clk {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-frequency = <625000000>;
 	};
 
 	axi: axi@600000000 {
@@ -161,8 +170,6 @@ uart2_pins: uart2-pins {
 				pins = "GPIO_26", "GPIO_27";
 				function = "uart2";
 			};
-
 		};
-
 	};
 };
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
