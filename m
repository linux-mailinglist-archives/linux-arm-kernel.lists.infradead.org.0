Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8046514531E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 11:48:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/neGuVC8onkRJNFvlQ+XMroKueCVmXavpa15R3uzx0=; b=AqElzX9yBePEdW
	WmmMCgdgZW9QDCranSKwiz0Lr5Z7uVWCGC0e/bRWi8z51NI99U7qsWj13zhbAGE/mTBQrCQQs4fkr
	Tk/JlvDbIBPLmhtGYxZ32cYfWJT1Yb72gE1+qU+knMessSf/yw6P5foQDGo9teMEpqxAJg+XqiVQN
	4pXJZY/f58gOcOj9COwcPROWkyexDfnTWPFqOZB6E5h0XEsUgxVZr3A3+diLuDQDMWgJtBK9y5q7g
	gWnDwEZNPMfgh0YDG0nMxbAECNBnEjkF3SmeQ7j//I72T4QlkQPsh30lcrY8DTuYuhNrxNw8tatQP
	lW676Ue/xpG59KM0VjcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuDYr-0007bC-2Q; Wed, 22 Jan 2020 10:48:37 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuDWi-0005bB-2J
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 10:46:28 +0000
Received: by mail-wr1-x444.google.com with SMTP id y17so6713652wrh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 Jan 2020 02:46:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HlVN3+Fqo4CnAsTqD0OmkrdM8WtTRqDQDULyBnPtHug=;
 b=pHjQAKV6qoTnYiEUG8pxraj4nOM5bni+aQ67wNb2KUb2//W/kbVd+97/KkvsiDvFhU
 KXfqLc/ykSk0I6tQToqBW5aydEU2S7a5z/ZaqJl4Roqxe9AiFIkwvl5713T/SMxDCs89
 zHicB6uVbaRr0/qRVxYiZ4eAl2VabxBEfnuFZow7BlAD5/g8MbRObrb0MYdOm6903zc+
 kwYTXGhCbJy/61a+nCJUYJtjXvJFwSNmXt/FpRo7Lb4t7ZpidDNG17axWiCba3nFw3md
 /P/HBlOYKl5oYmNfqf3u019vsC7R9mbUrN3uRG0Upg7XDFPuVAFOPizJTj5ljKukwAFP
 6xkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HlVN3+Fqo4CnAsTqD0OmkrdM8WtTRqDQDULyBnPtHug=;
 b=h4d4gboByNce8jxbzRBBLBGcdWa6rvKanqQ8xF2yIuqOLhnMqStjQSZUVQLUFPUCUw
 VAqe1KhhXXETSIMUQWnUF+9BpeSBsUOxyCR0gDfDsHUAtLTnh5G+FsNTOo2L7HMjtPdR
 qTV+mGTBN/o3SJZaFJAu7zbImvlFG5MXoOc2gFCiqStw3gST2M3vVxtmooim6Zbelrwt
 wZoHndsjilmOIdOqqJkmDozfB3NBRI8d9LIqOeRo0XnbhsqfptvTfcvRPsspJ3YggekM
 4PlzSkpFhFG5jP8zUvXTKZHaiZ0PTCm+zyTxvjW7wPqUJPuHK2E4yZ36/jZ9eclCRBiV
 APkA==
X-Gm-Message-State: APjAAAUGTMl5vIJHiTVKdMLs8wrvfw3TNM1FAJo2vyMlindtoIGZITmV
 qd4jPp9zYJbTVMLOKC4HcE4=
X-Google-Smtp-Source: APXvYqxtNeNC1yK6GUuYbu+60bk+pxY4Zl+3F/5+yXvy3VXeniYyMGDE6MOXVSGfQdIi4qEjFVGD7w==
X-Received: by 2002:a5d:534d:: with SMTP id t13mr10929059wrv.77.1579689981975; 
 Wed, 22 Jan 2020 02:46:21 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:3d5:a100:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n3sm3443953wmc.27.2020.01.22.02.46.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Jan 2020 02:46:21 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org, iuliana.prodan@nxp.com
