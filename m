Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CB2812AFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 11:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QVamPBEygKwWWMGnM69VyBXlgeBntem6AMsGig2w8WY=; b=ft6
	VfsEEP0HJjpbWtcIQV3rwShNSyplciAF8lNqj2mbg51zSXBslJU7WaO0qWkDotg9oU/ug9h98EKwF
	Ko1e4wMWZTGK5rcox9I0FYxFYz6nxa0Q2nB884l9pJ+B4noBKTjh4vIIrDs+8pEmWrsTGNn+XRY7D
	H0ZKQJbzA4BsPo0dLFMkNaHl60eyI/nqN3KPVJszH8pE2alWJAG/bQrEo0sflJaEtUBZorJ4zaGCk
	UECX6Q3xfXFzEINC4jPT0T6t9jxrXWBMOe6E9ltoyrbubnQJZzgRG4YE7D/GABxOANwXRtfNnjV4i
	rX9gSBxWMgfx4QfpSpKcU/c3tpACDCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUnV-0003Z5-3f; Fri, 03 May 2019 09:48:05 +0000
Received: from haggis.mythic-beasts.com ([2a00:1098:0:86:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUnL-0003UG-Uu
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 09:47:57 +0000
Received: from [199.195.250.187] (port=56539 helo=hermes.aosc.io)
 by haggis.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.90_1)
 (envelope-from <icenowy@aosc.io>)
 id 1hMUnJ-0000Am-8K; Fri, 03 May 2019 10:47:53 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 0EE74431BF;
 Fri,  3 May 2019 09:47:43 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
	Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH v2] arm64: dts: allwinner: h6: add PIO VCC bank supplies for
 Pine H64
Date: Fri,  3 May 2019 17:47:20 +0800
Message-Id: <20190503094720.21502-1-icenowy@aosc.io>
X-BlackCat-Spam-Score: 9
X-Spam-Status: No, score=0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_024756_006275_5E236518 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:86:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Icenowy Zheng <icenowy@aosc.io>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Allwinner H6 SoC features tweakable VCC for PC, PD, PG, PL and PM
banks.

This patch adds supplies for these banks except PL bank. PL bank is
where PMIC is attached, and currently if a PMIC regulator is added
for it a dependency loop will happen.

Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
Changes in v2:
- Added PG/PM banks.

 arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
index 4802902e128f..9e464d40cbff 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h6-pine-h64.dts
@@ -127,6 +127,12 @@
 	status = "okay";
 };
 
+&pio {
+	vcc-pc-supply = <&reg_bldo2>;
+	vcc-pd-supply = <&reg_cldo1>;
+	vcc-pg-supply = <&reg_aldo1>;
+};
+
 &r_i2c {
 	status = "okay";
 
@@ -247,6 +253,10 @@
 	};
 };
 
+&r_pio {
+	vcc-pm-supply = <&reg_aldo1>;
+};
+
 &uart0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&uart0_ph_pins>;
-- 
2.18.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
