Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E05C211F979
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Dec 2019 18:02:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2bJjM+jcpWY8FKftSfE8qw9hdcljbODfr+HhmQGlguM=; b=fvLYYAJ7F+bpJd
	NgYu1ldilEOybmNrUtNeBW9euwaTs3GyG43RNz9Mzdb8xYXk7k+OwA/NVpr+v23/g9ED2OoO4tppd
	eVlu81GqVD1igPvXihNAh0KqTZ9FonxcN0R7LV7pr9biA3sJQtk5bA2ZwzxRDl6h6wyDOSgiTp4GG
	He9XPQGS6tg18sAJltGcePg2/UlS428TwDl24QZh4QudRDYw44n6rV+sJytFEGViUPKbQ+N9ue6eE
	oGc85xJrJfznbkYVelH54qdIp0LHJ8Gv9KE2Wmj2G6zcawh4teUcgUq9InU+VEK8gBuOV9EiG/i7z
	rmZfxglLwZzoSj6Dr1Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igXHK-0000Sm-QC; Sun, 15 Dec 2019 17:01:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igXF3-0005nM-TW
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Dec 2019 16:59:40 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9A99924684;
 Sun, 15 Dec 2019 16:59:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576429171;
 bh=XJDBfT1MU52M3nXB0FIH5aEUDPdxo5W3utk1GX6ZvZA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2bwAHaRcZ6+BOhTn9UUxARreLZGOTNh7g0sSK1CBJt1a5N1twqKmQOEoEIYdOdmIX
 T+ehJNtBF6OEyeU/hozCAzX5MCYP0K91k0sruHYnMrPOKLJ1qD8OPkVQVUEWtiw9Zt
 yvQfaHHpwLOPsEJBmzK2iKO4LjvLNqrJ1zr2lX7c=
Received: by wens.tw (Postfix, from userid 1000)
 id 732195FF1A; Mon, 16 Dec 2019 00:59:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH 09/14] ARM: dts: sun8i: r40: Add I2C pinmux options
Date: Mon, 16 Dec 2019 00:59:19 +0800
Message-Id: <20191215165924.28314-10-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191215165924.28314-1-wens@kernel.org>
References: <20191215165924.28314-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_085938_047093_29A96C56 
X-CRM114-Status: GOOD (  10.90  )
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

The R40 has five I2C controllers. Currently only I2C0 has its pinmux
option defined.

Add the options for the remaining four, and set them as the default,
since each controller has only one possible pinmux configuration.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm/boot/dts/sun8i-r40.dtsi | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-r40.dtsi b/arch/arm/boot/dts/sun8i-r40.dtsi
index 421dfbbfd7ee..82ea0b5b0710 100644
--- a/arch/arm/boot/dts/sun8i-r40.dtsi
+++ b/arch/arm/boot/dts/sun8i-r40.dtsi
@@ -373,6 +373,26 @@ i2c0_pins: i2c0-pins {
 				function = "i2c0";
 			};
 
+			i2c1_pins: i2c1-pins {
+				pins = "PB18", "PB19";
+				function = "i2c1";
+			};
+
+			i2c2_pins: i2c2-pins {
+				pins = "PB20", "PB21";
+				function = "i2c2";
+			};
+
+			i2c3_pins: i2c3-pins {
+				pins = "PI0", "PI1";
+				function = "i2c3";
+			};
+
+			i2c4_pins: i2c4-pins {
+				pins = "PI2", "PI3";
+				function = "i2c4";
+			};
+
 			mmc0_pins: mmc0-pins {
 				pins = "PF0", "PF1", "PF2",
 				       "PF3", "PF4", "PF5";
@@ -528,6 +548,8 @@ i2c1: i2c@1c2b000 {
 			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_I2C1>;
 			resets = <&ccu RST_BUS_I2C1>;
+			pinctrl-0 = <&i2c1_pins>;
+			pinctrl-names = "default";
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -539,6 +561,8 @@ i2c2: i2c@1c2b400 {
 			interrupts = <GIC_SPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_I2C2>;
 			resets = <&ccu RST_BUS_I2C2>;
+			pinctrl-0 = <&i2c2_pins>;
+			pinctrl-names = "default";
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -550,6 +574,8 @@ i2c3: i2c@1c2b800 {
 			interrupts = <GIC_SPI 88 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_I2C3>;
 			resets = <&ccu RST_BUS_I2C3>;
+			pinctrl-0 = <&i2c3_pins>;
+			pinctrl-names = "default";
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
@@ -561,6 +587,8 @@ i2c4: i2c@1c2c000 {
 			interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_I2C4>;
 			resets = <&ccu RST_BUS_I2C4>;
+			pinctrl-0 = <&i2c4_pins>;
+			pinctrl-names = "default";
 			status = "disabled";
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
