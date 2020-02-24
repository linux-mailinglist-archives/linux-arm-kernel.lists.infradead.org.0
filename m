Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B82016A277
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:39:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ypXn02fFzQt9/5cr+ROJR1Vrf/764oRt+Zz1wleUqjs=; b=PtFEUHRkGNKMOt
	mvLRUe+5x5b/6G35txFJeYxtzNBnySjv/I5twly27ePA85k2dMTv8KMnEHp5rcHiyuUg9JyLNbxM8
	ru3Aq+0G2Hh8dJYsi4CoSKt1RfxG254AgqbgsBx+d/jKmjuDaMuf2GQaJEDGhjATCsHXByVn8Yzze
	Zo5G6woECaq82ezGdZh3liq98e+j7C/S9uToP4rAXfrw/JXnofGG32r4JtUJ7k2m7yFohSYhzg3KC
	L/FusYlWNM6XFob6GMP7rEGRnIyzlQU9/W0UeCrzqj2cISBtcyTKXV6SRmqLOv6exIJ3KDPhhdAhM
	oUtk9lDHoEYRNNHcK+xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ACT-0007aZ-Sv; Mon, 24 Feb 2020 09:38:53 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69lU-0003xv-0h; Mon, 24 Feb 2020 09:11:03 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 1C799648;
 Mon, 24 Feb 2020 04:10:58 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:10:58 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=B52jsyVmTXygr
 78dQDAoJEvEls8jV0jAU4I4CCulLxc=; b=LRMoYV/KRcEHJNOyHqqiZ9A7WD7sK
 DtJHaaw04LZFG/P5Q+6fQv+BbROcPNOYM5IAqiL9ilhsZsgmvydRzqLYra6f8uBU
 N3/DVNYdryAyD2HoE+DlFoZvU+Ef00CYSs9HcyrroctOtXozmlJTYbcg4+hy6TMV
 KJcZX/nPTpbkKLTBes8PXiLTbGQaYVqTp2iKeRDgbk29BesnGfsq2xIWwkOO8SKJ
 QaQ7U3iwk2UpkUEfCDtsOd4Q6OaZPd411AL9z7MLQnagLU4PcEx66gm7n2m2fBjs
 ihiqnfrNvf6VZYvzBjiTbHm6d14KodhMxFSHrxnQtCz1Ekkt3cbUjwSJQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=B52jsyVmTXygr78dQDAoJEvEls8jV0jAU4I4CCulLxc=; b=NF5oUwDg
 VjNbU3jOHePE30DeYeCnZt+JG+qes61RaKajUGY64FSkg0Zel5uZd4JKWD9uMV78
 fh1x73uauqNtDv7qc4ywgZhR0aFqer98jCiwqc0sdTVHo59b1yXt3isTejpC7dGD
 2IwHOeZR5P0RIvrrN615X9XBpIML8V8NktPrHvY4KHL4DH94lVa6507C08AP8dza
 7omeYvPZ9SXlXgJSDlzG1Pq2TOH2mleprgdiRHBc5a1OmBKUUozy6lHsA47ATSwV
 mLky+uizaa1NMo+aWeg3xtaua0KHn61VxTtBTFBsA1Rau7Qv3B8N8sVEzlmGlV+x
 LrrkoS011B/B8A==
X-ME-Sender: <xms:IZNTXhbMdskEF-E8e1a1ctXhtApEpQdhj98Ow8MKS61A_2RgoPPWLA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepvdejnecurfgrrhgrmhepmhgrihhlfhhr
 ohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:IZNTXl3vEg5rUXy9xNGUM2Vtd0wAdOpjuMlfUNcs9frdX3zwFLxPIw>
 <xmx:IZNTXj40Km_V-m_U88kRcxUb8sjObsSiiLUdAD5ZEo-N9ksadPOCYw>
 <xmx:IZNTXhSLVJcGzbk826Loq5ZQOmkWztsrMo29nUyB-HV3f4DyLTFBrA>
 <xmx:IZNTXu6uYh_9TC4XPWUDIh4WMzNi6DzQrsL8hFDMnZs3BqFW7XHxeiU55gc>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 5DD873060D1A;
 Mon, 24 Feb 2020 04:10:57 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 89/89] ARM: dts: bcm2711: Enable the display pipeline
Date: Mon, 24 Feb 2020 10:07:31 +0100
Message-Id: <80651ac7f73e3af8744c16efa0f83bed2cb14678.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_011100_358412_D61EEFC3 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that all the drivers have been adjusted for it, let's bring in the
necessary device tree changes.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts |  40 ++++++++++-
 arch/arm/boot/dts/bcm2711.dtsi        | 110 +++++++++++++++++++++++++++-
 2 files changed, 150 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 1b5a835f66bd..db96319b3a40 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -138,3 +138,43 @@
 &vchiq {
 	interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 };
