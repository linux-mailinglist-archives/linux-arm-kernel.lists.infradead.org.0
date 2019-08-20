Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC8C95521
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 05:24:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nB6l4dh1MMgrYMuX4DDet9ciDYcBoEUshyBjJbU3gqc=; b=DxQoMuMA89txT4
	TunkXNAd1I90glzjMJklfjetlupkEUYAao901lt7bsXxhXQk6HbXCpmeX3p4Bq6Jxx7b1+9qzY6bg
	8MFzFX/XFK9LXkZW5T3r5IlpYUtx4/gm9RDeib7bgECiM9mcBtCPaAsz7T41IjHZ5RxV82FJIGGHv
	tBGaJ2qXdj3SAvuBONZIVXCilAOo2kUs5nH0JyMnJnJ/wL1PeS8DB2ctuREFAv1V1/7PnlV4gq2nR
	XcSArlUKSWIqpB34YyDacFWXrZIGcCjhGOu7PtKsd6cbyBfrAVdG7wPcTLQYtuEqZHvBmJIHp2dZK
	J9woCXDCB8azdjh0lMaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzulC-00040s-O6; Tue, 20 Aug 2019 03:24:38 +0000
Received: from new3-smtp.messagingengine.com ([66.111.4.229])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzuju-00033o-3q
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 03:23:19 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 69B4A3548;
 Mon, 19 Aug 2019 23:23:16 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Mon, 19 Aug 2019 23:23:16 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=da/HA5aDX/4ws
 o/bGdIpUQMMjVTdDBI9MxYlR95dyfU=; b=o1Xys5ozKYozQOOKg3kxuH3Bo2Kph
 YBJQayYXzdJK1upxZzcXlbxsPU87i1k/BiMPS98DuV8lcfudZKYGuWrS8rmwdRde
 j0dqN7oZBssq/3H2SHIXgBuw++fO+46m2cRLGSSAYHDQJ4kwCLbUHQkXSW1tMVtE
 ct3MmUDMK9FytRE+fyBh6mpzcSrxqfrgocJKSYhaBKyJIwRRASCyY6NBuWlTvZ/G
 W5YRj5Yjk2YdxnfBsMVP36L3LbXBX38ty1tY8E9s5+XuFxPLjb8hidBj7g1KXiDD
 6lXVhhYxO8fWaWBS0PUGg+2ALQKKQ+mZweDk1ut6Ni8S9WLsQ8uEYPhQQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=da/HA5aDX/4wso/bGdIpUQMMjVTdDBI9MxYlR95dyfU=; b=S7uByfs5
 nhUVI3FGD62ykjkHVYDg7Xxjcw/JXsdr5kKFQqZTUSJIOxqajYEHtiQe2i3+iRNP
 mQpi8GG2RmVbq2i/2k1BgMzx2DXy/GEXwA5i9+2yeoJggzYcrLMDlt7AWrYDCn5g
 CksamdLIPOTo80tgzyXRuUtfP/+HV97iCNx9m5OgQMiB0p8t1Eh5yf7wzdgaiu05
 kAKasSWMWxy5XNHYC82hYzcR5TDM+mM1XCpmmv3LnBz1zdOZkM6TxmXqf2Aobz1j
 fVfuvWVwsXIRbLIpqLXDUnQnh+ftyQrIUthcShiV+lefO8YfCVSduUqx0BxturzU
 xDWglcr32/Yqfg==
X-ME-Sender: <xms:pGdbXZG1-mphexTWcWq3wpAP9yGWJO55qSipX8KK_nTicflmIiVtnA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduvddrudegtddgjeegucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:pGdbXUS2e2j9rm3R6_7vg8mxSdeDA6gEb4Dc2q-fhfRSQGurFbnKRQ>
 <xmx:pGdbXYRSiwY5CHefTTspo9Hj5ikhh1Zna6w4LUUuJz24V7a4mxQ9Tg>
 <xmx:pGdbXf3EDhjO4uDCPKInKNu6bVkrlAvCVIsiT1xv59F9f8iERWXMfQ>
 <xmx:pGdbXRHtmD82LjaYZMV_N9yFl0TsRQIicDmiBXBRYDdo35YHjrV98Q>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 523EF80059;
 Mon, 19 Aug 2019 23:23:15 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Corentin Labbe <clabbe.montjoie@gmail.com>,
 Vasily Khoruzhick <anarsoul@gmail.com>
Subject: [PATCH v4 06/10] ARM: dts: sunxi: a83t: Add msgbox node
Date: Mon, 19 Aug 2019 22:23:07 -0500
Message-Id: <20190820032311.6506-7-samuel@sholland.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190820032311.6506-1-samuel@sholland.org>
References: <20190820032311.6506-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_202318_291918_64A55661 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.229 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A83T SoC contains a message box that can be used to send messages
and interrupts back and forth between the ARM application CPUs and the
ARISC coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sun8i-a83t.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/sun8i-a83t.dtsi b/arch/arm/boot/dts/sun8i-a83t.dtsi
index 523be6611c50..8871d1aaf7f5 100644
--- a/arch/arm/boot/dts/sun8i-a83t.dtsi
+++ b/arch/arm/boot/dts/sun8i-a83t.dtsi
@@ -583,6 +583,16 @@
 			reg = <0x1c14000 0x400>;
 		};
 
+		msgbox: mailbox@1c17000 {
+			compatible = "allwinner,sun8i-a83t-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x01c17000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a83t-musb",
 				     "allwinner,sun8i-a33-musb";
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
