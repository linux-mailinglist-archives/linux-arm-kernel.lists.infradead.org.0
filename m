Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8BB811F975
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:01:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6js1DxiGzpeciFwfo/9x4J3+1rvuafxgFr9vZaNLd0U=; b=D7PXFfCXNzYX72
	/0GfzKYL6XKutDoegzrjPVYg3x36gu7b0trJQyNbjjV85YG93wx3Yhn2t9Feo53+aEZP0Kjhs8Mdu
	L8dAfC+kxlm6roAJA/teSp3ZFbbd1vtVXZjCOp+zkbD2nQKWzRSChiLtKqCXCSIOvwDI9NXHKdXNw
	grQOGyVdmQZsA8hkUPsAs7Sd11XWN7IyqVTcCnnyl5i41i4gdMcp7fbW3RgB+K5lGA3ekDL4yiFIC
	kFzUyX0eZwUMM1F+IRULoWdiEJJHmWhA9aVDN3VepUflodHTvgmu9vaoWiwzpyCfmCMEXQNW26E0t
	/Z5zPaSfgy87EpEHbLMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXGq-0008Qr-Ri; Sun, 15 Dec 2019 17:01:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF1-0005la-RT
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:37 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BAFA24676;
 Sun, 15 Dec 2019 16:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429171;
 bh=EZHv3FHkZdfny3NSAdab5tp7Y0RDcEfbHiuBOD3ZxQo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=xwiYOsuzNAWmNvP5nIpflWhBotg3GwseugwEVquZTU9FO2v2x4qdUzaotd9+R8Ibn
 lEkoZUXeAgGIVD6zoRRX2wwffcooRSlf5d0MTvnW7qG5mCQfXs1Yeojuh4eGsbOayX
 SA6PinGY+41TiMJXEbnQkX01H4aGDHi35+chg2j0=
Received: by wens.tw (Postfix, from userid 1000)
 id 6B3535FD8D; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 08/14] ARM: dts: sun7i: Add CSI1 controller and pinmux options
Date: Mon, 16 Dec 2019 00:59:18 +0800
Message-Id: <20191215165924.28314-9-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085935_931439_5B9758BB 
X-CRM114-Status: GOOD (  10.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

The CSI controller driver now supports the second CSI controller, CSI1.

Add a device node for it. Pinmuxing options for the MCLK output, the
standard 8-bit interface, and a secondary 24-bit interface are included.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun7i-a20.dtsi | 36 ++++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boot/dts/sun7i-a20.dtsi b/arch/arm/boot/dts/sun7i-a20.dtsi
index 8aebefd6accf..92b5be97085d 100644
--- a/arch/arm/boot/dts/sun7i-a20.dtsi
+++ b/arch/arm/boot/dts/sun7i-a20.dtsi
@@ -729,6 +729,17 @@ ohci1: usb@1c1c400 {
 			status = "disabled";
 		};
 
+		csi1: csi@1c1d000 {
+			compatible = "allwinner,sun7i-a20-csi1",
+				     "allwinner,sun4i-a10-csi1";
+			reg = <0x01c1d000 0x1000>;
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_AHB_CSI1>, <&ccu CLK_DRAM_CSI1>;
+			clock-names = "bus", "ram";
+			resets = <&ccu RST_CSI1>;
+			status = "disabled";
+		};
+
 		spi3: spi@1c1f000 {
 			compatible = "allwinner,sun4i-a10-spi";
 			reg = <0x01c1f000 0x1000>;
@@ -802,6 +813,31 @@ csi0_clk_pin: csi-clk-pin {
 				function = "csi0";
 			};
 
+			/omit-if-no-ref/
+			csi1_8bits_pg_pins: csi1-8bits-pg-pins {
+				pins = "PG0", "PG2", "PG3", "PG4", "PG5",
+				       "PG6", "PG7", "PG8", "PG9", "PG10",
+				       "PG11";
+				function = "csi1";
+			};
+
+			/omit-if-no-ref/
+			csi1_24bits_ph_pins: csi1-24bits-ph-pins {
+				pins = "PH0", "PH1", "PH2", "PH3", "PH4",
+				       "PH5", "PH6", "PH7", "PH8", "PH9",
+				       "PH10", "PH11", "PH12", "PH13", "PH14",
+				       "PH15", "PH16", "PH17", "PH18", "PH19",
+				       "PH20", "PH21", "PH22", "PH23", "PH24",
+				       "PH25", "PH26", "PH27";
+				function = "csi1";
+			};
+
+			/omit-if-no-ref/
+			csi1_clk_pg_pin: csi1-clk-pg-pin {
+				pins = "PG1";
+				function = "csi1";
+			};
+
 			/omit-if-no-ref/
 			emac_pa_pins: emac-pa-pins {
 				pins = "PA0", "PA1", "PA2",
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
