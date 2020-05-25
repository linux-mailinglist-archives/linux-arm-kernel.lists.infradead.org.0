Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD9BF1E05E5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:16:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4EMZhjnKd6kNkRyeJEkpP9cf9J/3xXu3eZnj9B53Y80=; b=eD1VMiQqPzHpQQ
	X70UxtFknIDKW//XbE/sg+GHy7RjeO0Ck9JbWyvDuB8mslURBYfv26TAvYBtuDfvYY+uimt3t4RoY
	/4P0HccR1yb0SABp8UYrC3TryzKG1J0laAK3CMSCjQRRUzkOZLY8IbKJZ/VoIUdW+XGGS5auTEG7v
	xJDucWTZ4AdNLvbI1Msltpl8A+szW1WPG5jiY316kNK9CkBAVr2AUiR+Dnd8R66WuJhvLC0fGdGw1
	UirodeLhcQtfdv/TBvQh4U/BrgnBSZ85Yb/ysHH2TKWVAcolSIf2e4P327sIXZV/Uh5QQZOVFuY2v
	1p9dhAnx7lbisgWOQoxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4X7-0004lZ-JK; Mon, 25 May 2020 04:16:13 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4Tj-0000Ba-Ho
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:12:50 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id EFF315800A0;
 Mon, 25 May 2020 00:12:42 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 25 May 2020 00:12:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=wJMeT4ENSLLpB
 HK49G1o41GE6X/5CEDc5+ipXnujXfI=; b=Yl7IF+bMFu0sswGGRCePp+xZSgLfj
 sMV0WWj51z/LC6/UNjoQtEY+1hjKalQhIen/pOAPP9XZug070dVpMjgCXXeVW1uB
 XeD6bpt27McSAv7pZaQeu4yEnOweMaxD9tZyOOtY1vQTgjHhmbz6QGKp73+eqxFs
 DBmuy7AhonKAAlqPZJ5ErmfW7aGvrLldz4rpafF7nV7te1Oe0Akw3gpesnY4LhiA
 02rzo8xiW0oeobRCpakFqargfcx4u6OBuY3RRRFv9DwtMkrW9s0Dl8kVxd9DLuLu
 yNW7f+0PkLMIajHRjVfu1eF7QY1ehrbWKnmbS2cwrGpU88oumETqVJ1Ig==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=wJMeT4ENSLLpBHK49G1o41GE6X/5CEDc5+ipXnujXfI=; b=RoQfArFD
 3faJa/wAUmmEa3OzGhLFBtgPQXJ4ObqjKPtHVS+FHQdMGLhBfIcDmdhxXQSfpqts
 LMrID+0/BIqEfSc0MyIeXSdpFmZ7RGmi3CK4aQmpcS8vNSAvxIhbOs5NKCklEUpS
 KqMIu6Lm479WA4GSwNoa3VgesUyD0ZrFOev8xoYxJeujkpAC0sW6G/HqUjLBaHc4
 B/rXC10jEzr03nfqgB3K6FD0kb5q5W2EnLgUwEsh3VDpan3OqpdKVjOn/2prbJmd
 YnNHY2hEcd919Qcfa8MbI/1kNzMZI66qZAK68Z2X8WTlz9+bUbA09WoCG9IdVoTq
 KQQJDQD0DRR8hw==
X-ME-Sender: <xms:ukXLXpOw9VlbpmJP4oCcbCmqPuyl_I7HhhsKHFsW7bf1-U_Fc6d6ow>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuih
 iivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghn
 ugdrohhrgh
X-ME-Proxy: <xmx:ukXLXr9cupOHN4TbEIROb-7gDyrGAdDsjNqv_rg5IOgA-PjJwpvVRg>
 <xmx:ukXLXoRvIW9L8vkkWQ19XQyNYYU8lYC3bN0v9MvDCz9PFwcT5Mil1g>
 <xmx:ukXLXlt_AOaYtFJEeh3S-9RNRo4VsCbTTQZls-UWTcWQQtpSTy5cGQ>
 <xmx:ukXLXiWGjG-FyTIytMikXi3Uwb9JJcj9x-c92HpbaKVyRbymOqD14A>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 490783066544;
 Mon, 25 May 2020 00:12:42 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2 9/9] arm64: dts: allwinner: h6: Move wakeup-capable IRQs to
 r_intc
Date: Sun, 24 May 2020 23:13:02 -0500
Message-Id: <20200525041302.51213-10-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200525041302.51213-1-samuel@sholland.org>
References: <20200525041302.51213-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_211243_747755_E6F7DDFE 
X-CRM114-Status: GOOD (  11.13  )
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

For the H6, r_intc IRQ numbers are offset by 96 from the GIC IRQ
numbers.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index d912188dc6ea..188699f47dea 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -844,8 +844,9 @@ tcon_tv_out_tcon_top: endpoint@1 {
 		rtc: rtc@7000000 {
 			compatible = "allwinner,sun50i-h6-rtc";
 			reg = <0x07000000 0x400>;
-			interrupts = <GIC_SPI 101 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 102 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>,
+				     <6 IRQ_TYPE_LEVEL_HIGH>;
 			clock-output-names = "osc32k", "osc32k-out", "iosc";
 			#clock-cells = <1>;
 		};
@@ -880,8 +881,9 @@ r_intc: interrupt-controller@7021000 {
 		r_pio: pinctrl@7022000 {
 			compatible = "allwinner,sun50i-h6-r-pinctrl";
 			reg = <0x07022000 0x400>;
-			interrupts = <GIC_SPI 105 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = < 9 IRQ_TYPE_LEVEL_HIGH>,
+				     <15 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&r_ccu CLK_R_APB1>, <&osc24M>, <&rtc 0>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
@@ -904,7 +906,8 @@ r_ir: ir@7040000 {
 			compatible = "allwinner,sun50i-h6-ir",
 				     "allwinner,sun6i-a31-ir";
 			reg = <0x07040000 0x400>;
-			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&r_ccu CLK_R_APB1_IR>,
 				 <&r_ccu CLK_IR>;
 			clock-names = "apb", "ir";
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
