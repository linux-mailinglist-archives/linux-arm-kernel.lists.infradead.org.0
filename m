Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE741FC9F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 00:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rN89LbAHHufLjQzIhUzq0AwBeV4mu6iVz/StlvFN/XU=; b=MOUvEQpIeHHEhR
	SS7ymxTH++WvZz6xzKjBtIm3c/CwWJPdV24ODsZXg/WseedKs0xt/7J+FwWmhitdEGnF001fiWrk0
	2uptmj+IxT2iqWk3N6xQ0V9469jSieBZpM1Bu9fyBWdJcXFfOyJUWg8jxbv5WBnguztmEKcWRILY7
	vOsPJh0o9RluzV+45+aCb5lOHrsweGMDrqdV5W9FeUf0XBnl6K4R0dn+GCyqwQgem1aQ+jrP7Raoq
	QjnjI0Wk1YHuN3Tv8pHSwG3B9PKva4exJsX/yJouCUmJATdCXcXFfG4YUk01LlDJecyG3rFawfh5w
	RXwlqs8mvES3BtiJUdKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR2g1-0006WB-Gf; Wed, 15 May 2019 22:47:09 +0000
Received: from mail-out.m-online.net ([2001:a60:0:28:0:1:25:1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR2fF-0005gI-Iz
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 22:46:23 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 4548mR3wt6z1rWxb;
 Thu, 16 May 2019 00:46:15 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 4548mR3lcJz1qqkW;
 Thu, 16 May 2019 00:46:15 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id oxItTTuScGNH; Thu, 16 May 2019 00:46:14 +0200 (CEST)
X-Auth-Info: oYaa4CoStBjfL6S0B6uSWmDf5SDrdfnKUGitUwnc3zQ=
Received: from kurokawa.lan (ip-86-49-110-70.net.upcbroadband.cz
 [86.49.110.70])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Thu, 16 May 2019 00:46:14 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V2 3/8] ARM: dts: imx53: Add ethernet PHY reset on M53Menlo
Date: Thu, 16 May 2019 00:45:56 +0200
Message-Id: <20190515224601.4527-3-marex@denx.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190515224601.4527-1-marex@denx.de>
References: <20190515224601.4527-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_154621_844052_D53A77E4 
X-CRM114-Status: GOOD (  12.27  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:a60:0:28:0:1:25:1 listed in] [list.dnswl.org]
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
Cc: Marek Vasut <marex@denx.de>, Fabio Estevam <festevam@gmail.com>,
 Shawn Guo <shawnguo@kernel.org>, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ethernet PHY GPIO reset line, to let the kernel to reset the PHY.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
To: linux-arm-kernel@lists.infradead.org
---
V2: Set reset GPIO as active-low, to match the board
---
 arch/arm/boot/dts/imx53-m53menlo.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx53-m53menlo.dts b/arch/arm/boot/dts/imx53-m53menlo.dts
index 7dddd7028bec..97a8aee9d7d6 100644
--- a/arch/arm/boot/dts/imx53-m53menlo.dts
+++ b/arch/arm/boot/dts/imx53-m53menlo.dts
@@ -87,6 +87,7 @@
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_fec>;
 	phy-mode = "rmii";
+	phy-reset-gpios = <&gpio7 7 GPIO_ACTIVE_LOW>;
 	status = "okay";
 };
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
