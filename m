Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 306BADA444
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 05:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qaaB21nLiU+mKls4bEjFHuE1QWkyXRcssTIQtcCi4BU=; b=FVjZJqrdhftgzvIApjpCx2W/Gb
	mH0O3mhEQbQChzweFuLgDbrrC6PsofEbyTaWWqIM4kON1M0dd3Djs9KIlNPv+5oCpTAWLpwshVDp/
	csKVbgwLCr5HfCGEFaCoyK5A/TUZoh11/aekETDTX7p2mEvs6P09jm0tl2cyGlN5I7kCYwsU8cdiy
	VDAULAn5B/YNRo+QkIvaYmiG+oKkSK3gfDJABwGFzemcl0/jywuC0plGr/jeGjJKir/wG1FenT8Qo
	VjGMoHV1b7Sg+KF/s72b5iKSKOqm9Rfm9AtDU2u+WcocC7J1Dm3xu0tSdhwY4lzTJA4bvWD1uiwXt
	45GwsE1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKwGx-0001EA-E7; Thu, 17 Oct 2019 03:16:19 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKwGj-0001D9-9h
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 03:16:06 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5B8D42005BF;
 Thu, 17 Oct 2019 05:16:02 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 16E862005C0;
 Thu, 17 Oct 2019 05:15:54 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 3AA7E402B7;
 Thu, 17 Oct 2019 11:15:43 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 manivannan.sadhasivam@linaro.org, andrew.smirnov@gmail.com,
 aisheng.dong@nxp.com, sebastien.szymanski@armadeus.com, leoyang.li@nxp.com,
 pramod.kumar_1@nxp.com, l.stach@pengutronix.de, ping.bai@nxp.com,
 bhaskar.upadhaya@nxp.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: imx8mn: Add LPDDR4 EVK board support
Date: Thu, 17 Oct 2019 11:13:04 +0800
Message-Id: <1571281984-7125-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1571281984-7125-1-git-send-email-Anson.Huang@nxp.com>
References: <1571281984-7125-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_201605_471302_AD9FB1F0 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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

i.MX8MN LPDDR4 EVK board shares most of the device as DDR4 EVK board,
the ONLY difference are the DDR type and PMIC, add support for it
and make it default i.MX8MN EVK board as usual.

The PMIC driver is NOT ready, so cpu-freq needs to be disabled as
it depends on regulator provided by PMIC.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
 arch/arm64/boot/dts/freescale/Makefile       |  1 +
 arch/arm64/boot/dts/freescale/imx8mn-evk.dts | 30 ++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/imx8mn-evk.dts

diff --git a/arch/arm64/boot/dts/freescale/Makefile b/arch/arm64/boot/dts/freescale/Makefile
index 93fce8f..783a92c 100644
--- a/arch/arm64/boot/dts/freescale/Makefile
+++ b/arch/arm64/boot/dts/freescale/Makefile
@@ -22,6 +22,7 @@ dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-qds.dtb
 dtb-$(CONFIG_ARCH_LAYERSCAPE) += fsl-lx2160a-rdb.dtb
 
 dtb-$(CONFIG_ARCH_MXC) += imx8mm-evk.dtb
+dtb-$(CONFIG_ARCH_MXC) += imx8mn-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mn-ddr4-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-evk.dtb
 dtb-$(CONFIG_ARCH_MXC) += imx8mq-hummingboard-pulse.dtb
diff --git a/arch/arm64/boot/dts/freescale/imx8mn-evk.dts b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
new file mode 100644
index 0000000..61f3519
--- /dev/null
+++ b/arch/arm64/boot/dts/freescale/imx8mn-evk.dts
@@ -0,0 +1,30 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright 2019 NXP
+ */
+
+/dts-v1/;
+
+#include "imx8mn.dtsi"
+#include "imx8mn-evk.dtsi"
+
+/ {
+	model = "NXP i.MX8MNano EVK board";
+	compatible = "fsl,imx8mn-evk", "fsl,imx8mn";
+};
+
+&A53_0 {
+	/delete-property/operating-points-v2;
+};
+
+&A53_1 {
+	/delete-property/operating-points-v2;
+};
+
+&A53_2 {
+	/delete-property/operating-points-v2;
+};
+
+&A53_3 {
+	/delete-property/operating-points-v2;
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
