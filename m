Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0488D11F972
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:00:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g4ELtnuayVZuK2/Cf9W1gxzE7JJ7AHZAqino5FbPghs=; b=W7EeQ7tDlzSFAD
	TapB2FCZNZniAs2UH4NBp7tc0/uWG07VMYybIKM1wYl7sd8039VwRBDMipYs5N7EXvApB0EOQ4OXB
	mHiGGfGjzhU8LNSEMOCg3IUQG/4ta13jwS7Gd8n7CZaVF3Iuk6lDBLk2JYdQX2lZDnNwOIRq5PVaD
	/npM0NSZP52TsRh1frQc0DoY8XBlQIHocS+vsY8G0+ORntJTun4mBFN4OBtPEji0itgZkjgN5F0HA
	Y4WZIch2iLDYBKAnv8QqFFXnoLkT6EQ2DyfZyzvO0sgeCML5NNoJWA9iW+iEDEje0bRuwPSub2sqa
	am8qL+SrtuNzyZtMlfpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXG9-0007jc-Jd; Sun, 15 Dec 2019 17:00:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF1-0005ld-Ql
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:37 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8E4A724681;
 Sun, 15 Dec 2019 16:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429171;
 bh=MFr4r0CtVaXDpNF9mGw8EkkRQEEHSJia0THm3nYQ5t0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=D9ZQd6ZMMz7jiffsSEXfvTw73DPNirugBVvPAUXOy/paHURs42gUWPq9YCCZTyzGE
 73uNV3nPw7bbPIHMPyjst+QdtEmUD/DDNyKIglZ0HhFAMrc4/gdXRRGFY8MWK6cvtK
 F2H83Iyd4O2Vtcw1WBWq4dXJMVFg8Jf+MV/kpmhM=
Received: by wens.tw (Postfix, from userid 1000)
 id 603815FD9D; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 07/14] ARM: dts: sun4i: Add CSI1 controller and pinmux options
Date: Mon, 16 Dec 2019 00:59:17 +0800
Message-Id: <20191215165924.28314-8-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085935_905756_A3DB437B 
X-CRM114-Status: GOOD (  10.13  )
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
 arch/arm/boot/dts/sun4i-a10.dtsi | 35 ++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/boot/dts/sun4i-a10.dtsi b/arch/arm/boot/dts/sun4i-a10.dtsi
index 4c268b70b735..bf531efc0610 100644
--- a/arch/arm/boot/dts/sun4i-a10.dtsi
+++ b/arch/arm/boot/dts/sun4i-a10.dtsi
@@ -624,6 +624,16 @@ ohci1: usb@1c1c400 {
 			status = "disabled";
 		};
 
+		csi1: csi@1c1d000 {
+			compatible = "allwinner,sun4i-a10-csi1";
+			reg = <0x01c1d000 0x1000>;
+			interrupts = <43>;
+			clocks = <&ccu CLK_AHB_CSI1>, <&ccu CLK_DRAM_CSI1>;
+			clock-names = "bus", "ram";
+			resets = <&ccu RST_CSI1>;
+			status = "disabled";
+		};
+
 		spi3: spi@1c1f000 {
 			compatible = "allwinner,sun4i-a10-spi";
 			reg = <0x01c1f000 0x1000>;
@@ -670,6 +680,31 @@ can0_ph_pins: can0-ph-pins {
 				function = "can";
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
 			emac_pins: emac0-pins {
 				pins = "PA0", "PA1", "PA2",
 				       "PA3", "PA4", "PA5", "PA6",
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
