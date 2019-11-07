Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DC11F24F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 03:08:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IOKRA+c/tRgVbRkDdMQL0eL0veACFtnXAF0u0Fmm0uM=; b=hllo8X27nA+dgzplhHtR3JO7VO
	7feI2kYs7X18m6kRCLi7+93UqUPwrjFQGRqe8DVTHgJWxnT8/aIaiRbeOZ7d3dp4ZcAS2dqkoakKl
	i0Agj3gQ6gddYod1od89aSe2Z1Q1HwysU+9ce+i0BnkIbIaqirKJ9u1HySl0TJaetR7Qv+HpqY5ki
	66Lnbke5QJCHyCTnNMaFxSUwUaDrz1LnB+u1O5Y/uuzsUmrEYtXOJkE2I1buUQPBYXbOfu1aZHczE
	uQ0qhqVvcKhh0pq7niLBpQOIjqCdYQyFR8ru3O++7HgssalO2mVRLqwr7rYpOSnGN3pqOqAMGEQ+R
	BCBozdcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSXEA-0003ye-0G; Thu, 07 Nov 2019 02:08:50 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSXDa-0003Z5-Cn
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 02:08:15 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 2F5EE1A00CE;
 Thu,  7 Nov 2019 03:08:13 +0100 (CET)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1E1BC1A00C2;
 Thu,  7 Nov 2019 03:08:07 +0100 (CET)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 60D1F402B7;
 Thu,  7 Nov 2019 10:07:59 +0800 (SGT)
From: Anson Huang <Anson.Huang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 andrew.smirnov@gmail.com, manivannan.sadhasivam@linaro.org,
 marcel.ziswiler@toradex.com, sebastien.szymanski@armadeus.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 3/4] ARM: dts: imx6sll: Add Rev A board support
Date: Thu,  7 Nov 2019 10:06:32 +0800
Message-Id: <1573092393-26885-3-git-send-email-Anson.Huang@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573092393-26885-1-git-send-email-Anson.Huang@nxp.com>
References: <1573092393-26885-1-git-send-email-Anson.Huang@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_180814_567914_FE113398 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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

i.MX6SLL EVK Rev A board is same with latest i.MX6SLL EVK board except
eMMC can ONLY run at HS200 mode, add support for this board.

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
Changes since V1:
	- Add board model and compatible to indicate it is a Rev-A board.
---
 arch/arm/boot/dts/Makefile             |  1 +
 arch/arm/boot/dts/imx6sll-evk-reva.dts | 17 +++++++++++++++++
 2 files changed, 18 insertions(+)
 create mode 100644 arch/arm/boot/dts/imx6sll-evk-reva.dts

diff --git a/arch/arm/boot/dts/Makefile b/arch/arm/boot/dts/Makefile
index 71f08e7..3845bbf 100644
--- a/arch/arm/boot/dts/Makefile
+++ b/arch/arm/boot/dts/Makefile
@@ -557,6 +557,7 @@ dtb-$(CONFIG_SOC_IMX6SL) += \
 	imx6sl-warp.dtb
 dtb-$(CONFIG_SOC_IMX6SLL) += \
 	imx6sll-evk.dtb \
+	imx6sll-evk-reva.dtb \
 	imx6sll-kobo-clarahd.dtb
 dtb-$(CONFIG_SOC_IMX6SX) += \
 	imx6sx-nitrogen6sx.dtb \
diff --git a/arch/arm/boot/dts/imx6sll-evk-reva.dts b/arch/arm/boot/dts/imx6sll-evk-reva.dts
new file mode 100644
index 0000000..e813c74
--- /dev/null
+++ b/arch/arm/boot/dts/imx6sll-evk-reva.dts
@@ -0,0 +1,17 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+/*
+ * Copyright 2016 Freescale Semiconductor, Inc.
+ * Copyright 2017-2019 NXP.
+ *
+ */
+
+#include "imx6sll-evk.dts"
+
+/ {
+	model = "Freescale i.MX6SLL EVK RevA Board";
+	compatible = "fsl,imx6sll-evk-reva", "fsl,imx6sll";
+};
+
+&usdhc2 {
+	compatible = "fsl,imx6sll-usdhc", "fsl,imx6sx-usdhc";
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
