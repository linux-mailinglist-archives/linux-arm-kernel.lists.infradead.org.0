Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A1E200339
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 10:05:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWfUXeQoHoH1bqV/GG9FOSUM79A9kLa95ZDlNebZfZw=; b=JwJYYwZhw6PGl3
	3SRn0kob7UJI7JbZCVfgghnj2kO2aexNq2F2taAS1TQSbMKGTk9VEjpZxXdaKsFdZCn4872DobubA
	1m3kNpRYZvmA3HzPyWuVhK+OczUr/OGCyogXs8rYSkuL7BKCR90JDriD2lDcOi0zU4qSwpWWTVdiG
	VssHZLHGec14CYv9J/W0LiRDlSQmstret4sgPVyJDTTcHiOOMeI94XxeypOgLHgbiGgy9e6SKarH4
	zJrHi+XUhzrCg+XYVJar73Efn47FWvJXCd7AKM/8uXupvadY8f8VY59vTHDC/7WFtCFHcbXHuSrVO
	zeGK5Ct5sUO8VhCpQAKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmC21-0000TP-Sh; Fri, 19 Jun 2020 08:05:49 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmC1R-0007DJ-D6; Fri, 19 Jun 2020 08:05:16 +0000
X-UUID: d74da849088048b2b714e5ea12ac8e23-20200619
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=z58kEzVG1qpQnuZMIqFk0xF4rxHo3TnfyiMVStmffcE=; 
 b=RF1DBgwV4z85mQnbKqUDCUCQiXyxM9WG9tStfi32FyxNY3UnCtn/gPoKz6ttBMmQ0LHaSN0GyYXI94bskVLeQEk9UMGdyUHDhNE7+50WILj5O3wIjrSxjnEOH4BRsAJyOKVoWv3w36sR3F3TZiovC9uYrfaDEaMRVaABu4b+zJg=;
X-UUID: d74da849088048b2b714e5ea12ac8e23-20200619
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <eastl.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 215480576; Fri, 19 Jun 2020 00:05:25 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 01:05:09 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Fri, 19 Jun 2020 16:05:07 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Fri, 19 Jun 2020 16:05:07 +0800
From: EastL <EastL.Lee@mediatek.com>
To: Sean Wang <sean.wang@mediatek.com>
Subject: [PATCH v5 2/4] dmaengine: mediatek-cqdma: remove redundant queue
 structure
Date: Fri, 19 Jun 2020 16:05:00 +0800
Message-ID: <1592553902-30592-3-git-send-email-EastL.Lee@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1592553902-30592-1-git-send-email-EastL.Lee@mediatek.com>
References: <1592553902-30592-1-git-send-email-EastL.Lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_010513_465042_AD067565 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, EastL <EastL.Lee@mediatek.com>,
 dmaengine@vger.kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch introduces active_vdec to indicate the virtual descriptor
under processing by the CQDMA dmaengine, and simplify the control logic
by removing redundant queue structure, tasklets, and completion
management.

Signed-off-by: EastL <EastL.Lee@mediatek.com>
---
 drivers/dma/mediatek/mtk-cqdma.c | 383 ++++++++++-----------------------------
 1 file changed, 93 insertions(+), 290 deletions(-)

diff --git a/drivers/dma/mediatek/mtk-cqdma.c b/drivers/dma/mediatek/mtk-cqdma.c
index 6bf838e..905bbcb 100644
--- a/drivers/dma/mediatek/mtk-cqdma.c
+++ b/drivers/dma/mediatek/mtk-cqdma.c
@@ -22,6 +22,7 @@
 #include <linux/of_dma.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
+#include <linux/preempt.h>
 #include <linux/refcount.h>
 #include <linux/slab.h>
 
@@ -47,7 +48,6 @@
 #define MTK_CQDMA_SRC			0x1c
 #define MTK_CQDMA_DST			0x20
 #define MTK_CQDMA_LEN1			0x24
-#define MTK_CQDMA_LEN2			0x28
 #define MTK_CQDMA_SRC2			0x60
 #define MTK_CQDMA_DST2			0x64
 
@@ -69,45 +69,32 @@
  *                         descriptor (CVD)
  * @vd:                    An instance for struct virt_dma_desc
  * @len:                   The total data size device wants to move
