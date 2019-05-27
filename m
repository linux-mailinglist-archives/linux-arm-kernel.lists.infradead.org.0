Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6512B0B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:51:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9bMaw4CPqvAxlHSmfb61otBG5jUg1S5bVxz5jzKk3vo=; b=YLkyKvNSDW0FiIN6CGD/j0CEJg
	sm7Ktes/5t5V2mB/Anw5xzQpuwY8MtY8DUBE2LKzRs8eQPbtm3sEMYxYuPEdCVm5324A9J81mrAaa
	HdAHvb/7yCjUNj1ChKz2A0VRsQH7YUxOxXPLzQEeaBkwX3lzDARZaIHGGaL2tLR2L5FKkuWB8zYkL
	p5hrG2FckWI1z/oSLgmqVoCW6HD3eLBfUc7bJYseuFfZ45B0AmlJcpHIoqAjCDnWtuGwCsCRDpffB
	ASaH5CNGlGWbPzvl1jUpmo374VRpZf5V9rlxE3HipOijL/QT6TfazZ3oJiymSZTrK9nYp4JrjkdiZ
	t5t1qQ9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBLT-000829-MN; Mon, 27 May 2019 08:51:03 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBKZ-0006ZO-2H
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:50:09 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id D28BD200079;
 Mon, 27 May 2019 10:50:05 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 2A179200AF0;
 Mon, 27 May 2019 10:50:00 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id B2FD7402FB;
 Mon, 27 May 2019 16:49:52 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com
Subject: [PATCH v2 4/7] dmaengine: fsl-edma-common: version check for v2
 instead
Date: Mon, 27 May 2019 16:51:15 +0800
Message-Id: <20190527085118.40423-5-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527085118.40423-1-yibin.gong@nxp.com>
References: <20190527085118.40423-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_015007_442231_24CFC6EF 
X-CRM114-Status: UNSURE (   7.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
index bb24251..45d70d3 100644
--- a/drivers/dma/fsl-edma-common.c
+++ b/drivers/dma/fsl-edma-common.c
@@ -657,26 +657,26 @@ void fsl_edma_setup_regs(struct fsl_edma_engine *edma)
 	edma->regs.erql = edma->membase + EDMA_ERQ;
 	edma->regs.eeil = edma->membase + EDMA_EEI;
 
-	edma->regs.serq = edma->membase + ((edma->version == v1) ?
-			EDMA_SERQ : EDMA64_SERQ);
-	edma->regs.cerq = edma->membase + ((edma->version == v1) ?
-			EDMA_CERQ : EDMA64_CERQ);
-	edma->regs.seei = edma->membase + ((edma->version == v1) ?
-			EDMA_SEEI : EDMA64_SEEI);
-	edma->regs.ceei = edma->membase + ((edma->version == v1) ?
-			EDMA_CEEI : EDMA64_CEEI);
-	edma->regs.cint = edma->membase + ((edma->version == v1) ?
-			EDMA_CINT : EDMA64_CINT);
-	edma->regs.cerr = edma->membase + ((edma->version == v1) ?
-			EDMA_CERR : EDMA64_CERR);
-	edma->regs.ssrt = edma->membase + ((edma->version == v1) ?
-			EDMA_SSRT : EDMA64_SSRT);
-	edma->regs.cdne = edma->membase + ((edma->version == v1) ?
-			EDMA_CDNE : EDMA64_CDNE);
-	edma->regs.intl = edma->membase + ((edma->version == v1) ?
-			EDMA_INTR : EDMA64_INTL);
-	edma->regs.errl = edma->membase + ((edma->version == v1) ?
-			EDMA_ERR : EDMA64_ERRL);
+	edma->regs.serq = edma->membase + ((edma->version == v2) ?
+			EDMA64_SERQ : EDMA_SERQ);
+	edma->regs.cerq = edma->membase + ((edma->version == v2) ?
+			EDMA64_CERQ : EDMA_CERQ);
+	edma->regs.seei = edma->membase + ((edma->version == v2) ?
+			EDMA64_SEEI : EDMA_SEEI);
+	edma->regs.ceei = edma->membase + ((edma->version == v2) ?
+			EDMA64_CEEI : EDMA_CEEI);
+	edma->regs.cint = edma->membase + ((edma->version == v2) ?
+			EDMA64_CINT : EDMA_CINT);
+	edma->regs.cerr = edma->membase + ((edma->version == v2) ?
+			EDMA64_CERR : EDMA_CERR);
+	edma->regs.ssrt = edma->membase + ((edma->version == v2) ?
+			EDMA64_SSRT : EDMA_SSRT);
+	edma->regs.cdne = edma->membase + ((edma->version == v2) ?
+			EDMA64_CDNE : EDMA_CDNE);
+	edma->regs.intl = edma->membase + ((edma->version == v2) ?
+			EDMA64_INTL : EDMA_INTR);
+	edma->regs.errl = edma->membase + ((edma->version == v2) ?
+			EDMA64_ERRL : EDMA_ERR);
 
 	if (edma->version == v2) {
 		edma->regs.erqh = edma->membase + EDMA64_ERQH;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
