Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9841115722A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:56:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9PvBnE5eU4g5oCh5v8ewQSp7Z641jmUN8foDjhKFl+8=; b=UClxdimPu0ZK4p
	S/qajRZqsbMwqJtFkZ3lkmIHMmjA3Gl/i7Sgo1wK1Tf4cUKuxy25VqzKdmUtF4sYlxDICHL8cmQ8d
	bmdwHwFM94kI6XqHZXTeymHQY1QU43X06FZ7z5kiw3XUeWtkbLipEOXZ89RzTHLvfVxG9Gq7W1pMY
	rqvL9Shwz9MJwMNt7cgSBeyg8fmOqk7dztix0ZXDj9PYSxgUhdV94CVrub7BM1eu+8IK/OkCGW9mR
	Qcf/22rELkH684HlmH1GzoFTwZ036R2MOwgoU/Ark5quHsyr+xz5uiCMtBdn1iGE3IbUWuHCLdqBc
	crZFiDHVOxo0MCVVQUSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15ng-0001VB-5U; Mon, 10 Feb 2020 09:56:20 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15nW-0001UX-2P
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:56:11 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 452EC21B8C;
 Mon, 10 Feb 2020 04:56:05 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 10 Feb 2020 04:56:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=dqSv9jR17twn/3BL+Lwo08X6Bi
 VPJREXi8LXTuRqF+g=; b=TOfW0BXg+MaAZXghV/AuWRGi5th21ZxveA+aufovAR
 OwKFTUoK6pKvjB2ZWSPI1xvKZc6kqUxwabIhjHP/QdWBKPbts6/mkkrFdQnWNxsI
 QrSKlWnV8yT7UTq22Ik4NxhjkxY7GDQd/5NV3CoW1LjRJGqnMCr1DDunYt6R3hX2
 Y7UyifT0NYwP27UAOzvklgYZcFruRDKfUPWnb1c5/oryQjyFotP9Dd5NZHpkg7XR
 LcHoxs10VWKD9kt3S6L9WHXqSwZGCZIBbuK3yVr9+1j+SzSnxhoTzfuJhJuX6mZo
 NmbmSzEp5XaEZNtlVU4C57OMNInOW4nQrDSEoWf2rxpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=dqSv9jR17twn/3BL+
 Lwo08X6BiVPJREXi8LXTuRqF+g=; b=aQkiy3NbOiYWF1yXqH1hqur175o2TzIty
 2Jr9V6eHQfkpqpUt8/u3AKxSD68EonxbP80ahB4+BSiwvusdWUtnuFPfRW/0+W+Z
 mP/juiWImMVURVsb4Dn3a8KzMLoXrCeoi5Go1D6rfiDwhi8ptlwhk9KcbQO3z6kl
 VtUS02QmUci5adGeful/Z2tweUyefu3RuxFRbZM6EYzVFm3qmISLRbER66SmmYU0
 0j66ASvv88UDMwfateqjFXvXX0RtxaiD9dS1m0/LebIm0dmg3ChdYQz6CUU2YcD0
 v8CaiXj/G/m2dkcRGHXlci4s8axX7GzrRTnFEiyXsoPDj3i4cX4MA==
X-ME-Sender: <xms:syhBXg5tA1n7DMc1FA608jdiPqjkbYdYC5xX6TDh5mbBBfM5IW49nA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedugddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffoggfgsedtkeertdertd
 dtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhho
 rdhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivg
 eptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggt
 hh
X-ME-Proxy: <xmx:syhBXotoeEtCNFsFS3syhxpT2ZlKUqvfDOvqO2trfwlwR5DUylEUSg>
 <xmx:syhBXob74heDW691O-XrxniHDtkm5TkIp9gd0FPS_qLMB-7S4T0Plg>
 <xmx:syhBXn9HKUVPsLsg75z4IaLLWhzxsgTffsqCQJi7KcitQK1KCLZOBw>
 <xmx:tShBXho4qT2TUEbvLEH-xCG0ZoaLg7bQrEezsCzitlfNzPER8pVOig>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9F67C3280062;
 Mon, 10 Feb 2020 04:56:03 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 1/2] arm64: dts: allwinner: h5: Fix PMU compatible
Date: Mon, 10 Feb 2020 10:55:59 +0100
Message-Id: <20200210095600.77894-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_015610_189472_B49ACDB8 
X-CRM114-Status: GOOD (  10.91  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: andre.przywara@arm.com, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit c35a516a4618 ("arm64: dts: allwinner: H5: Add PMU node")
introduced support for the PMU found on the Allwinner H5. However, the
binding only allows for a single compatible, while the patch was adding
two.

Make sure we follow the binding.

Fixes: c35a516a4618 ("arm64: dts: allwinner: H5: Add PMU node")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
index 9893aa64dd0b..4462a68c0681 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5.dtsi
@@ -38,8 +38,7 @@ cpu3: cpu@3 {
 	};
 
 	pmu {
-		compatible = "arm,cortex-a53-pmu",
-			     "arm,armv8-pmuv3";
+		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_SPI 116 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
