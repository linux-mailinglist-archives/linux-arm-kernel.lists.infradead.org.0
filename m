Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5746834EA8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 19:22:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5s//MoxtwhmYy85qW/0QedusToJg2ONmq77xrrxQABQ=; b=Kk1LOEP7Pxohoz
	yrXIjASHv7sJokyRd2FTxbEvhh2WweH3UqtyXjDFZyTbuEymF8ZRhmqu/GxYC6GmATRh3oI9JpHPO
	8BQ1a/NSWQWbwJs8fByD8GMgMVeek/L601kT6NOSKv+iKtEDk2N3zcVpgjHy9Gkq371Fvo1VayxxA
	CAIoZIzC/E+HO9QbXsxJ7hS+hoqiOjUtRFqCVjtD2ftD4Ua/f8XgEh/6BzC4bvRLrKQSxDwojrZ+N
	Vvw1gWn/4zViZ3AwXzwZumqx2rhfyj+aBOhz1je9Xf+3+P6xyRq0gch1aOaflAg7boDKt9yPYhJBe
	+UmlYjQZk8Lyw4YX4xtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYD8m-0005yu-CS; Tue, 04 Jun 2019 17:22:28 +0000
Received: from mail.z3ntu.xyz ([128.199.32.197])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYD8W-0005rT-Qv
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 17:22:14 +0000
Received: from localhost.localdomain (80-110-121-20.cgn.dynamic.surfer.at
 [80.110.121.20])
 by mail.z3ntu.xyz (Postfix) with ESMTPSA id 1AB48C637C;
 Tue,  4 Jun 2019 17:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=z3ntu.xyz; s=z3ntu;
 t=1559668930; bh=BiJVO+igEvB/BvDV1guw1BMUA9XYdzPpn3R1VKC8Wmg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=gr/cp8Ekax3nNSNz0bYu9BJ8eO9tpM8CvlbQwKB5VZRzVNIpTf7cplSa6bXNIlcEG
 pgYfG0wmJ6UWmXgkjMEM/t4z79l/gyzQvwseGu815a2FD7la7THMd3kMg9wGRWQE/z
 WOqPbWGEd/i3o5v7M6C6qxKuwZpyg1ksnkW5MDZM=
From: Luca Weiss <luca@z3ntu.xyz>
To: 
Subject: [PATCH v2 2/2] arm64: dts: allwinner: a64: Add lradc node
Date: Tue,  4 Jun 2019 19:21:54 +0200
Message-Id: <20190604172154.25472-2-luca@z3ntu.xyz>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604172154.25472-1-luca@z3ntu.xyz>
References: <20190604172154.25472-1-luca@z3ntu.xyz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_102213_006143_03EC7400 
X-CRM114-Status: GOOD (  10.90  )
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
 ~martijnbraam/pmos-upstream@lists.sr.ht,
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
Changes since v1:
 - Use a a64 compatible with a fallback to the a83t one (the A64 also
   uses a 3/4 voltage divider, as is the case with the A83T)
 - Correct the reg property (size 0x100 => 0x400)

 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
index 8c5b521e6389..ba0ab1045e00 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
+++ b/arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi
@@ -730,6 +730,14 @@
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
