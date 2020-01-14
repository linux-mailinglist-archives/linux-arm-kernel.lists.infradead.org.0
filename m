Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF2B513ABC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5PKjTKny+0WUO68Kqku04c3Sc5TLB/hzuer+uyIU30=; b=t+AygkJMWij5sa
	StX4iphjOY0d0RdxpfEZoQ9JUMo2H44Snu9q9eU3h/zFTVOntIvu1QgjdADzq16PnJwIuyrxpCtyC
	LPS9rfUz8zkMCfXS/3YcQNIBXiiI/Efhyv5vDQsonfBciOPhKqspdW4gYLI4upmpT6RV3T2W4aaTK
	urU6cAVUyqgi2GtKqG2tRInErk9flX8M38LqY4lpVHnAU0D0ov2B9jjefhSpITnTnQ5SW2J/N3Ppt
	GflVb0Z6G1CG8pYbkrm1/++x52rtBY3rhKmnmKi0r973PbChR8qWrgQ/jtS4Cj7CuRvYlPYO5ezOR
	OxRXNrCyUyATFVclJzvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMlM-0001lr-5T; Tue, 14 Jan 2020 14:01:44 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMje-0007aj-T7
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:00:06 +0000
Received: by mail-wm1-x344.google.com with SMTP id p17so13872032wmb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 05:59:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QK7uW2JyHvV/1Sv2A8qlxlva+nc6onlWMSezJazY5hk=;
 b=efXBmH3q24U2Ufo+ifFyvvi/Yqw1RTmkeHkZXJeT9nLqdmsYllLF/q2N9FAhZlqGqu
 RBRE6imvHtTjPuAT6uSI0u8gEa/aPiV6fx5u9Qii+wAEjQj3bN75LYbj3UReGbmzuu/S
 +EzcxW3bE2JtTlpJKXIIUfixjAHAB/MQ0QBD0T6YKviQ0xcdASq9RQWCkCEqLyk9Yur1
 wclEEH0H2U8Vb3gbbzVV57N6NPZcXUO0AMROkDiuduyRPXBEl4w51A/OdtHtlcbeBr/v
 80KsdAyRRVrqwaBL/Cr8miC6ZA8T/MZhNVmkKio/bN9Ns/IdyFqzfoBa/JNmlZzDl1fz
 RpVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QK7uW2JyHvV/1Sv2A8qlxlva+nc6onlWMSezJazY5hk=;
 b=SaVALBk8Cd0srPZZlapnDS3eqlAr5t//tB/ovCnIEqas1DxdFSmGLyCW40HwwpNTWN
 0IH1iJ4SCrEqTKctD/74IOLuliezY50RKmojL++VtIMRV/rqnhDQqjgXgaJWGdB1hRXQ
 TsHTfJQ9WhcYknynlDJ4otRQUeQOpPohvZ2GgsmBPZd+cXR8x9vxOyq9WQr/eH1X5jrG
 g8oL69TpuUOo5mrLUvpJUq+H5ppl4yY8njvs60RMwkaL34KNISZWpIp5YOpMJk0G+5MW
 klub2MZfWaBzjLB4qLbn7xqyyISSbM0HQIwCnm6EfZPhywWMQ9m6MOvLoaDq/ux0OzZw
 tDYw==
X-Gm-Message-State: APjAAAWy6pAG2kBVOnNvxOIO3p0YqkZo6bbBBccy7PB6hycDD49TsC+g
 swo8/nzi9oKJlB9AddOV6qQ=
X-Google-Smtp-Source: APXvYqwah42w9ldVBz5YQTGbbxH1zgfKmZAqapYTzwVE0gSRGQr7ndjMeZOzQrZT2x49dlCWNGYM4g==
X-Received: by 2002:a1c:1d16:: with SMTP id d22mr27986303wmd.158.1579010397577; 
 Tue, 14 Jan 2020 05:59:57 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.05.59.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:59:57 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 05/10] crypto: engine: transform cur_req in an array
Date: Tue, 14 Jan 2020 14:59:31 +0100
Message-Id: <20200114135936.32422-6-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_055958_974942_768328F5 
X-CRM114-Status: GOOD (  18.79  )
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

