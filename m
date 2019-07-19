Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 436656E474
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jul 2019 12:46:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t1gTwKgF8XPdBYXhkvBaB3ByK15HG3D8GwUYwzuNF6s=; b=DhIITFevnXUv3n
	wYExlNy7dV2XyGxSeXy6zKM4V+sXa6r2GUt6cqUs+mDX2k2LKk8M0KdCmpE5PQV1RyUXjz1R2iztH
	PUca4eXVmy9V5tjRqq6wHXZIdkjyAP7l94eKnJ8ZyejVhBmy/2QhLbrjeyrtITP6WsSS6ND4Tb36l
	Q7YCWic/WDTL/G113tHOIQd44dgyrkzJvvt5UEFtItpEF/SxKh1RPcMCNO1Y+4WNe8cgJLNMJH3Ai
	lc0Kwx0AhigkvVuMycOgXvDVvd4WO+T2P1GOEuX4sLfb1gVOkSrFGmXYEUx/X9tzUkYCTtoQVPKxL
	PWns8gqY/Ny/wEu/AAmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoQPa-0002TW-Ek; Fri, 19 Jul 2019 10:46:50 +0000
Received: from mail.savoirfairelinux.com ([208.88.110.44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoQPL-0002S7-GE
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jul 2019 10:46:36 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 08D8F9C01AF;
 Fri, 19 Jul 2019 06:46:25 -0400 (EDT)
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id pDmCSr7ERjkb; Fri, 19 Jul 2019 06:46:24 -0400 (EDT)
Received: from localhost (localhost [127.0.0.1])
 by mail.savoirfairelinux.com (Postfix) with ESMTP id 4E0E09C0279;
 Fri, 19 Jul 2019 06:46:24 -0400 (EDT)
X-Virus-Scanned: amavisd-new at mail.savoirfairelinux.com
Received: from mail.savoirfairelinux.com ([127.0.0.1])
 by localhost (mail.savoirfairelinux.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id Yj8MoRMJPG9k; Fri, 19 Jul 2019 06:46:24 -0400 (EDT)
Received: from localhost.localdomain (unknown [37.165.9.228])
 by mail.savoirfairelinux.com (Postfix) with ESMTPSA id 0194D9C01AF;
 Fri, 19 Jul 2019 06:46:21 -0400 (EDT)
From: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm: dts: imx6qdl: add gpio expander pca9535
Date: Fri, 19 Jul 2019 12:46:15 +0200
Message-Id: <20190719104615.5329-1-gilles.doffe@savoirfairelinux.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_034635_608985_1D3D6AD7 
X-CRM114-Status: UNSURE (   6.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.88.110.44 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, festevam@gmail.com, s.hauer@pengutronix.de,
 rennes@savoirfairelinux.com, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, jerome.oufella@savoirfairelinux.com,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pca9535 gpio expander is present on the Rex baseboard, but missing
from the dtsi.

Add the new gpio controller and the associated interrupt line
MX6QDL_PAD_NANDF_CS3__GPIO6_IO16.

Signed-off-by: Gilles DOFFE <gilles.doffe@savoirfairelinux.com>
---
 arch/arm/boot/dts/imx6qdl-rex.dtsi | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/arch/arm/boot/dts/imx6qdl-rex.dtsi b/arch/arm/boot/dts/imx6qdl-rex.dtsi
index 97f1659144ea..b517efb22fcb 100644
--- a/arch/arm/boot/dts/imx6qdl-rex.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-rex.dtsi
@@ -136,6 +136,19 @@
 		compatible = "atmel,24c02";
 		reg = <0x57>;
 	};
+
+	pca9535: gpio8@27 {
+		compatible = "nxp,pca9535";
+		reg = <0x27>;
+		gpio-controller;
+		#gpio-cells = <2>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_pca9535>;
+		interrupt-parent = <&gpio6>;
+		interrupts = <16 IRQ_TYPE_LEVEL_LOW>;
+		interrupt-controller;
+		#interrupt-cells = <2>;
+	};
 };
 
 &i2c3 {
@@ -237,6 +250,12 @@
 			>;
 		};
 
+		pinctrl_pca9535: pca9535 {
+			fsl,pins = <
+				MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x00017059
+		   >;
+		};
+
 		pinctrl_uart1: uart1grp {
 			fsl,pins = <
 				MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
-- 
2.19.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
