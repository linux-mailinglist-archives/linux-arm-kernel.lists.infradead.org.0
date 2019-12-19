Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E631B125D6E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Dec 2019 10:16:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoVxuIYrg/bChI/KnzoIcxv437M7ZZu1fqjtSNBN1hU=; b=p14JVQG1uwgIDA
	6YtSUv5+MX9W7fyl20Vlo5ZYg8JjDrXlopu0GYKamgl9QFk9m5hBe9f7v8E5HbREn/kB9ZMxdQQgX
	gtBZA1BynFhIl+aEKWV3mIaFgWw46vMqST0+BcU2Rh52FroAelF20ymTvkjlHgvbXjzIjuX+cxVfj
	GqPbOlQ04/PcT9+NR/1MJmxRqPEdOYEMit+x4/MQ0lf11HqeXIC+6x/9izJwKBxo1HSAJRGI4cT7K
	w8iN+gkF8on0hoEonZwKz4QZ9nXnLWFm1S3mXikKZBvRBbDUktIwjnRp4U1Hh3LKsgHm/Er8gjbA+
	LfiTjV+ubz5/mbgFN3JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihrv9-0006j7-Lt; Thu, 19 Dec 2019 09:16:35 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihruO-0006An-6I
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 09:15:49 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.west.internal (Postfix) with ESMTP id 7D5E34A2;
 Thu, 19 Dec 2019 04:15:47 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Thu, 19 Dec 2019 04:15:47 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=6NGKzvrpI2XMs
 vJJcWx7H4uh6m9+LAikHJgWd3vnI9k=; b=W7IKUN7Ugndc3TMnp6GTJw7s0uxbQ
 ooCL7y/ZjXj8XjgZk4+uvn1r0cIsH0qsVVzvx5pzdjOBr24bSENHmjKpI4bYHitY
 ZOsfl1+8ltAHjY5sILSRLCBJfjDdOaJ0+Y75el1BqLbqHfL2g/vgtWqTbFQPYmwP
 vPk3XSIedP2XqZZ26PGT642AaZrwblPFfe1kSq2STr42YoYkSs1ic8X6d8GHtle8
 owUE+PGnOFWoKK8W3THGhTkqedxjPtqupSlqzD8Zb+DINhG6ZhephuOBbJkgflfa
 C3IFztiykF1VFyUgmmMqGqsh4eS7uW7to771PEQdx8rGzZfCg8Mg0hAHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=6NGKzvrpI2XMsvJJcWx7H4uh6m9+LAikHJgWd3vnI9k=; b=LtwcDZFZ
 ZNCfqj8J96ctskxM6MSi5lS47Kt2MF0GEgGMVwoRd+2eKayg+uGU32fol3oiySjL
 sFNCJAn0Tfs/pnkwim72LNHIckoBt9InJaPvgzowfbb3WKG5u8zpeBd5cto0u/yq
 Elks2+WVmWnpN7fTpEGEPQ5SM6eWNkaMQg6R6f/fpaIN5SA3fE1VHAfv4d7AV+8z
 4BPOj20IVZNRAEreq6njZ465oiXfXjTzKwk21wACnHk6NhLAFk/7FESUa5G9XNVp
 bLpgOcsEZ6ZoFTnsrE104aaYUFyohDGpVTbpri6RcA6hP0HajPENTTvTwwDj4Dm1
 E8Y6YLhQpHnaWg==
X-ME-Sender: <xms:wz_7XRVuBkm0aJydt9A-KU-BfcuMjg4fp9Fxespgsr4BSsG800SqaA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdduuddgtdduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucenucfjughrpefhvffufffkofgjfhgggfestdekre
 dtredttdenucfhrhhomhepofgrgihimhgvucftihhprghrugcuoehmrgigihhmvgestggv
 rhhnohdrthgvtghhqeenucfkphepledtrdekledrieekrdejieenucfrrghrrghmpehmrg
 hilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlhhushhtvghrufhi
 iigvpedt
