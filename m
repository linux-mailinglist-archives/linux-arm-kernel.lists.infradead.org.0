Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACF4312F9C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Jan 2020 16:28:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Esx1iveo0y6jTziNnKKHym71NNXHdXGoJ0HiM9lzy+I=; b=hBAAfLQSY0sLTO
	Ja9sLBwYhW3ZqaLmQhVvSE5Q5JAh3796aPOlu3ozWUMVvCzysLEtvOxbKn1XLSC1Emmo5AoZZTjpC
	lVlJs6XIA37BPRrw8jrCJmnnYXj75yIJxfK4Jr0qcxtXym8S2uMSr/lMHGtEYl70AfCBbYlzsPEYA
	q2VhDc0cIG3xNMCdL8rW15Y3LbZg1jHexYNg5J+n8Oma0VwWdqvTmmiu7Z22CWUtvYeGtPvkmG+yk
	BHCr0anibI0taRNRUOTRVJNrR5cf0GTtbWt5unUF0i1J5qkMF6yMKqQX45kJZ4hDfQiB9WyYPTVNF
	AeDr6wzn5WAwW5QKkeXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inOsb-0004kL-6o; Fri, 03 Jan 2020 15:28:49 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inOrz-0004H3-Of
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Jan 2020 15:28:13 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5B6409DFA;
 Fri,  3 Jan 2020 10:28:10 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Fri, 03 Jan 2020 10:28:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=TULb9dflR8f+i
 ar3Jra82jnUYUmBfpvUi/00CZDkdqw=; b=Xe35b4raQXdDk6erfRm9RcsNCi1iB
 dPvQG1r7ACZLQ4MTa7yv14VcPpYe5z5NJBs2Pj/qiTZUb0qFCT5ZDvB/9GHwt2KF
 TsOQ3N4TUXk35EkszFozOAJqksCZY4TU7elbViRWRj3Tv4EPnSBLWLX6ynz7quXJ
 Kw/4CTXfA8/xnv4ZcxdpN+g3XWZos5b1iZpXRIrD6nuinvRztZ6qDqtyhzgCzUrA
 sz6Lp5f2G9gtmwXpVCN1qiZJZC9JqA3q5BIMO3ST+1Vh58vVre0nQ2o12VCuZ86i
 xIeDmpvwIm/1oS1DH6PMrhfi3DSXgwVZQXZVzOGt/VhCjtEg1XkDOQySA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=TULb9dflR8f+iar3Jra82jnUYUmBfpvUi/00CZDkdqw=; b=CYG5raXD
 wzN9Wk4AkfnlUXjh7rPjEBGPIUq3KFltXI/iDglrf1zYR81jPjQdZJVMZRu2kKIh
 napyl7tZ6SYuqgu+rnYVVa2OLhzpVkcSRvh8TvSzgtO38hUSqdZEWqobtpcdO0dK
 ZhGwXhr3tcSrR6WGG0rso2dsPGz9WUQHMFu8rBqH1BWZkBfGfI/rBTlsCSPGFA3s
 d8BqIuRXyv00TyBXar4f4muD8omWrig7EKjgxhId5Tz/gT8j94py+4/ODct2nxkv
 7+BCIElbN2um5uXO0WMoYtnFXiDRHc3UD1CQVx4Gt/jijYBOjvBmeOi1jW2epsVT
 G2p5d9RkGA9XwA==
X-ME-Sender: <xms:il0PXg7pNP86bbok-xln6obbRGTTSYhetK_w9Qq4hIExWfYo-9UAFg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdegfedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggv
 rhhnohdrthgvtghhnecuvehluhhsthgvrhfuihiivgepvd
X-ME-Proxy: <xmx:il0PXmm2YJ5BqfiCd0Ii3YWSpD_NDeTM_vCu4gv0uxSm850Fd7e0EA>
 <xmx:il0PXnXjTMULhxjosG8XTT2iLX1ngjyMBUUQJ5BF4eV3rC-BNqFPXw>
 <xmx:il0PXo4jp24etIEr1-gZwpZLPLnieZVnUfymBWOf3z09tpz4Q53Azg>
 <xmx:il0PXt_thndju0xsSyOFl3jK_erV92rgi1zAW7xtrrc2oLrMIrCWlg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id F368530607CE;
 Fri,  3 Jan 2020 10:28:09 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Sean Paul <seanpaul@chromium.org>, Maxime Ripard <mripard@kernel.org>
