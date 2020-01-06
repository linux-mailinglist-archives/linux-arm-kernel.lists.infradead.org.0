Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7635F130F11
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 10:00:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=F1s40YTwb7OPblBQhl2eVb/xtUVrruJJPb4hD3tIHbg=; b=ejRP8lhlfeV0PK
	mMOHhIDVoZOVe9ZVDIXh4dR2reuHGYvG3Q/dgLZKkO6TnrH7DOs6VgH62cCMsQ2lUYxk6eEupe2Sm
	hdpK6WWSsB7+vz+I7tB2fOA/2pZMe6g7E7q+Q+qCq1fhMz/TUUd7IkSCBwLKVJg3WLwfBhA3YO6VR
	1D1q+e2uIBA/8rtRjtFOajxXSMVFnCbLLjeMrAxGSQKX1oPQ9LMpZN10bLr4Cs6oj0ZeDMy9ufUyA
	LNH9htN1Xl2GAQK7oTTJe6+HiP4c6JgRjU39TV7ZHlkav81wACXhXgY1eMar8GaBEqOVbBXGEaw3Z
	q+NWpqD9nYrmKSZuNqCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioOFi-0003OX-TG; Mon, 06 Jan 2020 09:00:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioOFW-0003Nw-Dt
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 09:00:35 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F17F320848;
 Mon,  6 Jan 2020 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578301234;
 bh=vQyBywdReqFFBKgdcXyrug3COE2qkfjhTUa8UfiyK4o=;
 h=From:To:Cc:Subject:Date:From;
 b=w46tN5kAiqSuaX0ajqvmx8wQw/Nx2eAOWF4NO+0j4/P9Y8otmSdz/PqG2VV15OIOP
 zD19L0rsREe3T8cVPZYxFKXNPElV4HTcQxAkDQ0jlI3/NY/LGJaM8I9BzvVeUiOyCa
 NAAjcCvEwgIfcdvZQrAPxykh4kpMcCSl8nqUm1/4=
Received: by wens.tw (Postfix, from userid 1000)
 id A9E705FC12; Mon,  6 Jan 2020 17:00:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] arm64: dts: allwinner: sun50i-a64: Use macros for newly
 exported clocks
Date: Mon,  6 Jan 2020 17:00:30 +0800
Message-Id: <20200106090030.9165-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_010034_490014_309BF6C3 
X-CRM114-Status: GOOD (  11.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

A few clocks from the CCU were exported later, and references to them in
the device tree were using raw numbers.

Now that the DT binding header changes are in as well, switch to the
macros for more clarity.

Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 92688b89c2a4..293059ffbbf6 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -590,7 +590,7 @@ pio: pinctrl@1c20800 {
 			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>,
 				     <GIC_SPI 21 IRQ_TYPE_LEVEL_HIGH>;
-			clocks = <&ccu 58>, <&osc24M>, <&rtc 0>;
+			clocks = <&ccu CLK_BUS_PIO>, <&osc24M>, <&rtc 0>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
 			#gpio-cells = <3>;
@@ -1091,7 +1091,7 @@ hdmi_phy: hdmi-phy@1ef0000 {
 			compatible = "allwinner,sun50i-a64-hdmi-phy";
 			reg = <0x01ef0000 0x10000>;
 			clocks = <&ccu CLK_BUS_HDMI>, <&ccu CLK_HDMI_DDC>,
-				 <&ccu 7>;
+				 <&ccu CLK_PLL_VIDEO0>;
 			clock-names = "bus", "mod", "pll-0";
 			resets = <&ccu RST_BUS_HDMI0>;
 			reset-names = "phy";
@@ -1121,7 +1121,8 @@ r_intc: interrupt-controller@1f00c00 {
 		r_ccu: clock@1f01400 {
 			compatible = "allwinner,sun50i-a64-r-ccu";
 			reg = <0x01f01400 0x100>;
-			clocks = <&osc24M>, <&rtc 0>, <&rtc 2>, <&ccu 11>;
+			clocks = <&osc24M>, <&rtc 0>, <&rtc 2>,
+				 <&ccu CLK_PLL_PERIPH0>;
 			clock-names = "hosc", "losc", "iosc", "pll-periph";
 			#clock-cells = <1>;
 			#reset-cells = <1>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
