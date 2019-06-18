Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F26E4A235
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:32:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aMablY8vD69EFXdgwl/XQ6JYFJcJtOsqz/isLPFNZ7k=; b=u7i8RPCNNUWGUh
	yR4DbgIcWKCIZV3Z5gTHsyBUqawq7czaIh0h58uZ9pyr7CFCy2LTkjreUZs8T5lty3w5fwALGstJL
	2Fk6eUiKuCeKR1qZKMx5CVCSA/4WsW/mMykBYFTUtQMoy5cMTZzilnfYNcm3q5pUOj1H8tLBi6pK7
	Wq5nrnWodKxf1SHI8VJNjqNZrFBSt+uVQAcGPPHnxqY9A4WQSyUQKFEy8SDOYNFTu8tpZ/GEKjL9D
	TauSQ8AP91usNLOBwnCsBEegkFyurLz9ePW1CW5mrtW5ypt/mjMzkgwPzv2KxVutlDeGiPH5qS7tW
	4davv0BpULSSZGJh5Nkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEDQ-0005HV-QK; Tue, 18 Jun 2019 13:32:01 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdE3C-00069m-Cf
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:21:30 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5IDLGEs095398;
 Tue, 18 Jun 2019 08:21:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560864076;
 bh=nq086HSDOnUB5n5vbaZopqle/jr8rGQqXZXgYSE3scU=;
 h=From:To:CC:Subject:Date:In-Reply-To:References;
 b=h68LZW0LlvWqe+igo9XSflD9BoZDbCb28O80qRtHNWSe3+hssHP7EmUqHetbsjNH4
 waXtmZiHu4LGs5MHMtvLOxvg4NzlK6LK154W/oK9m4TB5H/wYoOq338wvBHjrl6NjU
 NsywnsK/VT3hapor4xFmK3Pipxce6kyP8NZUEQ64=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5IDLGf5128283
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 18 Jun 2019 08:21:16 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 18
 Jun 2019 08:21:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 18 Jun 2019 08:21:15 -0500
