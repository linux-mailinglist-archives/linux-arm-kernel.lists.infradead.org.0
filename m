Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 384531E4A57
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 18:35:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwAkrhCcwUpuazJT3b9tgfHDzRXy9B/0M7l7Zwlb7vU=; b=NKTNYnsVT29sN/
	8WCYFVxevQVkSx6QIoUnACFoUcpqZ1kzjDomTcVVfbp0TNjJdGvqAEtQyXyttIPz1ZEs4ly/gvfRw
	fyDjUS7EpOMlM9cFhf/DsWShKJhmkenum80OAJo2Xcr7pEJ2VpyeGN4Q6Lajl2s486uSC2hGD9gdf
	qPPiKsP/PC7+bpb6he64eRDmWRHaWLkjelAb9BJ/zeIfBhJENlOJdrpYvsosbr+74H+y7FbuK7Wpq
	KUhGTHzwVgDHzOtFSk6Ghs5WGQLqpJneGyyF0yd/nnz298FbW+brDriWSw+ILX4Cs443lzE07i73p
	py/ygn2wsIkg7c1/Cslg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdz1Y-0003PD-Ii; Wed, 27 May 2020 16:35:24 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyLb-00024E-OE; Wed, 27 May 2020 15:52:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 31826582132;
 Wed, 27 May 2020 11:52:02 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:52:02 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=BCdY/nZMlP2YM
 RIuUh/g7J7SPkyGS3gD6ikktUPwCGo=; b=tv13B7aL7M22wNbGd2PoaNEiBYM9o
 GQcQbErapAkrJvbe5nkVjq4Cvk4pkoYnSJGJxcYNiQh+iuC8+VGCKz472UxH2TvR
 7NlDXDMfg+oQKCMjT3m4zVVuZ3JwP22GAaPYPMR7fGdmyf3LjvM8Zsk0xcSon3Ky
 hXRyIl2upIGQdjfOGran9RSE7Q5LaES+VBaXywpjVavi76qtR7KqIHTa+4XYZ/BK
 acAw9Rvt8ytoKdlagPMyUyeZymbwTeeHBG8GQppgzPlb7rznRvwLjIW03qW0vLs8
 HzQkWS9EQIZAPH1Qde1DqO/ck/wZdzitH3G4sM1j1N6+wofVcdA84pNUQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=BCdY/nZMlP2YMRIuUh/g7J7SPkyGS3gD6ikktUPwCGo=; b=CqkfyurP
 pGZ4hqmG7N6d3nHRLxbv7pWKDoaCPSXnl8E+oIwSzW4zx9y74A+pd4P2JOpPmgla
 yzhTzYS3U2FTSbmwcEXVtpUtkBNet0tiJJiKVlOYVG1lT4jvLp5XvRLABniXngY1
 4hhT8iyQR6jUvqbz8XmZV6bLDItfl69TUG9EJBjKFfL/Jo+t9IxhBsq9FiM43wve
 w4NzSd8tK1ziqqyOTbUsFYqHZkSfBoPexg/1LjsDaMooU9UAxdWxNVDwDaMtnQHB
 UawlZXJ8G1kLi5EVANuFJ5bb/KcEwONMbvQVoI2A+tsr4ftgW4JaJgJbf14j4fzn
 PdRAdPfFaQcfhQ==
X-ME-Sender: <xms:oozOXvQjWd_8jih03EYh-1pFBOJrjg0VJck5oOWmnEaSWNRsvyopug>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepkedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:oozOXgyjJzR1ANhgo9DV3FtFr36DYNQUEhxLR5lRFw30daJa8lTVyg>
 <xmx:oozOXk2MzX_G0jjRpOorsLfhDYSZjwZ3irDFsQyoF8yhKIo50mO4xw>
 <xmx:oozOXvBWcXi2p9mNntkzAmFauEOMb11et77fEfPMjWaX1d2RfTbwhQ>
 <xmx:oozOXkgIMOHMXvyS_pG-vLA3qZUzCozR1ZgivRQjhljhyWCTm4VUMA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D288C306218B;
 Wed, 27 May 2020 11:52:01 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v3 105/105] ARM: dts: bcm2711: Enable the display pipeline
Date: Wed, 27 May 2020 17:49:15 +0200
Message-Id: <587d6e4a529a8d807a5c0bae583dd432d77064d6.1590594512.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_085203_955155_C0742848 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 arch/arm/boot/dts/bcm2711-rpi-4-b.dts |  46 +++++++++++-
 arch/arm/boot/dts/bcm2711.dtsi        | 115 ++++++++++++++++++++++++++-
 2 files changed, 160 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
index 222d7825e1ab..c4a650ea4e21 100644
--- a/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
+++ b/arch/arm/boot/dts/bcm2711-rpi-4-b.dts
@@ -231,3 +231,49 @@
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
+&pixelvalve4 {
+	status = "okay";
+};
+
+&vec {
+	status = "disabled";
+};
+
+&hdmi0 {
+	clocks = <&firmware_clocks 13>, <&dvp 0>;
+	status = "okay";
+};
+
+&ddc0 {
+	status = "okay";
+};
+
+&hdmi1 {
+	clocks = <&firmware_clocks 13>, <&dvp 1>;
+	status = "okay";
+};
+
+&ddc1 {
+	status = "okay";
+};
+
+&hvs {
+	clocks = <&firmware_clocks 4>;
+};
diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
index 00bcaed1be32..e637378650f6 100644
--- a/arch/arm/boot/dts/bcm2711.dtsi
+++ b/arch/arm/boot/dts/bcm2711.dtsi
@@ -12,6 +12,11 @@
 
 	interrupt-parent = <&gicv2>;
 
+	vc4: gpu {
+		compatible = "brcm,bcm2711-vc5";
+		status = "disabled";
+	};
+
 	clk_108MHz: clk-108M {
 		#clock-cells = <0>;
 		compatible = "fixed-clock";
@@ -238,6 +243,27 @@
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
@@ -248,10 +274,25 @@
 			status = "disabled";
 		};
 
-		hvs@7e400000 {
+		pixelvalve4: pixelvalve@7e216000 {
+			compatible = "brcm,bcm2711-pixelvalve4";
+			reg = <0x7e216000 0x100>;
+			interrupts = <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		hvs: hvs@7e400000 {
+			compatible = "brcm,bcm2711-hvs";
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
@@ -259,6 +300,78 @@
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
+			clock-names = "hdmi", "clk-108M";
+			resets = <&dvp 0>;
+			ddc = <&ddc0>;
+			dmas = <&dma 10>;
+			dma-names = "audio-rx";
+			status = "disabled";
+		};
+
+		ddc0: i2c@7ef04500 {
+			compatible = "brcm,bcm2711-hdmi-i2c";
+			reg = <0x7ef04500 0x100>, <0x7ef00b00 0x300>;
+			reg-names = "bsc", "auto-i2c";
+			clock-frequency = <97500>;
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
+			clock-names = "hdmi", "clk-108M";
+			resets = <&dvp 1>;
+			dmas = <&dma 17>;
+			dma-names = "audio-rx";
+			status = "disabled";
+		};
+
+		ddc1: i2c@7ef09500 {
+			compatible = "brcm,bcm2711-hdmi-i2c";
+			reg = <0x7ef09500 0x100>, <0x7ef05b00 0x300>;
+			reg-names = "bsc", "auto-i2c";
+			clock-frequency = <97500>;
+			status = "disabled";
+		};
 	};
 
 	/*
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
