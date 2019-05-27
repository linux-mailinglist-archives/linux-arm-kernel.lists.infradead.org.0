Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1EA32B0B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 10:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u/WFyBTgZn7uXplsgCNqgProIBGagzEwCjolwi2Ygkg=; b=AOnHdyR0l2a9LCd+z1SmnwTCz4
	gBo/59qKf0WzBqHVdmxLLIK351PZdWElkSLQn/lIoZFUL5C6axkXfYtj2AUdKUXNT+efqYNEpcoyF
	CIrmoKa4M5RVgVik8CoiRkk9cHtvZoF53NxtudifvfOnEiilYIrix4+6+ISDrZz79q7PQSOyJ9tmR
	usafyBaKmf3xGMKxlpPK2DC0jQH74CCrGut71DWDWp0lACXCfHt1VWb8lz2SSoweLDChMtnzCoBUH
	2d0iJIB7xGjg2HXmbxz3xsdTlka17CSYY74Z3lfXgbItTLH6BkJbq9IjRdHfLTXI6ahRzre16gnfq
	vih66cxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBLI-0007ll-Ri; Mon, 27 May 2019 08:50:52 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBKX-0006K1-Jt
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 08:50:07 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5DF3D200B05;
 Mon, 27 May 2019 10:50:04 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id ABA3A200AFC;
 Mon, 27 May 2019 10:49:58 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id 73051402CB;
 Mon, 27 May 2019 16:49:51 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com
Subject: [PATCH v2 3/7] dmaengine: fsl-edma-common: move dmamux register to
 another single function
Date: Mon, 27 May 2019 16:51:14 +0800
Message-Id: <20190527085118.40423-4-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190527085118.40423-1-yibin.gong@nxp.com>
References: <20190527085118.40423-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_015005_815256_DDA2BCFC 
X-CRM114-Status: UNSURE (   7.99  )
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

Prepare for edmav2 on i.mx7ulp whose dmamux register is 32bit. No function
impacted.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/fsl-edma-common.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
index c9a17fc..bb24251 100644
--- a/drivers/dma/fsl-edma-common.c
+++ b/drivers/dma/fsl-edma-common.c
@@ -77,6 +77,19 @@ void fsl_edma_disable_request(struct fsl_edma_chan *fsl_chan)
 }
 EXPORT_SYMBOL_GPL(fsl_edma_disable_request);
 
+static void mux_configure8(struct fsl_edma_chan *fsl_chan, void __iomem *addr,
+			   u32 off, u32 slot, bool enable)
+{
+	u8 val8;
+
+	if (enable)
+		val8 = EDMAMUX_CHCFG_ENBL | slot;
+	else
+		val8 = EDMAMUX_CHCFG_DIS;
+
+	iowrite8(val8, addr + off);
+}
+
 void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
 			unsigned int slot, bool enable)
 {
@@ -89,10 +102,7 @@ void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
 	muxaddr = fsl_chan->edma->muxbase[ch / chans_per_mux];
 	slot = EDMAMUX_CHCFG_SOURCE(slot);
 
-	if (enable)
-		iowrite8(EDMAMUX_CHCFG_ENBL | slot, muxaddr + ch_off);
-	else
-		iowrite8(EDMAMUX_CHCFG_DIS, muxaddr + ch_off);
+	mux_configure8(fsl_chan, muxaddr, ch_off, slot, enable);
 }
 EXPORT_SYMBOL_GPL(fsl_edma_chan_mux);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
