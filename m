Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D7394A232
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NTP9VOzcW/PXKTEXwNwvAsISejCQ8mv5AIlxPwTseo=; b=qqAaybTwRZCmlf
	qTm4dUlaEViSj0QHVz65C1Bw0Lw4GGjPqYmlF/hXRSD42fgt3gGBehiwQ7Oq/PteJZpcOsdTd8JkK
	DvdaBcCWc/OfTkGJCgQTq00vQMPv3XesAxyePrmxD9EagaI5yXZhMPObrA3p8sZHOIpFuNdpAuRFo
	2PMNAZ7oMtMmU2uEehuXLLl/PPyrefTGjC1whzAXxhgw7z6/QEvx6tB9bTMQdcibR0asZbw+8AsjL
	Wl8n+1IER8UjOvtmVLA7cOxzXYGWMMV9Nujdi1Ps7UdjQKvCxGa9cBeF4pI9CXcxZyHRJ4IowyYhV
	egpyaRjPQezkJrxvCVxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdED5-000527-QV; Tue, 18 Jun 2019 13:31:39 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE3C-00069l-EI
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:21:29 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IDLKsd095413;
 Tue, 18 Jun 2019 08:21:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560864080;
 bh=yzsxc0yZotipDl5E7RJ7vvWhR++kQAjsRKels3HpyaE=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=ifGH1Yzb3fcCGgjAaqXr5tMQQQAYOrXAQv78jNGj1irya2Jwt0dwD9hmNWGgUyveg
 nDyAjB/f1w0knIqMvb4GYh+BRiqeR6rRgtzzi1IWyX53aF/DGdCQPzuqYbJyut4JT+
 ophiLalo9+hlDKgbzKbQwagjy/W6tZi7/Cuqpjl4=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IDLKwF046550
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 08:21:20 -0500
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 08:21:18 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 08:21:18 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IDLBKm026006;
 Tue, 18 Jun 2019 08:21:17 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v4 3/3] dmaengine: ti: edma: Support for polled (memcpy)
 completion
Date: Tue, 18 Jun 2019 16:21:48 +0300
Message-ID: <20190618132148.26468-4-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190618132148.26468-1-peter.ujfalusi@ti.com>
References: <20190618132148.26468-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_062126_813244_01F1EF1D 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a DMA client driver does not set the DMA_PREP_INTERRUPT because it
does not want to use interrupts for DMA completion or because it can not
rely on DMA interrupts due to executing the memcpy when interrupts are
disabled it will poll the status of the transfer.

Since we can not tell from any EDMA register that the transfer is
completed, we can only know that the paRAM set has been sent to TPTC for
processing we need to check the residue of the transfer, if it is 0 then
the transfer is completed.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/edma.c | 37 +++++++++++++++++++++++++++++++++----
 1 file changed, 33 insertions(+), 4 deletions(-)

diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
index 48b155cab822..87d7fdaa204b 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -171,6 +171,7 @@ struct edma_desc {
 	struct list_head		node;
 	enum dma_transfer_direction	direction;
 	int				cyclic;
+	bool				polled;
 	int				absync;
 	int				pset_nr;
 	struct edma_chan		*echan;
@@ -1240,8 +1241,9 @@ static struct dma_async_tx_descriptor *edma_prep_dma_memcpy(
 
 	edesc->pset[0].param.opt |= ITCCHEN;
 	if (nslots == 1) {
-		/* Enable transfer complete interrupt */
-		edesc->pset[0].param.opt |= TCINTEN;
+		/* Enable transfer complete interrupt if requested */
+		if (tx_flags & DMA_PREP_INTERRUPT)
+			edesc->pset[0].param.opt |= TCINTEN;
 	} else {
 		/* Enable transfer complete chaining for the first slot */
 		edesc->pset[0].param.opt |= TCCHEN;
@@ -1268,9 +1270,14 @@ static struct dma_async_tx_descriptor *edma_prep_dma_memcpy(
 		}
 
 		edesc->pset[1].param.opt |= ITCCHEN;
-		edesc->pset[1].param.opt |= TCINTEN;
+		/* Enable transfer complete interrupt if requested */
+		if (tx_flags & DMA_PREP_INTERRUPT)
+			edesc->pset[1].param.opt |= TCINTEN;
 	}
 
+	if (!(tx_flags & DMA_PREP_INTERRUPT))
+		edesc->polled = true;
+
 	return vchan_tx_prep(&echan->vchan, &edesc->vdesc, tx_flags);
 }
 
@@ -1840,18 +1847,40 @@ static enum dma_status edma_tx_status(struct dma_chan *chan,
 {
 	struct edma_chan *echan = to_edma_chan(chan);
 	struct virt_dma_desc *vdesc;
+	struct dma_tx_state txstate_tmp;
 	enum dma_status ret;
 	unsigned long flags;
 
 	ret = dma_cookie_status(chan, cookie, txstate);
-	if (ret == DMA_COMPLETE || !txstate)
+
+	/* Provide a dummy dma_tx_state for completion checking */
+	if (ret != DMA_COMPLETE && !txstate)
+		txstate = &txstate_tmp;
+
+	if (ret == DMA_COMPLETE)
 		return ret;
 
+	txstate->residue = 0;
 	spin_lock_irqsave(&echan->vchan.lock, flags);
 	if (echan->edesc && echan->edesc->vdesc.tx.cookie == cookie)
 		txstate->residue = edma_residue(echan->edesc);
 	else if ((vdesc = vchan_find_desc(&echan->vchan, cookie)))
 		txstate->residue = to_edma_desc(&vdesc->tx)->residue;
+
+	/*
+	 * Mark the cookie completed if the residue is 0 for non cyclic
+	 * transfers
+	 */
+	if (ret != DMA_COMPLETE && !txstate->residue &&
+	    echan->edesc && echan->edesc->polled &&
+	    echan->edesc->vdesc.tx.cookie == cookie) {
+		edma_stop(echan);
+		vchan_cookie_complete(&echan->edesc->vdesc);
+		echan->edesc = NULL;
+		edma_execute(echan);
+		ret = DMA_COMPLETE;
+	}
+
 	spin_unlock_irqrestore(&echan->vchan.lock, flags);
 
 	return ret;
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
