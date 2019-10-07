Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81656CE6CE
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 17:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NRJygIwsr1gnvtAEmiOapOllcujSIgry4Ry6WOyK7u0=; b=as/
	T4LkeS4vYJYTnZG/ZfGK73jOqA4HtSsQfwAZeNjOrqzsE3HG+RxqYOYnGBSuuBCN/MSUmNrhzMz9r
	oUntCBIwsw1v2/y3iHs2H9UTViPMwmKi2y6F0I/qt51WlCeq50NJht7PuTGwwVxrMY833ym4h30+w
	55tD7BQVdul3/C5WEuH44V5I0R/w8LxvVYFLnYwi0fVVYh2XQom5Mm8lEF5bCUR69EH/A5IgJJ+vC
	yU12+8Gh1BSdOBtBgpo6WUylym6xkcq98Dy9wOupCyRsHedLA2hR57gdckR1GKSUIGSksCzgwg1CV
	5YLrbfdLCCLY+WOGxlHrSiwXphRv8dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHUe6-0005IX-LQ; Mon, 07 Oct 2019 15:09:58 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHUe0-0005Hx-30
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 15:09:53 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 1E6971A0239;
 Mon,  7 Oct 2019 17:09:48 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 113611A00DB;
 Mon,  7 Oct 2019 17:09:48 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id B12EC2060A;
 Mon,  7 Oct 2019 17:09:47 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH v2] imx_v6_v7_defconfig: Build USB_CONFIGFS into kernel
Date: Mon,  7 Oct 2019 18:09:44 +0300
Message-Id: <a0820cfcfa4bc2d9a3949a2b57e72c23d574deb2.1570460874.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_080952_268093_8ACEADF2 
X-CRM114-Status: UNSURE (   6.96  )
X-CRM114-Notice: Please train this message.
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some imx chips (6sll, 6ulz, 7ulp) don't have ethernet support and only a
limited number of USB controllers. For such cases NXP suggests
configuring the USB controller as an ethernet gadget for network boot
testing.

Set USB_CONFIGFS to be built into the kernel so that we can configure
the ethernet gadget without needing modules.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
Reviewed-by: Peter Chen <peter.chen@nxp.com>
---
Changes since v1:
* Improve commit message (sorry for messing it up)
Link to v1: https://patchwork.kernel.org/patch/11142935/

 arch/arm/configs/imx_v6_v7_defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/configs/imx_v6_v7_defconfig b/arch/arm/configs/imx_v6_v7_defconfig
index ade4a2dd1a18..5debac5b038e 100644
--- a/arch/arm/configs/imx_v6_v7_defconfig
+++ b/arch/arm/configs/imx_v6_v7_defconfig
@@ -325,11 +325,11 @@ CONFIG_USB_TEST=m
 CONFIG_USB_EHSET_TEST_FIXTURE=m
 CONFIG_NOP_USB_XCEIV=y
 CONFIG_USB_MXS_PHY=y
 CONFIG_USB_GADGET=y
 CONFIG_USB_FSL_USB2=y
-CONFIG_USB_CONFIGFS=m
+CONFIG_USB_CONFIGFS=y
 CONFIG_USB_CONFIGFS_SERIAL=y
 CONFIG_USB_CONFIGFS_ACM=y
 CONFIG_USB_CONFIGFS_OBEX=y
 CONFIG_USB_CONFIGFS_NCM=y
 CONFIG_USB_CONFIGFS_ECM=y
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