Subject: [PATCH 9/9] crypto: sun8i-ce: permit to batch requests
Date: Wed, 22 Jan 2020 11:45:28 +0100
Message-Id: <20200122104528.30084-10-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
References: <20200122104528.30084-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200122_024624_243726_313C1396 
X-CRM114-Status: GOOD (  18.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [clabbe.montjoie[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch permit to batch request.
This imply:
- linking two task via next
- set interrupt flag just before running the batch in the last task.
- storing all requests for finalizing them later

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 60 +++++++++++++++----
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 15 +++--
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  |  6 ++
 3 files changed, 66 insertions(+), 15 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index fc0a2299c701..832fb4a51da9 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -96,31 +96,38 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 	int flow, i;
 	int nr_sgs = 0;
 	int nr_sgd = 0;
+	int slot = 0;
 	int err = 0;
 
 	algt = container_of(alg, struct sun8i_ce_alg_template, alg.skcipher);
 
-	dev_dbg(ce->dev, "%s %s %u %x IV(%p %u) key=%u\n", __func__,
+	dev_dbg(ce->dev, "%s %s %u %x IV(%p %u) key=%u slot=%d\n", __func__,
 		crypto_tfm_alg_name(areq->base.tfm),
 		areq->cryptlen,
 		rctx->op_dir, areq->iv, crypto_skcipher_ivsize(tfm),
-		op->keylen);
-
-#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
-	algt->stat_req++;
-#endif
+		op->keylen, slot);
 
 	flow = rctx->flow;
 
 	chan = &ce->chanlist[flow];
+	slot = chan->ct;
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	algt->stat_req++;
+	if (chan->ct + 1 > chan->tmax)
+		chan->tmax = chan->ct + 1;
+#endif
 
-	cet = chan->tl;
+	cet = &chan->tl[slot];
 	memset(cet, 0, sizeof(struct ce_task));
 
 	cet->t_id = cpu_to_le32(flow);
 	common = ce->variant->alg_cipher[algt->ce_algo_id];
-	common |= rctx->op_dir | CE_COMM_INT;
+	common |= rctx->op_dir;
 	cet->t_common_ctl = cpu_to_le32(common);
+	if (slot > 0)
+		chan->tl[slot - 1].next = cpu_to_le32(chan->t_phy + 176 * slot);
+
 	/* CTS and recent CE (H6) need length in bytes, in word otherwise */
 	if (ce->variant->has_t_dlen_in_bytes)
 		cet->t_dlen = cpu_to_le32(areq->cryptlen);
@@ -240,6 +247,9 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 	chan->timeout = areq->cryptlen;
 	rctx->nr_sgs = nr_sgs;
 	rctx->nr_sgd = nr_sgd;
+	rctx->slot = slot;
+	chan->lreq[chan->ct] = &areq->base;
+	chan->ct++;
 	return 0;
 
 theend_sgs:
@@ -281,14 +291,41 @@ int sun8i_ce_cipher_run(struct crypto_engine *engine, void *areq)
 	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
 	struct sun8i_ce_dev *ce = op->ce;
 	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(breq);
+	struct sun8i_ce_flow *chan;
 	int flow, err;
+	int i;
 
 	flow = rctx->flow;
+	chan = &ce->chanlist[flow];
 	err = sun8i_ce_run_task(ce, flow, crypto_tfm_alg_name(breq->base.tfm));
-	crypto_finalize_skcipher_request(engine, breq, err);
+	for (i = 0; i < chan->ct; i++) {
+		if (!chan->lreq[i]) {
+			dev_err(ce->dev, "Missing request at slot %d\n", i);
+			continue;
+		}
+		breq = container_of(chan->lreq[i], struct skcipher_request, base);
+		crypto_finalize_skcipher_request(engine, breq, err);
+		chan->lreq[i] = NULL;
+	}
+	chan->ct = 0;
 	return 0;
 }
 
+static int sun8i_ce_qmore(struct crypto_engine *engine, void *async_req)
+{
+	struct skcipher_request *areq = container_of(async_req, struct skcipher_request, base);
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_ce_dev *ce = op->ce;
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	struct sun8i_ce_flow *chan;
+	int flow;
+
+	flow = rctx->flow;
+	chan = &ce->chanlist[flow];
+	return MAXTASK - chan->ct;
+}
+
 static int sun8i_ce_cipher_unprepare(struct crypto_engine *engine, void *async_req)
 {
 	struct skcipher_request *areq = container_of(async_req, struct skcipher_request, base);
@@ -301,11 +338,13 @@ static int sun8i_ce_cipher_unprepare(struct crypto_engine *engine, void *async_r
 	unsigned int ivsize, offset;
 	int nr_sgs = rctx->nr_sgs;
 	int nr_sgd = rctx->nr_sgd;
+	int slot = rctx->slot;
 	int flow;
 
 	flow = rctx->flow;
 	chan = &ce->chanlist[flow];
-	cet = chan->tl;
+
+	cet = &chan->tl[slot];
 	ivsize = crypto_skcipher_ivsize(tfm);
 
 	if (areq->src == areq->dst) {
@@ -404,6 +443,7 @@ int sun8i_ce_cipher_init(struct crypto_tfm *tfm)
 	op->enginectx.op.do_one_request = sun8i_ce_cipher_run;
 	op->enginectx.op.prepare_request = sun8i_ce_cipher_prepare;
 	op->enginectx.op.unprepare_request = sun8i_ce_cipher_unprepare;
+	op->enginectx.op.can_queue_more = sun8i_ce_qmore;
 
 	err = pm_runtime_get_sync(op->ce->dev);
 	if (err < 0)
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index e8bf7bf31061..348d3927344b 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -104,8 +104,10 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
 	int err = 0;
 
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
-	ce->chanlist[flow].stat_req++;
+	ce->chanlist[flow].stat_req += ce->chanlist[flow].ct;
 #endif
+	/* mark last one */
+	ce->chanlist[flow].tl[ce->chanlist[flow].ct - 1].t_common_ctl |= cpu_to_le32(CE_COMM_INT);
 
 	mutex_lock(&ce->mlock);
 
@@ -120,7 +122,7 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
 	/* Be sure all data is written before enabling the task */
 	wmb();
 
-	v = 1 | (ce->chanlist[flow].tl->t_common_ctl & 0x7F) << 8;
+	v = 1 | (ce->chanlist[flow].tl[0].t_common_ctl & 0x7F) << 8;
 	writel(v, ce->base + CE_TLR);
 	mutex_unlock(&ce->mlock);
 
@@ -128,7 +130,7 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
 			msecs_to_jiffies(ce->chanlist[flow].timeout));
 
 	if (ce->chanlist[flow].status == 0) {
-		dev_err(ce->dev, "DMA timeout for %s\n", name);
+		dev_err(ce->dev, "DMA timeout for %s on flow %d (batch=%d)\n", name, flow, ce->chanlist[flow].ct);
 		err = -EFAULT;
 	}
 	/* No need to lock for this read, the channel is locked so
@@ -285,7 +287,10 @@ static int sun8i_ce_dbgfs_read(struct seq_file *seq, void *v)
 	int i;
 
 	for (i = 0; i < MAXFLOW; i++)
-		seq_printf(seq, "Channel %d: nreq %lu\n", i, ce->chanlist[i].stat_req);
+		seq_printf(seq, "Channel %d: nreq %lu tmax %d eqlen=%d/%d\n", i,
+			   ce->chanlist[i].stat_req, ce->chanlist[i].tmax,
+			   ce->chanlist[i].engine->queue.qlen,
+			   ce->chanlist[i].engine->queue.max_qlen);
 
 	for (i = 0; i < ARRAY_SIZE(ce_algs); i++) {
 		if (!ce_algs[i].ce)
@@ -343,7 +348,7 @@ static int sun8i_ce_allocate_chanlist(struct sun8i_ce_dev *ce)
 	for (i = 0; i < MAXFLOW; i++) {
 		init_completion(&ce->chanlist[i].complete);
 
-		ce->chanlist[i].engine = crypto_engine_alloc_init(ce->dev, true);
+		ce->chanlist[i].engine = crypto_engine_alloc_init2(ce->dev, true, MAXTASK * 2);
 		if (!ce->chanlist[i].engine) {
 			dev_err(ce->dev, "Cannot allocate engine\n");
 			i--;
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index 2d3325a13bf1..59e9985fc6c8 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -135,6 +135,7 @@ struct ce_task {
  * @t_phy:	Physical address of task
  * @tl:		pointer to the current ce_task for this flow
  * @stat_req:	number of request done by this flow
+ * @tmax:	The maximum number of tasks done in one batch
  */
 struct sun8i_ce_flow {
 	struct crypto_engine *engine;
@@ -143,8 +144,11 @@ struct sun8i_ce_flow {
 	dma_addr_t t_phy;
 	int timeout;
 	struct ce_task *tl;
+	struct crypto_async_request     *lreq[MAXTASK];
+	int ct;
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
 	unsigned long stat_req;
+	int tmax;
 #endif
 };
 
@@ -185,6 +189,7 @@ struct sun8i_ce_dev {
  * @ivlen:	size of bounce_iv
  * @nr_sgs:	The number of source SG (as given by dma_map_sg())
  * @nr_sgd:	The number of destination SG (as given by dma_map_sg())
+ * @slot:	The slot in the tasklist used for this requests
  */
 struct sun8i_cipher_req_ctx {
 	u32 op_dir;
@@ -194,6 +199,7 @@ struct sun8i_cipher_req_ctx {
 	unsigned int ivlen;
 	int nr_sgs;
 	int nr_sgd;
+	int slot;
 };
 
 /*
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
