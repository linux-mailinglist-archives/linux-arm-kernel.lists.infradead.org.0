Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D04611C52AB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 12:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=teL5UNx8J2pgPaCTAoDyRMXbCfbDYUkUVV/vbvBwrcE=; b=Q/yhTDm3UNl0zc
	aceoDDv7VbQXotS7+pOzrndfz0OF3I14kvJS0x+JJQGF6jy2pr6WD5N4PfUZyFFwSkZgXBig8rB+w
	mdIoP8iOv9QJxQSu/E6JgaQx2LLsSjlCQilcvRbxKvlOsqtSDqMCjdBeJh6OsuSapSi5iqWop9Tzt
	T763lEQc9+xjfBmvxgpyaVDL8RBVv8An7xATQ+oegrMBR2AxsRnxdZOTBGBin3t0THA63S7NU7BWN
	xzKFJuSh9Km4M7lwH3n7NfxHIDaTmgXj1uoPsiNlhxU2pnHWNlI3F0UZ6gcRhba1+Q7Cxf0xcm3kP
	Pw+kHtktFQUy6LNLF1lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVuX1-0005eb-Qe; Tue, 05 May 2020 10:10:31 +0000
Received: from out3-smtp.messagingengine.com ([66.111.4.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVuWH-0002o1-IV
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 10:09:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 06F1C5C00A6;
 Tue,  5 May 2020 06:09:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Tue, 05 May 2020 06:09:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=PP4evYCSYqJBd
 tsevGHWNnZYY8QlYKk1hl6EGB/KqB0=; b=H0yjZ4OlhAfuNz13EOHIe6FyIyHpc
 NuV9z/rZ7+P3eaTjbbV+3g1j+kXlidUHehQZSzuOTkr2W/TzUpQXUzztkuH9IYHi
 sJVl/yHhfCrr/F2ORbllRUt9TwWXbGWj/ASV/93ysbFj4a5NsLuFHuKkpL68g0yE
 oo3gbHgM6XXhL+0T+zHC9QkYPN+5I4qfWHlkbm1YS00riIiMRf0mI2A1aioWdNOd
 qEVZpRunZpRx8/iYphslNISHcjmH21UshgOoQFOFSceOaWNJFCeCAzJ3XSZFdXGr
 uJqQ6z66whTgoQmf6xbk4nk4pqFq4omBUC0f+2ln26vq0vo9P09d2eqYA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=PP4evYCSYqJBdtsevGHWNnZYY8QlYKk1hl6EGB/KqB0=; b=rd+Xg/4s
 uKPJkr8c1RnHUdwCOAQZCvnfQdX+2QpQz41dwNyb7WCMmUVyvQVkK5kR61p8bG/o
 mPnFjPbpczCK00fNkpNxPOpO8cfrVAfunuIcTZHgnSHc/80TMrE+P3a0FvRXzKK8
 po9BxGaYuy1EhNg12qNePjeR7/jiQNeHJazw8+RsaDysZpfLj2ZxDXT/2/513KZ+
 lL6+9ty5KMAumBBFb4BzujJKqJWfHHDK/DefIzndKGxyHtPCJJ49sXAU5WaO3lJo
 pVnekLUcebku6QBvzC6k7lYECsc1Ss5IiD4QNUf/1dG+LmLQ5M25nii6FqzEQERl
 mIQLTmMVE4IVbA==
X-ME-Sender: <xms:aDuxXlmSwDrdzMLXTvf5a4ZqyLilCGrjali_54ISFlD_1_Ft5Rws_w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrjeeigddvgecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
 vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedtnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:aDuxXk02GWIt9t8WK_ZPUAQissQSfhFRLo2zTJrmFZev8bLgbTyv4g>
 <xmx:aDuxXsSBMRRrZ3N9n0apfmx8BVAOyyGhWFkzinBqwl6K9sVyaiPLJg>
 <xmx:aDuxXlemXUELViOWBtZLAD4JptqPzPnLouaJbG9HEU-akwMJmyrl0w>
 <xmx:aTuxXh_wlNCI1S6aCn2-d1iI8O33hqE72lE8Tog4NYFnqWFW5uaifQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 96DDF3280063;
 Tue,  5 May 2020 06:09:44 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v3 4/5] arm64: dts: allwinner: h6: Add IOMMU
Date: Tue,  5 May 2020 12:09:33 +0200
Message-Id: <c728eee8371962db79e53b321e1102f3e763db0d.1588673353.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
References: <cover.70f96f9afd2e04161ebece593ae6cd7e17eca41b.1588673353.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_030945_760808_FFEC5B23 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.27 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index b9ab7d8fa8af..bba64a4030e2 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -123,6 +123,7 @@
 				clock-names = "bus",
 					      "mod";
 				resets = <&display_clocks RST_MIXER0>;
+				iommus = <&iommu 0>;
 
 				ports {
 					#address-cells = <1>;
@@ -387,6 +388,15 @@
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
