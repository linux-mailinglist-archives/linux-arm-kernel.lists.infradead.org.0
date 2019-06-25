Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE1B52861
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 11:43:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=pv5ep+RKC919itWRlvaOBFIPSvWpnGOUaT7ANEFlux0=; b=S9T7NQVZAujtlSKCo4gv8E8TCs
	pUsk9DKLH/icRHFLDqSxcZHLruPKbR/8iIOqT2A6YIbP7kFSb1eoS9qcC+i4bGysfkiOwRjIhfNPr
	kRaHL8xNVi96g2+/WiJXzkOx79dNVZ+zCZL8Oxzk/G8ADqsPzpjc5wIxWkQon6GEo12wwaAXpAhkU
	GWyQFd0Xvh+DBnRm0+36ECIYTMaQD7S5HXpCfK10cm0k0qlT0jk/EGVX4oL2OJnPQFTVAPlmvBNbg
	ixuhEEbxGWFLjUPO/D8CGJUOjRyvS3o8XDDdWjN63HpuP245r1TxCQS6t2ywgcfAOsd0YO6fsP2ap
	dIw4DbTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfhzO-0007yA-Du; Tue, 25 Jun 2019 09:43:46 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfhxX-00075z-RG
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Jun 2019 09:41:54 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 490131A078A;
 Tue, 25 Jun 2019 11:41:50 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id BB1F21A0774;
 Tue, 25 Jun 2019 11:41:42 +0200 (CEST)
Received: from mega.ap.freescale.net (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id E8D7440313;
 Tue, 25 Jun 2019 17:41:33 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com, angelo@sysam.it
Subject: [PATCH v5 3/6] dmaengine: fsl-edma-common: version check for v2
 instead
Date: Tue, 25 Jun 2019 17:43:21 +0800
Message-Id: <20190625094324.19196-4-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190625094324.19196-1-yibin.gong@nxp.com>
References: <20190625094324.19196-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_024152_770677_C1133F86 
X-CRM114-Status: UNSURE (   6.83  )
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, dmaengine@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Robin Gong <yibin.gong@nxp.com>

The next v3 i.mx7ulp edma is based on v1, so change version
check logic for v2 instead.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/fsl-edma-common.c | 40 ++++++++++++++++++++--------------------
 1 file changed, 20 insertions(+), 20 deletions(-)

diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
index ba74e10..44d92c3 100644
--- a/drivers/dma/fsl-edma-common.c
+++ b/drivers/dma/fsl-edma-common.c
@@ -658,26 +658,26 @@ void fsl_edma_setup_regs(struct fsl_edma_engine *edma)
 	edma->regs.erql = edma->membase + EDMA_ERQ;
 	edma->regs.eeil = edma->membase + EDMA_EEI;
 
-	edma->regs.serq = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_SERQ : EDMA64_SERQ);
-	edma->regs.cerq = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_CERQ : EDMA64_CERQ);
-	edma->regs.seei = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_SEEI : EDMA64_SEEI);
-	edma->regs.ceei = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_CEEI : EDMA64_CEEI);
-	edma->regs.cint = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_CINT : EDMA64_CINT);
-	edma->regs.cerr = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_CERR : EDMA64_CERR);
-	edma->regs.ssrt = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_SSRT : EDMA64_SSRT);
-	edma->regs.cdne = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_CDNE : EDMA64_CDNE);
-	edma->regs.intl = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_INTR : EDMA64_INTL);
-	edma->regs.errl = edma->membase + ((edma->drvdata->version == v1) ?
-			EDMA_ERR : EDMA64_ERRL);
+	edma->regs.serq = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_SERQ : EDMA_SERQ);
+	edma->regs.cerq = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_CERQ : EDMA_CERQ);
+	edma->regs.seei = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_SEEI : EDMA_SEEI);
+	edma->regs.ceei = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_CEEI : EDMA_CEEI);
+	edma->regs.cint = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_CINT : EDMA_CINT);
+	edma->regs.cerr = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_CERR : EDMA_CERR);
+	edma->regs.ssrt = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_SSRT : EDMA_SSRT);
+	edma->regs.cdne = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_CDNE : EDMA_CDNE);
+	edma->regs.intl = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_INTL : EDMA_INTR);
+	edma->regs.errl = edma->membase + ((edma->drvdata->version == v2) ?
+			EDMA64_ERRL : EDMA_ERR);
 
 	if (edma->drvdata->version == v2) {
 		edma->regs.erqh = edma->membase + EDMA64_ERQH;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
