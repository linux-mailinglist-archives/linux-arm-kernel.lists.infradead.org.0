Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9744E467
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:44:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VuW91ZvwgBJTmyQSHEDud6sq1cRaqpMvwLluXxWJJYE=; b=dPAJIGYyCVWEh72Ea8lxXQuPSw
	lUNCuV2s8YS6u+87xGi8ps4YCi++yxd0MUKXeOwX4OTe0m67f7bVtpRJKo/cBbOElvicxR8MXaRON
	jRSnHzINe8jWPPYKVYYdUUR3YMvI0FlDNQy1g6C25mZV4a+BzGtcyCOIiL5JSjQ10mdlg/DiFSjJB
	mBbAEihQjSxU/CTWQQ31MMICOUUdGsB0nVyeL3b4GDIDcDc1Zsbdo9ju/bkTN/TIjjrs64nJDSOma
	Spzr8Zja8hSR8jht0RUpBdxtU7+5BJQjo0gJbKgQrknBb356sMzPFulN8/TdUbeT3XsTFNzecNvXe
	rdtpw96g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heG5X-00035Z-Uy; Fri, 21 Jun 2019 09:44:07 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFgP-0002tV-Ll
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:18:11 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 5C7B825BEA9;
 Fri, 21 Jun 2019 19:16:39 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id A6A2694351D; Fri, 21 Jun 2019 11:16:35 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 46/53] arm64: dts: renesas: hihope-common: Add LEDs support
Date: Fri, 21 Jun 2019 11:16:24 +0200
Message-Id: <1485b6353a9940c5ac5d3f90880207ac95b4e350.1561107232.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561107232.git.horms+renesas@verge.net.au>
References: <cover.1561107232.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021810_077217_E3D49DD9 
X-CRM114-Status: GOOD (  10.22  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Simon Horman <horms+renesas@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabrizio Castro <fabrizio.castro@bp.renesas.com>

This patch adds LEDs support to the HiHope RZ/G2[MN] Main Board
common device tree.

Signed-off-by: Fabrizio Castro <fabrizio.castro@bp.renesas.com>
Reviewed-by: Simon Horman <horms+renesas@verge.net.au>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/hihope-common.dtsi | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/hihope-common.dtsi b/arch/arm64/boot/dts/renesas/hihope-common.dtsi
index 6a45c49c24dc..625c3aaead14 100644
--- a/arch/arm64/boot/dts/renesas/hihope-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/hihope-common.dtsi
@@ -17,6 +17,30 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	leds {
+		compatible = "gpio-leds";
+
+		led0 {
+			gpios = <&gpio6 11 GPIO_ACTIVE_HIGH>;
+			label = "LED0";
+		};
+
+		led1 {
+			gpios = <&gpio6 12 GPIO_ACTIVE_HIGH>;
+			label = "LED1";
+		};
+
+		led2 {
+			gpios = <&gpio6 13 GPIO_ACTIVE_HIGH>;
+			label = "LED2";
+		};
+
+		led3 {
+			gpios = <&gpio0  0 GPIO_ACTIVE_HIGH>;
+			label = "LED3";
+		};
+	};
+
 	reg_1p8v: regulator0 {
 		compatible = "regulator-fixed";
 		regulator-name = "fixed-1.8V";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
