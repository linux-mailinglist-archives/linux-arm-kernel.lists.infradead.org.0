Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E5AE3447
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 15:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eb0vrqqaIud7evfp7bWLlS5g2cBvFUNmj2cNSwiqQBU=; b=WOeYMpTYPBH/eY
	AiWPtfrkOhxZMOdPog76MdKd2CV4jANCApxrOSj7wRXHZM9phNj46Bp4jFC2zhjPWEn0INGxg9Ajc
	uc5RcMvNpcsT7jXysc+nP8yK8jhjlbk6esbGWFFZYKCMWBpVyMqD+aVE3cw6qkF0UTK25RNxWN6aL
	BKGuBDSqNK7kfYz5TyBq+zy+2qqxscvcRgxP7AMFDZGa1BmHQU+vAERTA76KakK8a/EZjA0Z/rjBB
	I1gPu61n0JOlY4qIw5TZHtZuzHEuv/cxbOJKKyVDtZ/jeSN3W1g4u7rJQI4ts4A4Gozj+rPMc01gD
	QftIvOZk+jBxdZwAAQcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNdEq-0001P6-7B; Thu, 24 Oct 2019 13:33:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNd6N-0000rH-P7
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 13:24:47 +0000
Received: by mail-wm1-x341.google.com with SMTP id 6so2010858wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 06:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pIvf3uaGexOd3cBtkCmgOi+/J9vxhbC8kqb/606IHXY=;
 b=FhF56Pxn4X3XQVxawn/+Eu+hcpuuhw0C9uevsNl8pV9C/b0nSJu6BuMkHF23q4KPHP
 oTVaS7ramu0vMoIUrzbPGj99cz/+em3Y8RUF0OJZbHaGBAfjMWUX+jy7li206eJNLk0G
 l33a4FEzF1w6/MabcLmZJCRjvHdwKPtZPYwgNXB7fJ9JILxo9PdF8DgmmaSxRWnzeUIU
 DDvwe1/4A4kzlNv/eL5Dxe+zp0FfhFV8tO3KDrngcRbD/B38M29QCnmQV+NvbuX5kyRZ
 wV4saxxqa1dSh3MwQf7bUIMUcWYJyB8DTpnEotJajuraygBur7fdbEfCbL1L/MrqTWL3
 r08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pIvf3uaGexOd3cBtkCmgOi+/J9vxhbC8kqb/606IHXY=;
 b=GnyKUp6jc62W5e0/zh3/d1iEuBdpv9J0jfURi3l8F0b7BQ5qvW1AZ/JlC5EqvXW5XN
 XYCq1IkuL0UAXJdK3vVb8tHgvCD7Ywji6BN7C7duVs9Bg+4ucSc7/b/NDfs27dklGwF6
 6MWvR33D7R7HZaaSrPkRJvNip0CLYzutL4EY4mGTDDF8JxiizNWE5byTUiFgYBitX91R
 s8tHQteCqDYCp18o+ij23v7HAzzADsCfk112b7hY4zTNKFrdR7FOipNvsXhZg0UNgcH5
 Nn2bY0uUJwS6G5s0Vtd2LUBia3wSF+YFoDUWirL2aKrHgv6lXOdRoN1o80v5hm4QhiJb
 Oj1Q==
X-Gm-Message-State: APjAAAV4h7sMFgQwUKw9eAO55aGqoNiZmBjtqbRH6MPKQCe9r0GpOnen
 PhjTb92h2S9WN1MI/8oQbnJX8A==
X-Google-Smtp-Source: APXvYqzoCg2b5XHvYPu+5eB6aX89cQV4TlVbsQXRylMtCiOq+8zfsUcRYhaMc0a1t03d37CsAZTqXA==
X-Received: by 2002:a7b:c94f:: with SMTP id i15mr5107043wml.8.1571923470209;
 Thu, 24 Oct 2019 06:24:30 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id e3sm2346310wme.36.2019.10.24.06.24.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 06:24:29 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v2 26/27] crypto: marvell/cesa - rename blkcipher to skcipher