- * @residue:               The remaining data size device will move
  * @dest:                  The destination address device wants to move to
  * @src:                   The source address device wants to move from
  * @ch:                    The pointer to the corresponding dma channel
- * @node:                  The lise_head struct to build link-list for VDs
- * @parent:                The pointer to the parent CVD
  */
 struct mtk_cqdma_vdesc {
 	struct virt_dma_desc vd;
 	size_t len;
-	size_t residue;
 	dma_addr_t dest;
 	dma_addr_t src;
 	struct dma_chan *ch;
-
-	struct list_head node;
-	struct mtk_cqdma_vdesc *parent;
 };
 
 /**
  * struct mtk_cqdma_pchan - The struct holding info describing physical
  *                         channel (PC)
- * @queue:                 Queue for the PDs issued to this PC
+ * @active_vdesc:          The pointer to the CVD which is under processing
  * @base:                  The mapped register I/O base of this PC
  * @irq:                   The IRQ that this PC are using
  * @refcnt:                Track how many VCs are using this PC
- * @tasklet:               Tasklet for this PC
  * @lock:                  Lock protect agaisting multiple VCs access PC
  */
 struct mtk_cqdma_pchan {
-	struct list_head queue;
+	struct mtk_cqdma_vdesc *active_vdesc;
 	void __iomem *base;
 	u32 irq;
-
 	refcount_t refcnt;
-
-	struct tasklet_struct tasklet;
-
-	/* lock to protect PC */
 	spinlock_t lock;
 };
 
