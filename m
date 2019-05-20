Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4123A23B3D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 16:51:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n11G2FuNxxdIsOUURjwnJGQ+ARrDJTKW29lM/yV2jTQ=; b=spqipq9/3Cq9K7
	5QGT0eJb3ynCheX0O19ETQQr0QpSMUpM8Vmt/ZL0LzZpzvf2n6hb/VakLLvdnnzqmTJbk27M1dPIp
	g+aazULgDU+01Upd3QRQ/eYoUYu9FgqUCMacy7pT+2fLnw7+fgYql03h3o7qc7TjM+343NliEpMp5
	y9qsqfE4zhOw+ozRzMrQI/SZRxmBGlHl29ZeOcUPuSACep14Tfr+Ru8/XWbod2iepmHyroYKDAa3t
	/XdSL1Fd68B1hEuuiIjOJTzaO3GEfQa+iTY7AfuU5Mos4EHnKxk35Enj04WMx9DpVUA7acFQuizFu
	+wT4vvFATSRtyWc2dUnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSjdf-0004IH-6S; Mon, 20 May 2019 14:51:43 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSjd6-0003oS-FS
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 14:51:16 +0000
Received: from localhost (aaubervilliers-681-1-80-185.w90-88.abo.wanadoo.fr
 [90.88.22.185]) (Authenticated sender: maxime.ripard@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id A2A3C10000A;
 Mon, 20 May 2019 14:50:59 +0000 (UTC)
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>, Mark Brown <broonie@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime.ripard@bootlin.com>
Subject: [PATCH v3 4/4] ARM: dts: sun6i: Add default address and size cells
 for SPI
Date: Mon, 20 May 2019 16:50:36 +0200
Message-Id: <622e3d2ece14e5b84a7975026bb1a981228ee3ab.1558363790.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <f53ee257855c6499fd783dc8665558f7670312f6.1558363790.git-series.maxime.ripard@bootlin.com>
References: <f53ee257855c6499fd783dc8665558f7670312f6.1558363790.git-series.maxime.ripard@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_075108_727662_863BAAE7 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-spi@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SPI controller bindings require an address cell size of 1, and a size
cell size of 0. Let's put it at the DTSI level to make sure that's properly
enforced.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 arch/arm/boot/dts/sun6i-a31.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index c04efad81bbc..a57cbf33c12f 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -987,6 +987,8 @@
 			dma-names = "rx", "tx";
 			resets = <&ccu RST_AHB1_SPI0>;
 			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
 		};
 
 		spi1: spi@1c69000 {
@@ -999,6 +1001,8 @@
 			dma-names = "rx", "tx";
 			resets = <&ccu RST_AHB1_SPI1>;
 			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
 		};
 
 		spi2: spi@1c6a000 {
@@ -1011,6 +1015,8 @@
 			dma-names = "rx", "tx";
 			resets = <&ccu RST_AHB1_SPI2>;
 			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
 		};
 
 		spi3: spi@1c6b000 {
@@ -1023,6 +1029,8 @@
 			dma-names = "rx", "tx";
 			resets = <&ccu RST_AHB1_SPI3>;
 			status = "disabled";
+			#address-cells = <1>;
+			#size-cells = <0>;
 		};
 
 		gic: interrupt-controller@1c81000 {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
