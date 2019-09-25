Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FCEFBE22C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JVJdDaRr6pUgt0fIKe5lt8yfZ6SwWnLBTRE9fOLd/6c=; b=ANi7hXIx5qqKpG
	dIzxydoWqP+QKAUOe4xiOb/U25xWRi7sWMYuvSuqr+jZF0CPGK8KJJ9GIUCdRQKxbVoFCdrsXt4hY
	quXdKkPzNvPV9oPijv//s2F6H4H1cGxtaHqRRi6S5YZLTMRpgeZRry6UwTzxpF5OqgJNdemw4y7Ti
	tY4dcZtP26RYB3Om97plUTnI3sV1zEcWy4YRtil2eB4yor2MyEVU1GZHjYRUcU9ZUeynjL+OHAD18
	33+xRnRYqWCo6DsTZf4Im5jPltSU7yabGPFqlAcYSHnC/3ZQW0/OBdSHPyge9jwLUfmz927MUGZ6j
	98Yu6tRuNKYUiRooqD2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9xd-0006Lt-7S; Wed, 25 Sep 2019 16:16:13 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vS-0003w3-Ja
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:14:02 +0000
Received: by mail-wr1-x443.google.com with SMTP id v8so7644097wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=xupbsCtUMBq0dKLLZcgZZz8OoL1zNg5tE6xYiAmXGow=;
 b=SYIsA/jLyOT0qlEO7cDTv2aW9SXsCwRwELfU1LJSTg6ZtBdPf/Th6yPkKEhj/J2adr
 Y2tUqkSPh4P0nJFGCaab9LSoY9FwcwWbEFVGm9sOpeRekjpfxZurAIa5tW9A6QbzDJC0
 h/JSGGDGnDXTJ95eEqNSHUarUCnxy4vRJyibdJuwzgoGERTNXJC6oAxTYpUHSLFzLBn4
 cU2WQx4k6LgfVmdjuC5I5IplDoZHPC78rRIiQVHHTaFxfVPjLpzk2dNe/vfd04/019i4
 YOWgSgvsxyZfu2v1O/drgMNdQfe+7oLX+jhjG24oKtDk0u73q0WP/4tcdBBTc9yMMNs1
 LZZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=xupbsCtUMBq0dKLLZcgZZz8OoL1zNg5tE6xYiAmXGow=;
 b=exHfGjAdc/6DGvI9vo5S+khKp5LfBoWXsW1Dw23bsVfOsxUNk01z/x7ZoU6lMcbW8R
 a8lDzg75KNhEsuoQxaAfgUxt8LxAkDB45DubteXIimTg7z61t+4kord2+oILmYwnWHuk
 w3A8Lxrt0iTuGRi6HRsjm9iFDlHapapAkG890D7EXFDGdyQZrlUsDcxV+SyjKWIDec9G
 res+ACWQwcB/H7dSE9OwGHnQwKOgWHRVyw8w8e9w1QOA8C0Oyw8b5u5UodslQAy6+zuQ
 xJPdEssAM4271MKCpbuHXBiikbia2Cywqr4nUiq79JFsRG93APpudE/Qtj2HE2zpN1Ec
 iIyw==
X-Gm-Message-State: APjAAAUwbHYtt/m2yv0ERKyvP5NfPVtHgQ3+GTaVC0ltOJ7zzcqBUdd1
 uccGIK2dXK2yjgYuBdtjq6iuMw==
X-Google-Smtp-Source: APXvYqwC8EG0AIcwFUrSnHZLRvuiWV5oBEZ24YsBf/vED1PlaF+hl22X2hkyEdzgxov49IyWVFvLvg==
X-Received: by 2002:adf:f547:: with SMTP id j7mr10623741wrp.119.1569428037024; 
 Wed, 25 Sep 2019 09:13:57 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.13.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:13:56 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 07/18] crypto: rfc7539 - use zero reqsize for sync
 instantiations without alignmask
