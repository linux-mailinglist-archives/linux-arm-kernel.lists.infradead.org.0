Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0856F13ABCE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:03:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0NpxaHI44UQXcd+45klXaTZg33+WnvKWXI05BDk6yHQ=; b=Gh0W8BHhWOXS2U
	AdA/EMxs0H/i07xy85aSUPQVEZXAuUbn6Y5B9tpOKHC6fInxtRRjnmiwyCCgWqfjbF8Tu2WMcog7G
	KOvf3Konb4UKezitcBizVBbzML0sfQrRExdEDPIQAY7LOoKQXu/l7jWwqymkR4cjT6xNgtSKMD9I4
	+ZuMyYrA+PXOq8JzGNVVI8FkP7r5zwrerKQFA9HvaAfRfsDNb6OS0WcRjzx5Fqh2c2ZaetD3F7bqx
	YJSBnArNzxstLQKLgNRY44pzw2PGpcUktu4X+pIwScvCnNarAAbEE5Ye+98iSuzcOQ4PlMnmU8U/q
	OST3ojydBYa/ZuVOJkpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMmO-0002k0-Jb; Tue, 14 Jan 2020 14:02:48 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMjm-00080h-V8
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:00:12 +0000
Received: by mail-wr1-x441.google.com with SMTP id t2so12296714wrr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 06:00:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Lxb7PN4lvjObtQ59KMU2hHjHYfZBsU9IrbvtHskV7n0=;
 b=CMlWfiRvaRRJU+hOQ4WPokjIT8GHSX3vkbMyfsBc8DCF2hmxmKbLRl3XuVhkhou0oY
 8ildadcB1t+iC3etvIdUbg1E1UntznuFyodZFJWT/fKIama5xaeApXEASHJT7JgN2ozv
 QCnT8RndunnruzJfnh/71PB8HtxvyO7XJKZnUF7uB+UEQl7A2erDumW8cUH7LVKRRVSc
 clHmeeo+WxvTbERdluTb53uZ8A62/xxsCsI0ksjNmkSLPYzaqbl3ZsQ8rb2gQr+2OhwQ
 umwgvNEbrkvZ6ozlVfbhYTa8lSeqFFXS2E6ACT6PSnFlW92eK2gHkYubDtNs9tVVSPeA
 TMUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Lxb7PN4lvjObtQ59KMU2hHjHYfZBsU9IrbvtHskV7n0=;
 b=ed2HazuTRdGUcwJBraR8ATv8huPTmMgmQU6di6FCVCkbeant4ke14rqTlfSy3mlJAC
 BIruc9XzQx9PT2RGTCQPZcbYGjn2HTU9T8s1OT6WNnbrIy1bYcMyHitFnC397LLBL49F
 hNveIsgPIRceAOKPDmzQczoVLrerLKaFqB4eZwAUJDJoNC7UeC3KDD+hlLLS+EZgc6fI
 yfnnswE6MrebmKdTHn4u/X1E5lsyC2XW4hc7WrXLVhQCUEbw3bMZuqviWV9uTg8dzLL3
 lx2bk3QmgjW5saPbvdfeHIwu+EftMoD8KMjb5YhLmZL0K/hm5UfE5g05arsVAlkIZa6j
 cEuA==
X-Gm-Message-State: APjAAAWW7xDd/bYEbGCcHcxpiynDW+nzpQmnpfC6TE/w+qxC9Z83sflh
 isqI84uVHKjbP49UDFk1L/Q=
X-Google-Smtp-Source: APXvYqxq5XivXy1rjI7OaJJ+olOKx4Pgt9tO+9ND8MTyENMvSQ3szmCgKQXFPKTU/w3I7VW7kOqisA==
X-Received: by 2002:a5d:4651:: with SMTP id j17mr26245596wrs.237.1579010403794; 
 Tue, 14 Jan 2020 06:00:03 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.06.00.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 06:00:03 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 09/10] crypto: engine: permit to batch requests
Date: Tue, 14 Jan 2020 14:59:35 +0100
Message-Id: <20200114135936.32422-10-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_060007_028901_FC92AF39 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
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

