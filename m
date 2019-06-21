Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA87E4E355
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:21:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D1mt+yhnSX53703DuNELa1ZT0hy2Gsk6OzJ/7JfD3oY=; b=ov9CsUoqo1guRyhdtiRkcFqqPJ
	PbgB3ljUd/OorQWFLBYIgqVTmvIA/LgHhbvt0n7u2oFgi5/cjBW+/93Olp1gILRZ7pi7Q4K6JLBNG
	eTLqlwBQI9fFCsBSa1dM8NRBmdWf38kL1uPuXHKcIqZ3eZOTPLkDs8GcNuog4niPoOJPJkyG8wdqP
	4Qccz7raJUgJFf5sTNOhoqtc61iL09vbQ/5sTEwJNCm+eWzsZN5ydkI60PtxLsxOPQNJG6mODoOVy
	flND7Du2/IEY28hhM5r0JjwrnY+1PT0kt96AW0f4XaES2mUxCqchrqyjsOVRCaI/thm2ZDoX+VmzZ
	o4u7K2pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFjD-0006gT-Ff; Fri, 21 Jun 2019 09:21:03 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFcW-0008OY-HT
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:14:10 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id E169825BE05;
 Fri, 21 Jun 2019 19:13:52 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id D5FF6940B38; Fri, 21 Jun 2019 11:13:50 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 06/22] ARM: dts: rza2mevb: Add SDHI support
Date: Fri, 21 Jun 2019 11:13:33 +0200
Message-Id: <c2fad09c28ace81f149afe74a8c378c4824b2b27.1561104194.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1561104194.git.horms+renesas@verge.net.au>
References: <cover.1561104194.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021408_966424_7FD8D9CF 
X-CRM114-Status: GOOD (  10.02  )
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
Cc: Simon Horman <horms+renesas@verge.net.au>,
 Chris Brandt <chris.brandt@renesas.com>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chris Brandt <chris.brandt@renesas.com>

The RZ/A2M EVB supports 2 SD card slots. A micro SD slot on the CPU
board, and a full SD card slot on the sub board.

Signed-off-by: Chris Brandt <chris.brandt@renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm/boot/dts/r7s9210-rza2mevb.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boot/dts/r7s9210-rza2mevb.dts b/arch/arm/boot/dts/r7s9210-rza2mevb.dts
index 1544f3bab3f8..a328426a0409 100644
--- a/arch/arm/boot/dts/r7s9210-rza2mevb.dts
+++ b/arch/arm/boot/dts/r7s9210-rza2mevb.dts
@@ -90,6 +90,16 @@
 			 <RZA2_PINMUX(PORT3, 4, 1)>, /* ET1_MDIO */
 			 <RZA2_PINMUX(PORTL, 1, 5)>; /* IRQ5 */
 	};
+
+	sdhi0_pins: sdhi0 {
+		pinmux = <RZA2_PINMUX(PORT5, 0, 3)>,	/* SD0_CD */
+			 <RZA2_PINMUX(PORT5, 1, 3)>;	/* SD0_WP */
+	};
+
+	sdhi1_pins: sdhi1 {
+		pinmux = <RZA2_PINMUX(PORT5, 4, 3)>,	/* SD1_CD */
+			 <RZA2_PINMUX(PORT5, 5, 3)>;	/* SD1_WP */
+	};
 };
 
 /* High resolution System tick timers */
@@ -130,3 +140,17 @@
 		reg = <0>;
 	};
 };
+
+&sdhi0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhi0_pins>;
+	bus-width = <4>;
+	status = "okay";
+};
+
+&sdhi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdhi1_pins>;
+	bus-width = <4>;
+	status = "okay";
+};
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