Date: Wed, 25 Sep 2019 18:12:44 +0200
Message-Id: <20190925161255.1871-8-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091358_704792_F57B4EDF 
X-CRM114-Status: GOOD (  15.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that we have moved all the scratch buffers that must be allocated
on the heap out of the request context, we can move the request context
itself to the stack if we are instantiating a synchronous version of
the chacha20poly1305 transformation. This allows users of the AEAD to
allocate the request structure on the stack, removing the need for
per-packet heap allocations on the en/decryption hot path.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/chacha20poly1305.c | 51 ++++++++++++--------
 1 file changed, 32 insertions(+), 19 deletions(-)

diff --git a/crypto/chacha20poly1305.c b/crypto/chacha20poly1305.c
index 71496a8107f5..d171a0c9e837 100644
--- a/crypto/chacha20poly1305.c
+++ b/crypto/chacha20poly1305.c
@@ -49,13 +49,14 @@ struct chachapoly_req_ctx {
 };
 
 static inline void async_done_continue(struct aead_request *req, int err,
-				       int (*cont)(struct aead_request *))
+				       int (*cont)(struct aead_request *,
+						   struct chachapoly_req_ctx *))
 {
 	if (!err) {
 		struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 
 		rctx->flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;
-		err = cont(req);
+		err = cont(req, rctx);
 	}
 
 	if (err != -EINPROGRESS && err != -EBUSY)
@@ -74,11 +75,11 @@ static void chacha_iv(u8 *iv, struct aead_request *req, u32 icb)
 }
 
 static int poly_generate_tag(struct aead_request *req, u8 *poly_tag,
-			     struct scatterlist *crypt)
+			     struct scatterlist *crypt,
+			     struct chachapoly_req_ctx *rctx)
 {
 	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
 	struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 	u32 chacha_state[CHACHA_BLOCK_SIZE / sizeof(u32)];
 	SHASH_DESC_ON_STACK(desc, ctx->poly);
 	u8 poly_key[POLY1305_KEY_SIZE];
@@ -148,13 +149,13 @@ static int poly_generate_tag(struct aead_request *req, u8 *poly_tag,
 	return 0;
 }
 
-static int poly_append_tag(struct aead_request *req)
+static int poly_append_tag(struct aead_request *req,
+			   struct chachapoly_req_ctx *rctx)
 {
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
 	u8 poly_tag[POLY1305_DIGEST_SIZE];
 	int err;
 
-	err = poly_generate_tag(req, poly_tag, req->dst);
+	err = poly_generate_tag(req, poly_tag, req->dst, rctx);
 	if (err)
 		return err;
 
@@ -171,12 +172,17 @@ static void chacha_encrypt_done(struct crypto_async_request *areq, int err)
 
 static int chachapoly_encrypt(struct aead_request *req)
 {
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
+	struct chachapoly_req_ctx stack_rctx CRYPTO_MINALIGN_ATTR;
+	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
+	struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
+	struct chachapoly_req_ctx *rctx = &stack_rctx;
 	struct chacha_req *creq = &rctx->chacha;
 	struct scatterlist *src, *dst;
 	int err;
 
+	if (unlikely(crypto_aead_reqsize(tfm) > 0))
+		rctx = aead_request_ctx(req);
+
 	rctx->cryptlen = req->cryptlen;
 	rctx->flags = aead_request_flags(req);
 
@@ -200,7 +206,7 @@ static int chachapoly_encrypt(struct aead_request *req)
 		return err;
 
 skip:
-	return poly_append_tag(req);
+	return poly_append_tag(req, rctx);
 }
 
 static void chacha_decrypt_done(struct crypto_async_request *areq, int err)
@@ -210,18 +216,23 @@ static void chacha_decrypt_done(struct crypto_async_request *areq, int err)
 
 static int chachapoly_decrypt(struct aead_request *req)
 {
-	struct chachapoly_ctx *ctx = crypto_aead_ctx(crypto_aead_reqtfm(req));
-	struct chachapoly_req_ctx *rctx = aead_request_ctx(req);
+	struct chachapoly_req_ctx stack_rctx CRYPTO_MINALIGN_ATTR;
+	struct crypto_aead *tfm = crypto_aead_reqtfm(req);
+	struct chachapoly_ctx *ctx = crypto_aead_ctx(tfm);
+	struct chachapoly_req_ctx *rctx = &stack_rctx;
 	struct chacha_req *creq = &rctx->chacha;
 	u8 calculated_tag[POLY1305_DIGEST_SIZE];
 	u8 provided_tag[POLY1305_DIGEST_SIZE];
 	struct scatterlist *src, *dst;
 	int err;
 
+	if (unlikely(crypto_aead_reqsize(tfm) > 0))
+		rctx = aead_request_ctx(req);
+
 	rctx->cryptlen = req->cryptlen - POLY1305_DIGEST_SIZE;
 	rctx->flags = aead_request_flags(req);
 
-	err = poly_generate_tag(req, calculated_tag, req->src);
+	err = poly_generate_tag(req, calculated_tag, req->src, rctx);
 	if (err)
 		return err;
 	scatterwalk_map_and_copy(provided_tag, req->src,
@@ -314,12 +325,14 @@ static int chachapoly_init(struct crypto_aead *tfm)
 
 	align = crypto_aead_alignmask(tfm);
 	align &= ~(crypto_tfm_ctx_alignment() - 1);
-	crypto_aead_set_reqsize(
-		tfm,
-		align +
-		offsetof(struct chachapoly_req_ctx, chacha.req) +
-		sizeof(struct skcipher_request) +
-		crypto_skcipher_reqsize(chacha));
+	if (crypto_aead_alignmask(tfm) > 0 ||
+	    (crypto_aead_get_flags(tfm) & CRYPTO_ALG_ASYNC))
+		crypto_aead_set_reqsize(
+			tfm,
+			align +
+			offsetof(struct chachapoly_req_ctx, chacha.req) +
+			sizeof(struct skcipher_request) +
+			crypto_skcipher_reqsize(chacha));
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
