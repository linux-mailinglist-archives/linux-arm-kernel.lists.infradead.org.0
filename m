Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3FF1695C4
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 05:10:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7x7Mr1CmSTJixTGJaKYtlrSE5J0qAKKA5GQYoEHZPFU=; b=di6Zi7m4o1OBAl
	lmasGhDjy/5g7UCtMOg7tpg/LxJ0xfTOx4oXhgDHZHWEYEIBiwdnjyaOxKkOC0KACviiys5VXBHZH
	a4FaRXVSGQ4iGk8B5kyaFleFukPJTAplYhIe0xFFcXZIG+M9balhpzbNW6c/tIoo6U/nVV6YnCS9L
	QEGfAPLVfCnanjR3xoS32oaEBjyipAp205IzzUFikwYxTTnJehcpayxBMvNfbpALUmjsVtAFhNHJY
	6hMn6yeu80JMX9LPSmj9JcLPbCDasiet4fsM/+teEKDeq/9rWbKDssUyzOF27+C32phufrMY3EBO0
	9AiL/VrEycYzmPmKv+ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5iay-0001xX-0D; Sun, 23 Feb 2020 04:10:20 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5iZe-0000ts-Oo
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 04:09:00 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 9AADE6BEB;
 Sat, 22 Feb 2020 23:08:57 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Sat, 22 Feb 2020 23:08:57 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=AcgxSqlCWkKGE
 qvHRPWCaLXEYKTOg925jFKVUJEaaK8=; b=jKVtAAijC/zGl7aUchD/g2I7aAqEP
 LUYwpZQiaxsQnjq35Q5kHTDYyoHq12vri72YPQ80Ra0vbV5ps2MOotVmHyeCOmJ0
 MxpAmpKNVaOx11LgI9cnWHSJZishl5f2Dx5Vi6CN2jNhgtJa6mH7fGL0ogcJ+Kew
 YcQ+hg6F3hegre/Xt4yHQcgIquQG/Xhs8VFIxwthGGgbKug4KtqSgN/h16w2/U2Q
 H4Q5MrxQU/UAnPPnsDmTz55lvQcY3LHPJ425BTdUqIxRrEzD2rwT44ZQ5ImlJsjL
 NgYmCBoGgiO5H8puGHYV7slTeEoy2+Ymk9/DfCuwcu2eGYsDre6/gfRHg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=AcgxSqlCWkKGEqvHRPWCaLXEYKTOg925jFKVUJEaaK8=; b=kfeFJ6aJ
 OCFb5DtqV/1sk+FGqQI+7eGVa9mqDh/m4Ne8VwlUAXCHuHinl7XgMauf+Jtc1+A9
 odtyxQF8va1BjElMGCusF0g+VbhDfTD+ni/1Aj6TEhAOqzohv6Ws7983H6HRWGGE
 VL/FagQGfgn5jHUhSHuipJLUT5TkzPlvqbqYVTiaJPjHAedtHfePx80L2d2rW0lW
 UIb/isjqZykGi61T0n7YWkwtK3i8EJuAjcD9w6U4k3kFk6GiVjgJ9GlgRucvCK6H
 49xHkw+2SyGBGpHA5+fDqn+EjuFEx5BI3DUt8JDMBYfsY9ohcTDOYrbUTLJi8j3b
 J9bhWg74MQ358A==
X-ME-Sender: <xms:2fpRXgBjFNqA04hPz--IF90thUAIYScwrUFed4bdSmyyFReLUtOTJQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrkeejgdeigecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghl
 ucfjohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppe
 ejtddrudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedunecurfgrrhgr
 mhepmhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:2fpRXojGM0gzEeHPeoBOIf2sUERrstrv0W7MJC4onaL9u6EiAqlMUw>
 <xmx:2fpRXhOuEmw5c1muLsjRRqVyrfeB8-_-xa722J2yqEjYLDmI7IO-jA>
 <xmx:2fpRXh55t-etPO6oVKzb3l71kVDgb786v1AWsSZ2PIMDJoiFP5WMDw>
 <xmx:2fpRXl3fD09LOLQ-VH8Ibn-ANW-EQgYHT7oWWDeYYjcwSm_Pmq1jJQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id DA0A23280060;
 Sat, 22 Feb 2020 23:08:56 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Jassi Brar <jassisinghbrar@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v7 5/6] arm64: dts: allwinner: a64: Add msgbox node
Date: Sat, 22 Feb 2020 22:08:52 -0600
Message-Id: <20200223040853.2658-6-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200223040853.2658-1-samuel@sholland.org>
References: <20200223040853.2658-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_200858_949604_6AE8EF02 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ondrej Jirman <megous@megous.com>,
 devicetree@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The A64 SoC contains a message box that can be used to send messages and
interrupts back and forth between the ARM application CPUs and the ARISC
coprocessor. Add a device tree node for it.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 862b47dc9dc9..18492b542260 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -545,6 +545,16 @@ crypto: crypto@1c15000 {
 			resets = <&ccu RST_BUS_CE>;
 		};
 
+		msgbox: mailbox@1c17000 {
+			compatible = "allwinner,sun50i-a64-msgbox",
+				     "allwinner,sun6i-a31-msgbox";
+			reg = <0x01c17000 0x1000>;
+			clocks = <&ccu CLK_BUS_MSGBOX>;
+			resets = <&ccu RST_BUS_MSGBOX>;
+			interrupts = <GIC_SPI 49 IRQ_TYPE_LEVEL_HIGH>;
+			#mbox-cells = <1>;
+		};
+
 		usb_otg: usb@1c19000 {
 			compatible = "allwinner,sun8i-a33-musb";
 			reg = <0x01c19000 0x0400>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
