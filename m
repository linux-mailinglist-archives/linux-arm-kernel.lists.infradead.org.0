Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E78138A73
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 05:52:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1SFjvdNhG/lAjX7jpT9B8TFm96AcURSBveDtT+LKZPk=; b=mN/0Ky69sLu7L9
	GK/uChvAb/1u5Gm+uTeErUMYtC5mBEvqJWGebPPBfajV4B95GEYz/lFZDTej0AAS/cRUR/GsiXIpi
	3lzs9Gc14U+wANqG9QQThXuWHx4U9Q475FE2j6QRyKe0IYv878ITJGsngtWu023cwh0hrSTdJsF2h
	yGQLHQxy7v/yYRzcGcnWFgy65ADQc4V1mNF+G6GoXgmnaN4XVBa0iJ/VcTOZKIAcbs5GU/lN7Fm/w
	/dRS9QSvtCmmA1udBGXb9izZkcrNZJoJy3/B3WcyvPmxP/HhR11Ytjf6I6sfddyMHay4zC4wqp2ib
	Psb2a0KvyF97Cg9Fwz7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqri2-0003M2-Vp; Mon, 13 Jan 2020 04:52:15 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqrfi-0000Cp-1r
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 04:49:52 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id F2FE96591;
 Sun, 12 Jan 2020 23:49:41 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 12 Jan 2020 23:49:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=SrzKOkLSwyAw5
 L9dj6C7jHF7WcI4gH8AwCRGv5SLZvU=; b=hru3Yt7atFl9GBt+GCtCPdBmDUR9R
 JFsrya4klAomB+LvN5NPEpMSccZh8GRZk8f3xh20zGGhbzVPqqHZKVBfayYNk4y3
 SW8EUBPQps+TQJnwtmAJJJA36EM1n/9tJItjX96FlaQVdPDujRWhiPp4gY58e4vN
 W/QXV6/NCu0NWthbHDzRS5eezxwYtOMrtDTOZMUhkE9LqyaYg83o06o3wUilMqK2
 3U3lAlqO3Mtvjg0deA3y/0mOX6XbNtagd4HaYaAoi3lPcLvFrIl+D8yhjvTHqETH
 JgZVXM+UOONjbtxSoYMVv/v4mu/SHG5y2Y0af1OUwHPPtlA0/FE7o12Rg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=SrzKOkLSwyAw5L9dj6C7jHF7WcI4gH8AwCRGv5SLZvU=; b=mGyPVWuH
 DroLBHr2/I3FUZxIhEsoxeLkyfSZOj5sNrZTA2IzaJjWWyN1JuOAkAx0lkLxAOh0
 RNykru32xUuhC5DT9504IHKi38fZGJx9w4C2Atlgh+bn30A2ywhqgwADcmQv4Mvl
 iC0noBfdQdq34LY5skGnmqH40K+YGfKYaPQCQqpb/ridLzj/CaVQuuGkJ2PvQovf
 Zatll07XFvDdfwwy2QBhZzWh9hKhl56fNKOCYwaGjQ9oEyudF/dxu6uJVCzGFe8+
 vw6mTSa3hH4lBl0I+6pJ5ZYIg4WizFfI3j9h299I7jULWCjj+f6YCjZphN/BT2Sk
 Qo28wD5gnkJAAg==
X-ME-Sender: <xms:5fYbXgQZ54lwgcfP0Mx3-fpGdpmdMxcN4ITSf6zfletW79dRO_DzoA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdeiledgjeekucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:5fYbXp6JbeoyAnyP_VcuG55H5Vy0CLYw7dfhC9eanTV04jnCLX7_3Q>
 <xmx:5fYbXnGoRNmMJJ5gb0b9JlYRRRMu99skSrVS4L3JzeyhAr3Gc5TC_Q>
 <xmx:5fYbXjGjoMuvqs6u2w2fm7hZ1PM9fZCvY_KpaMG1oOrBuKVgkLwqCQ>
 <xmx:5fYbXp3DnwSLWT5Wok4N1iZc8VswLvYOaJPsy6e1AEXEZlM_CNfXmw>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3EDDE30607B4;
 Sun, 12 Jan 2020 23:49:41 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH 7/9] arm64: dts: allwinner: a64: Move wakeup-capable IRQs to
 r_intc
Date: Sun, 12 Jan 2020 22:49:34 -0600
Message-Id: <20200113044936.26038-8-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20200113044936.26038-1-samuel@sholland.org>
References: <20200113044936.26038-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_204950_257521_D13231F7 
X-CRM114-Status: GOOD (  11.96  )
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
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 70f4cce6be43..7b2cacc0aecc 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -1044,8 +1044,9 @@
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
@@ -1094,7 +1095,8 @@
 			clocks = <&r_ccu CLK_APB0_IR>, <&r_ccu CLK_IR>;
 			clock-names = "apb", "ir";
 			resets = <&r_ccu RST_APB0_IR>;
-			interrupts = <GIC_SPI 37 IRQ_TYPE_LEVEL_HIGH>;
+			interrupt-parent = <&r_intc>;
+			interrupts = <5 IRQ_TYPE_LEVEL_HIGH>;
 			pinctrl-names = "default";
 			pinctrl-0 = <&r_ir_rx_pin>;
 			status = "disabled";
@@ -1114,7 +1116,8 @@
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
