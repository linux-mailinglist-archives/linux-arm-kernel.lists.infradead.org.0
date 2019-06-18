Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EBA4A230
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:31:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hJL3ei4mYxpC78aEGPaIRmfWRN680fVP+y9cDEQMO28=; b=BQjipVeTLAedVC
	L8rsEnu46CqCRJPFCiILPTh2FYNbzxs3e3I79pwock2geThnANvyerC7FWK1gzav3ji/SurviAJpR
	xN31oORu8/XMTy6G5H2pUOkmqkPv8L6OZwbaYCnckm/aqbrGn5J90MOlOpgVpEgDqYCOuneU6Rbuu
	MI8Aurqkv97cZdBgi3t0fcvv8ucN/01mOYqLpBCsh58z8Sdv7X18R52c8pEO7WwxPN3CGLiHQTXEM
	IwXbEc+wIUdbK+1O8c8BaccSKk0Bs46UwZtaULKBeGEXctcPFQC1IQLTtmE1VkpLGvBvI+wcc5oMF
	E3K3zJOmbx0hXqoSU1aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdECe-0004kR-SS; Tue, 18 Jun 2019 13:31:12 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE3B-00069o-Ah
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:21:28 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IDLIXI095404;
 Tue, 18 Jun 2019 08:21:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560864078;
 bh=C7JoaS/KSR5kOredj6u+NHN8evey0o8bmyMIlXmzdPQ=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=UA6N49ZabXq3vPChrBddi7saqDxZsP8Kt4eIYObGk+8vxxBbzZeh0PPkOLXz7r3qS
 xkSJQmR1XmivKP6+eLjORHtuSNz95HQi0Wl7BrukBn9CSaJvgdm9KvyiDKReDjlax3
 zRVlq20TJqpqVc/v/OPqFYHI4KuLSie32QobtzGs=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IDLIco021527
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 08:21:18 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 08:21:17 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 08:21:17 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IDLBKl026006;
 Tue, 18 Jun 2019 08:21:15 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v4 2/3] dmaengine: ti: edma: Correct the residue calculation
 (fix for memcpy)
Date: Tue, 18 Jun 2019 16:21:47 +0300
Message-ID: <20190618132148.26468-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190618132148.26468-1-peter.ujfalusi@ti.com>
References: <20190618132148.26468-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_062126_559958_E15E4681 
X-CRM114-Status: GOOD (  19.15  )
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

For memcpy we never stored the start address of the transfer for the pset
which rendered the memcpy residue calculation completely broken.

In the edma_residue() function we also need to to some correction for the
calculations:
Instead waiting for all EDMA channels to be idle (in a busy system it can
take few iteration to hit a point when all queues are idle) wait for the
event pending on the given channel (SH_ER for hw synchronized channels,
SH_ESR for manually triggered channels).

If the position returned by EMDA is 0 it imiplies that the last paRAM set
has been consumed and we are at the closing dummy set, thus we can conclude
that the transfer is completed and we can return 0 as residue.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/edma.c | 31 +++++++++++++++++++++++--------
 1 file changed, 23 insertions(+), 8 deletions(-)

diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
index 3fd7831d1279..48b155cab822 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -1039,6 +1039,7 @@ static int edma_config_pset(struct dma_chan *chan, struct edma_pset *epset,
 		src_cidx = cidx;
 		dst_bidx = acnt;
 		dst_cidx = cidx;
+		epset->addr = src_addr;
 	} else {
 		dev_err(dev, "%s: direction not implemented yet\n", __func__);
 		return -EINVAL;
@@ -1749,7 +1750,11 @@ static u32 edma_residue(struct edma_desc *edesc)
 	int loop_count = EDMA_MAX_TR_WAIT_LOOPS;
 	struct edma_chan *echan = edesc->echan;
 	struct edma_pset *pset = edesc->pset;
-	dma_addr_t done, pos;
+	dma_addr_t done, pos, pos_old;
+	int channel = EDMA_CHAN_SLOT(echan->ch_num);
+	int idx = EDMA_REG_ARRAY_INDEX(channel);
+	int ch_bit = EDMA_CHANNEL_BIT(channel);
+	int event_reg;
 	int i;
 
 	/*
@@ -1762,16 +1767,20 @@ static u32 edma_residue(struct edma_desc *edesc)
 	 * "pos" may represent a transfer request that is still being
 	 * processed by the EDMACC or EDMATC. We will busy wait until
 	 * any one of the situations occurs:
-	 *   1. the DMA hardware is idle
-	 *   2. a new transfer request is setup
+	 *   1. while and event is pending for the channel
+	 *   2. a position updated
 	 *   3. we hit the loop limit
 	 */
-	while (edma_read(echan->ecc, EDMA_CCSTAT) & EDMA_CCSTAT_ACTV) {
-		/* check if a new transfer request is setup */
-		if (edma_get_position(echan->ecc,
-				      echan->slot[0], dst) != pos) {
+	if (is_slave_direction(edesc->direction))
+		event_reg = SH_ER;
+	else
+		event_reg = SH_ESR;
+
+	pos_old = pos;
+	while (edma_shadow0_read_array(echan->ecc, event_reg, idx) & ch_bit) {
+		pos = edma_get_position(echan->ecc, echan->slot[0], dst);
+		if (pos != pos_old)
 			break;
-		}
 
 		if (!--loop_count) {
 			dev_dbg_ratelimited(echan->vchan.chan.device->dev,
@@ -1796,6 +1805,12 @@ static u32 edma_residue(struct edma_desc *edesc)
 		return edesc->residue_stat;
 	}
 
+	/*
+	 * If the position is 0, then EDMA loaded the closing dummy slot, the
+	 * transfer is completed
+	 */
+	if (!pos)
+		return 0;
 	/*
 	 * For SG operation we catch up with the last processed
 	 * status.
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
