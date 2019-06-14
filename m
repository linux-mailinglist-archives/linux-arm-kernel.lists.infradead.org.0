Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA67D45739
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 10:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g06s2KxJ62V1Bo1sOYZ8pmoloIeUy2OOnNgU8pogJDM=; b=DKliMzmTF4dU+YPi290mmv8HBE
	WIVYx/HmKOAhcWdF9TvE9b4DOanDCUTtgKKdvSmDRUX7yh9BBGwQjixP7hSh7h+hN1CkouUak3O7F
	7NQmgySOrEYZNoAtZze/vJB8KTyufr4HVY0gx3sttP6brtgOayG5i3BK3R7FGkc8yFqXtMxrej7sR
	W26q3yQyBGo2jxq6KHpd1pGw5YmFfW2MdZHu3qXwZLC7k9YwMZJcb2VOr1dieewABBjHBu3s8N2jq
	byproyjiW81xVqF6279sv0SYFNWdZk4xrGI1EqprCdlNBmhpSDMC87oQqkAY6sgGYNOfwtdJMsEf5
	1DAZG83A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbhOV-0007Ql-Vx; Fri, 14 Jun 2019 08:17:07 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbhND-0006g0-Lb
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 08:15:49 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 5EDF42005DE;
 Fri, 14 Jun 2019 10:15:46 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 468F52005DF;
 Fri, 14 Jun 2019 10:15:40 +0200 (CEST)
Received: from localhost.localdomain (mega.ap.freescale.net [10.192.208.232])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id ED35D402CA;
 Fri, 14 Jun 2019 16:15:32 +0800 (SGT)
From: yibin.gong@nxp.com
To: robh@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, mark.rutland@arm.com, vkoul@kernel.org,
 dan.j.williams@intel.com, angelo@sysam.it
Subject: [PATCH v4 2/6] dmaengine: fsl-edma-common: move dmamux register to
 another single function
Date: Fri, 14 Jun 2019 16:17:20 +0800
Message-Id: <20190614081724.13366-3-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190614081724.13366-1-yibin.gong@nxp.com>
References: <20190614081724.13366-1-yibin.gong@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_011547_965797_2B97B4A5 
X-CRM114-Status: UNSURE (   7.43  )
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

Prepare for edmav2 on i.mx7ulp whose dmamux register is 32bit. No function
impacted.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 drivers/dma/fsl-edma-common.c | 18 ++++++++++++++----
 1 file changed, 14 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/fsl-edma-common.c b/drivers/dma/fsl-edma-common.c
index 07d9689..ba74e10 100644
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
@@ -90,10 +103,7 @@ void fsl_edma_chan_mux(struct fsl_edma_chan *fsl_chan,
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
