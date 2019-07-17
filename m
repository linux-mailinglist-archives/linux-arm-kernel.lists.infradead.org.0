Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99EA76B998
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 11:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hgxEeLICcGiYqvk+tEenuOPg9S/zB8SN+1Y9/GZLTI0=; b=eAbmE8q8mxtvug
	AfKoAYjZj9+2d04bVSmxt3EJHA+PU705+ScrYnoaw3Crh+ZB/YlIzmXl9XeX+zzRrrpw0qSLnOQ3b
	BwMrg8vvw725f+ed1h0qPqPfY7g5t1G06oYe/yR7OaMsMdZXI34dCpDgr3y/R8kSKAD7GdzNMqyaN
	ks9IS540ed3+T7iuNULJFyYYym9OGHLWcQ09gtZprq6pRrWnimUV7otUVWeTOUxfiJrBD1Sc/5ZeZ
	E7hEyuf5A82if6Sjg62PcmK05ON5EWk0HFy0j6PPTWHnWKXCnyRYlV9+sCjEJs0vVCvEn2n2up00/
	Y7iMPxD0/Bw2ghYYveRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hngeD-0001Qg-9L; Wed, 17 Jul 2019 09:54:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnge1-0001PV-8Q
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 09:54:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1hngdx-0001Pe-7d; Wed, 17 Jul 2019 11:54:37 +0200
From: Lucas Stach <l.stach@pengutronix.de>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH] arm64: dts: imx8mq: fix SAI compatible
Date: Wed, 17 Jul 2019 11:54:36 +0200
Message-Id: <20190717095436.28154-1-l.stach@pengutronix.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_025441_299503_E2FBB480 
X-CRM114-Status: GOOD (  10.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, patchwork-lst@pengutronix.de,
 NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M SAI block is not compatible with the i.MX6SX one, as the
register layout has changed due to two version registers being added
at the beginning of the address map. Remove the bogus compatible.

Fixes: 8c61538dc945 "arm64: dts: imx8mq: Add SAI2 node"
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm64/boot/dts/freescale/imx8mq.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
index 9326bd4150a3..0c533c66b340 100644
--- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
@@ -718,8 +718,7 @@
 
 			sai2: sai@308b0000 {
 				#sound-dai-cells = <0>;
-				compatible = "fsl,imx8mq-sai",
-					     "fsl,imx6sx-sai";
+				compatible = "fsl,imx8mq-sai";
 				reg = <0x308b0000 0x10000>;
 				interrupts = <GIC_SPI 96 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&clk IMX8MQ_CLK_SAI2_IPG>,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
