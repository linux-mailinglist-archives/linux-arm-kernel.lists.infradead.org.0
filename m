Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C95D1E05E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0oNUWwPk7uXyS3ho2/xoHwjOb/r0jeQjI2Bl0v5p258=; b=fV33tUk9pk+ixQ
	B2qiOaIHFhrMB4ds77AdnFt9ICj5qiEnRcBbODuXf+jXA1z+JwQI0LEpr9R+/ff1ciA3C2j559AZ2
	rggsEfeM/vCMTF2EIhpz1akYlbMvQ3RDdb2Si3rBVkE+LfXE8kuCsFPfMHArJNp34/bR+DzeKubPe
	YI4bhTTjBNOdVxWHICqM3IIi0gU1cte5LCvPLzPg4xQ7jEICE72W6oKb90P87L8hrdbp36dQryeFI
	l15jeR7GvI5NAcEbJnhypkPoenkBCqUxchHqpIfmOmX+2p+vLZHErOiT+4xdeSARguOpHR6aiFlWX
	/16jUuQIXj0GcAaLnSJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4Wb-0004LG-Js; Mon, 25 May 2020 04:15:41 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4Th-0000A8-RH
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:12:47 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4915158009A;
 Mon, 25 May 2020 00:12:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 25 May 2020 00:12:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=scAeKOYN6U1Ep
 ihzAYCDSCBuXJQThd3gMwznYbjUp64=; b=QKlgVXeTBTKYzX+99X7fuyyftVqEi
 YHKebWsTTM7VUqBy6k+PQr/7URU56au1gstNXSd/0iwaNUBzoaDyDTPE0GTQAg9n
 RUW+8C/REy55ZWUVuQg/yJirz9qN4uA+Lzz6xb+17VkDd6aTZ0oW2hbnIOABW3q2
 4Ikr4jDpsK2dbOAfR1/I+OkwXFMxba3D6EXAzFP3+YmP1S6uQVyGtaQpwIum84Sb
 8zqC2kHhIDpdNqj9HGTT9XstFceh9rP5XHEYmgPpgT/mK4d+YJMpd5xLUPdkHadX
 t69MqGDg2XhvJI9RYNohY4pNzFn1mfiLmhNtX4tp7BKAG5ZRjkGLpRvfw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=scAeKOYN6U1EpihzAYCDSCBuXJQThd3gMwznYbjUp64=; b=GYSHueMv
 eZ8mCWKynobadXi7+EDZFHrNIM5CqzyRfDOgua+D6D3Cp1tTYz/oyICBl+eL2l7M
 g7C8+MKAJQVRc9xcdSk3qlYE+YRq7Lvva+ff/jXcmYaPHvNRa6nF7mZsDEptp/1z
 uzQUKBI6E/qGvGvcrei7yjKagvGiOIGDovsKGLVIdEKKNFaAEHaQvULNhslGw17A
 hbjitOAmjx5dRmwnPie35Om0sO77gYJUJcGgSm8Jzs3BcBOVn6PpZIPq/2kG9CH/
 5HjFmed1VjSvvxDz/ha0ksPCl2+AjmD5AcC98+LD3eqIK5E/nljzWvMwSwTzuGmt
 AkxTnYhEJqXECw==
X-ME-Sender: <xms:uUXLXl0SjhvXl9MV9hT61lL75JIX9RjzDdI4ymSFNN0j9n1rHK6PUA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuih
 iivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghn
 ugdrohhrgh
X-ME-Proxy: <xmx:uUXLXsF7rzslzZgfQtXjej1hQqAq44H6wxQh0wTAysbmXy-3-57CLQ>
 <xmx:uUXLXl5vM368Lxmej_6WpsiR7L6qeUtEd228QJfp7JyIVmtKLPRxGA>
 <xmx:uUXLXi1LgGWNHo3tXDqPC0unslR1mqrgaB28Ds7sRLt9MNT8hb6xPQ>
 <xmx:uUXLXg_pulQUyByQTya18rvkF8dIeMMVspWDXechrI4bpUHkkUlSUQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 995E2306653A;
 Mon, 25 May 2020 00:12:40 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2 6/9] ARM: dts: sunxi: a83t: Move wakeup-capable IRQs to
 r_intc
Date: Sun, 24 May 2020 23:12:59 -0500
Message-Id: <20200525041302.51213-7-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200525041302.51213-1-samuel@sholland.org>
References: <20200525041302.51213-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_211242_039529_282D3DAB 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

All IRQs that can be used to wake up the system must be routed through
r_intc, so they are visible to firmware while the system is suspended.

For the A83T, r_intc IRQ numbers are offset by 32 from the GIC IRQ
numbers.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 655404d6d3a3..fcfc573eb96d 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -1130,7 +1130,8 @@ r_cir: ir@1f02000 {
 			clocks = <&r_ccu CLK_APB0_IR>, <&r_ccu CLK_IR>;
 			clock-names = "apb", "ir";
 			resets = <&r_ccu RST_APB0_IR>;
-			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
 			reg = <0x01f02000 0x400>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&r_cir_pin>;
@@ -1140,14 +1141,16 @@ r_cir: ir@1f02000 {
 		r_lradc: lradc@1f03c00 {
 			compatible = "allwinner,sun8i-a83t-r-lradc";
 			reg = <0x01f03c00 0x100>;
-			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <10 IRQ_TYPE_LEVEL_HIGH>;
 			status = "disabled";
 		};
 
 		r_pio: pinctrl@1f02c00 {
 			compatible = "allwinner,sun8i-a83t-r-pinctrl";
 			reg = <0x01f02c00 0x400>;
-			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&r_ccu CLK_APB0_PIO>, <&osc24M>,
 				 <&osc16Md512>;
 			clock-names = "apb", "hosc", "losc";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
