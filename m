Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7911F35EC
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 10:10:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29SWDAFHXzqpSUfGr615IsgHo7cFA5ZsVYNEE/IsTEs=; b=WM5/XXXUYB5LNj
	6FV73IHdgztYoDYKbuVnb1IMH1WUqfGGcGYhy6sOh6kqLiR/cfh4BGsc5ddU2bKuyipJTevVog9aU
	koDsbugRuPmNAEMxDulFYGW0t+W3b0asR2U+rYSliIEXqQEzDzZJXGw8F/hZg8CriKwthcFJZ7y5B
	0RtBTdXqjzA+oypJqFEb5ZrYqM2s2J78h/iuSFqDYEi3ehtYDgiqQclJgHMYhf+wm4ucq6IWx/hac
	YnQVzVIcywTGgXeiwa6u7D4C9I/y28Wk+d3CWa9/2V3Fc25xKoSts7I9LwHjetvNP9Fa2YupgTYeu
	N1Btjzjq8HMdh2aZVeFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiZLJ-0004OC-EL; Tue, 09 Jun 2020 08:10:45 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiZJI-0000i0-Q4
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 08:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1591690120; x=1623226120;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8mLLYk0uqZ0EEHZBr4fBGxsB72v7sutGB5vvE2ygR9s=;
 b=Npq5sc0xr8O4ppBMySbhb7fhqc0psIcX5Tb06i4vTL1s02XmkZOvCX/s
 Ln4jY5QhtgiebKSWZ8eGuSF0tKvmfJf8Lltp1PcnYLNt9dj3BAW5yxUDD
 9XOX9iHQINrbQGJ0b+hJw3xYMXim7RYF7BaJM3ARDSEn701oaXvco6C+Y
 EWiC3AYhAtGmKlKkqtygybVbBAz6o/PDCw4Ay7ayMOxSm2uuHVQ5NkA0d
 +rJ10r0O0i7Xz4FCAu+mWEiERu/kRcFfSG/WjKr57qsRd6UnN0PECiHLc
 y0+qgwceko8uHMcYUGdN9RePxQrhFpFCIZF9u9zJf399Md13LSAHseeS6 A==;
IronPort-SDR: fip+a2Jl4EFpakUOYuo/couh6s4iVqnMDrBPzOuJ4eeE7pkSGcUxRnMCGQLHtIhqRHy3ex0gia
 pFxUqSqjJhSu/wMsWqQ+4PZkflSLFtKpomdGbPUYayvkRMsipj+pst8IFM5IaQjiL8W+X/zZBW
 A9uc2vuZ9Imm8Ae7lwdIt2r7Fc3EKw4RJjdzPG7GNsShBCUHIq/6truWBjvyJJUXnSOPMhAeuf
 vCwdTRGGfZdrNasVm2Vt+m4bxos8J14dOFFW10o25EtR/p2FTJdP2QSjhxCbMD9f3HId2SDMnD
 0u4=
X-IronPort-AV: E=Sophos;i="5.73,491,1583218800"; d="scan'208";a="79412866"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 09 Jun 2020 01:08:38 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1847.3; Tue, 9 Jun 2020 01:08:38 -0700
Received: from soft-dev15.microsemi.net (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1847.3 via Frontend Transport; Tue, 9 Jun 2020 01:08:35 -0700
From: Lars Povlsen <lars.povlsen@microchip.com>
To: Arnd Bergmann <arnd@arndb.de>, Stephen Boyd <sboyd@kernel.org>, "Linus
 Walleij" <linus.walleij@linaro.org>
Subject: [PATCH v2 09/10] arm64: dts: sparx5: Add Sparx5 SoC DPLL clock
Date: Tue, 9 Jun 2020 10:07:08 +0200
Message-ID: <20200609080709.9654-9-lars.povlsen@microchip.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200609080709.9654-1-lars.povlsen@microchip.com>
References: <20200608123024.5330-1-lars.povlsen@microchip.com>
 <20200609080709.9654-1-lars.povlsen@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_010840_866632_1B74DDA9 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [68.232.153.233 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>
---
 arch/arm64/boot/dts/microchip/sparx5.dtsi | 37 ++++++++++++++---------
 1 file changed, 23 insertions(+), 14 deletions(-)

diff --git a/arch/arm64/boot/dts/microchip/sparx5.dtsi b/arch/arm64/boot/dts/microchip/sparx5.dtsi
index baf4176ce1dfe..d4d7f9ce627bc 100644
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
--
2.27.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
