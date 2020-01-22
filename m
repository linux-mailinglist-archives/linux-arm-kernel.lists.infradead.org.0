Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D93C145488
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 13:45:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFLCCEZoh1GKxs60BzQtaNbtQC56zGkz+eQcZbkp71g=; b=u2EuAQYPLQiE0e
	R0TzVbizZ0u77KVGMBlQpVk+5XloDC66mNAzilZi1HuPd5qGCUekwTJHGcnytryqcz4nZusmbsGYc
	Rfb44yQIL7rLp1KKLcM5ra5bfGIT97L7de1lMXDoISUOsmsl6JegqLb3rqYHHXG4Z44Ncux00Az92
	Bn9HOeCjk2gXjeOMQm3sup8wjareBTM3ro6HRl5hHXBsTOIB/aWo4I69V9sR1jnlFV4L7FgwqcwEA
	B8+nqAHatuyNRyQFQNh2bZpPlJDpJfuYJwh7Wqfc87EHVM8QRMxeqzXE8xhZHct3+LOXm6t95mjbt
	Ahz6XDP3J+rqYZOe5kfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuFNm-0000gC-N1; Wed, 22 Jan 2020 12:45:18 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuFMv-0007pA-Hs
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 12:44:28 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 32F022210C;
 Wed, 22 Jan 2020 07:44:22 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Wed, 22 Jan 2020 07:44:22 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=DgDfB/hFawptN
 HZCJCX81NZTCohtpfH3MNlMAuDUEKQ=; b=Z150IZz4hGxFI+wykeLAdtxo6Ddhh
 M5CEhCxbhrM6s1zLBcLKX4zrHzyR5SvMeKGWkLD0C5U9n1GbkuEqB2bbiy6F8OwY
 D2DIqIs1eWDAAYp2R2p7zaW0LWvJ/8Hpdk2OJCnT79mIcVD8TCQNhV3EdF7YjVnU
 JeF3ezdmTudepbEVQSU7n3KbqBL30cRXwAEWjNsO5x3oT3iEElqa4cfpuz5yLtIO
 1DgHiFWhlmkf11wJq67887YYwj6FSoC22wZGhHO6eLKA57oBBJ9ireorTAlhzFwP
 qQUUQLSFD19mpOijSi48wPfonjwW73B0/fLh2hwFCSwodBIncXyK94o4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=DgDfB/hFawptNHZCJCX81NZTCohtpfH3MNlMAuDUEKQ=; b=uIJmzyUa
 RE9JexdjY8rNY+OywLWfPi+Btfh9wrOSpkwEYAdS1B4p9nlRHbR9REQO390Fxq99
 N85270eEsfyTjOaD8Wi6ZF9duoVL7fVik9PSWkufAla7NQy4OmygVs2RTrprkyAu
 xlqOGiLQDFD52Z1Ue2DjzcskgQtGPj/W8v191zcN4R++AgdPAUADY2ThS2q9RaOw
 WESteeGKFoDwvOw7Ksac0rZkwwvvmMSXE3HEmNF9eDcylXPGcD8Ib41zN4HeRA/h
 ikLkkzFvxX343kT8hlQ57UQ80lBxr4yfcUbBPTNIVK2kysoWTJGnQzJ8666NxlRN
 xflNW4FH/kDNOw==
X-ME-Sender: <xms:pkMoXsgmaEntAfh5bt3y9RNcH2GQPGtm2bJXMEn6rJlyi3ZefsM_Gg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrvddtgdegtdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedunecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:pkMoXgeBJlM_AwBrZzpAzASI1RIobCbRh1SDGEVQlg2fxoqzSfJngg>
 <xmx:pkMoXnlNsIv4Xw5BkS6qkAp1XenVe6ShGFcICk0NrERExSAk0dOz7g>
 <xmx:pkMoXhuZZFTZr9WamAWErzchlz0e16zNWF29DGXsPT0dwEzoTB-6GQ>
 <xmx:pkMoXjx2A9AcYRe7KcLGl_O3InAxIgOXTbnqQ0z_1JeHdQR96hrC2w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DCBDF3060CBE;
 Wed, 22 Jan 2020 07:44:21 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 3/3] arm64: dts: allwinner: h6: Add IOMMU
Date: Wed, 22 Jan 2020 13:44:09 +0100
Message-Id: <54e22e25c2c13cb1b73cc7ecb645b5d62f325b63.1579696927.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
References: <cover.b2a9e1507135d81e726fcbb65137665a7f0ab74f.1579696927.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_044425_948903_0C258838 
X-CRM114-Status: UNSURE (   9.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, iommu@lists.linux-foundation.org,
 Maxime Ripard <maxime@cerno.tech>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have a driver for the IOMMU, let's start using it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 29824081b43b..8608bcf1c52c 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -53,6 +53,7 @@
 	de: display-engine {
 		compatible = "allwinner,sun50i-h6-display-engine";
 		allwinner,pipelines = <&mixer0>;
+		iommus = <&iommu 0>;
 		status = "disabled";
 	};
 
@@ -122,6 +123,7 @@
 				clock-names = "bus",
 					      "mod";
 				resets = <&display_clocks RST_MIXER0>;
+				iommus = <&iommu 0>;
 
 				ports {
 					#address-cells = <1>;
@@ -345,6 +347,15 @@
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
