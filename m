Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991FC6A3CC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 10:26:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=79VUekppBF20PKtS7CsVJch6n4yrx4wr72Wrr4f8mr0=; b=i3Ja6jAyv5wWOG
	21c+0SSkHvFykBpXM/Tyu/faR5NVt5Ncu1NhAwk5rPHW3MFjCr0a7V2MLhrDZrOkiEoHM/0af7UkN
	BlAIYUW2g3X2Y2VqreMNgv4sI/ftrA8ErFZThStrBzcwb3Gx6yLhAALuTzw5lNIDNhwk75WqYgcLf
	7ycuMpb73F0By1EBV1JLfu8G03Pkq0rYP2Sxq8ErM2BxVQxyo21fY8au6DyUmhDVPb5B9l0bM9bGX
	89cImOaSpmnI0Z+XUgAcKZw0eHFGTWIe9/g6YDT9e8xBvNIkvO/S8LFpD8MyGAS53L67yMe8/NRYp
	8yN4alaAY3XTb/r2ja0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnIn1-0007Qt-Sb; Tue, 16 Jul 2019 08:26:24 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnImj-0007PR-BH
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 08:26:09 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6G8Q2o9114429;
 Tue, 16 Jul 2019 03:26:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1563265562;
 bh=0M/bHMm/nUf3WaVg6DIzI6PI09k1r/G2ByMKP6TEV1Q=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=omVZfygnT6SVwu+bIwMkZXmZze8cXHjCdpK+v7tL4vW72QwhBvxwCyMDyLY4KTXw7
 F1Zhq3fSL3pAMZW57AdvCCgEefhA3kyksafzsgBkXvUzMS4IGKw5ht4ECEmoq4YJht
 gX+OSY9YTpi849r+Ho74qIJ9sPmsW9TSfkw+ZgQ4=
Received: from DLEE101.ent.ti.com (dlee101.ent.ti.com [157.170.170.31])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6G8Q2CE102218
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 16 Jul 2019 03:26:02 -0500
Received: from DLEE105.ent.ti.com (157.170.170.35) by DLEE101.ent.ti.com
 (157.170.170.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 16
 Jul 2019 03:26:01 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 16 Jul 2019 03:26:01 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6G8PuBp103858;
 Tue, 16 Jul 2019 03:26:00 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v5 2/3] dmaengine: ti: edma: Correct the residue calculation
 (fix for memcpy)
Date: Tue, 16 Jul 2019 11:26:54 +0300
Message-ID: <20190716082655.1620-3-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190716082655.1620-1-peter.ujfalusi@ti.com>
References: <20190716082655.1620-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_012607_766944_5AED1739 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
index a39f817b3888..5b8cbd6d7610 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -1026,6 +1026,7 @@ static int edma_config_pset(struct dma_chan *chan, struct edma_pset *epset,
 		src_cidx = cidx;
 		dst_bidx = acnt;
 		dst_cidx = cidx;
+		epset->addr = src_addr;
 	} else {
 		dev_err(dev, "%s: direction not implemented yet\n", __func__);
 		return -EINVAL;
@@ -1736,7 +1737,11 @@ static u32 edma_residue(struct edma_desc *edesc)
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
@@ -1749,16 +1754,20 @@ static u32 edma_residue(struct edma_desc *edesc)
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
@@ -1783,6 +1792,12 @@ static u32 edma_residue(struct edma_desc *edesc)
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
