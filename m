Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1370F138A6F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:51:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3R5S+HNMquYjuXywkjtbiv0YCu1KGneqmq8IQTdI5FM=; b=h2W3DmJvq22pQy
	j7KcFeOzwA+Sxbo3E23UhPNGsdhteofYWMpvVCnMEgDL93fBArVlbUF9ufRvtC3+7PozDIsqXC3jd
	CaE2FajeoFvbkn5QonBbwqDCkA537wLPKe0+hBVYRGfDMpeR5vCRHEHA+/+faLgVR148m04HswZ0c
	GOBMDBN0VwLOI1tzE3WsbqFa3qK3d2OWzMCQ1dnEHBbWReAM9A1l0mzExVcxeY10yJcgl9hCQiV3W
	7+JEQB7kcBYauZe+s8csgJY7sLU2KETZEjOb9Uvn+rBlKJrbvi81nPJ2onspy3cfw0AAfnVycpPUo
	lXukzKGuFAx3cGemwjPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqrh2-0002Kg-G3; Mon, 13 Jan 2020 04:51:12 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrfh-0000Ci-VP
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:49:51 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id BC6056575;
 Sun, 12 Jan 2020 23:49:40 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 12 Jan 2020 23:49:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=cT5DH4Y/cI2uR
 DZ94AwJbRfWX/CG0Z1zt/cRrDOeXBk=; b=O0epKHNtsn0YQegQk+EYvrANG/06l
 ra8eHMZ69Ccoz0CS7iK+AMMpxTGIrPV0aEGTn9IxskOMeCIyW18AbToS8qe7pLIy
 nfxjn/ZvKY0jj7tRoMM+mKy1ZyYYxm7hpvCqT0dSkncigfdT0tKVoRpYjSP5glDO
 QK26v5rvq+q+HktPtWWKGtuQ2NM8f5rZoLSADknniwsTgjTDZc7nJDIOgcQLdkgl
 mQCMh37+rFqVUPQkm3f1mn8Fx6o+Y8t8o3Rs7D8YxS6v0MljfsUQmG3DcOwkRf4K
 mU24tQLosUqv8Yyb8cE2iaek9H4dFfYhFZF6oa74quIaAq7KJZ82WxIEQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=cT5DH4Y/cI2uRDZ94AwJbRfWX/CG0Z1zt/cRrDOeXBk=; b=X9DbTNT/
 SHW+fGP0JraZLdNsmrzERpYVoVPr8Fxtd2KwQeBUCs/WaZu7ir1yFcmDniNHQQ6+
 tluFJBA9+odYhEggCwiPh3dlqKYZ2C3dzqYeZCA/tgDfKASMGkm9sJSC25vaka/w
 4tHh2ZVR8onWuSUR2fpCK4R+o3B8kPYFz+1JqNJZQLORL6RdD5sl/SCs6yTYTza7
 0Cg2yNPn8W6YrA2eeGNJwnyx9xIsaa6bq74F3Zp74sxIbeU1i1BibUYzWKcgeCNq
 bAAp7lUK1wB3hK78Y2JuodkqE9P1McmiuUNqq+n4erxR2JMgyXekSZP3+ZgIAyJI
 255vsFULPti1Qg==
X-ME-Sender: <xms:5PYbXu7cW7x2DIE-U7OsMTAgEaebLy8Yquxp6dXhJ_zPBEKXeM40LQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:5PYbXtT47VJRAokV9Uvt9QUTY3iTOmlIHYCx514X4OwxOz15Xw16gg>
 <xmx:5PYbXtpQfnNAdkSyBk355cDuLq3F0znE4SMom7wbymT1j2LXHTYPbA>
 <xmx:5PYbXrLbduElfCAochQvLYXqwGNQLb06SBdgIH0DjEumIdNHz2TVpg>
 <xmx:5PYbXi6f6oElab_1ZZRQYRyPZJy5_EHnl38Xw1Jpf4lODnOGNaYmUw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 0734630607B4;
 Sun, 12 Jan 2020 23:49:39 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 5/9] ARM: dts: sunxi: h3/h5: Move wakeup-capable IRQs to r_intc
Date: Sun, 12 Jan 2020 22:49:32 -0600
Message-Id: <20200113044936.26038-6-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113044936.26038-1-samuel@sholland.org>
References: <20200113044936.26038-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204950_160450_40CF2049 
X-CRM114-Status: GOOD (  11.91  )
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

All IRQs that can be used to wake up the system must be routed through
r_intc, so they are visible to firmware while the system is suspended.

r_intc IRQ numbers are offset by 32 from the GIC IRQ numbers.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 62660108550a..7aca128cfe09 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -807,8 +807,9 @@
 		rtc: rtc@1f00000 {
 			/* compatible is in per SoC .dtsi file */
 			reg = <0x01f00000 0x400>;
-			interrupts = <GIC_SPI 40 IRQ_TYPE_LEVEL_HIGH>,
-				     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <8 IRQ_TYPE_LEVEL_HIGH>,
+				     <9 IRQ_TYPE_LEVEL_HIGH>;
 			clock-output-names = "osc32k", "osc32k-out", "iosc";
 			clocks = <&osc32k>;
 			#clock-cells = <1>;
@@ -842,7 +843,8 @@
 			clocks = <&r_ccu CLK_APB0_IR>, <&r_ccu CLK_IR>;
 			clock-names = "apb", "ir";
 			resets = <&r_ccu RST_APB0_IR>;
-			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
 			reg = <0x01f02000 0x400>;
 			status = "disabled";
 		};
@@ -863,7 +865,8 @@
 		r_pio: pinctrl@1f02c00 {
 			compatible = "allwinner,sun8i-h3-r-pinctrl";
 			reg = <0x01f02c00 0x400>;
-			interrupts = <GIC_SPI 45 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <13 IRQ_TYPE_LEVEL_HIGH>;
 			clocks = <&r_ccu CLK_APB0_PIO>, <&osc24M>, <&rtc 0>;
 			clock-names = "apb", "hosc", "losc";
 			gpio-controller;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
