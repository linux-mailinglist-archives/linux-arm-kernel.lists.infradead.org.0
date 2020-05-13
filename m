Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66E171D171E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:09:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I/Ze5pDvm2pAJFvStaNM8hf+h1bSrHLFDqpjzGlvu4M=; b=ZljPWF/e+O01zK
	gk2cc7ElEO2XinAM838CxFuXbm57HyOLWstLPh2pZxXyp9VuCY5vD2+J6066Z5nXp841B18TZ9OvC
	eksk63RAvIY918rOXp2yJedn8LoGoe2SzAciP+KNtfHXcTTvJN/vISjhZ26nOTcyAONSdSskmpzrX
	ch/gYZxArbV7rsJCnjADryTWnYQCCTeIwZFZ+MWNzdQnnA3ztiWAGJkAJOcmZnm2LqZB/nQwSHyuh
	6Il7WZthJn3KLSmsc+AIaWLvl0Dq2swS3BlZcKYJVZgCzLWTYy7JhJbzeeoQyW9lfgVuRBu4iSrqR
	KuA5NCv7z/s9h48M0jyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYs4K-00067T-1H; Wed, 13 May 2020 14:09:08 +0000
Received: from out5-smtp.messagingengine.com ([66.111.4.29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYs2s-00052N-Py
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:07:41 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 3D3EE5C01A9;
 Wed, 13 May 2020 10:07:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 13 May 2020 10:07:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=C5hkAX+x99/Jw
 BSSLrC70gOWyiL6Jt45c8FQFobP2VI=; b=nSxBjKi26aUPOiJYq9YVlXTC9Q25t
 /KuTJJE3sBWSekFREPQEKn1eTfCoC2rPPbrM6oijvzd+r2aY0FO3gf/hTjiEgvbU
 HgRjjPNOJarvkmKbdwDaDVfbFCmUP4tEd3bV+so+Z69H92srjcGIX85WHfnu1tpL
 8z5MCKbQwd4auonUwLHPq0D22VFJ2bjJL9rDhkKSUjksak4BSTtbI2m3qkAg2JBl
 iqFPcxsG7Ei0Rq/XjJtSHQTlgW4w4UDmuFf0SBAxZIVhqyslPSW9c4MISzNS+39o
 YhEVeZITm/pNXsU1QmpC72BnRf+LmXsDjapFz/xqlWPmB0JFAhet4jr5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=C5hkAX+x99/JwBSSLrC70gOWyiL6Jt45c8FQFobP2VI=; b=cNrmk3bC
 JJa18+kHpGNEmwMxh4LbDDd/vQuotqXvuwrX91Q31baTjPgFOJRFn3XMT5UZG6Yk
 5ErcFN4SUN0sxEdP+CIoughnAQIpV/FhaPQx7rbfnfN8UHj/iSNiw163hymRWj24
 +O4ZSAW1nKSclzSiS1A7XzCQSMfvTM2HUZo0dQWKSSbGtApyJfeBeHOpKiCwrZat
 p4o7lRJ8QMhHJyV0N9x2NX6rYbaXnsxizj4a0qE/KSpljzPOuiHXmSeSF/h2bO6b
 ZN4ekC4YHKSuSSh9hEesXHpNvWkf1FGYweN4c+sjZBP/e6ihK4ihw/PLZN8CJ9jf
 TepjQWNJ+l8w9g==
X-ME-Sender: <xms:Kf-7XktQr5zzYFS_nLnCiafMuIsNHc_OKFrwsV1N1p8-wj2DUD3m2Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrleeggdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrghtth
 gvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveevheeh
 vdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurf
 grrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Kf-7Xheu4o8OhKapzH6wOEsa1JZPzY-3tNLt4lKeF5wBVYzZ2yeVgQ>
 <xmx:Kf-7XvwhgVKhVhquP-k6Ss-s7mUcJOmWhd7gAxW2fjbbpU-titdrfQ>
 <xmx:Kf-7XnNMt0bz3mjC4nQBvEV1-B9ISxyqAOWjqaQ8BzcGOqf2g8KDsw>
 <xmx:Kf-7XkxejVSHhqWhx4uqV8npbsNWR2KvENG_WqNhp7KGUZcbu1Uk_w>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id B0E45328006C;
 Wed, 13 May 2020 10:07:36 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Joerg Roedel <joro@8bytes.org>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v4 4/5] arm64: dts: allwinner: h6: Add IOMMU
Date: Wed, 13 May 2020 16:07:23 +0200
Message-Id: <2e65d396500d7510c76b7bb9b11bc63014940e4d.1589378833.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
References: <cover.b27dedd61e008ffcf55a028ccddda3bb4d21dfc8.1589378833.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_070739_962136_37A26E37 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.29 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.29 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index 2e31632c6ca8..78b1361dfbb9 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -135,6 +135,7 @@
 				clock-names = "bus",
 					      "mod";
 				resets = <&display_clocks RST_MIXER0>;
+				iommus = <&iommu 0>;
 
 				ports {
 					#address-cells = <1>;
@@ -413,6 +414,15 @@
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