Now everything is ready, this patch permits to choose the number of
request to batch.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c  | 32 +++++++++++++++++++++++++++-----
 include/crypto/engine.h |  2 ++
 2 files changed, 29 insertions(+), 5 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index e23a398ba330..e9cd9ec9a732 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -114,6 +114,7 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 	}
 
 	engine->ct = 0;
+retry:
 	/* Get the fist request from the engine queue to handle */
 	backlog = crypto_get_backlog(&engine->queue);
 	async_req = crypto_dequeue_request(&engine->queue);
@@ -151,7 +152,10 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 		}
 		engine->cur_reqs[engine->ct].prepared = true;
 	}
-	engine->ct++;
+	if (++engine->ct < engine->rmax && engine->queue.qlen > 0) {
+		spin_lock_irqsave(&engine->queue_lock, flags);
+		goto retry;
+	}
 	if (!enginectx->op.do_one_request) {
 		dev_err(engine->dev, "failed to do request\n");
 		ret = -EINVAL;
@@ -393,15 +397,18 @@ int crypto_engine_stop(struct crypto_engine *engine)
 EXPORT_SYMBOL_GPL(crypto_engine_stop);
 
 /**
- * crypto_engine_alloc_init - allocate crypto hardware engine structure and
+ * crypto_engine_alloc_init2 - allocate crypto hardware engine structure and
  * initialize it.
  * @dev: the device attached with one hardware engine
  * @rt: whether this queue is set to run as a realtime task
+ * @rmax: The number of request that the engine can batch in one
+ * @qlen: The size of the crypto queue
  *
  * This must be called from context that can sleep.
  * Return: the crypto engine structure on success, else NULL.
  */
-struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
+struct crypto_engine *crypto_engine_alloc_init2(struct device *dev, bool rt,
+						int rmax, int qlen)
 {
 	struct sched_param param = { .sched_priority = MAX_RT_PRIO / 2 };
 	struct crypto_engine *engine;
@@ -421,12 +428,12 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
 	engine->priv_data = dev;
 	snprintf(engine->name, sizeof(engine->name),
 		 "%s-engine", dev_name(dev));
-	engine->rmax = 1;
+	engine->rmax = rmax;
 	engine->cur_reqs = devm_kzalloc(dev, sizeof(struct cur_req) * engine->rmax, GFP_KERNEL);
 	if (!engine->cur_reqs)
 		return NULL;
 
-	crypto_init_queue(&engine->queue, CRYPTO_ENGINE_MAX_QLEN);
+	crypto_init_queue(&engine->queue, qlen);
 	spin_lock_init(&engine->queue_lock);
 
 	engine->kworker = kthread_create_worker(0, "%s", engine->name);
@@ -443,6 +450,21 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
 
 	return engine;
 }
+EXPORT_SYMBOL_GPL(crypto_engine_alloc_init2);
+
+/**
+ * crypto_engine_alloc_init - allocate crypto hardware engine structure and
+ * initialize it.
+ * @dev: the device attached with one hardware engine
+ * @rt: whether this queue is set to run as a realtime task
+ *
+ * This must be called from context that can sleep.
+ * Return: the crypto engine structure on success, else NULL.
+ */
+struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
+{
+	return crypto_engine_alloc_init2(dev, rt, 1, CRYPTO_ENGINE_MAX_QLEN);
+}
 EXPORT_SYMBOL_GPL(crypto_engine_alloc_init);
 
 /**
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index 55d3dbc2498c..fe0dfea8bf07 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -115,6 +115,8 @@ void crypto_finalize_skcipher_request(struct crypto_engine *engine,
 int crypto_engine_start(struct crypto_engine *engine);
 int crypto_engine_stop(struct crypto_engine *engine);
 struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt);
+struct crypto_engine *crypto_engine_alloc_init2(struct device *dev, bool rt,
+						int rmax, int qlen);
 int crypto_engine_exit(struct crypto_engine *engine);
 
 #endif /* _CRYPTO_ENGINE_H */
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
