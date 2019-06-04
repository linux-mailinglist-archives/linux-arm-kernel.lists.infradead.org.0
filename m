Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA9F34AAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:44:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EL1OkkVSFn7OViewdoKVW9gaiKj95JkhQUTHdJ5PD3g=; b=l+h0XWA/a4+jf6
	tYFarDu0KTotEKWUxMHzHMn08b0xZ9yssuLe1MuZhmJF+wPFeU5yuGVzKh+sdm1TJ03EVasuvlyK8
	iMY2tEq8H1Z4rHFqTCO/tsq4vxlm2nyjLtSt3H5ArbPowk1Tp4xXnetkyGVvlOd/7LO9IHjToDsFt
	f9fASrinrT0+mWRPiWAxDNsM8vsVbNBmJ+HyPmXHMBZZvLSsTwsZmONue81ZguciHwI0S3Xh/on/8
	r3yxDmRTtwfyDcvvj3vBvO08u84WwJ0yJuHNEPZynQztWEmRhUFDhigNU6oVUggf9LyEycxzSCwjs
	ncTiSQbXcRQiQhs1rayg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYAg9-0004Pk-Sp; Tue, 04 Jun 2019 14:44:45 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYAg1-0004PF-Va
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:44:39 +0000
Received: from localhost.localdomain (80-110-121-20.cgn.dynamic.surfer.at
 [80.110.121.20])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 372D2C62C0;
 Tue,  4 Jun 2019 14:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1559659474; bh=f8oeSATHDBbxU/b+96ktGMMjGmkACkAmrJx1PQ0GIvY=;
 h=From:To:Cc:Subject:Date;
 b=OMw0svqmPt8cRVBV0t9Vg2B8scLiG7zlIevdrdAR8Q0aL0d7WiyPVszoaOUMhqjF1
 pz6z7tJ45Gq2h9cGT2kw0NE6VRbrFieY/vJHYFe36KQsZ/O63AVDpkGb3tOMO5lQgr
 gI+Sy/JdoiR8w15j9Kf/UqFHRrtSFO4xT4jxhoRI=
From: Luca Weiss <luca@z3ntu.xyz>
To: 
Subject: [PATCH] arm64: dts: allwinner: a64: Add lradc node
Date: Tue,  4 Jun 2019 16:42:53 +0200
Message-Id: <20190604144252.26965-1-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_074438_232739_CFA87947 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.5 FROM_SUSPICIOUS_NTLD   From abused NTLD
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Luca Weiss <luca@z3ntu.xyz>,
 Hans de Goede <hdegoede@redhat.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 "open list:SUN4I LOW RES ADC ATTACHED TABLET KEYS DRIVER"
 <linux-input@vger.kernel.org>,
 "moderated list:ARM/Allwinner sunXi SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a node describing the KEYADC on the A64.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 .../devicetree/bindings/input/sun4i-lradc-keys.txt        | 1 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi             | 8 ++++++++
 2 files changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt b/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
index 496125c6bfb7..507b737612ea 100644
--- a/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
+++ b/Documentation/devicetree/bindings/input/sun4i-lradc-keys.txt
@@ -5,6 +5,7 @@ Required properties:
  - compatible: should be one of the following string:
 		"allwinner,sun4i-a10-lradc-keys"
 		"allwinner,sun8i-a83t-r-lradc"
+		"allwinner,sun50i-a64-lradc", "allwinner,sun8i-a83t-r-lradc"
  - reg: mmio address range of the chip
  - interrupts: interrupt to which the chip is connected
  - vref-supply: powersupply for the lradc reference voltage
diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 7734f70e1057..3a42352b5c9f 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -704,6 +704,14 @@
 			status = "disabled";
 		};
 
+		lradc: lradc@1c21800 {
+			compatible = "allwinner,sun50i-a64-lradc",
+				     "allwinner,sun8i-a83t-r-lradc";
+			reg = <0x01c21800 0x400>;
+			interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
 		i2s0: i2s@1c22000 {
 			#sound-dai-cells = <0>;
 			compatible = "allwinner,sun50i-a64-i2s",
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
