Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C750813ABCB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 15:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FoRQZKVyqQy9OvIxYS1fC023+mRimhOmTqu14yejP00=; b=qethd59cW8Gd1n
	vdonaHA1LN/b0SHEcpMxNDS7tBmI64JBDjq9/MruWZyF02ysO6gS+UexzBsD2f1QruAMxLkjRe0Ql
	9pMtq4qjWpsJPFfz9WzXH3IQBwzWYKIat6ExCR6p99S3wl60BpGsJvr+/EifXD8zTMf08dYNZVHfY
	h0iDTKvhsoh0y6B9K8Ho1zXovzHbdJwOa5wvOf3ppfGbWaEFx8RlRQgYdkASkGDvu4HDim7yw5UAX
	S1lsLrkIDGO/kgy16dNBIyHzdyg0jaSta2eR5RkrotHKL6aV1b5JGCUF9P9INwe1cGpSplZWYrlk7
	mpq/iKKntht8R0T9EYbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irMm8-0002T0-Db; Tue, 14 Jan 2020 14:02:32 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irMjk-0007np-64
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Jan 2020 14:00:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id q9so13891817wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 06:00:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AaGocOWYYqqxxVSnuFJaes6fIuVCOqjGVL46fuoWceA=;
 b=b9ZF2ddhd9zGkBUQfYFINe52pfdd1cQRB5F71PoXqYhsv0I8C5zSpPdxZldg1b50IX
 rRbXf0DOHBwabaizpHXOVgrzXx5h1pybWotTD745Mh2HMmCt3jeVIpDjfrBOLPWRn2hw
 sdpmhM8LJLIUpPTw60uqNDGVdrNhK5EgVjV/Sva1mfNFlROzQfwcX7Gkj9tTwPCLXPlI
 RZ5xfscNXx+zApX/Fy0SGHwyPKv7Vwcl/HsdZ1P4zFADNJyFc6Xuwpp6gatMrFaf15bK
 MlKgfS22UUABgUklrYWfOLgo9eaCJJ7QX/eXvzzcsumnQhuGTe7TfacEeL6CGr/7pTqK
 E8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AaGocOWYYqqxxVSnuFJaes6fIuVCOqjGVL46fuoWceA=;
 b=RuUw17T+VF4WAxIY964tLlF92sInTYJzhHRe84tFrc+4gpT+W2PxXdpyLD4THXjIPU
 Bk8PlI4n4L6IRD0k8AsUN20S0Yzo4fYXqDZTN8D5ZXd9jEOa4kUgaLbZEqSRYJyNx0Ib
 fI7h9GOVKT2qFTHA16ihJ+N67RbL1VUbLnaP2m9TJ4dU8i2csI+E9eCHKOPsA+ONsjDa
 y1fBiCgXxjkQ55xa97tjYMNvaSyj70YheSy4AhmZ5LsWq6t2w33VzDwkJNiby55le9E9
 ofU/bDNTJ1KwckQnOL8rjQx6DEfIdHwVzb/JE5XcdYIzUOCw1EenGbKkrOozu3vzplFp
 ftZQ==
X-Gm-Message-State: APjAAAXgjNE/GnDeflME94k2DZqm9EPWCA+3q9qIxiQRZXKLt9bRxTjB
 t6p6DoB5uXX0a84hrb81u+ifJlSI
X-Google-Smtp-Source: APXvYqx+OxKcWRqq8m9tk4fmOp55+mC1hDkwaWDzxu8S8kxilLu0l5ArdfWrRaXSdKdve/5st6FN/Q==
X-Received: by 2002:a05:600c:2383:: with SMTP id
 m3mr28610665wma.32.1579010402204; 
 Tue, 14 Jan 2020 06:00:02 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id 4sm17854448wmg.22.2020.01.14.06.00.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 06:00:01 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: alexandre.torgue@st.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 mcoquelin.stm32@gmail.com, mripard@kernel.org, wens@csie.org,
 iuliana.prodan@nxp.com, horia.geanta@nxp.com, aymen.sghaier@nxp.com
Subject: [PATCH RFC 08/10] crypto: engine: add slot parameter
Date: Tue, 14 Jan 2020 14:59:34 +0100
Message-Id: <20200114135936.32422-9-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
References: <20200114135936.32422-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_060004_725921_FAC09D10 
X-CRM114-Status: GOOD (  13.64  )
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

prepare/unprepare functions should be able to know which slot in a batch
should be used for preparing a request.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 crypto/crypto_engine.c                              | 4 ++--
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 6 ++----
 drivers/crypto/omap-aes-gcm.c                       | 2 +-
 drivers/crypto/omap-aes.c                           | 4 ++--
 drivers/crypto/omap-des.c                           | 4 ++--
 drivers/crypto/stm32/stm32-cryp.c                   | 8 ++++----
 drivers/crypto/stm32/stm32-hash.c                   | 4 ++--
 include/crypto/engine.h                             | 4 ++--
 8 files changed, 17 insertions(+), 19 deletions(-)

diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index 591dea5ddeec..e23a398ba330 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -40,7 +40,7 @@ static void crypto_finalize_request(struct crypto_engine *engine,
 			enginectx = crypto_tfm_ctx(engine->cur_reqs[i].req->tfm);
 			if (engine->cur_reqs[i].prepared &&
 			    enginectx->op.unprepare_request) {
-				ret = enginectx->op.unprepare_request(engine, engine->cur_reqs[i].req);
+				ret = enginectx->op.unprepare_request(engine, engine->cur_reqs[i].req, i);
 				if (ret)
 					dev_err(engine->dev, "failed to unprepare request\n");
 			}
@@ -143,7 +143,7 @@ static void crypto_pump_requests(struct crypto_engine *engine,
 	enginectx = crypto_tfm_ctx(async_req->tfm);
 
 	if (enginectx->op.prepare_request) {
-		ret = enginectx->op.prepare_request(engine, async_req);
+		ret = enginectx->op.prepare_request(engine, async_req, engine->ct);
 		if (ret) {
 			dev_err(engine->dev, "failed to prepare request: %d\n",
 				ret);
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index d56c992fbf93..41d18c18d1d1 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -78,7 +78,7 @@ static int sun8i_ce_cipher_fallback(struct skcipher_request *areq)
 	return err;
 }
 
-static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req)
+static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req, int slot)
 {
 	struct skcipher_request *areq = container_of(async_req, struct skcipher_request, base);
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
@@ -96,7 +96,6 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 	int flow, i;
 	int nr_sgs = 0;
 	int nr_sgd = 0;
-	int slot = 0;
 	int err = 0;
 
 	if (slot < 0 || slot >= MAXTASK)
@@ -296,7 +295,7 @@ int sun8i_ce_cipher_run(struct crypto_engine *engine, void *areq)
 	return 0;
 }
 
-static int sun8i_ce_cipher_unprepare(struct crypto_engine *engine, void *async_req)
+static int sun8i_ce_cipher_unprepare(struct crypto_engine *engine, void *async_req, int slot)
 {
 	struct skcipher_request *areq = container_of(async_req, struct skcipher_request, base);
 	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
@@ -308,7 +307,6 @@ static int sun8i_ce_cipher_unprepare(struct crypto_engine *engine, void *async_r
 	unsigned int ivsize, offset;
 	int nr_sgs = rctx->nr_sgs;
 	int nr_sgd = rctx->nr_sgd;
-	int slot = 0;
 	int flow;
 
 	flow = rctx->flow;
diff --git a/drivers/crypto/omap-aes-gcm.c b/drivers/crypto/omap-aes-gcm.c
index 32dc00dc570b..0fea3dd40378 100644
--- a/drivers/crypto/omap-aes-gcm.c
+++ b/drivers/crypto/omap-aes-gcm.c
@@ -213,7 +213,7 @@ static int omap_aes_gcm_handle_queue(struct omap_aes_dev *dd,
 	return 0;
 }
 
-static int omap_aes_gcm_prepare_req(struct crypto_engine *engine, void *areq)
+static int omap_aes_gcm_prepare_req(struct crypto_engine *engine, void *areq, int slot)
 {
 	struct aead_request *req = container_of(areq, struct aead_request,
 						base);
diff --git a/drivers/crypto/omap-aes.c b/drivers/crypto/omap-aes.c
index 824ddf2a66ff..4d9caa7ce8da 100644
--- a/drivers/crypto/omap-aes.c
+++ b/drivers/crypto/omap-aes.c
@@ -427,7 +427,7 @@ static int omap_aes_handle_queue(struct omap_aes_dev *dd,
 }
 
 static int omap_aes_prepare_req(struct crypto_engine *engine,
-				void *areq)
+				void *areq, int slot)
 {
 	struct skcipher_request *req = container_of(areq, struct skcipher_request, base);
 	struct omap_aes_ctx *ctx = crypto_skcipher_ctx(
@@ -632,7 +632,7 @@ static int omap_aes_ctr_decrypt(struct skcipher_request *req)
 }
 
 static int omap_aes_prepare_req(struct crypto_engine *engine,
-				void *req);
+				void *req, int slot);
 static int omap_aes_crypt_req(struct crypto_engine *engine,
 			      void *req);
 
diff --git a/drivers/crypto/omap-des.c b/drivers/crypto/omap-des.c
index 8eda43319204..92c5fb1d4b83 100644
--- a/drivers/crypto/omap-des.c
+++ b/drivers/crypto/omap-des.c
@@ -524,7 +524,7 @@ static int omap_des_handle_queue(struct omap_des_dev *dd,
 }
 
 static int omap_des_prepare_req(struct crypto_engine *engine,
-				void *areq)
+				void *areq, int slot)
 {
 	struct skcipher_request *req = container_of(areq, struct skcipher_request, base);
 	struct omap_des_ctx *ctx = crypto_skcipher_ctx(
@@ -711,7 +711,7 @@ static int omap_des_cbc_decrypt(struct skcipher_request *req)
 }
 
 static int omap_des_prepare_req(struct crypto_engine *engine,
-				void *areq);
+				void *areq, int slot);
 static int omap_des_crypt_req(struct crypto_engine *engine,
 			      void *areq);
 
diff --git a/drivers/crypto/stm32/stm32-cryp.c b/drivers/crypto/stm32/stm32-cryp.c
index d347a1d6e351..7c65b526d20e 100644
--- a/drivers/crypto/stm32/stm32-cryp.c
+++ b/drivers/crypto/stm32/stm32-cryp.c
@@ -684,7 +684,7 @@ static int stm32_cryp_cpu_start(struct stm32_cryp *cryp)
 
 static int stm32_cryp_cipher_one_req(struct crypto_engine *engine, void *areq);
 static int stm32_cryp_prepare_cipher_req(struct crypto_engine *engine,
-					 void *areq);
+					 void *areq, int slot);
 
 static int stm32_cryp_init_tfm(struct crypto_skcipher *tfm)
 {
@@ -700,7 +700,7 @@ static int stm32_cryp_init_tfm(struct crypto_skcipher *tfm)
 
 static int stm32_cryp_aead_one_req(struct crypto_engine *engine, void *areq);
 static int stm32_cryp_prepare_aead_req(struct crypto_engine *engine,
-				       void *areq);
+				       void *areq, int slot);
 
 static int stm32_cryp_aes_aead_init(struct crypto_aead *tfm)
 {
@@ -1015,7 +1015,7 @@ static int stm32_cryp_prepare_req(struct skcipher_request *req,
 }
 
 static int stm32_cryp_prepare_cipher_req(struct crypto_engine *engine,
-					 void *areq)
+					 void *areq, int slot)
 {
 	struct skcipher_request *req = container_of(areq,
 						      struct skcipher_request,
@@ -1039,7 +1039,7 @@ static int stm32_cryp_cipher_one_req(struct crypto_engine *engine, void *areq)
 	return stm32_cryp_cpu_start(cryp);
 }
 
-static int stm32_cryp_prepare_aead_req(struct crypto_engine *engine, void *areq)
+static int stm32_cryp_prepare_aead_req(struct crypto_engine *engine, void *areq, int slot)
 {
 	struct aead_request *req = container_of(areq, struct aead_request,
 						base);
diff --git a/drivers/crypto/stm32/stm32-hash.c b/drivers/crypto/stm32/stm32-hash.c
index 167b80eec437..4a696c48126c 100644
--- a/drivers/crypto/stm32/stm32-hash.c
+++ b/drivers/crypto/stm32/stm32-hash.c
@@ -824,7 +824,7 @@ static int stm32_hash_hw_init(struct stm32_hash_dev *hdev,
 }
 
 static int stm32_hash_one_request(struct crypto_engine *engine, void *areq);
-static int stm32_hash_prepare_req(struct crypto_engine *engine, void *areq);
+static int stm32_hash_prepare_req(struct crypto_engine *engine, void *areq, int slot);
 
 static int stm32_hash_handle_queue(struct stm32_hash_dev *hdev,
 				   struct ahash_request *req)
@@ -832,7 +832,7 @@ static int stm32_hash_handle_queue(struct stm32_hash_dev *hdev,
 	return crypto_transfer_hash_request_to_engine(hdev->engine, req);
 }
 
-static int stm32_hash_prepare_req(struct crypto_engine *engine, void *areq)
+static int stm32_hash_prepare_req(struct crypto_engine *engine, void *areq, int slot)
 {
 	struct ahash_request *req = container_of(areq, struct ahash_request,
 						 base);
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index 021136a47b93..55d3dbc2498c 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -85,9 +85,9 @@ struct crypto_engine {
  */
 struct crypto_engine_op {
 	int (*prepare_request)(struct crypto_engine *engine,
-			       void *areq);
+			       void *areq, int slot);
 	int (*unprepare_request)(struct crypto_engine *engine,
-				 void *areq);
+				 void *areq, int slot);
 	int (*do_one_request)(struct crypto_engine *engine,
 			      void *areq);
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
