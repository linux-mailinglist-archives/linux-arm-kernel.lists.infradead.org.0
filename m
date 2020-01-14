Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91AD313ABD1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:03:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jeiWGpblCjI8y2Kco6Qo0LguiF83dVdlaB2NTK5eEgo=; b=kdvCMDpSEPfk4E
	FtvxCCi5HRvJjDC5hJ+FSvznJnHm+S3oEPmRSIa2knslQNJ59gzk71/lVLxNUVToAfIa+rprbCQcd
	zSIOKG7t6G9YEt6JVtPSLrnAqe//1816LJJxHE4NF3mf+EvVC6xo19MuRc6/8JEJmszebRjvGtsT/
	qrJENWuEMKY7e8BBjdAF9g6Wi6a604ig6bf+zz0NfiJqCYZdm1v5qu8j6UiE8PR2DzqE/pWfiJ9We
	uk0wm9pf9C2ptu7PBg6P0cbY7iNyXdp9OsfKgYDdJa+LO0tsxum9Kb8mBQysVsaoIJAAxUmY5slSz
	63O+n5M4KZEcJWtqvMCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMme-0002wt-U6; Tue, 14 Jan 2020 14:03:05 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMjn-00088f-IY
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:00:14 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so13872681wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 06:00:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mmCo0cmcYxTYUl0HTh9b5uPHQjBF+Ornrl4fpC6nIuw=;
 b=YwKwklKFwVrhQTbq9+emPqf95apR1314k05ofi1R4X4ecmLMYVeTbhUyQp8rc6JOOE
 1OtSdz22N7qTe1XPnouOPYwL70jWyR9WzmlK2ZXg2p4vGpwHbn4BMRc+jo0MBgwO6T0l
 kwj1Qo0YWV0mSI6WuIA9JmgmgulgXFJC/X0mzv2VstuVM/XkmTbkjnaL13iIDmY92It8
 5oNt9CMr3GzgOVZqxWqargG03QKjOuUSUMJbmcmPXGbcmT0gddtiaVxm7R4gWVDD353H
 OJ5ZNctjqERrdhzXqK1zFZdA3CDKpvZ79XSCt2HQ6upbF63gIHwk+/f4B7j0TroYbesC
 L5Gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mmCo0cmcYxTYUl0HTh9b5uPHQjBF+Ornrl4fpC6nIuw=;
 b=mBgCY7BR+HKdwv+edOCQQJIKCa44uAXmF7lOcCBdDBsmEjfDobU4zlcIcjuYWpNYmt
 VgIFMkxR6PfbdXrAVM28Uqsy5ONR0OXuPPnyPBadIqaIaeH1WqgXljhbPCNGMw8hxlA8
 ldFwdXneW4SWNaawqz/gdOvkX54ZohJzObKK1Vsa0StvU48eKyBgLabZpMjcevOrWSrk
 IwDMRusNQREYL2wKombj2HAEdB+MU+wlZLZsU4EkQHbf5yUcQovnORVcKiAk4H9a7GVJ
 j8da4gyfFk1saRKQk6jsUISMhiJH0QJJ9UcNRw2sjn/ijnDcGvuihrzh0Mzych55oXLN
 bVug==
X-Gm-Message-State: APjAAAX1PKUi+0kJRhUR1BJTxut1FGZtw5euahiBwjypQCyIXkQ+t3TC
 fL6AeYRMZYjY1kGKPreubB4=
X-Google-Smtp-Source: APXvYqxIi99Bpxvcwct69pL122PlCYsc6pFqFmQLsPv1kKKkDRC+0KM4vq6kSF3tJBiUx5oECNcNKw==
X-Received: by 2002:a7b:c389:: with SMTP id s9mr27249334wmj.7.1579010405396;
 Tue, 14 Jan 2020 06:00:05 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.06.00.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 06:00:04 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 10/10] crypto: sun8i-ce: use the new batch mechanism
Date: Tue, 14 Jan 2020 14:59:36 +0100
Message-Id: <20200114135936.32422-11-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_060007_862213_48B31613 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Corentin Labbe <clabbe.montjoie@gmail.com>, linux-crypto@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now all infrastructure to batch request are in place, it is time to use
it.
Introduce some debug for it also.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 .../crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c    | 14 ++++++++------
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c  |  9 ++++++---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h       |  2 ++
 3 files changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index 41d18c18d1d1..fe5374788304 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -103,20 +103,22 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 
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
 
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	algt->stat_req++;
+	if (chan->engine->ct + 1 > chan->tmax)
+		chan->tmax = chan->engine->ct + 1;
+#endif
+
 	cet = &chan->tl[slot];
 	memset(cet, 0, sizeof(struct ce_task));
 
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index 39bf684c0ff5..7cd98c227357 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -104,7 +104,7 @@ int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
 	int err = 0;
 
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
-	ce->chanlist[flow].stat_req++;
+	ce->chanlist[flow].stat_req += ce->chanlist[flow].engine->ct;
 #endif
 	/* mark last one */
 	ce->chanlist[flow].tl[ce->chanlist[flow].engine->ct - 1].t_common_ctl |= cpu_to_le32(CE_COMM_INT);
@@ -287,7 +287,10 @@ static int sun8i_ce_dbgfs_read(struct seq_file *seq, void *v)
 	int i;
 
 	for (i = 0; i < MAXFLOW; i++)
-		seq_printf(seq, "Channel %d: nreq %lu\n", i, ce->chanlist[i].stat_req);
+		seq_printf(seq, "Channel %d: nreq %lu tmax %d eqlen=%d/%d\n", i,
+			   ce->chanlist[i].stat_req, ce->chanlist[i].tmax,
+			   ce->chanlist[i].engine->queue.qlen,
+			   ce->chanlist[i].engine->queue.max_qlen);
 
 	for (i = 0; i < ARRAY_SIZE(ce_algs); i++) {
 		if (!ce_algs[i].ce)
@@ -345,7 +348,7 @@ static int sun8i_ce_allocate_chanlist(struct sun8i_ce_dev *ce)
 	for (i = 0; i < MAXFLOW; i++) {
 		init_completion(&ce->chanlist[i].complete);
 
-		ce->chanlist[i].engine = crypto_engine_alloc_init(ce->dev, true);
+		ce->chanlist[i].engine = crypto_engine_alloc_init2(ce->dev, true, MAXTASK, MAXTASK * 2);
 		if (!ce->chanlist[i].engine) {
 			dev_err(ce->dev, "Cannot allocate engine\n");
 			i--;
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index 2d3325a13bf1..22bb15fea476 100644
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
@@ -145,6 +146,7 @@ struct sun8i_ce_flow {
 	struct ce_task *tl;
 #ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
 	unsigned long stat_req;
+	int tmax;
 #endif
 };
 
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
