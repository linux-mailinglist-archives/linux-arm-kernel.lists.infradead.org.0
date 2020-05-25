Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2351E05E2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U41acXCHUEx2muOKqNsrmebi0J70hxH3+5laOWwp+Xw=; b=hhZMuG8qUOEepr
	V72+ogfsCRINk+qabaqyd6keWr9B2RcTnHLP6tr+T3KVlxzJNoHe/c6UIoUHrLFtoLifHP5RrgH4Z
	PyPchndczbfDMIB/Rh9bg4pM2gW02g1vGQGJkhDXyixpPrZ9AKGAzTmyv2UO0qM3Enl7mvd2Xgcvo
	dzJUl/xSCMLesS4a55A2PfUhd5VpVoDjtU+81A1IHqXxJbI3N1jnBSAuG8uKiAR+lhQCg00NjTj9F
	qrAuy7TIXWLPtrAnzBf38oqpNRdSAtrqXjZ6QGcYqJVhBEBNx8KkA17qJsLjV+nR0Luyp43WznAL5
	h0VMlZh0BF37yhfY6IBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4WI-0001kM-Gb; Mon, 25 May 2020 04:15:22 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4Ti-0000Ar-MN
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:12:48 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id D49E958009B;
 Mon, 25 May 2020 00:12:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 25 May 2020 00:12:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=AjstWz6QGrWfK
 MVU6mH/kwcSs8zFKnBr/OchzXq0rFM=; b=a5Nc2U/phyINb6gU6jODx/P0EFFlH
 AVUV1u7RYxUobC2D6N5n/UDhzLb0hyFlgJTUXxux88w9ji+B8GPW/HhIMhTWM0wN
 x8CHjZFkElnfxSoZj5BXwnES8jAe/Kc7eVhjo2sF1O1BSsvm37MR0vHMKUOtSn1C
 5iWtgYqyotSS7uT5kl8LYuAhiMemKOY7FR8TxZhoouIN28i9chZGTdc8/fwkmN7Q
 XbitCBh5WC7sFbpJHl2pNLdT7FGktrFxfq1gsqqR57yeGx6eJ6FJYwset9TVTi5x
 lxTN6PCWR0mMfn57J7TNnO+YBS9cJsQXpcJSY5NuukMHU4sIbxWbqXoRA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=AjstWz6QGrWfKMVU6mH/kwcSs8zFKnBr/OchzXq0rFM=; b=YdQsXW+W
 42/N2tWUhXeZzhsFkANls8yinIJeLBfg655GH+J9XlrkYhd61A9F8pITSU3uYHHj
 i2yS6fw4BOeS9FbM2w5W5IHOlqZe/BcI5I2JjGiqIgT4GnqYhkMNBcINFwALvpH/
 GIqD6v3Id5qq8ZLagYlUKnpgoS26C/of5tlZKP/rdRq1Ni/kYB7Sn3jFgiZCYWDl
 m3uSc6RJZ76uqk7eBB6vauZZWTi1LyEbqq9m/yK4rXXrgJHAzns8eci+gyeNkMOY
 K5QT+w85cdkbyU1UfsS/gS0tCoxv5nxhPuMv/WSRjJvOpEH9edqVdCkn0CuSSjMk
 sBo7RA2gQwnK7w==
X-ME-Sender: <xms:uUXLXtXPT2kqpDtvJIiuElLzULxtVll_GBC-1dYjpjV5aob8Ur3wAw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuih
 iivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghn
 ugdrohhrgh
X-ME-Proxy: <xmx:uUXLXtn3BiLC5rqxs0kBABHo9zx9NDnf--UcBu9gJa05bKZ2mioQAw>
 <xmx:uUXLXpbVEGFB_MSQ9Q5zdS6Kw0ZYveo8Hv2YPmNkb_uMS3Iz8dNDbQ>
 <xmx:uUXLXgUhO7Otau32OP0wIgRYxc2HuNRWQFTWQBAm2NS6IVi_Stuidw>
 <xmx:uUXLXgc0aWpugkatrYSJSDLp98AsgZvUHSS-gKd9brtmnVerxJgSSw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2C9B93066544;
 Mon, 25 May 2020 00:12:41 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2 7/9] arm64: dts: allwinner: a64: Move wakeup-capable IRQs
 to r_intc
Date: Sun, 24 May 2020 23:13:00 -0500
Message-Id: <20200525041302.51213-8-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200525041302.51213-1-samuel@sholland.org>
References: <20200525041302.51213-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_211242_885322_DF4C5792 
X-CRM114-Status: GOOD (  11.50  )
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

For the A64, r_intc IRQ numbers are offset by 32 from the GIC IRQ
numbers.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index c26cc1fcaffd..33f2ce0d93aa 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1176,8 +1176,9 @@ rtc: rtc@1f00000 {
 			compatible = "allwinner,sun50i-a64-rtc",
 				     "allwinner,sun8i-h3-rtc";
 			reg = <0x01f00000 0x400>;
-			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <8 IRQ_TYPE_LEVEL_HIGH>,
+				     <9 IRQ_TYPE_LEVEL_HIGH>;
 			clock-output-names = "osc32k", "osc32k-out", "iosc";
 			clocks = <&osc32k>;
 			#clock-cells = <1>;
@@ -1227,7 +1228,8 @@ r_ir: ir@1f02000 {
 			clocks = <&r_ccu CLK_APB0_IR>, <&r_ccu CLK_IR>;
 			clock-names = "apb", "ir";
 			resets = <&r_ccu RST_APB0_IR>;
-			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&r_ir_rx_pin>;
 			status = "disabled";
@@ -1247,7 +1249,8 @@ r_pwm: pwm@1f03800 {
 		r_pio: pinctrl@1f02c00 {
 			compatible = "allwinner,sun50i-a64-r-pinctrl";
 			reg = <0x01f02c00 0x400>;
-			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&r_ccu CLK_APB0_PIO>, <&osc24M>, <&osc32k>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
