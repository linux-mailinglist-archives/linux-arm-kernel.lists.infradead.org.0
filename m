Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B714B13ABC6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:02:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HQkpteMOLEHIZDKvOLx217P8UlBA6yHKG7p+8BU9xtQ=; b=jC4JMD4cgI+YXK
	zDBUZFIIYI65euY/9i4hCC2da5A5IO7AbpmC5u5Pq7Tyrb6Eu6bA2uRQEbjljfiWl74+j720H43hM
	gKUcYxqKaENhVRWx5mKc1mdKPwuO/RBignnrZVQPS9QEvJTibUwYoRLKbQmvN/+XurKWfGf/m/3wn
	xxgnSOPH8TCXH39KxG+FuXFMC9Q8enVUoyS2WdDWO2TvagyN1JY2TgXtcP3oEIUe1VpWSpKugkcDJ
	hqxzTvmBdzoCYsivDkDnBiQh53GTNK3Gkf2P8Z8hQVc6czECHfdLp53wKU7YXPMCB21RnlmNjITIi
	QDhebb0h7y0oBT+CAEMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMle-00020Y-25; Tue, 14 Jan 2020 14:02:02 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMji-0007fP-Q9
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:00:08 +0000
Received: by mail-wm1-x343.google.com with SMTP id f129so13859078wmf.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 06:00:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Vwz74GVw3RqN4zv8KJzc6WOhikJUNutjS1yfSHb85f4=;
 b=LRbl4YL7xfmzQ1ubfonhUq+riBVo7Eyg2CecNwz5sXvOhYgCzzU5f4KizEPmiziF4m
 D5jqMuwxJGXYuIgRLNfSlIMO+OvP0h0nyl6yQNA07t23ws19poi5JoP44FXZMMfT1blT
 T3g1hisBu9zecBZnslMBQqKKbPPRXL+YE/DWuBrcGUUkV79ew8rqEstIc7XJNGwgFxr4
 3iIX6iHzJCNHtV57Fr2N1q7nvQvfgoyA65gMyrBolpyP0gZSZgu2GCp/UZhTJaZcRuV4
 BIIJ1IGwfAmSGYq+Sz31qndyOjB9icWSWIwv2nO1LrhDw0SIB1FsPcGfwJW5AK9eqv2g
 ZHTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Vwz74GVw3RqN4zv8KJzc6WOhikJUNutjS1yfSHb85f4=;
 b=LWTxNEIm91aLdbpgkqT1Yx6iGSE+fV17Yi7XSjMOpSVyet+jfVD/dCviHy/E5fgxz9
 U9DBdpPmABWdzQQtW2ua+Z13Aek9utpawKZoI5lq5WjDr0TDCLXs3I3/P9k7XTSHsSRe
 4gnAnmoQKnvx9PdN+CnulkAqVoFFiGTOH6NvztdyOQLDkn2UunkIvzCgWz2Bki5RsDdf
 6UTUq04p+ZBhpEmJatungztXgoMz6UbqmEgXmRlbr3tZBim8ueAk6gcvqggl6kkbjAnq
 qs6fqZ2t+jTF23GjBBlkElMZwv/p9Zip+b1scF89Rz9hqK4BKvpOoKprby1X9CIlnsnk
 aeDQ==
X-Gm-Message-State: APjAAAUvz+6G6YnOpsXhxj48QN8fEQnFViX0xOFxK/HWAScV2l+TDDuN
 NY1YKLICTMgQg87bb8nTrrI=
X-Google-Smtp-Source: APXvYqy5IpziUXqSl8mzGqH49R4MKas13Mk/3/YX/GN9HtlxDzqVTADoOUc6wXiGyyxKvj7oJv29NA==
X-Received: by 2002:a1c:9c87:: with SMTP id f129mr26421503wme.26.1579010399002; 
 Tue, 14 Jan 2020 05:59:59 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.05.59.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 05:59:58 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 06/10] crypto: engine: introduce ct