Date: Thu, 24 Oct 2019 15:23:44 +0200
Message-Id: <20191024132345.5236-27-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
References: <20191024132345.5236-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_062431_940529_FDF574DF 
X-CRM114-Status: GOOD (  13.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver specific types contain some rudimentary references to the
blkcipher API, which is deprecated and will be removed. To avoid confusion,
rename these to skcipher. This is a cosmetic change only, as the code does
not actually use the blkcipher API.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/crypto/marvell/cesa.h   |  6 +++---
 drivers/crypto/marvell/cipher.c | 14 +++++++-------
 2 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/crypto/marvell/cesa.h b/drivers/crypto/marvell/cesa.h
index d63a6ee905c9..f1ed3b85c0d2 100644
--- a/drivers/crypto/marvell/cesa.h
+++ b/drivers/crypto/marvell/cesa.h
@@ -232,13 +232,13 @@ struct mv_cesa_sec_accel_desc {
 };
 
 /**
- * struct mv_cesa_blkcipher_op_ctx - cipher operation context
+ * struct mv_cesa_skcipher_op_ctx - cipher operation context
  * @key:	cipher key
  * @iv:		cipher IV
  *
  * Context associated to a cipher operation.
  */
-struct mv_cesa_blkcipher_op_ctx {
+struct mv_cesa_skcipher_op_ctx {
 	u32 key[8];
 	u32 iv[4];
 };
@@ -265,7 +265,7 @@ struct mv_cesa_hash_op_ctx {
 struct mv_cesa_op_ctx {
 	struct mv_cesa_sec_accel_desc desc;
 	union {
-		struct mv_cesa_blkcipher_op_ctx blkcipher;
+		struct mv_cesa_skcipher_op_ctx skcipher;
 		struct mv_cesa_hash_op_ctx hash;
 	} ctx;
 };
diff --git a/drivers/crypto/marvell/cipher.c b/drivers/crypto/marvell/cipher.c
index 84ceddfee76b..d8e8c857770c 100644
--- a/drivers/crypto/marvell/cipher.c
+++ b/drivers/crypto/marvell/cipher.c
@@ -209,7 +209,7 @@ mv_cesa_skcipher_complete(struct crypto_async_request *req)
 		struct mv_cesa_req *basereq;
 
 		basereq = &creq->base;
-		memcpy(skreq->iv, basereq->chain.last->op->ctx.blkcipher.iv,
+		memcpy(skreq->iv, basereq->chain.last->op->ctx.skcipher.iv,
 		       ivsize);
 	} else {
 		memcpy_fromio(skreq->iv,
@@ -470,7 +470,7 @@ static int mv_cesa_des_op(struct skcipher_request *req,
 	mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTM_DES,
 			      CESA_SA_DESC_CFG_CRYPTM_MSK);
 
-	memcpy(tmpl->ctx.blkcipher.key, ctx->key, DES_KEY_SIZE);
+	memcpy(tmpl->ctx.skcipher.key, ctx->key, DES_KEY_SIZE);
 
 	return mv_cesa_skcipher_queue_req(req, tmpl);
 }
@@ -523,7 +523,7 @@ static int mv_cesa_cbc_des_op(struct skcipher_request *req,
 	mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTCM_CBC,
 			      CESA_SA_DESC_CFG_CRYPTCM_MSK);
 
-	memcpy(tmpl->ctx.blkcipher.iv, req->iv, DES_BLOCK_SIZE);
+	memcpy(tmpl->ctx.skcipher.iv, req->iv, DES_BLOCK_SIZE);
 
 	return mv_cesa_des_op(req, tmpl);
 }
@@ -575,7 +575,7 @@ static int mv_cesa_des3_op(struct skcipher_request *req,
 	mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTM_3DES,
 			      CESA_SA_DESC_CFG_CRYPTM_MSK);
 
-	memcpy(tmpl->ctx.blkcipher.key, ctx->key, DES3_EDE_KEY_SIZE);
+	memcpy(tmpl->ctx.skcipher.key, ctx->key, DES3_EDE_KEY_SIZE);
 
 	return mv_cesa_skcipher_queue_req(req, tmpl);
 }
@@ -628,7 +628,7 @@ struct skcipher_alg mv_cesa_ecb_des3_ede_alg = {
 static int mv_cesa_cbc_des3_op(struct skcipher_request *req,
 			       struct mv_cesa_op_ctx *tmpl)
 {
-	memcpy(tmpl->ctx.blkcipher.iv, req->iv, DES3_EDE_BLOCK_SIZE);
+	memcpy(tmpl->ctx.skcipher.iv, req->iv, DES3_EDE_BLOCK_SIZE);
 
 	return mv_cesa_des3_op(req, tmpl);
 }
@@ -694,7 +694,7 @@ static int mv_cesa_aes_op(struct skcipher_request *req,
 		key = ctx->aes.key_enc;
 
 	for (i = 0; i < ctx->aes.key_length / sizeof(u32); i++)
-		tmpl->ctx.blkcipher.key[i] = cpu_to_le32(key[i]);
+		tmpl->ctx.skcipher.key[i] = cpu_to_le32(key[i]);
 
 	if (ctx->aes.key_length == 24)
 		cfg |= CESA_SA_DESC_CFG_AES_LEN_192;
@@ -755,7 +755,7 @@ static int mv_cesa_cbc_aes_op(struct skcipher_request *req,
 {
 	mv_cesa_update_op_cfg(tmpl, CESA_SA_DESC_CFG_CRYPTCM_CBC,
 			      CESA_SA_DESC_CFG_CRYPTCM_MSK);
-	memcpy(tmpl->ctx.blkcipher.iv, req->iv, AES_BLOCK_SIZE);
+	memcpy(tmpl->ctx.skcipher.iv, req->iv, AES_BLOCK_SIZE);
 
 	return mv_cesa_aes_op(req, tmpl);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
