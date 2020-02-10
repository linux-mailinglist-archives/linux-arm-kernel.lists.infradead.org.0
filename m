Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0166C15722B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 10:56:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IkQDadxP/wjvn/ofgyuxvCNhbrQf6B9j5szF27K5Q84=; b=RQIuY3Lz940DeD
	byphyNCMgrjyScZBDvUoX1Est/WXuKMhwbMaIdh9vE/0C1aBL7ZPTH1p7PJB1O/KVBHH067bui3hJ
	A1lIpG0Lu2zGzaxOzUd+RmaQc2/f6ID2OPw3WIOrQgj+412j+IWCAoeDeHEwsolgiCxBUDyc9lPbQ
	jLyhYlofX61YEtteJAnjEySwNuYaXj/GW3B2hy1LZwA7yG/W9dWt0WX6audOA9LygoZo+ycux/0w2
	fIA7t2fOoQTAd6WEMUv71A4IcAm4PaRfSyoVE2Pnk/Fwv9nOyYs38QDoT77IuFoqgipQiVRqyrBSl
	Z/JX55pOYB3jM2or2TVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j15nu-0001cw-GG; Mon, 10 Feb 2020 09:56:34 +0000
Received: from out4-smtp.messagingengine.com ([66.111.4.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j15nW-0001UY-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 09:56:12 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailout.nyi.internal (Postfix) with ESMTP id 66FB721FC5;
 Mon, 10 Feb 2020 04:56:05 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 10 Feb 2020 04:56:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=jCYXCDWVFHW0U
 Ti32Vy2Di/WyH15E8j8UXxA0HYRVOo=; b=vKvg7ED9VbvgY23TrfhckRCg5UARP
 YdWpyHel/CD+79nRDnPQGzmLgGD9qePlB4jvOmBPRh4SSIU2LSTSKy9cJE6IDMsh
 UDhEs6Qw8ZnGE7EohfclTjvp8qkIlYpPrL7SA0UJ46Vo0P8KPF92xPUWIluPAlR/
 u8DbMoMDSka3llFMeRnWodZi6epPHbPx6hFaFWTRML8WdA0UznZ/w6+nYJkncQyw
 7wK9XmA04dk6JV1JGRKhNtRaY8ciHVbV0+K0ha6Swvz6CajbsVsC88Ny7sDccFOq
 Fa6QdN9R0mVsRvepDvMsZ1bbXOqyhy0BCbeTnkLBMSCGWlx3x046CiQUw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=jCYXCDWVFHW0UTi32Vy2Di/WyH15E8j8UXxA0HYRVOo=; b=ayDckl+C
 5E5t5geNFE7W5P0WPyPi3H8+2HbR3oSyQcvjWlbSkCpcYjIDNjDJokABpQbIILQi
 B6aegMhwClV86oy/GniwnSVl0/qckX0fPdGsBCZ6N+DbCwTf/Ak1IQo4nOV9QCia
 i7mcQsWCiEMzj014kuuwW/4PI22yE7loPWG30dAmYNjSJF9XOkdySkEURb9XFQhR
 nFxObrN9KLyNHQlpQDTLLsu6XVkuHnruK2GlQJXI7LkS/qcKbj4B4K7F3VGas9zp
 qJ5FX4e06dIyYdoFdkp1ZtfgLXcUqOqnQug5C0d3cp/jJsFKLcWjm6sKR1STW24J
 GbMJktSg/94e1w==
X-ME-Sender: <xms:tShBXhz5CLA9u1V2WLyobMjiG6dMxtcIQnxjNDvk6-kkn1PSPzskwg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedriedugddtlecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecunecujfgurhephffvufffkffojghfggfgsedtkeertd
 ertddtnecuhfhrohhmpeforgigihhmvgcutfhiphgrrhguuceomhgrgihimhgvsegtvghr
 nhhordhtvggthheqnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuih
 iivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordht
 vggthh
X-ME-Proxy: <xmx:tShBXgU02n_Um5XBgfRsCCgiJzaFrV22zwBdi4ZD1cIT_CTpZXvtEw>
 <xmx:tShBXhhizVgZ6AMyMSXy-jOB1MhDoZat0Jh3Sg7DBCrvxtSxVrWWLw>
 <xmx:tShBXgBynQhFSTv5oY1Kv4w-W1tCzJ108ckrj05lwoGHpuvNAE5-4w>
 <xmx:tShBXgoGyoZvGKOf7tXuinoP6h9FgQPoiR26Ec3WeUvOlqpGja-Yqw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1D8333060701;
 Mon, 10 Feb 2020 04:56:05 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Chen-Yu Tsai <wens@csie.org>,
	Maxime Ripard <mripard@kernel.org>
Subject: [PATCH 2/2] arm64: dts: allwinner: h6: Fix PMU compatible
Date: Mon, 10 Feb 2020 10:56:00 +0100
Message-Id: <20200210095600.77894-2-maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200210095600.77894-1-maxime@cerno.tech>
References: <20200210095600.77894-1-maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_015611_081858_6F833D10 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.28 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.28 listed in list.dnswl.org]
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

The commit 7aa9b9eb7d6a ("arm64: dts: allwinner: H6: Add PMU mode")
introduced support for the PMU found on the Allwinner H6. However, the
binding only allows for a single compatible, while the patch was adding
two.

Make sure we follow the binding.

Fixes: 7aa9b9eb7d6a ("arm64: dts: allwinner: H6: Add PMU mode")
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 3329283e38ab..06363c1bea3f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -70,8 +70,7 @@ ext_osc32k: ext_osc32k_clk {
 	};
 
 	pmu {
-		compatible = "arm,cortex-a53-pmu",
-			     "arm,armv8-pmuv3";
+		compatible = "arm,cortex-a53-pmu";
 		interrupts = <GIC_SPI 140 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 141 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 142 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