+
+&vc4 {
+	status = "okay";
+};
+
+&pixelvalve0 {
+	status = "okay";
+};
+
+&pixelvalve1 {
+	status = "okay";
+};
+
+&pixelvalve2 {
+	status = "okay";
+};
+
+&pixelvalve3 {
+	status = "okay";
+};
+
+&pixelvalve4 {
+	status = "okay";
+};
+
+&hdmi0 {
+	status = "okay";
+};
+
+&ddc0 {
+	status = "okay";
+};
+
+&hdmi1 {
+	status = "okay";
+};
+
+&ddc1 {
+	status = "okay";
+};
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 1e89f2a810f3..98fb36c35033 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -13,6 +13,11 @@
 	interrupt-parent = <&gicv2>;
 
 
+	vc4: gpu {
+		compatible = "brcm,bcm2711-vc5";
+		status = "disabled";
+	};
+
 	clk_108MHz: clk-108M {
 		#clock-cells = <0>;
 		compatible = "fixed-clock";
@@ -245,6 +250,27 @@
 			status = "disabled";
 		};
 
+		pixelvalve0: pixelvalve@7e206000 {
+			compatible = "brcm,bcm2711-pixelvalve0";
+			reg = <0x7e206000 0x100>;
+			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pixelvalve1: pixelvalve@7e207000 {
+			compatible = "brcm,bcm2711-pixelvalve1";
+			reg = <0x7e207000 0x100>;
+			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		pixelvalve2: pixelvalve@7e20a000 {
+			compatible = "brcm,bcm2711-pixelvalve2";
+			reg = <0x7e20a000 0x100>;
+			interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		pwm1: pwm@7e20c800 {
 			compatible = "brcm,bcm2835-pwm";
 			reg = <0x7e20c800 0x28>;
@@ -255,6 +281,13 @@
 			status = "disabled";
 		};
 
+		pixelvalve4: pixelvalve@7e216000 {
+			compatible = "brcm,bcm2711-pixelvalve4";
+			reg = <0x7e216000 0x100>;
+			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		emmc2: emmc2@7e340000 {
 			compatible = "brcm,bcm2711-emmc2";
 			reg = <0x7e340000 0x100>;
@@ -267,6 +300,13 @@
 			interrupts = <GIC_SPI 97 IRQ_TYPE_LEVEL_HIGH>;
 		};
 
+		pixelvalve3: pixelvalve@7ec12000 {
+			compatible = "brcm,bcm2711-pixelvalve3";
+			reg = <0x7ec12000 0x100>;
+			interrupts = <GIC_SPI 106 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		dvp: clock@7ef00000 {
 			compatible = "brcm,brcm2711-dvp";
 			reg = <0x7ef00000 0x10>;
@@ -274,6 +314,76 @@
 			#clock-cells = <1>;
 			#reset-cells = <1>;
 		};
+
+		hdmi0: hdmi@7ef00700 {
+			compatible = "brcm,bcm2711-hdmi0";
+			reg = <0x7ef00700 0x300>,
+			      <0x7ef00300 0x200>,
+			      <0x7ef00f00 0x80>,
+			      <0x7ef00f80 0x80>,
+			      <0x7ef01b00 0x200>,
+			      <0x7ef01f00 0x400>,
+			      <0x7ef00200 0x80>,
+			      <0x7ef04300 0x100>,
+			      <0x7ef20000 0x100>;
+			reg-names = "hdmi",
+				    "dvp",
+				    "phy",
+				    "rm",
+				    "packet",
+				    "metadata",
+				    "csc",
+				    "cec",
+				    "hd";
+			clocks = <&firmware_clocks 13>;
+			clock-names = "hdmi";
+			resets = <&dvp 0>;
+			ddc = <&ddc0>;
+			status = "disabled";
+		};
+
+		ddc0: i2c@7ef04500 {
+			compatible = "brcm,bcm2711-hdmi-i2c";
+			reg = <0x7ef04500 0x100>, <0x7ef00b00 0x300>;
+			reg-names = "bsc", "auto-i2c";
+			clock-frequency = <390000>;
+			status = "disabled";
+		};
+
+		hdmi1: hdmi@7ef05700 {
+			compatible = "brcm,bcm2711-hdmi1";
+			reg = <0x7ef05700 0x300>,
+			      <0x7ef05300 0x200>,
+			      <0x7ef05f00 0x80>,
+			      <0x7ef05f80 0x80>,
+			      <0x7ef06b00 0x200>,
+			      <0x7ef06f00 0x400>,
+			      <0x7ef00280 0x80>,
+			      <0x7ef09300 0x100>,
+			      <0x7ef20000 0x100>;
+			reg-names = "hdmi",
+				    "dvp",
+				    "phy",
+				    "rm",
+				    "packet",
+				    "metadata",
+				    "csc",
+				    "cec",
+				    "hd";
+			ddc = <&ddc1>;
+			clocks = <&firmware_clocks 13>;
+			clock-names = "hdmi";
+			resets = <&dvp 1>;
+			status = "disabled";
+		};
+
+		ddc1: i2c@7ef09500 {
+			compatible = "brcm,bcm2711-hdmi-i2c";
+			reg = <0x7ef09500 0x100>, <0x7ef05b00 0x300>;
+			reg-names = "bsc", "auto-i2c";
+			clock-frequency = <390000>;
+			status = "disabled";
+		};
 	};
 
 	arm-pmu {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
