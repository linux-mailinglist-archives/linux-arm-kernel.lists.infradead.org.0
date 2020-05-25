Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA721E05E1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 06:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjGNVlTjeL5LsfKhqfGyeu1A8DtM61Mo0u1r537ERJs=; b=XPg9YghsXVjqFQ
	i9pcPUaTzmHGITQrpj8J1zDKm/gFlFaDhAxiiattUypY3cad6RbDheIiKnoKLGc55GuyevhHB2exw
	sEY2rSFRdQ4BW+TeiajPq/UDEdPVLdGYEs/0HfPW0PSDRMNB87jvQOzmj9x9OqLQEaZQpMJa3LVqg
	dXWpMgoFVuTSgZnRO3lCBZhFx4n6Nvw1wHY53WoCKn/rgdL7CxB0kgBufo4TF8Jxi2H0HsP/fmdIl
	4Brj2b9y0Pxa17jClf1Nrytp018RmSfuErhUhFElELCyS1O62UxYReHd/2V3nIk+FEoNvhbTOWQvY
	JVEslK/bIDsooU7cbf+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd4Vt-0001WA-T8; Mon, 25 May 2020 04:14:57 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd4Tg-00009V-Ow
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 04:12:44 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2FFEF580093;
 Mon, 25 May 2020 00:12:40 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 25 May 2020 00:12:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=EgpbtN/+ei+48
 TUPE6rJYI7EBx+b/wvisfgtTkfb6gU=; b=qpXxGAAjLUpAy9WDNMYjbZ5O0Ljyw
 IzOx73Osb8vd/SNqV78gEYSp4+wDv0KNYSjZSDWydMtvKFp3RNbr6LvnzcS0KLXP
 dX6xHVIMQ+sDPpflqy2lVidGxJzK/a3nXxxzR1DTwn6AYxhYgzyrhugHpAZtJ/jO
 mAXB21LORPmUnNTohTPGmuDtRTaIS1S+VL8987QD53KOcSBnq0E9xz/hfbS/DCKF
 B25171mgORxD5aFg2XdtGpUF86KuGK/6XgfJQ4hZn1mBar3zaloRu0wSowgWEFkP
 jdHrabb+FIHKgiuKp4d7Qsb561CY0VZfz/s/QIz6xTpqhHOWUB0GLfH8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=EgpbtN/+ei+48TUPE6rJYI7EBx+b/wvisfgtTkfb6gU=; b=PRzOewQ+
 Phs1aVdVZtrv1lvhroOOrMhOnVLE43OnsCsU4ijXhcxXA3ATKSCOK4K2gKvwewqZ
 J2IutSyq/MVtONgCWdG4/VZBtrAEoYFsrSujyRQ99zcT3YbqQp5csiiBxGmfyDBS
 vB/9ecZTosNNCLPaJgs72TgkhHzOrnRHIprzgdRVlhm4sZ4NwzaWORGXyPhu9WyA
 WrFeL38Wug6b37/0OniGvI+7UXABz2sLrMtBb6iGzvAGu1XVSsIRfbHLi6MaTB6N
 orguUPjNtn+kfcaO9GQ++5mdS9n04C/AbNj+w5mG1XHXFwTfDAB6bwqYOU9QapMC
 /HNLznxGnPrWcg==
X-ME-Sender: <xms:uEXLXt-JNE6ahII_u9VUM9sgToLpHH_CqnZ-bvdMAyeA8zFLMnykbw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudduledgjeelucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucggtf
 frrghtthgvrhhnpeduhfejfedvhffgfeehtefghfeiiefgfeehgfdvvdevfeegjeehjedv
 gfejheeuieenucfkphepjedtrddufeehrddugeekrdduhedunecuvehluhhsthgvrhfuih
 iivgepvdenucfrrghrrghmpehmrghilhhfrhhomhepshgrmhhuvghlsehshhholhhlrghn
 ugdrohhrgh
X-ME-Proxy: <xmx:uEXLXhsqx0OJg0rE9kBQIYaWKtcJNKvfq_vfmrWdX5HD_kow8dZjig>
 <xmx:uEXLXrCH5f0WmaY8Xg_Z8oGAxSvkV46iLicv0LDHcxWm3Lx7vF6anA>
 <xmx:uEXLXhdSxk0vdtZMl__FuOG50FVtd6_0u4s57SR9IrYTAyDJa7iJTA>
 <xmx:uEXLXjHDCEypRycqwy5ViMOImS67LFUZd3wmdf3Lr9fhDQDm0J-iMA>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7BB5C306653A;
 Mon, 25 May 2020 00:12:39 -0400 (EDT)
From: Samuel Holland <samuel@sholland.org>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>,
 Marc Zyngier <maz@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v2 4/9] ARM: dts: sunxi: h3/h5: Add r_intc node
Date: Sun, 24 May 2020 23:12:57 -0500
Message-Id: <20200525041302.51213-5-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200525041302.51213-1-samuel@sholland.org>
References: <20200525041302.51213-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200524_211240_956260_F319CB29 
X-CRM114-Status: GOOD (  10.17  )
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

The H3 and H5 SoCs have an additional interrupt controller in the RTC
power domain that can be used to enable wakeup for certain IRQs.

Add a node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm/boot/dts/sunxi-h3-h5.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/sunxi-h3-h5.dtsi b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
index 01a5df9aa71b..94f648ad1c9e 100644
--- a/arch/arm/boot/dts/sunxi-h3-h5.dtsi
+++ b/arch/arm/boot/dts/sunxi-h3-h5.dtsi
@@ -836,6 +836,15 @@ rtc: rtc@1f00000 {
 			#clock-cells = <1>;
 		};
 
+		r_intc: interrupt-controller@1f00c00 {
+			compatible = "allwinner,sun8i-h3-r-intc",
+				     "allwinner,sun6i-a31-r-intc";
+			interrupt-controller;
+			#interrupt-cells = <2>;
+			reg = <0x01f00c00 0x400>;
+			interrupts = <GIC_SPI 32 IRQ_TYPE_LEVEL_HIGH>;
+		};
+
 		r_ccu: clock@1f01400 {
 			compatible = "allwinner,sun8i-h3-r-ccu";
 			reg = <0x01f01400 0x100>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
