Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D3B16660D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 19:16:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=49ZRXkpQjDCAGG319qAYlIvJ7dwmPfqN3LKbZ05wuUs=; b=PykbsV/gwk5Eb9
	UMF/xJWHG5+7w7aEIKS8vtNnXEZMIVGfiJzX82e0Z2J2S784nAYWPWLIVa5kszL4zVpFT5nslAwgk
	UpmWIRtMKUSg6n5BDgdFRE1shDIKgFjMl15pkdT7CUzbn942X+G0tsHTfWdzFzzfusbAtYX0/C54e
	WUKLTk+lbwCxD2jqPnToniJSkYdlLsnZ7xPaRzCFjIukmsM6sC2UUsujOZ5OxX/mxURRPlXAOxauf
	hBDXQ4TLr4Gn6i8zWX/OsjOa3VlWdWSLQh/PvhV7981+Nqvn/OSe0ffjXM460hsti0Y3YSj9ThiRO
	iYfZgyAXTpagFE7hPkgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4qMs-0002Ii-10; Thu, 20 Feb 2020 18:16:10 +0000
Received: from out1-smtp.messagingengine.com ([66.111.4.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4qM9-0001oZ-M8
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 18:15:27 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 0800621F1E;
 Thu, 20 Feb 2020 13:15:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Thu, 20 Feb 2020 13:15:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=1BfdN/koG36m/
 f9DbPf89uTtUlItLarQ7BWkFlRXBOs=; b=iJ1MFhPkb8XKx37Q4eJJEYJFC4mxg
 TW+9XgktIv6sNoTdgGCpCmR43le3RIdOttSkYXwNPcP1XQLNh6jakyc4yLrccb1+
 T1LdPsVDBevSlP/9c4/3o0geAFBFKXYOEoeLckoPaq/E6NdNIl/7ReFYYzae6Ccm
 XRFt7jfMNElb+9LjGM75BZA3aj1Jnp31KL4v9XKq17fhMDfwpJUnbgjPc73Q/D47
 PaXndkO9Gy6t7lRwpv1AXBx2OBA7KgfVXOgEku1mkzTyE3htL6wegtyCL5KKNHvE
 pkgd2UzvqI5n93KHVy4Jeoqp4OBUE4Pj81/2BgcVknqbOhSB+onPF5Sxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=1BfdN/koG36m/f9DbPf89uTtUlItLarQ7BWkFlRXBOs=; b=ZFgmTXNq
 0Z77UeSd/q2WPKclmS+cia2i0YrtWEQ5p4SPcX8LTODbZBWIgeoc5nztzCzWPPiU
 8ysdEIk9nnaawWaViDRDMZ7HRZoPkyTsKCeS83kMUl4LHs6G7ijEKtHEyv5F1GKS
 XY0sVP80rDRvS139iBVRS2s0k7wZumdLvzfedPBtzSRdilfKmzR1G1ViHuOQMBpt
 CT4EfF7vFmvXJox9lVD1Pvs0iIdVfoh040ErM8PTEqXwfBSumHAnIS6eJDsXDxEg
 nkOBww9VqFejySAdHXJMYj3NJgTXE+3x+UMHv5JfM6tE3T7qVAYqsh+etX/4s8ru
 AHp/bs5sGZwE2A==
X-ME-Sender: <xms:vMxOXthaKzDQB2Ekf5FZFKGJJTw1v_ikjo8JDAhmbRlSs838l91hRg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkedvgdduudefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltd
 drkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:vMxOXtP7MlV-ObceaIWIa4d0RoiicYXHB58zS2l6VHEi0qMbdING7g>
 <xmx:vMxOXg5JsXFv7B7DDQCUrYaBMQ1uoNLxEHv2KIpA5G7_d52N-SjYjQ>
 <xmx:vMxOXsm0swspw0daTL_WhGreioTi6uh9hEZYPYRIp7DP05iZujhU6w>
 <xmx:vcxOXnrr3_DifvpJHd49N-0scaAVWt1CbTW17IU-Le6QL0FTXL1Xvg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 97E5F3060C21;
 Thu, 20 Feb 2020 13:15:24 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2 3/4] arm64: dts: allwinner: h6: Add IOMMU
Date: Thu, 20 Feb 2020 19:15:15 +0100
Message-Id: <435c75d9cbccbf32f501ea897775351a73e065f7.1582222496.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
References: <cover.a31c229a83f1d92e6928ae2adb70887da0fd44b3.1582222496.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_101525_894613_CD3209A2 
X-CRM114-Status: GOOD (  10.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.25 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.25 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a driver for the IOMMU, let's start using it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 3329283e38ab..2d0777ad39aa 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -131,6 +131,7 @@
 				clock-names = "bus",
 					      "mod";
 				resets = <&display_clocks RST_MIXER0>;
+				iommus = <&iommu 0>;
 
 				ports {
 					#address-cells = <1>;
@@ -370,6 +371,15 @@
 			#interrupt-cells = <3>;
 		};
 
+		iommu: iommu@30f0000 {
+			compatible = "allwinner,sun50i-h6-iommu";
+			reg = <0x030f0000 0x10000>;
+			interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&ccu CLK_BUS_IOMMU>;
+			resets = <&ccu RST_BUS_IOMMU>;
+			#iommu-cells = <1>;
+		};
+
 		mmc0: mmc@4020000 {
 			compatible = "allwinner,sun50i-h6-mmc",
 				     "allwinner,sun50i-a64-mmc";
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