Received: from feketebors.ti.com (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5IDLBKk026006;
 Tue, 18 Jun 2019 08:21:14 -0500
From: Peter Ujfalusi <peter.ujfalusi@ti.com>
To: <vkoul@kernel.org>
Subject: [PATCH v4 1/3] dmaengine: ti: edma: Clean up the 2x32bit array
 register accesses
Date: Tue, 18 Jun 2019 16:21:46 +0300
Message-ID: <20190618132148.26468-2-peter.ujfalusi@ti.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190618132148.26468-1-peter.ujfalusi@ti.com>
References: <20190618132148.26468-1-peter.ujfalusi@ti.com>
MIME-Version: 1.0
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_062126_837804_9934E159 
X-CRM114-Status: GOOD (  16.55  )
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

Introduce defines for getting the array index and the bit number within the
64bit array register pairs.

Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
---
 drivers/dma/ti/edma.c | 106 ++++++++++++++++++++++++------------------
 1 file changed, 61 insertions(+), 45 deletions(-)

diff --git a/drivers/dma/ti/edma.c b/drivers/dma/ti/edma.c
index 22ecbf55ac02..3fd7831d1279 100644
--- a/drivers/dma/ti/edma.c
+++ b/drivers/dma/ti/edma.c
@@ -124,6 +124,17 @@
 #define EDMA_CONT_PARAMS_FIXED_EXACT	 1002
 #define EDMA_CONT_PARAMS_FIXED_NOT_EXACT 1003
 
+/*
+ * 64bit array registers are split into two 32bit registers:
+ * reg0: channel/event 0-31
+ * reg1: channel/event 32-63
+ *
+ * bit 5 in the channel number tells the array index (0/1)
+ * bit 0-4 (0x1f) is the bit offset within the register
+ */
+#define EDMA_REG_ARRAY_INDEX(channel)	((channel) >> 5)
+#define EDMA_CHANNEL_BIT(channel)	(BIT((channel) & 0x1f))
+
 /* PaRAM slots are laid out like this */
 struct edmacc_param {
 	u32 opt;
@@ -432,15 +443,14 @@ static void edma_setup_interrupt(struct edma_chan *echan, bool enable)
 {
 	struct edma_cc *ecc = echan->ecc;
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
+	int idx = EDMA_REG_ARRAY_INDEX(channel);
+	int ch_bit = EDMA_CHANNEL_BIT(channel);
 
 	if (enable) {
-		edma_shadow0_write_array(ecc, SH_ICR, channel >> 5,
-					 BIT(channel & 0x1f));
-		edma_shadow0_write_array(ecc, SH_IESR, channel >> 5,
-					 BIT(channel & 0x1f));
+		edma_shadow0_write_array(ecc, SH_ICR, idx, ch_bit);
+		edma_shadow0_write_array(ecc, SH_IESR, idx, ch_bit);
 	} else {
-		edma_shadow0_write_array(ecc, SH_IECR, channel >> 5,
-					 BIT(channel & 0x1f));
+		edma_shadow0_write_array(ecc, SH_IECR, idx, ch_bit);
 	}
 }
 
@@ -578,26 +588,26 @@ static void edma_start(struct edma_chan *echan)
 {
 	struct edma_cc *ecc = echan->ecc;
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
-	int j = (channel >> 5);
-	unsigned int mask = BIT(channel & 0x1f);
+	int idx = EDMA_REG_ARRAY_INDEX(channel);
+	int ch_bit = EDMA_CHANNEL_BIT(channel);
 
 	if (!echan->hw_triggered) {
 		/* EDMA channels without event association */
-		dev_dbg(ecc->dev, "ESR%d %08x\n", j,
-			edma_shadow0_read_array(ecc, SH_ESR, j));
-		edma_shadow0_write_array(ecc, SH_ESR, j, mask);
+		dev_dbg(ecc->dev, "ESR%d %08x\n", idx,
+			edma_shadow0_read_array(ecc, SH_ESR, idx));
+		edma_shadow0_write_array(ecc, SH_ESR, idx, ch_bit);
 	} else {
 		/* EDMA channel with event association */
-		dev_dbg(ecc->dev, "ER%d %08x\n", j,
-			edma_shadow0_read_array(ecc, SH_ER, j));
+		dev_dbg(ecc->dev, "ER%d %08x\n", idx,
+			edma_shadow0_read_array(ecc, SH_ER, idx));
 		/* Clear any pending event or error */
-		edma_write_array(ecc, EDMA_ECR, j, mask);
-		edma_write_array(ecc, EDMA_EMCR, j, mask);
+		edma_write_array(ecc, EDMA_ECR, idx, ch_bit);
+		edma_write_array(ecc, EDMA_EMCR, idx, ch_bit);
 		/* Clear any SER */
-		edma_shadow0_write_array(ecc, SH_SECR, j, mask);
-		edma_shadow0_write_array(ecc, SH_EESR, j, mask);
-		dev_dbg(ecc->dev, "EER%d %08x\n", j,
-			edma_shadow0_read_array(ecc, SH_EER, j));
+		edma_shadow0_write_array(ecc, SH_SECR, idx, ch_bit);
+		edma_shadow0_write_array(ecc, SH_EESR, idx, ch_bit);
+		dev_dbg(ecc->dev, "EER%d %08x\n", idx,
+			edma_shadow0_read_array(ecc, SH_EER, idx));
 	}
 }
 
@@ -605,19 +615,19 @@ static void edma_stop(struct edma_chan *echan)
 {
 	struct edma_cc *ecc = echan->ecc;
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
-	int j = (channel >> 5);
-	unsigned int mask = BIT(channel & 0x1f);
+	int idx = EDMA_REG_ARRAY_INDEX(channel);
+	int ch_bit = EDMA_CHANNEL_BIT(channel);
 
-	edma_shadow0_write_array(ecc, SH_EECR, j, mask);
-	edma_shadow0_write_array(ecc, SH_ECR, j, mask);
-	edma_shadow0_write_array(ecc, SH_SECR, j, mask);
-	edma_write_array(ecc, EDMA_EMCR, j, mask);
+	edma_shadow0_write_array(ecc, SH_EECR, idx, ch_bit);
+	edma_shadow0_write_array(ecc, SH_ECR, idx, ch_bit);
+	edma_shadow0_write_array(ecc, SH_SECR, idx, ch_bit);
+	edma_write_array(ecc, EDMA_EMCR, idx, ch_bit);
 
 	/* clear possibly pending completion interrupt */
-	edma_shadow0_write_array(ecc, SH_ICR, j, mask);
+	edma_shadow0_write_array(ecc, SH_ICR, idx, ch_bit);
 
-	dev_dbg(ecc->dev, "EER%d %08x\n", j,
-		edma_shadow0_read_array(ecc, SH_EER, j));
+	dev_dbg(ecc->dev, "EER%d %08x\n", idx,
+		edma_shadow0_read_array(ecc, SH_EER, idx));
 
 	/* REVISIT:  consider guarding against inappropriate event
 	 * chaining by overwriting with dummy_paramset.
@@ -631,45 +641,49 @@ static void edma_stop(struct edma_chan *echan)
 static void edma_pause(struct edma_chan *echan)
 {
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
-	unsigned int mask = BIT(channel & 0x1f);
 
-	edma_shadow0_write_array(echan->ecc, SH_EECR, channel >> 5, mask);
+	edma_shadow0_write_array(echan->ecc, SH_EECR,
+				 EDMA_REG_ARRAY_INDEX(channel),
+				 EDMA_CHANNEL_BIT(channel));
 }
 
 /* Re-enable EDMA hardware events on the specified channel.  */
 static void edma_resume(struct edma_chan *echan)
 {
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
-	unsigned int mask = BIT(channel & 0x1f);
 
-	edma_shadow0_write_array(echan->ecc, SH_EESR, channel >> 5, mask);
+	edma_shadow0_write_array(echan->ecc, SH_EESR,
+				 EDMA_REG_ARRAY_INDEX(channel),
+				 EDMA_CHANNEL_BIT(channel));
 }
 
 static void edma_trigger_channel(struct edma_chan *echan)
 {
 	struct edma_cc *ecc = echan->ecc;
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
-	unsigned int mask = BIT(channel & 0x1f);
+	int idx = EDMA_REG_ARRAY_INDEX(channel);
+	int ch_bit = EDMA_CHANNEL_BIT(channel);
 
-	edma_shadow0_write_array(ecc, SH_ESR, (channel >> 5), mask);
+	edma_shadow0_write_array(ecc, SH_ESR, idx, ch_bit);
 
-	dev_dbg(ecc->dev, "ESR%d %08x\n", (channel >> 5),
-		edma_shadow0_read_array(ecc, SH_ESR, (channel >> 5)));
+	dev_dbg(ecc->dev, "ESR%d %08x\n", idx,
+		edma_shadow0_read_array(ecc, SH_ESR, idx));
 }
 
 static void edma_clean_channel(struct edma_chan *echan)
 {
 	struct edma_cc *ecc = echan->ecc;
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
-	int j = (channel >> 5);
-	unsigned int mask = BIT(channel & 0x1f);
+	int idx = EDMA_REG_ARRAY_INDEX(channel);
+	int ch_bit = EDMA_CHANNEL_BIT(channel);
 
-	dev_dbg(ecc->dev, "EMR%d %08x\n", j, edma_read_array(ecc, EDMA_EMR, j));
-	edma_shadow0_write_array(ecc, SH_ECR, j, mask);
+	dev_dbg(ecc->dev, "EMR%d %08x\n", idx,
+		edma_read_array(ecc, EDMA_EMR, idx));
+	edma_shadow0_write_array(ecc, SH_ECR, idx, ch_bit);
 	/* Clear the corresponding EMR bits */
-	edma_write_array(ecc, EDMA_EMCR, j, mask);
+	edma_write_array(ecc, EDMA_EMCR, idx, ch_bit);
 	/* Clear any SER */
-	edma_shadow0_write_array(ecc, SH_SECR, j, mask);
+	edma_shadow0_write_array(ecc, SH_SECR, idx, ch_bit);
 	edma_write(ecc, EDMA_CCERRCLR, BIT(16) | BIT(1) | BIT(0));
 }
 
@@ -699,7 +713,8 @@ static int edma_alloc_channel(struct edma_chan *echan,
 	int channel = EDMA_CHAN_SLOT(echan->ch_num);
 
 	/* ensure access through shadow region 0 */
-	edma_or_array2(ecc, EDMA_DRAE, 0, channel >> 5, BIT(channel & 0x1f));
+	edma_or_array2(ecc, EDMA_DRAE, 0, EDMA_REG_ARRAY_INDEX(channel),
+		       EDMA_CHANNEL_BIT(channel));
 
 	/* ensure no events are pending */
 	edma_stop(echan);
@@ -2496,8 +2511,9 @@ static int edma_pm_resume(struct device *dev)
 	for (i = 0; i < ecc->num_channels; i++) {
 		if (echan[i].alloced) {
 			/* ensure access through shadow region 0 */
-			edma_or_array2(ecc, EDMA_DRAE, 0, i >> 5,
-				       BIT(i & 0x1f));
+			edma_or_array2(ecc, EDMA_DRAE, 0,
+				       EDMA_REG_ARRAY_INDEX(i),
+				       EDMA_CHANNEL_BIT(i));
 
 			edma_setup_interrupt(&echan[i], true);
 
-- 
Peter

Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
