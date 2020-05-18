Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2A351D78F5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 14:49:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=qUGsi++6n6UVMf4/mnns6Gk1PidvjV/OMcIjq+KTsVQ=; b=YyJ
	6E0FK4bL23JU8lV+ivs/NLeGCRzDDrmBFpdecYyddXutSojfN4mWyjLnJSSs/karmdqm6RpHSvxNp
	Rnjspdle2NYI4W9r/p6wfbdsidTpljPy3PcWpjtjNg1KKfSg1acX9SBL6eGucLcws0dUjiRjhKQ4a
	kdCF9g2q/XYW8Q6AFCLPArb9CDZuL++mZELwZjfN2X5lrMN5oPloHPK3Otf2Z4nUA2n0XRQQgMHgK
	oyWTiLc2AQUdB/Bncm8zzjoFrLDf+qfmb/HPerivOJZJiI3qBeYttqTsnU57WR4KqBg77IvpI/5Kz
	C1Q4knv+g+oJXcuKCsUsfN5iKwztaDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafDF-0000rs-Ej; Mon, 18 May 2020 12:49:45 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafD6-0000rT-Nr
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 12:49:38 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id DB0552009B8;
 Mon, 18 May 2020 14:49:34 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 14E5A200844;
 Mon, 18 May 2020 14:49:31 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 11BBE402AD;
 Mon, 18 May 2020 20:49:26 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: imx: make src node name generic
Date: Mon, 18 May 2020 20:39:53 +0800
Message-Id: <1589805593-14164-1-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_054936_912051_66069A3C 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Linux-imx@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Node name should be generic, use "reset-controller" instead of "src" for
i.MX6/i.MX7 SoCs src nodes.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm/boot/dts/imx6qdl.dtsi | 2 +-
 arch/arm/boot/dts/imx6sl.dtsi  | 2 +-
 arch/arm/boot/dts/imx6sx.dtsi  | 2 +-
 arch/arm/boot/dts/imx6ul.dtsi  | 2 +-
 arch/arm/boot/dts/imx7s.dtsi   | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl.dtsi b/arch/arm/boot/dts/imx6qdl.dtsi
index 1763c2b..39d4afd 100644
--- a/arch/arm/boot/dts/imx6qdl.dtsi
+++ b/arch/arm/boot/dts/imx6qdl.dtsi
@@ -858,7 +858,7 @@
 				interrupts = <0 57 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
-			src: src@20d8000 {
+			src: reset-controller@20d8000 {
 				compatible = "fsl,imx6q-src", "fsl,imx51-src";
 				reg = <0x020d8000 0x4000>;
 				interrupts = <0 91 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/imx6sl.dtsi b/arch/arm/boot/dts/imx6sl.dtsi
index fcb84fe..911d8cf 100644
--- a/arch/arm/boot/dts/imx6sl.dtsi
+++ b/arch/arm/boot/dts/imx6sl.dtsi
@@ -678,7 +678,7 @@
 				interrupts = <0 57 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
-			src: src@20d8000 {
+			src: reset-controller@20d8000 {
 				compatible = "fsl,imx6sl-src", "fsl,imx51-src";
 				reg = <0x020d8000 0x4000>;
 				interrupts = <0 91 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/imx6sx.dtsi b/arch/arm/boot/dts/imx6sx.dtsi
index d6f8317..e031337 100644
--- a/arch/arm/boot/dts/imx6sx.dtsi
+++ b/arch/arm/boot/dts/imx6sx.dtsi
@@ -754,7 +754,7 @@
 				interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
-			src: src@20d8000 {
+			src: reset-controller@20d8000 {
 				compatible = "fsl,imx6sx-src", "fsl,imx51-src";
 				reg = <0x020d8000 0x4000>;
 				interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 2ccf67c..35e7301 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -676,7 +676,7 @@
 				interrupts = <GIC_SPI 57 IRQ_TYPE_LEVEL_HIGH>;
 			};
 
-			src: src@20d8000 {
+			src: reset-controller@20d8000 {
 				compatible = "fsl,imx6ul-src", "fsl,imx51-src";
 				reg = <0x020d8000 0x4000>;
 				interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>,
diff --git a/arch/arm/boot/dts/imx7s.dtsi b/arch/arm/boot/dts/imx7s.dtsi
index 76e3ffb..8bac491 100644
--- a/arch/arm/boot/dts/imx7s.dtsi
+++ b/arch/arm/boot/dts/imx7s.dtsi
@@ -624,7 +624,7 @@
 				clock-names = "ckil", "osc";
 			};
 
-			src: src@30390000 {
+			src: reset-controller@30390000 {
 				compatible = "fsl,imx7d-src", "syscon";
 				reg = <0x30390000 0x10000>;
 				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
