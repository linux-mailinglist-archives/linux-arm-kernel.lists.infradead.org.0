Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945941E05E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zutghy6/yrzAv5vYdv/+TD5L5O5LGN8Ia8FDOi3YFKM=; b=mCrVmIa6T7IZuL
	59MG8OeIoqvhW/JdvHuhnqVNZthPHYTyQxgY9Lx1W45Bxi7BNTNhANO4KXbxDJAWbAXoYL31rwI+D
	kugSuNE28JVL/I22KsYW9aviV5Z/XBwOZgiYVNKB2XihJ1u6bo8xcWnXQQh7fxQPRpDhhDhrhagK6
	B1QOZynAeLO83DDhB0xOE4EiAnlX+1iYeiy6VP5NYKjgMXJ9b0cXohKivpWYfsDITo9LeoYrrdwvM
	my/b1R7UiWU7yjZ8jdPfckFu9Uz20PFXVYxcmvzj7r/nKfOAcHLJ2eLMVyH14pPoY7T+puNd3UYhs
	pyC6DD4YppaYAYG3wbAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4Va-0001Gw-Tc; Mon, 25 May 2020 04:14:38 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4Th-00009k-9u
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:12:46 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id B9EF0580096;
 Mon, 25 May 2020 00:12:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 25 May 2020 00:12:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=0k0on15QdqSzY
 KsCWM4aNUcDIKxCa3l6xi36LL5uc+w=; b=v8dViW5+RC8U9PIHUYx0XmI0auV6U
 U6FOohxHwEpL4KNQMbIjBSdsaol65i9vvjd+hZtiM4zE6nPmEyZb1I1c4+/sLy85
 ogdAX/hqeSpV27r8H1P13MajSST1gpewzEK11QweKoRU9KiCBEZDiwKAGpnqtjQ+
 hPVEQlIuZNn6U5w+z1dqdKAdb7kB5f56gSsxFOwWvsoYYC1Ks2YqyEORwC6zWt3g
 ZYWbYFg7+P5tyIknEKnkOLsqBtVRl9EVT57VTPAt3WQLbEdTFkoEy6PkFycxxC2X
 9mIR4jyKjNAMqDKXjnfNJo5XlEzYbU3DH1OjxylHvrKG/bteFWr4juX0Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=0k0on15QdqSzYKsCWM4aNUcDIKxCa3l6xi36LL5uc+w=; b=KVQ/Olqe
 FriN+FqHHaPjzY6nzvHHuuP7qa68VKo4JH4dotCFGzR/WCOuyubV0TBvANjCDMPp
 hlhs86fp35IN3uXwJrSoev9tjALdvRxBX/LFkVgIY4EHfVj/VbJ8KIZoHSU0Xi21
 GJasvlwbVMBI+/JxgJd1kodHwDgmzh9/Rs/TInnc+CkOMjm/4tCqLrriLJjC/GY0
 /c721AsyRe7EqGYXUkZetJLUsbKbLVHCDpF3VkyDxp7KLfOVMDYuVHqSkf2xURqD
 fmPReouNOlnzWldHOxgdDfAuuMIU6oe6s2VFfnfZM0XMZ9HYgpEflrxfJH0iFRYs
 7ScVBUid75912Q==
X-ME-Sender: <xms:uEXLXtqx1i2EFDkEYdxHqorKK6FuFQdHSAcMeIwwMgpSNmbVUzA03Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuih
 iivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghn
 ugdrohhrgh
X-ME-Proxy: <xmx:uEXLXvqxIbGgETr-b0aXH5UbGn-wq2PInBJoJ2zLzIrhRLhyfKzSWg>
 <xmx:uEXLXqO7F4e7HfARZ-rathsjvl66ZnKCcHFjq8YeDktbdcbcP-EtKQ>
 <xmx:uEXLXo7C1nCYWKsX4HwCQ7Mp1nIo8HnI_TPD_Zw0glHTitLgIHcJ-g>
 <xmx:uEXLXpwQkOk4R4iPvEC2r3xygq4H6B7scrDgdQ6Ffce8ZqEd2q0_Kg>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1084B3066544;
 Mon, 25 May 2020 00:12:40 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2 5/9] ARM: dts: sunxi: h3/h5: Move wakeup-capable IRQs to
 r_intc
Date: Sun, 24 May 2020 23:12:58 -0500
Message-Id: <20200525041302.51213-6-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200525041302.51213-1-samuel@sholland.org>
References: <20200525041302.51213-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_211241_481405_FEBA4A21 
X-CRM114-Status: GOOD (  11.48  )
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

For the H3/H5, r_intc IRQ numbers are offset by 32 from the GIC IRQ
numbers.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 94f648ad1c9e..93e7ce60a64b 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -829,8 +829,9 @@ hdmi_phy: hdmi-phy@1ef0000 {
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
@@ -865,7 +866,8 @@ ir: ir@1f02000 {
 			clocks = <&r_ccu CLK_APB0_IR>, <&r_ccu CLK_IR>;
 			clock-names = "apb", "ir";
 			resets = <&r_ccu RST_APB0_IR>;
-			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
 			reg = <0x01f02000 0x400>;
 			status = "disabled";
 		};
@@ -886,7 +888,8 @@ r_i2c: i2c@1f02400 {
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
