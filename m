Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F07FE45FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 10:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KCaU/3wtg3eur0i39f/usQlzZGgrZ2+o/nnr0MWxBEY=; b=Dmxnusww71M/IR
	f+uQDU5c3Wq/nLJy81BhOgqki9lMTd+pySi5dJJwYsalhNCLE+3+oxJYAik2sW/zk1lRLqMQjHcb0
	xSAF0aQBeqMat2lHp4siOrDpfjuJZpGSHCWgujhdtOqINE2JEX86SEvAlybDnX+W+wiKL8ALxMPI6
	mPM79w23pmQf5RFwGN24hCqekNqn1HEspRV6fwJYJCtV5pjXrYOPOqV6rauivigTcfG0WZN3EgDXt
	1vgcO5a1A/PehCxbSw3CfS9otyDHEnUSoWnlK7gykpshJ6IqCJhUT+y2m1BuSm9hksoL2MCdLBoLO
	1uC+FANeZxI+MhXwO3Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNvBL-0004Ks-ID; Fri, 25 Oct 2019 08:42:51 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNvBC-0004Jo-DX
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 08:42:43 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id C757820043F;
 Fri, 25 Oct 2019 10:42:38 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 8E27720006D;
 Fri, 25 Oct 2019 10:42:31 +0200 (CEST)
Received: from localhost.localdomain (shlinux2.ap.freescale.net
 [10.192.224.44])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 7D3DB402BC;
 Fri, 25 Oct 2019 16:42:22 +0800 (SGT)
From: Shengjiu Wang <shengjiu.wang@nxp.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com, Anson.Huang@nxp.com, ping.bai@nxp.com, jun.li@nxp.com,
 leonard.crestez@nxp.com, daniel.baluta@nxp.com, daniel.lezcano@linaro.org,
 shengjiu.wang@nxp.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] ARM64: imx8mm: Change compatible string for sdma
Date: Fri, 25 Oct 2019 16:39:23 +0800
Message-Id: <1571992763-31339-1-git-send-email-shengjiu.wang@nxp.com>
X-Mailer: git-send-email 2.7.4
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_014242_603029_9AC723F8 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SDMA in i.MX8MM should use same configuration as i.MX8MQ
So need to change compatible string to be "fsl,imx8mq-sdma".

Fixes: a05ea40eb384 ("arm64: dts: imx: Add i.mx8mm dtsi support")
Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 2139c0a9c495..6a54d2a3b19b 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -394,7 +394,7 @@
 			};
 
 			sdma2: dma-controller@302c0000 {
-				compatible = "fsl,imx8mm-sdma", "fsl,imx7d-sdma";
+				compatible = "fsl,imx8mm-sdma", "fsl,imx8mq-sdma";
 				reg = <0x302c0000 0x10000>;
 				interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_SDMA2_ROOT>,
@@ -405,7 +405,7 @@
 			};
 
 			sdma3: dma-controller@302b0000 {
-				compatible = "fsl,imx8mm-sdma", "fsl,imx7d-sdma";
+				compatible = "fsl,imx8mm-sdma", "fsl,imx8mq-sdma";
 				reg = <0x302b0000 0x10000>;
 				interrupts = <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_SDMA3_ROOT>,
@@ -741,7 +741,7 @@
 			};
 
 			sdma1: dma-controller@30bd0000 {
-				compatible = "fsl,imx8mm-sdma", "fsl,imx7d-sdma";
+				compatible = "fsl,imx8mm-sdma", "fsl,imx8mq-sdma";
 				reg = <0x30bd0000 0x10000>;
 				interrupts = <GIC_SPI 2 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MM_CLK_SDMA1_ROOT>,
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