Subject: [PATCH v3 4/4] ARM: dts: sunxi: Add missing LVDS resets and clocks
Date: Fri,  3 Jan 2020 16:28:01 +0100
Message-Id: <20200103152801.47254-4-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200103152801.47254-1-maxime@cerno.tech>
References: <20200103152801.47254-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_072811_949970_0BC34FAB 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Paul Kocialkowski <paul.kocialkowski@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some old SoCs, while supporting LVDS, don't list the LVDS clocks and reset
lines. Let's add them when relevant.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun6i-a31.dtsi     | 23 +++++++++++++++--------
 arch/arm/boot/dts/sun8i-a23-a33.dtsi | 12 ++++++++----
 arch/arm/boot/dts/sun9i-a80.dtsi     |  8 ++++++--
 3 files changed, 29 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index 4d622ec48b24..7762fbd9a133 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -286,14 +286,18 @@ tcon0: lcd-controller@1c0c000 {
 			reg = <0x01c0c000 0x1000>;
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 			dmas = <&dma 11>;
-			resets = <&ccu RST_AHB1_LCD0>;
-			reset-names = "lcd";
+			resets = <&ccu RST_AHB1_LCD0>,
+				 <&ccu RST_AHB1_LVDS>;
+			reset-names = "lcd",
+				      "lvds";
 			clocks = <&ccu CLK_AHB1_LCD0>,
 				 <&ccu CLK_LCD0_CH0>,
-				 <&ccu CLK_LCD0_CH1>;
+				 <&ccu CLK_LCD0_CH1>,
+				 <&ccu 15>;
 			clock-names = "ahb",
 				      "tcon-ch0",
-				      "tcon-ch1";
+				      "tcon-ch1",
+				      "lvds-alt";
 			clock-output-names = "tcon0-pixel-clock";
 			#clock-cells = <0>;
 
@@ -336,14 +340,17 @@ tcon1: lcd-controller@1c0d000 {
 			reg = <0x01c0d000 0x1000>;
 			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
 			dmas = <&dma 12>;
-			resets = <&ccu RST_AHB1_LCD1>;
-			reset-names = "lcd";
+			resets = <&ccu RST_AHB1_LCD1>,
+				 <&ccu RST_AHB1_LVDS>;
+			reset-names = "lcd", "lvds";
 			clocks = <&ccu CLK_AHB1_LCD1>,
 				 <&ccu CLK_LCD1_CH0>,
-				 <&ccu CLK_LCD1_CH1>;
+				 <&ccu CLK_LCD1_CH1>,
+				 <&ccu 15>;
 			clock-names = "ahb",
 				      "tcon-ch0",
-				      "tcon-ch1";
+				      "tcon-ch1",
+				      "lvds-alt";
 			clock-output-names = "tcon1-pixel-clock";
 			#clock-cells = <0>;
 
diff --git a/arch/arm/boot/dts/sun8i-a23-a33.dtsi b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
index 70ec3493061b..48487f6d4ab9 100644
--- a/arch/arm/boot/dts/sun8i-a23-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
@@ -184,13 +184,17 @@ tcon0: lcd-controller@1c0c000 {
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 			dmas = <&dma 12>;
 			clocks = <&ccu CLK_BUS_LCD>,
-				 <&ccu CLK_LCD_CH0>;
+				 <&ccu CLK_LCD_CH0>,
+				 <&ccu 13>;
 			clock-names = "ahb",
-				      "tcon-ch0";
+				      "tcon-ch0",
+				      "lvds-alt";
 			clock-output-names = "tcon-pixel-clock";
 			#clock-cells = <0>;
-			resets = <&ccu RST_BUS_LCD>;
-			reset-names = "lcd";
+			resets = <&ccu RST_BUS_LCD>,
+				 <&ccu RST_BUS_LVDS>;
+			reset-names = "lcd",
+				      "lvds";
 			status = "disabled";
 
 			ports {
diff --git a/arch/arm/boot/dts/sun9i-a80.dtsi b/arch/arm/boot/dts/sun9i-a80.dtsi
index 3b533e85da43..ce4fa6706d06 100644
--- a/arch/arm/boot/dts/sun9i-a80.dtsi
+++ b/arch/arm/boot/dts/sun9i-a80.dtsi
@@ -878,8 +878,12 @@ tcon0: lcd-controller@3c00000 {
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&ccu CLK_BUS_LCD0>, <&ccu CLK_LCD0>;
 			clock-names = "ahb", "tcon-ch0";
-			resets = <&ccu RST_BUS_LCD0>, <&ccu RST_BUS_EDP>;
-			reset-names = "lcd", "edp";
+			resets = <&ccu RST_BUS_LCD0>,
+				 <&ccu RST_BUS_EDP>,
+				 <&ccu RST_BUS_LVDS>;
+			reset-names = "lcd",
+				      "edp",
+				      "lvds";
 			clock-output-names = "tcon0-pixel-clock";
 			#clock-cells = <0>;
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
