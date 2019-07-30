Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B15247A95B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 15:20:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AnY6uQFQQOA9lv0gpAwIrO4x9NaebGcp1DBBKN8wZsk=; b=DbAsHhVNkwisor
	/NjseNpezSvTfvXDqa10JESPuV6mRKx7hr1OsvmMTO0Ju5QPBLt+bkaf5cVoKB3sHC8fHAQcjuAV2
	pRuTyAp0uju3sclbS/Ak3hszrKbI+3xrtgRrRpzJUvFmzGxvI3nZK5lEaahcVbs8HqWoU1sdT0xDA
	pbfixS1lb+zvUsOduXpAfmUqNz5C+lkFZqmxttYGNZEOQQJXbQ9PJirjysofo1bUCOt2HBj/7V2K5
	QFMWxVVnvZ2B05z227I5reKETV9Z3k+VYBi7Tyvh/pg/kafU1u5DhvA266DgtFxMkraBTAAqjpLmY
	lZvc/UE9lo4iPGgekr6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsS3T-0002XO-Vy; Tue, 30 Jul 2019 13:20:40 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsS2z-0002Ng-U5
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 13:20:11 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6UDK4j7109814;
 Tue, 30 Jul 2019 08:20:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1564492804;
 bh=A1hY1j0EjSsyhP7lVvn6SAE68U3tIYMeRYSABLOghr8=;
 h=From:To:CC:Subject:Date;
 b=hGmfUxdC91ECqh6zxCyML4ArKTwg2uJVxg0mQ87yKOpe7YOHb2nuHCw36KuTIHkLI
 TZ86a32tEWIp2Yyc9C6vPBLB/5zu0PaFOWlWQP+NrIH4iImehfs/ssZ/gQhCvJqfNn
 VvGcHxE3T/v1oIxvA4a5oxQq3RygXCrI1WzUyifg=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6UDK48A000583
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 30 Jul 2019 08:20:04 -0500
Received: from DLEE114.ent.ti.com (157.170.170.25) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 30
 Jul 2019 08:20:04 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE114.ent.ti.com
 (157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 30 Jul 2019 08:20:04 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6UDK2Bt055518;
 Tue, 30 Jul 2019 08:20:02 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH] dmaengine: ti: edma: Remove 'Assignment in if condition'
Date: Tue, 30 Jul 2019 16:20:06 +0300
Message-ID: <20190730132006.2790-1-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_062010_199831_787D50B6 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

While the compiler does not have problem with how it is implemented,
checkpatch does give en ERROR for this arrangement.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/edma.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
index fe468e2f7e67..6f2d6c592663 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -1832,7 +1832,6 @@ static enum dma_status edma_tx_status(struct dma_chan *chan,
 				      struct dma_tx_state *txstate)
 {
 	struct edma_chan *echan = to_edma_chan(chan);
-	struct virt_dma_desc *vdesc;
 	struct dma_tx_state txstate_tmp;
 	enum dma_status ret;
 	unsigned long flags;
@@ -1846,12 +1845,18 @@ static enum dma_status edma_tx_status(struct dma_chan *chan,
 	if (!txstate)
 		txstate = &txstate_tmp;
 
-	txstate->residue = 0;
 	spin_lock_irqsave(&echan->vchan.lock, flags);
-	if (echan->edesc && echan->edesc->vdesc.tx.cookie == cookie)
+	if (echan->edesc && echan->edesc->vdesc.tx.cookie == cookie) {
 		txstate->residue = edma_residue(echan->edesc);
-	else if ((vdesc = vchan_find_desc(&echan->vchan, cookie)))
-		txstate->residue = to_edma_desc(&vdesc->tx)->residue;
+	} else {
+		struct virt_dma_desc *vdesc = vchan_find_desc(&echan->vchan,
+							      cookie);
+
+		if (vdesc)
+			txstate->residue = to_edma_desc(&vdesc->tx)->residue;
+		else
+			txstate->residue = 0;
+	}
 
 	/*
 	 * Mark the cookie completed if the residue is 0 for non cyclic
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
