Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F03B2499A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:00:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kpXJcjUJtjEtN8rhcQqeUyhUD9IGqb8admCLWcorHw=; b=FlAzeGVd/wRtgd
	rBY4LXGF/cft+CktJmjJifUeetNzg1y2tIz7nGITSstVoZwvc01y98lDrmTlbrGJh8Fh2Y1YpLTqi
	pi+cfZGxz/6J8bHC5hasMgBt5CMdqN/4C99Bl7goeR2mic5xYew4IBfN67BdBMtpx7bpMVyGq4OuU
	qfFoOTmn72eG7PbaFk0h2Ellr6LyC/LV/tqfe0DLEMdn2OevIb5k4d6NZPmI+l9n+sDDAOsz1bqF2
	UZEpU2EvuLAyReglWqiOxV1Yll7yNH4+m847Mjq3GJbwudfJ+dVAOwojtObvq2SA90KY1nALS+A7x
	ubkENVmNibJLonnALq0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSzgy-0004M4-C0; Tue, 21 May 2019 08:00:12 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSzgQ-0003yz-Jj
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 07:59:41 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4L7xaA7120057;
 Tue, 21 May 2019 02:59:36 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1558425576;
 bh=5FvJ6nHLjhjVMrC3TxE53QTyFIFMi2zQ7rGA3i0mTRA=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=TjLtTLB08aPVw+6l7OG6wm3UtFsXU61Y8HXE3XT+qwXj9iIdXXPsedsCnAVBCItw9
 0St/vWQsV7eo7/1wdW9MEJCINhZrkIvJJrF3WucD6KFQQKmez8dZbXF/rZ4VJNlVdf
 Qh4QpFQXfU+Y/e/vhhJuQvQkSIwGhelENH/U0Xtw=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4L7xa7l073407
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 21 May 2019 02:59:36 -0500
Received: from DLEE100.ent.ti.com (157.170.170.30) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 21
 May 2019 02:59:35 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 21 May 2019 02:59:35 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4L7xUk1078442;
 Tue, 21 May 2019 02:59:34 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v2 2/2] dmaengine: ti: edma: Enable support for polled
 (memcpy) completion
Date: Tue, 21 May 2019 10:59:45 +0300
Message-ID: <20190521075945.14085-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521075945.14085-1-peter.ujfalusi@ti.com>
References: <20190521075945.14085-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_005938_793327_DFF53633 
X-CRM114-Status: GOOD (  15.04  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dmaengine@vger.kernel.org, dan.j.williams@intel.com,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When a DMA client driver decides that it is not providing callback for
completion of a transfer (and/or does not set the DMA_PREP_INTERRUPT) but
it will poll the status of the transfer (in case of short memcpy for
example) we will not get interrupt for the completion of the transfer and
will not mark the transaction as done.

Check the event registers (ER and EER) and if the channel is inactive then
return with DMA_COMPLETE to let the client know that the transfer is
completed.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/edma.c | 23 ++++++++++++++++++++---
 1 file changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
index a5822925a327..0f4873c2aa12 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -1226,8 +1226,9 @@ static struct dma_async_tx_descriptor *edma_prep_dma_memcpy(
 
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
@@ -1254,7 +1255,9 @@ static struct dma_async_tx_descriptor *edma_prep_dma_memcpy(
 		}
 
 		edesc->pset[1].param.opt |= ITCCHEN;
-		edesc->pset[1].param.opt |= TCINTEN;
+		/* Enable transfer complete interrupt if requested */
+		if (tx_flags & DMA_PREP_INTERRUPT)
+			edesc->pset[1].param.opt |= TCINTEN;
 	}
 
 	return vchan_tx_prep(&echan->vchan, &edesc->vdesc, tx_flags);
@@ -1816,6 +1819,20 @@ static enum dma_status edma_tx_status(struct dma_chan *chan,
 	unsigned long flags;
 
 	ret = dma_cookie_status(chan, cookie, txstate);
+
+	if (ret != DMA_COMPLETE && echan->edesc && !echan->edesc->cyclic) {
+		struct edma_cc *ecc = echan->ecc;
+		int channel = EDMA_CHAN_SLOT(echan->ch_num);
+		int idx = EDMA_REG_ARRAY_INDEX(channel);
+		int ch_bit = EDMA_CHANNEL_BIT(channel);
+		unsigned int sh_er = edma_shadow0_read_array(ecc, SH_ER, idx);
+		unsigned int sh_eer = edma_shadow0_read_array(ecc, SH_EER, idx);
+
+		/* The channel is no longer active */
+		if (!(sh_er & ch_bit) && !(sh_eer & ch_bit))
+			ret = DMA_COMPLETE;
+	}
+
 	if (ret == DMA_COMPLETE || !txstate)
 		return ret;
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