@@ -116,14 +103,11 @@ struct mtk_cqdma_pchan {
  *                         channel (VC)
  * @vc:                    An instance for struct virt_dma_chan
  * @pc:                    The pointer to the underlying PC
- * @issue_completion:	   The wait for all issued descriptors completited
- * @issue_synchronize:	   Bool indicating channel synchronization starts
  */
 struct mtk_cqdma_vchan {
 	struct virt_dma_chan vc;
 	struct mtk_cqdma_pchan *pc;
-	struct completion issue_completion;
-	bool issue_synchronize;
+	struct completion cmp;
 };
 
 /**
@@ -202,22 +186,22 @@ static void mtk_cqdma_vdesc_free(struct virt_dma_desc *vd)
 	kfree(to_cqdma_vdesc(vd));
 }
 
-static int mtk_cqdma_poll_engine_done(struct mtk_cqdma_pchan *pc, bool atomic)
+static int mtk_cqdma_poll_engine_done(struct mtk_cqdma_pchan *pc)
 {
 	u32 status = 0;
 
-	if (!atomic)
+	if (in_task())
+		return readl_poll_timeout_atomic(pc->base + MTK_CQDMA_EN,
+						 status,
+						 !(status & MTK_CQDMA_EN_BIT),
+						 MTK_CQDMA_USEC_POLL,
+						 MTK_CQDMA_TIMEOUT_POLL);
+	else
 		return readl_poll_timeout(pc->base + MTK_CQDMA_EN,
 					  status,
 					  !(status & MTK_CQDMA_EN_BIT),
 					  MTK_CQDMA_USEC_POLL,
 					  MTK_CQDMA_TIMEOUT_POLL);
-
-	return readl_poll_timeout_atomic(pc->base + MTK_CQDMA_EN,
-					 status,
-					 !(status & MTK_CQDMA_EN_BIT),
-					 MTK_CQDMA_USEC_POLL,
-					 MTK_CQDMA_TIMEOUT_POLL);
 }
 
 static int mtk_cqdma_hard_reset(struct mtk_cqdma_pchan *pc)
@@ -225,20 +209,17 @@ static int mtk_cqdma_hard_reset(struct mtk_cqdma_pchan *pc)
 	mtk_dma_set(pc, MTK_CQDMA_RESET, MTK_CQDMA_HARD_RST_BIT);
 	mtk_dma_clr(pc, MTK_CQDMA_RESET, MTK_CQDMA_HARD_RST_BIT);
 
-	return mtk_cqdma_poll_engine_done(pc, true);
+	return mtk_cqdma_poll_engine_done(pc);
 }
 
 static void mtk_cqdma_start(struct mtk_cqdma_pchan *pc,
 			    struct mtk_cqdma_vdesc *cvd)
 {
-	/* wait for the previous transaction done */
-	if (mtk_cqdma_poll_engine_done(pc, true) < 0)
-		dev_err(cqdma2dev(to_cqdma_dev(cvd->ch)), "cqdma wait transaction timeout\n");
-
 	/* warm reset the dma engine for the new transaction */
 	mtk_dma_set(pc, MTK_CQDMA_RESET, MTK_CQDMA_WARM_RST_BIT);
-	if (mtk_cqdma_poll_engine_done(pc, true) < 0)
-		dev_err(cqdma2dev(to_cqdma_dev(cvd->ch)), "cqdma warm reset timeout\n");
+	if (mtk_cqdma_poll_engine_done(pc) < 0)
+		dev_err(cqdma2dev(to_cqdma_dev(cvd->ch)),
+			"cqdma warm reset timeout\n");
 
 	/* setup the source */
 	mtk_dma_set(pc, MTK_CQDMA_SRC, cvd->src & MTK_CQDMA_ADDR_LIMIT);
@@ -257,7 +238,8 @@ static void mtk_cqdma_start(struct mtk_cqdma_pchan *pc,
 #endif
 
 	/* setup the length */
-	mtk_dma_set(pc, MTK_CQDMA_LEN1, cvd->len);
+	mtk_dma_set(pc, MTK_CQDMA_LEN1, (cvd->len < MTK_CQDMA_MAX_LEN) ?
+		    cvd->len : MTK_CQDMA_MAX_LEN);
 
 	/* start dma engine */
 	mtk_dma_set(pc, MTK_CQDMA_EN, MTK_CQDMA_EN_BIT);
@@ -265,30 +247,17 @@ static void mtk_cqdma_start(struct mtk_cqdma_pchan *pc,
 
 static void mtk_cqdma_issue_vchan_pending(struct mtk_cqdma_vchan *cvc)
 {
-	struct virt_dma_desc *vd, *vd2;
+	struct virt_dma_desc *vd;
 	struct mtk_cqdma_pchan *pc = cvc->pc;
-	struct mtk_cqdma_vdesc *cvd;
-	bool trigger_engine = false;
 
 	lockdep_assert_held(&cvc->vc.lock);
 	lockdep_assert_held(&pc->lock);
 
-	list_for_each_entry_safe(vd, vd2, &cvc->vc.desc_issued, node) {
-		/* need to trigger dma engine if PC's queue is empty */
-		if (list_empty(&pc->queue))
-			trigger_engine = true;
-
-		cvd = to_cqdma_vdesc(vd);
-
-		/* add VD into PC's queue */
-		list_add_tail(&cvd->node, &pc->queue);
-
-		/* start the dma engine */
-		if (trigger_engine)
-			mtk_cqdma_start(pc, cvd);
+	vd = vchan_next_desc(&cvc->vc);
 
-		/* remove VD from list desc_issued */
-		list_del(&vd->node);
+	if (vd && !pc->active_vdesc) {
+		pc->active_vdesc = to_cqdma_vdesc(vd);
+		mtk_cqdma_start(pc, pc->active_vdesc);
 	}
 }
 
@@ -298,100 +267,55 @@ static void mtk_cqdma_issue_vchan_pending(struct mtk_cqdma_vchan *cvc)
  */
 static bool mtk_cqdma_is_vchan_active(struct mtk_cqdma_vchan *cvc)
 {
-	struct mtk_cqdma_vdesc *cvd;
-
-	list_for_each_entry(cvd, &cvc->pc->queue, node)
-		if (cvc == to_cqdma_vchan(cvd->ch))
-			return true;
-
-	return false;
+	return (!cvc->pc->active_vdesc) ? false :
+	       (cvc == to_cqdma_vchan(cvc->pc->active_vdesc->ch));
 }
 
-/*
- * return the pointer of the CVD that is just consumed by the PC
- */
-static struct mtk_cqdma_vdesc
-*mtk_cqdma_consume_work_queue(struct mtk_cqdma_pchan *pc)
+static void mtk_cqdma_complete_vdesc(struct mtk_cqdma_pchan *pc)
 {
 	struct mtk_cqdma_vchan *cvc;
-	struct mtk_cqdma_vdesc *cvd, *ret = NULL;
-
-	/* consume a CVD from PC's queue */
-	cvd = list_first_entry_or_null(&pc->queue,
-				       struct mtk_cqdma_vdesc, node);
-	if (unlikely(!cvd || !cvd->parent))
-		return NULL;
+	struct mtk_cqdma_vdesc *cvd;
+	struct virt_dma_desc *vd;
+	size_t tlen;
 
+	cvd = pc->active_vdesc;
 	cvc = to_cqdma_vchan(cvd->ch);
-	ret = cvd;
-
-	/* update residue of the parent CVD */
-	cvd->parent->residue -= cvd->len;
 
-	/* delete CVD from PC's queue */
-	list_del(&cvd->node);
+	tlen = (cvd->len < MTK_CQDMA_MAX_LEN) ? cvd->len : MTK_CQDMA_MAX_LEN;
+	cvd->len -= tlen;
+	cvd->src += tlen;
+	cvd->dest += tlen;
 
 	spin_lock(&cvc->vc.lock);
 
-	/* check whether all the child CVDs completed */
-	if (!cvd->parent->residue) {
-		/* add the parent VD into list desc_completed */
-		vchan_cookie_complete(&cvd->parent->vd);
+	/* check whether the VD completed */
+	if (!cvd->len) {
+		/* delete VD from desc_issued */
+		list_del(&cvd->vd.node);
 
-		/* setup completion if this VC is under synchronization */
-		if (cvc->issue_synchronize && !mtk_cqdma_is_vchan_active(cvc)) {
-			complete(&cvc->issue_completion);
-			cvc->issue_synchronize = false;
-		}
-	}
-
-	spin_unlock(&cvc->vc.lock);
+		/* add the VD into list desc_completed */
+		vchan_cookie_complete(&cvd->vd);
 
-	/* start transaction for next CVD in the queue */
-	cvd = list_first_entry_or_null(&pc->queue,
-				       struct mtk_cqdma_vdesc, node);
-	if (cvd)
-		mtk_cqdma_start(pc, cvd);
-
-	return ret;
-}
-
-static void mtk_cqdma_tasklet_cb(unsigned long data)
-{
-	struct mtk_cqdma_pchan *pc = (struct mtk_cqdma_pchan *)data;
-	struct mtk_cqdma_vdesc *cvd = NULL;
-	unsigned long flags;
-
-	spin_lock_irqsave(&pc->lock, flags);
-	/* consume the queue */
-	cvd = mtk_cqdma_consume_work_queue(pc);
-	spin_unlock_irqrestore(&pc->lock, flags);
-
-	/* submit the next CVD */
-	if (cvd) {
-		dma_run_dependencies(&cvd->vd.tx);
-
-		/*
-		 * free child CVD after completion.
-		 * the parent CVD would be freeed with desc_free by user.
-		 */
-		if (cvd->parent != cvd)
-			kfree(cvd);
+		/* get the next active VD */
+		vd = vchan_next_desc(&cvc->vc);
+		pc->active_vdesc = (!vd) ? NULL : to_cqdma_vdesc(vd);
 	}
 
-	/* re-enable interrupt before leaving tasklet */
-	enable_irq(pc->irq);
+	/* start the next transaction */
+	if (pc->active_vdesc)
+		mtk_cqdma_start(pc, pc->active_vdesc);
+
+	spin_unlock(&cvc->vc.lock);
 }
 
 static irqreturn_t mtk_cqdma_irq(int irq, void *devid)
 {
 	struct mtk_cqdma_device *cqdma = devid;
 	irqreturn_t ret = IRQ_NONE;
-	bool schedule_tasklet = false;
 	u32 i;
 
 	/* clear interrupt flags for each PC */
-	for (i = 0; i < cqdma->dma_channels; ++i, schedule_tasklet = false) {
+	for (i = 0; i < cqdma->dma_channels; ++i) {
 		spin_lock(&cqdma->pc[i]->lock);
 		if (mtk_dma_read(cqdma->pc[i],
 				 MTK_CQDMA_INT_FLAG) & MTK_CQDMA_INT_FLAG_BIT) {
@@ -399,72 +323,21 @@ static irqreturn_t mtk_cqdma_irq(int irq, void *devid)
 			mtk_dma_clr(cqdma->pc[i], MTK_CQDMA_INT_FLAG,
 				    MTK_CQDMA_INT_FLAG_BIT);
 
-			schedule_tasklet = true;
+			mtk_cqdma_complete_vdesc(cqdma->pc[i]);
+
 			ret = IRQ_HANDLED;
 		}
 		spin_unlock(&cqdma->pc[i]->lock);
-
-		if (schedule_tasklet) {
-			/* disable interrupt */
-			disable_irq_nosync(cqdma->pc[i]->irq);
-
-			/* schedule the tasklet to handle the transactions */
-			tasklet_schedule(&cqdma->pc[i]->tasklet);
-		}
 	}
 
 	return ret;
 }
 
-static struct virt_dma_desc *mtk_cqdma_find_active_desc(struct dma_chan *c,
-							dma_cookie_t cookie)
-{
-	struct mtk_cqdma_vchan *cvc = to_cqdma_vchan(c);
-	struct virt_dma_desc *vd;
-	unsigned long flags;
-
-	spin_lock_irqsave(&cvc->pc->lock, flags);
-	list_for_each_entry(vd, &cvc->pc->queue, node)
-		if (vd->tx.cookie == cookie) {
-			spin_unlock_irqrestore(&cvc->pc->lock, flags);
-			return vd;
-		}
-	spin_unlock_irqrestore(&cvc->pc->lock, flags);
-
-	list_for_each_entry(vd, &cvc->vc.desc_issued, node)
-		if (vd->tx.cookie == cookie)
-			return vd;
-
-	return NULL;
-}
-
 static enum dma_status mtk_cqdma_tx_status(struct dma_chan *c,
 					   dma_cookie_t cookie,
 					   struct dma_tx_state *txstate)
 {
-	struct mtk_cqdma_vchan *cvc = to_cqdma_vchan(c);
-	struct mtk_cqdma_vdesc *cvd;
-	struct virt_dma_desc *vd;
-	enum dma_status ret;
-	unsigned long flags;
-	size_t bytes = 0;
-
-	ret = dma_cookie_status(c, cookie, txstate);
-	if (ret == DMA_COMPLETE || !txstate)
-		return ret;
-
-	spin_lock_irqsave(&cvc->vc.lock, flags);
-	vd = mtk_cqdma_find_active_desc(c, cookie);
-	spin_unlock_irqrestore(&cvc->vc.lock, flags);
-
-	if (vd) {
-		cvd = to_cqdma_vdesc(vd);
-		bytes = cvd->residue;
-	}
-
-	dma_set_residue(txstate, bytes);
-
-	return ret;
+	return dma_cookie_status(c, cookie, txstate);
 }
 
 static void mtk_cqdma_issue_pending(struct dma_chan *c)
@@ -473,13 +346,17 @@ static void mtk_cqdma_issue_pending(struct dma_chan *c)
 	unsigned long pc_flags;
 	unsigned long vc_flags;
 
-	/* acquire PC's lock before VS's lock for lock dependency in tasklet */
+	/* acquire PC's lock before VC's lock for lock dependency in ISR */
 	spin_lock_irqsave(&cvc->pc->lock, pc_flags);
 	spin_lock_irqsave(&cvc->vc.lock, vc_flags);
 
+	init_completion(&cvc->cmp);
+
 	if (vchan_issue_pending(&cvc->vc))
 		mtk_cqdma_issue_vchan_pending(cvc);
 
+	complete(&cvc->cmp);
+
 	spin_unlock_irqrestore(&cvc->vc.lock, vc_flags);
 	spin_unlock_irqrestore(&cvc->pc->lock, pc_flags);
 }
@@ -488,125 +365,50 @@ static void mtk_cqdma_issue_pending(struct dma_chan *c)
 mtk_cqdma_prep_dma_memcpy(struct dma_chan *c, dma_addr_t dest,
 			  dma_addr_t src, size_t len, unsigned long flags)
 {
-	struct mtk_cqdma_vdesc **cvd;
-	struct dma_async_tx_descriptor *tx = NULL, *prev_tx = NULL;
-	size_t i, tlen, nr_vd;
-
-	/*
-	 * In the case that trsanction length is larger than the
-	 * DMA engine supports, a single memcpy transaction needs
-	 * to be separated into several DMA transactions.
-	 * Each DMA transaction would be described by a CVD,
-	 * and the first one is referred as the parent CVD,
-	 * while the others are child CVDs.
-	 * The parent CVD's tx descriptor is the only tx descriptor
-	 * returned to the DMA user, and it should not be completed
-	 * until all the child CVDs completed.
-	 */
-	nr_vd = DIV_ROUND_UP(len, MTK_CQDMA_MAX_LEN);
-	cvd = kcalloc(nr_vd, sizeof(*cvd), GFP_NOWAIT);
+	struct mtk_cqdma_vdesc *cvd;
+
+	cvd = kzalloc(sizeof(*cvd), GFP_NOWAIT);
 	if (!cvd)
 		return NULL;
 
-	for (i = 0; i < nr_vd; ++i) {
-		cvd[i] = kzalloc(sizeof(*cvd[i]), GFP_NOWAIT);
-		if (!cvd[i]) {
-			for (; i > 0; --i)
-				kfree(cvd[i - 1]);
-			return NULL;
-		}
-
-		/* setup dma channel */
-		cvd[i]->ch = c;
-
-		/* setup sourece, destination, and length */
-		tlen = (len > MTK_CQDMA_MAX_LEN) ? MTK_CQDMA_MAX_LEN : len;
-		cvd[i]->len = tlen;
-		cvd[i]->src = src;
-		cvd[i]->dest = dest;
-
-		/* setup tx descriptor */
-		tx = vchan_tx_prep(to_virt_chan(c), &cvd[i]->vd, flags);
-		tx->next = NULL;
+	/* setup dma channel */
+	cvd->ch = c;
 
-		if (!i) {
-			cvd[0]->residue = len;
-		} else {
-			prev_tx->next = tx;
-			cvd[i]->residue = tlen;
-		}
-
-		cvd[i]->parent = cvd[0];
-
-		/* update the src, dest, len, prev_tx for the next CVD */
-		src += tlen;
-		dest += tlen;
-		len -= tlen;
-		prev_tx = tx;
-	}
+	/* setup sourece, destination, and length */
+	cvd->len = len;
+	cvd->src = src;
+	cvd->dest = dest;
 
-	return &cvd[0]->vd.tx;
+	return vchan_tx_prep(to_virt_chan(c), &cvd->vd, flags);
 }
 
-static void mtk_cqdma_free_inactive_desc(struct dma_chan *c)
-{
-	struct virt_dma_chan *vc = to_virt_chan(c);
-	unsigned long flags;
-	LIST_HEAD(head);
-
-	/*
-	 * set desc_allocated, desc_submitted,
-	 * and desc_issued as the candicates to be freed
-	 */
-	spin_lock_irqsave(&vc->lock, flags);
-	list_splice_tail_init(&vc->desc_allocated, &head);
-	list_splice_tail_init(&vc->desc_submitted, &head);
-	list_splice_tail_init(&vc->desc_issued, &head);
-	spin_unlock_irqrestore(&vc->lock, flags);
-
-	/* free descriptor lists */
-	vchan_dma_desc_free_list(vc, &head);
-}
-
-static void mtk_cqdma_free_active_desc(struct dma_chan *c)
+static int mtk_cqdma_terminate_all(struct dma_chan *c)
 {
 	struct mtk_cqdma_vchan *cvc = to_cqdma_vchan(c);
-	bool sync_needed = false;
+	struct virt_dma_chan *vc = to_virt_chan(c);
 	unsigned long pc_flags;
 	unsigned long vc_flags;
+	LIST_HEAD(head);
+
+	/* wait for the VC to be inactive  */
+	if (!wait_for_completion_timeout(&cvc->cmp, msecs_to_jiffies(3000)))
+		return -EAGAIN;
 
 	/* acquire PC's lock first due to lock dependency in dma ISR */
 	spin_lock_irqsave(&cvc->pc->lock, pc_flags);
 	spin_lock_irqsave(&cvc->vc.lock, vc_flags);
 
-	/* synchronization is required if this VC is active */
-	if (mtk_cqdma_is_vchan_active(cvc)) {
-		cvc->issue_synchronize = true;
-		sync_needed = true;
-	}
+	/* get VDs from lists */
+	vchan_get_all_descriptors(vc, &head);
+
+	/* free all the VDs */
+	vchan_dma_desc_free_list(vc, &head);
 
 	spin_unlock_irqrestore(&cvc->vc.lock, vc_flags);
 	spin_unlock_irqrestore(&cvc->pc->lock, pc_flags);
 
-	/* waiting for the completion of this VC */
-	if (sync_needed)
-		wait_for_completion(&cvc->issue_completion);
-
-	/* free all descriptors in list desc_completed */
 	vchan_synchronize(&cvc->vc);
 
-	WARN_ONCE(!list_empty(&cvc->vc.desc_completed),
-		  "Desc pending still in list desc_completed\n");
-}
-
-static int mtk_cqdma_terminate_all(struct dma_chan *c)
-{
-	/* free descriptors not processed yet by hardware */
-	mtk_cqdma_free_inactive_desc(c);
-
-	/* free descriptors being processed by hardware */
-	mtk_cqdma_free_active_desc(c);
-
 	return 0;
 }
 
@@ -618,7 +420,7 @@ static int mtk_cqdma_alloc_chan_resources(struct dma_chan *c)
 	u32 i, min_refcnt = U32_MAX, refcnt;
 	unsigned long flags;
 
-	/* allocate PC with the minimun refcount */
+	/* allocate PC with the minimum refcount */
 	for (i = 0; i < cqdma->dma_channels; ++i) {
 		refcnt = refcount_read(&cqdma->pc[i]->refcnt);
 		if (refcnt < min_refcnt) {
@@ -671,8 +473,9 @@ static void mtk_cqdma_free_chan_resources(struct dma_chan *c)
 		mtk_dma_set(cvc->pc, MTK_CQDMA_FLUSH, MTK_CQDMA_FLUSH_BIT);
 
 		/* wait for the completion of flush operation */
-		if (mtk_cqdma_poll_engine_done(cvc->pc, true) < 0)
-			dev_err(cqdma2dev(to_cqdma_dev(c)), "cqdma flush timeout\n");
+		if (mtk_cqdma_poll_engine_done(cvc->pc) < 0)
+			dev_err(cqdma2dev(to_cqdma_dev(c)),
+				"cqdma flush timeout\n");
 
 		/* clear the flush bit and interrupt flag */
 		mtk_dma_clr(cvc->pc, MTK_CQDMA_FLUSH, MTK_CQDMA_FLUSH_BIT);
@@ -816,10 +619,18 @@ static int mtk_cqdma_probe(struct platform_device *pdev)
 		if (!cqdma->pc[i])
 			return -ENOMEM;
 
-		INIT_LIST_HEAD(&cqdma->pc[i]->queue);
+		cqdma->pc[i]->active_vdesc = NULL;
 		spin_lock_init(&cqdma->pc[i]->lock);
 		refcount_set(&cqdma->pc[i]->refcnt, 0);
-		cqdma->pc[i]->base = devm_platform_ioremap_resource(pdev, i);
+
+		res = platform_get_resource(pdev, IORESOURCE_MEM, i);
+		if (!res) {
+			dev_err(&pdev->dev, "No mem resource for %s\n",
+				dev_name(&pdev->dev));
+			return -EINVAL;
+		}
+
+		cqdma->pc[i]->base = devm_ioremap_resource(&pdev->dev, res);
 		if (IS_ERR(cqdma->pc[i]->base))
 			return PTR_ERR(cqdma->pc[i]->base);
 
@@ -852,7 +663,6 @@ static int mtk_cqdma_probe(struct platform_device *pdev)
 		vc = &cqdma->vc[i];
 		vc->vc.desc_free = mtk_cqdma_vdesc_free;
 		vchan_init(&vc->vc, dd);
-		init_completion(&vc->issue_completion);
 	}
 
 	err = dma_async_device_register(dd);
@@ -876,11 +686,6 @@ static int mtk_cqdma_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, cqdma);
 
-	/* initialize tasklet for each PC */
-	for (i = 0; i < cqdma->dma_channels; ++i)
-		tasklet_init(&cqdma->pc[i]->tasklet, mtk_cqdma_tasklet_cb,
-			     (unsigned long)cqdma->pc[i]);
-
 	dev_info(&pdev->dev, "MediaTek CQDMA driver registered\n");
 
 	return 0;
@@ -915,8 +720,6 @@ static int mtk_cqdma_remove(struct platform_device *pdev)
 
 		/* Waits for any pending IRQ handlers to complete */
 		synchronize_irq(cqdma->pc[i]->irq);
-
-		tasklet_kill(&cqdma->pc[i]->tasklet);
 	}
 
 	/* disable hardware */
-- 
1.9.1
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