X-ME-Proxy: <xmx:wz_7XV2yJDE-ywo4NFv6ESgWu4PIoG2-bZhvg5aLKVAA1GCas-X07A>
 <xmx:wz_7XYZsRroVRc3mJmm0Ny-xS_LQCjbYBN9hEUDW2IAoEzfU-6Am8A>
 <xmx:wz_7XYqiA-Qpe74x2JX-nTVEuRAR5q_KYckdbZypzMHXGTSCvz7cRw>
 <xmx:wz_7XQFpgTHwbl6zClHkOtyamiCA4fJs28JW8G6GXIGNPuidArQ-Ag>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id ABD1E80061;
 Thu, 19 Dec 2019 04:15:46 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 3/5] ARM: dts: sunxi: Add missing dmas properties to TCON
Date: Thu, 19 Dec 2019 10:15:37 +0100
Message-Id: <20191219091539.948530-3-maxime@cerno.tech>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191219091539.948530-1-maxime@cerno.tech>
References: <20191219091539.948530-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_011548_271064_FBE2C935 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The TCON binding mandates a dmas phandle to the DMAengine channel used for
that controller. However, since it's not used in the driver, some device
trees have been missing it. Let's add it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm/boot/dts/sun5i.dtsi         | 1 +
 arch/arm/boot/dts/sun6i-a31.dtsi     | 2 ++
 arch/arm/boot/dts/sun8i-a23-a33.dtsi | 1 +
 3 files changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index 6befa236ba99..9f0b645fd45e 100644
--- a/arch/arm/boot/dts/sun5i.dtsi
+++ b/arch/arm/boot/dts/sun5i.dtsi
@@ -275,6 +275,7 @@
 			compatible = "allwinner,sun5i-a13-tcon";
 			reg = <0x01c0c000 0x1000>;
 			interrupts = <44>;
+			dmas = <&dma SUN4I_DMA_DEDICATED 14>;
 			resets = <&ccu RST_LCD>;
 			reset-names = "lcd";
 			clocks = <&ccu CLK_AHB_LCD>,
diff --git a/arch/arm/boot/dts/sun6i-a31.dtsi b/arch/arm/boot/dts/sun6i-a31.dtsi
index 2cf34ae1c17b..4d622ec48b24 100644
--- a/arch/arm/boot/dts/sun6i-a31.dtsi
+++ b/arch/arm/boot/dts/sun6i-a31.dtsi
@@ -285,6 +285,7 @@
 			compatible = "allwinner,sun6i-a31-tcon";
 			reg = <0x01c0c000 0x1000>;
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			dmas = <&dma 11>;
 			resets = <&ccu RST_AHB1_LCD0>;
 			reset-names = "lcd";
 			clocks = <&ccu CLK_AHB1_LCD0>,
@@ -334,6 +335,7 @@
 			compatible = "allwinner,sun6i-a31-tcon";
 			reg = <0x01c0d000 0x1000>;
 			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
+			dmas = <&dma 12>;
 			resets = <&ccu RST_AHB1_LCD1>;
 			reset-names = "lcd";
 			clocks = <&ccu CLK_AHB1_LCD1>,
diff --git a/arch/arm/boot/dts/sun8i-a23-a33.dtsi b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
index f292f96ab39b..70ec3493061b 100644
--- a/arch/arm/boot/dts/sun8i-a23-a33.dtsi
+++ b/arch/arm/boot/dts/sun8i-a23-a33.dtsi
@@ -182,6 +182,7 @@
 			/* compatible gets set in SoC specific dtsi file */
 			reg = <0x01c0c000 0x1000>;
 			interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+			dmas = <&dma 12>;
 			clocks = <&ccu CLK_BUS_LCD>,
 				 <&ccu CLK_LCD_CH0>;
 			clock-names = "ahb",
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