Date: Tue, 14 Jan 2020 14:59:32 +0100
Message-Id: <20200114135936.32422-7-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_060002_904734_738BAD0C 
X-CRM114-Status: GOOD (  16.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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

We will store the number of request in a batch in engine->ct.
This patch adds all loop to unprepare all requests of a batch.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c  | 30 ++++++++++++++++++------------
 include/crypto/engine.h |  2 ++
 2 files changed, 20 insertions(+), 12 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index b72873550587..591dea5ddeec 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -28,6 +28,7 @@ static void crypto_finalize_request(struct crypto_engine *engine,
 	bool finalize_cur_req = false;
 	int ret;
 	struct crypto_engine_ctx *enginectx;
+	int i = 0;
 
 	spin_lock_irqsave(&engine->queue_lock, flags);
 	if (engine->cur_reqs[0].req == req)
@@ -35,17 +36,20 @@ static void crypto_finalize_request(struct crypto_engine *engine,
 	spin_unlock_irqrestore(&engine->queue_lock, flags);
 
 	if (finalize_cur_req) {
-		enginectx = crypto_tfm_ctx(engine->cur_reqs[0].req->tfm);
-		if (engine->cur_reqs[0].prepared &&
-		    enginectx->op.unprepare_request) {
-			ret = enginectx->op.unprepare_request(engine, engine->cur_reqs[0].req);
-			if (ret)
-				dev_err(engine->dev, "failed to unprepare request\n");
-		}
-		engine->cur_reqs[0].req->complete(engine->cur_reqs[0].req, err);
+		do {
+			enginectx = crypto_tfm_ctx(engine->cur_reqs[i].req->tfm);
+			if (engine->cur_reqs[i].prepared &&
+			    enginectx->op.unprepare_request) {
+				ret = enginectx->op.unprepare_request(engine, engine->cur_reqs[i].req);
+				if (ret)
+					dev_err(engine->dev, "failed to unprepare request\n");
+			}
+			engine->cur_reqs[i].prepared = false;
+			engine->cur_reqs[i].req->complete(engine->cur_reqs[i].req, err);
+		} while (++i < engine->ct);
 		spin_lock_irqsave(&engine->queue_lock, flags);
-		engine->cur_reqs[0].prepared = false;
-		engine->cur_reqs[0].req = NULL;
+		while (engine->ct-- > 0)
+			engine->cur_reqs[engine->ct].req = NULL;
 		spin_unlock_irqrestore(&engine->queue_lock, flags);
 	} else {
 		req->complete(req, err);
@@ -109,13 +113,14 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 		goto out;
 	}
 
+	engine->ct = 0;
 	/* Get the fist request from the engine queue to handle */
 	backlog = crypto_get_backlog(&engine->queue);
 	async_req = crypto_dequeue_request(&engine->queue);
 	if (!async_req)
 		goto out;
 
-	engine->cur_reqs[0].req = async_req;
+	engine->cur_reqs[engine->ct].req = async_req;
 	if (backlog)
 		backlog->complete(backlog, -EINPROGRESS);
 
@@ -144,8 +149,9 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 				ret);
 			goto req_err;
 		}
-		engine->cur_reqs[0].prepared = true;
+		engine->cur_reqs[engine->ct].prepared = true;
 	}
+	engine->ct++;
 	if (!enginectx->op.do_one_request) {
 		dev_err(engine->dev, "failed to do request\n");
 		ret = -EINVAL;
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index 362134e226f4..021136a47b93 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -50,6 +50,7 @@ struct cur_req {
  * @priv_data: the engine private data
  * @rmax:	The number of request which can be processed in one batch
  * @cur_reqs: 	A list for requests to be processed
+ * @ct:		How many requests will be handled in one batch
  */
 struct crypto_engine {
 	char			name[ENGINE_NAME_LEN];
@@ -73,6 +74,7 @@ struct crypto_engine {
 	void				*priv_data;
 	int 				rmax;
 	struct cur_req 			*cur_reqs;
+	int ct;
 };
 
 /*
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
