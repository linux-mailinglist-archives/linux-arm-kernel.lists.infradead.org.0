Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F487138A71
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:51:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OZVN0XGFsiQ+12Egw1zsaw2cbownMPbMJ98dtnOmvrw=; b=nmk/24F94TvqzM
	7N9l/moItQ4hpW/4lYNmoB10j/M/DkPgB52ep+Xgxw6+K3joTTGCG9HJIYMDP+p20Al5XPSPHHDqU
	71AnG1J0OvLmGzYezFZPS3UGcegzya6ufbldmFeGvhXd/A28RxTrfS54ZBMxAnGntr/j7WzgDXSCq
	GfHzu5zO3DrMfLSVVUTiAZ7d2qsWohVq/z4a9lQykTvqO/zpyeCm/ohJu9AdedTQW9zoP9k2dy/4C
	xT+BWKJ+A9yyjfwElNL9jO5OLSwJKSW+bT1xswNkJT0fO+58f8ZKQ2npf5u3oyXuGalq3zN7w67s7
	tX7fRbm+wtWC97uTJfsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrhU-0002sO-TA; Mon, 13 Jan 2020 04:51:40 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrfi-0000Co-28
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:49:52 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 94A7C59EA;
 Sun, 12 Jan 2020 23:49:42 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 12 Jan 2020 23:49:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=8AqTt0s+nWzUs
 USBLaiZYq4YnGomy2QjysCCyqzWOoU=; b=A7ihwOn9nV/1HcNKs5AXZcdfksKfK
 8cNegpmGsc7s1ytMfij5BbDOXHokrAXY7dtMeFgXsgioo2HjL+wIsP9aR/xirvhT
 zxYSvSr4YdDUAyKi3ntTfWMSgtifOnIK4SqtH+ouimDRtSWXYz1s03/izvu4Vdek
 OVseO0BucXuNf0Q+Yf9F1junaZyYdgJbcTvdip5LRzI4u4IR1TzY1ieD+qf6V7DE
 9lAbQpx2iK5WXET8CqkA2zx0rFS10Kl1303jETJHh0QBzm7eRbyqmC+207rnKf3l
 X/DhcwxEAydY5CHNA3BDK4BNw5DpPg6iH9gxPT21kGQP91vG/sRCDuGSA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=8AqTt0s+nWzUsUSBLaiZYq4YnGomy2QjysCCyqzWOoU=; b=ZvrKjUhF
 jSurR8QJXFZ7emsATjBCQo5bnC9WBtehJZZTeOaZA9CkEeaMz8OeHexANiMfmhdP
 PFxywPQyKPE68MJvhSXTsd3vUed41NMzDpuTRQO2/GKsDJ30ZqP7qBGJ46zoyWYi
 daOmdwZK4iFaCGtHVSS/kx0n0ESLgYZPl700gjTzKOFhmldsLZF8LsF1S4nx1/1J
 l1h0tmYd6/vsbi+s9GjOz2SD9mQHVgibueB53at3v9kFhYfi7zvfxnd708JvBBWt
 rvZN1PkynwzPDm6Y3txcJe8OMFxdVkNzQt4J5Bbjr7MBD/Nu0ZbXhxmtZo8HPaGS
 fN0vaZ28x90kQw==
X-ME-Sender: <xms:5vYbXgEDER3oAtHt8XN25EXAR1LagBRKMVltmkFVJGNdQ6C8d5FQKg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgepje
X-ME-Proxy: <xmx:5vYbXuXKApK6dqjPYwajXXvt-Jxt8F0l754nXTS3cqoH4XsZJFpwzQ>
 <xmx:5vYbXrDoAmp6hM9uFvdZ0gY1PUc2oxq3_RtBH7uZq6znLXv_HIxAlw>
 <xmx:5vYbXn12Sbd9feTBA5nOoGfG2cwVi6vM_YEeCHzOr3aFYh-qblAbrg>
 <xmx:5vYbXmXf7iWZHIGbx89TR9UvAdnOHKyYAifbueppuIzRYYARFYC8sA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id D468830602DB;
 Sun, 12 Jan 2020 23:49:41 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 8/9] arm64: dts: allwinner: h6: Fix indentation of IR node
Date: Sun, 12 Jan 2020 22:49:35 -0600
Message-Id: <20200113044936.26038-9-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113044936.26038-1-samuel@sholland.org>
References: <20200113044936.26038-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204950_248046_122222EA 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This node was indented by two tabs when added instead of one.
Remove the extra tab.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi | 22 ++++++++++----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
index 0d5ea19336a1..f597f3fe06c1 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6.dtsi
@@ -766,17 +766,17 @@
 		};
 
 		r_ir: ir@7040000 {
-				compatible = "allwinner,sun50i-h6-ir",
-					     "allwinner,sun6i-a31-ir";
-				reg = <0x07040000 0x400>;
-				interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
-				clocks = <&r_ccu CLK_R_APB1_IR>,
-					 <&r_ccu CLK_IR>;
-				clock-names = "apb", "ir";
-				resets = <&r_ccu RST_R_APB1_IR>;
-				pinctrl-names = "default";
-				pinctrl-0 = <&r_ir_rx_pin>;
-				status = "disabled";
+			compatible = "allwinner,sun50i-h6-ir",
+				     "allwinner,sun6i-a31-ir";
+			reg = <0x07040000 0x400>;
+			interrupts = <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&r_ccu CLK_R_APB1_IR>,
+				 <&r_ccu CLK_IR>;
+			clock-names = "apb", "ir";
+			resets = <&r_ccu RST_R_APB1_IR>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&r_ir_rx_pin>;
+			status = "disabled";
 		};
 
 		r_i2c: i2c@7081400 {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