For having the ability of doing a batch of request in one do_one_request(), we
should be able to store them in an array. (for unpreparing them later).
This patch converts cur_req in an array of request, but for the moment
hardcode the maximum to 1.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c  | 32 ++++++++++++++++++--------------
 include/crypto/engine.h | 19 +++++++++++++++----
 2 files changed, 33 insertions(+), 18 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index eb029ff1e05a..b72873550587 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -30,26 +30,27 @@ static void crypto_finalize_request(struct crypto_engine *engine,
 	struct crypto_engine_ctx *enginectx;
 
 	spin_lock_irqsave(&engine->queue_lock, flags);
-	if (engine->cur_req == req)
+	if (engine->cur_reqs[0].req == req)
 		finalize_cur_req = true;
 	spin_unlock_irqrestore(&engine->queue_lock, flags);
 
 	if (finalize_cur_req) {
-		enginectx = crypto_tfm_ctx(req->tfm);
-		if (engine->cur_req_prepared &&
+		enginectx = crypto_tfm_ctx(engine->cur_reqs[0].req->tfm);
+		if (engine->cur_reqs[0].prepared &&
 		    enginectx->op.unprepare_request) {
-			ret = enginectx->op.unprepare_request(engine, req);
+			ret = enginectx->op.unprepare_request(engine, engine->cur_reqs[0].req);
 			if (ret)
 				dev_err(engine->dev, "failed to unprepare request\n");
 		}
+		engine->cur_reqs[0].req->complete(engine->cur_reqs[0].req, err);
 		spin_lock_irqsave(&engine->queue_lock, flags);
-		engine->cur_req = NULL;
-		engine->cur_req_prepared = false;
+		engine->cur_reqs[0].prepared = false;
+		engine->cur_reqs[0].req = NULL;
 		spin_unlock_irqrestore(&engine->queue_lock, flags);
+	} else {
+		req->complete(req, err);
 	}
 
-	req->complete(req, err);
-
 	kthread_queue_work(engine->kworker, &engine->pump_requests);
 }
 
@@ -74,7 +75,7 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 	spin_lock_irqsave(&engine->queue_lock, flags);
 
 	/* Make sure we are not already running a request */
-	if (engine->cur_req)
+	if (engine->cur_reqs[0].req)
 		goto out;
 
 	/* If another context is idling then defer */
@@ -114,7 +115,7 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 	if (!async_req)
 		goto out;
 
-	engine->cur_req = async_req;
+	engine->cur_reqs[0].req = async_req;
 	if (backlog)
 		backlog->complete(backlog, -EINPROGRESS);
 
@@ -143,14 +144,14 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 				ret);
 			goto req_err;
 		}
-		engine->cur_req_prepared = true;
+		engine->cur_reqs[0].prepared = true;
 	}
 	if (!enginectx->op.do_one_request) {
 		dev_err(engine->dev, "failed to do request\n");
 		ret = -EINVAL;
 		goto req_err;
 	}
-	ret = enginectx->op.do_one_request(engine, async_req);
+	ret = enginectx->op.do_one_request(engine, engine->cur_reqs[0].req);
 	if (ret) {
 		dev_err(engine->dev, "Failed to do one request from queue: %d\n", ret);
 		goto req_err;
@@ -158,7 +159,7 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 	return;
 
 req_err:
-	crypto_finalize_request(engine, async_req, ret);
+	crypto_finalize_request(engine, engine->cur_reqs[0].req, ret);
 	return;
 
 out:
@@ -411,10 +412,13 @@ struct crypto_engine *crypto_engine_alloc_init(struct device *dev, bool rt)
 	engine->running = false;
 	engine->busy = false;
 	engine->idling = false;
-	engine->cur_req_prepared = false;
 	engine->priv_data = dev;
 	snprintf(engine->name, sizeof(engine->name),
 		 "%s-engine", dev_name(dev));
+	engine->rmax = 1;
+	engine->cur_reqs = devm_kzalloc(dev, sizeof(struct cur_req) * engine->rmax, GFP_KERNEL);
+	if (!engine->cur_reqs)
+		return NULL;
 
 	crypto_init_queue(&engine->queue, CRYPTO_ENGINE_MAX_QLEN);
 	spin_lock_init(&engine->queue_lock);
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index e29cd67f93c7..362134e226f4 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -18,13 +18,23 @@
 #include <crypto/skcipher.h>
 
 #define ENGINE_NAME_LEN	30
+
+/*
+ * struct cur_req - Represent a request to be processed
+ * @prepared:	Does the request was prepared
+ * @req:	The request to be processed
+ */
+struct cur_req {
+	bool				prepared;
+	struct crypto_async_request	*req;
+};
+
 /*
  * struct crypto_engine - crypto hardware engine
  * @name: the engine name
  * @idling: the engine is entering idle state
  * @busy: request pump is busy
  * @running: the engine is on working
- * @cur_req_prepared: current request is prepared
  * @list: link with the global crypto engine list
  * @queue_lock: spinlock to syncronise access to request queue
  * @queue: the crypto queue of the engine
@@ -38,14 +48,14 @@
  * @kworker: kthread worker struct for request pump
  * @pump_requests: work struct for scheduling work to the request pump
  * @priv_data: the engine private data
- * @cur_req: the current request which is on processing
+ * @rmax:	The number of request which can be processed in one batch
+ * @cur_reqs: 	A list for requests to be processed
  */
 struct crypto_engine {
 	char			name[ENGINE_NAME_LEN];
 	bool			idling;
 	bool			busy;
 	bool			running;
-	bool			cur_req_prepared;
 
 	struct list_head	list;
 	spinlock_t		queue_lock;
@@ -61,7 +71,8 @@ struct crypto_engine {
 	struct kthread_work             pump_requests;
 
 	void				*priv_data;
-	struct crypto_async_request	*cur_req;
+	int 				rmax;
+	struct cur_req 			*cur_reqs;
 };
 
 /*
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
