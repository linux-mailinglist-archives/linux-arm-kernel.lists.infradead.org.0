Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E6F4503C7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9w5i9FyraCrlebKYtEr6aHR4dG3ALlsMJDRqqfyPXs=; b=Q4lsnBo1ZmQaX7
	6BvUw3Gvk8DjvdsOCOqGioV0kH1RRCWQkdeK5x2yhCRi1c3YT31MRV6dufjO/8ytniWp++K2U4RIU
	u5y0BsemJUjdluMFNGXuTRWfj8/wAJg6tEE4PuTDQxZh2UzXpAYhcbY3YlWUXDzEcqeWl8qHqoS7W
	CdH9JZo8NPyLaPuxJ2VQVsUqeZvUTdMybK+ff8vt1hybTsdvtL8bBxV/qyeHOr4Zip6rqr0rElR2J
	l3ci46mBLQuvKhA0BAE+1MzEMijnAjcQN3JS2NSt04QxJMkYLCRYA0eaC+D9D9NCHk7KR4Ky/I/Fc
	twk7dtefp1283QGu9nSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJaY-0008Rd-Jr; Mon, 24 Jun 2019 07:40:30 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJYg-0007Fj-QH
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:38:37 +0000
Received: by mail-wr1-x441.google.com with SMTP id n4so11517003wrs.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wAWQ7z4x3fHIJa8oYIdIUVUZ8X0GMup0jVGwMgCujFU=;
 b=hF0QGJa0EKrqmqGReOhultCyL3T7Lc94boWKxcqo1ZItQdCX52u3asNMisj480Vg5e
 7UfxRMnlLyeDw2+ahncrvMrlCs+1L1eGcCq7JRUP/VA7yUkDfF+ZcSaaUSUkgjYWpOwo
 YYib/0t5uCcU7iEsyalLysWBb89isJPC6no61PFEGzArpdvnWh5T2ZD8nINsRRcVLkGU
 JWaRH0ZpfjyCDVnB5zK/mpY36aRIJzDG89JlC7IfCKIj4FTUVI+eMZnEzkA+MSsNBu4N
 BWEimYPojRFgjCY6ZXge9Iky92Z01AaQWcXaiq6rUO5PPkEduL9meQbU0esTqPaTKZRs
 8hjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wAWQ7z4x3fHIJa8oYIdIUVUZ8X0GMup0jVGwMgCujFU=;
 b=YPjlqc7EHP0HA+kauTjZ1uHt7am96j4JrIb7EtlNnpOpolnws9KapnjS4wDZzkoMV4
 sQ9pA85+t2LsgxRzgfgjzbAVTMm2e11ZAUme/eOU7pgJhzVS/AmXisU+IB/zCF96z6yI
 ZZespZ2xy5t3Q3wub4J1pHTByN8J7Z13ftGl5T7ntdbSwVzPd/BeUKvCNihqsHpXkH7I
 ux0FbxS6Z+4Amddo0BUiDj+9MSIQFiNMvR4LtTC+mW5TUqz2ZQZbO/Iu9wrtsxqaJ62h
 aT51XixsxnyeC+XW9pqHLlYchW7b5oHgdeuiNZC8eOrBVbK7UhHy7waeJdarp7hPj+Na
 7dRQ==
X-Gm-Message-State: APjAAAVb2XQ2kg5JA+fcQd0fS+b/x8Xo12IwrYDEWwy11bDJHk/tF5X9
 4mZHmWapr/aWMAVrGuW9c4nfqJULxEZ7UQ==
X-Google-Smtp-Source: APXvYqyhq94Xtt1BZUu9O2FSpIRkHtUjvarRflFnPWKKC3GpcfB8rMCxkQt4epRSwNS9HOqGotEHVA==
X-Received: by 2002:a05:6000:128d:: with SMTP id
 f13mr21048752wrx.39.1561361913237; 
 Mon, 24 Jun 2019 00:38:33 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:4866:7cdc:a930:8455])
 by smtp.gmail.com with ESMTPSA id 203sm7419280wmc.30.2019.06.24.00.38.32
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:38:32 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 4/6] crypto: aegis128 - add support for SIMD acceleration
Date: Mon, 24 Jun 2019 09:38:16 +0200
Message-Id: <20190624073818.29296-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003834_952315_C9F2D508 
X-CRM114-Status: GOOD (  16.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Steve Capper <steve.capper@arm.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add some plumbing to allow the AEGIS128 code to be built with SIMD
routines for acceleration.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/aegis.h    | 14 +++----
 crypto/aegis128.c | 42 ++++++++++++++++++--
 2 files changed, 45 insertions(+), 11 deletions(-)

diff --git a/crypto/aegis.h b/crypto/aegis.h
index 3308066ddde0..6cb65a497ba2 100644
--- a/crypto/aegis.h
+++ b/crypto/aegis.h
@@ -35,23 +35,23 @@ static const union aegis_block crypto_aegis_const[2] = {
 	} },
 };
 
-static void crypto_aegis_block_xor(union aegis_block *dst,
-				   const union aegis_block *src)
+static inline void crypto_aegis_block_xor(union aegis_block *dst,
+					  const union aegis_block *src)
 {
 	dst->words64[0] ^= src->words64[0];
 	dst->words64[1] ^= src->words64[1];
 }
 
-static void crypto_aegis_block_and(union aegis_block *dst,
-				   const union aegis_block *src)
+static inline void crypto_aegis_block_and(union aegis_block *dst,
+					  const union aegis_block *src)
 {
 	dst->words64[0] &= src->words64[0];
 	dst->words64[1] &= src->words64[1];
 }
 
-static void crypto_aegis_aesenc(union aegis_block *dst,
-				const union aegis_block *src,
-				const union aegis_block *key)
+static inline void crypto_aegis_aesenc(union aegis_block *dst,
+				       const union aegis_block *src,
+				       const union aegis_block *key)
 {
 	const u8  *s  = src->bytes;
 	const u32 *t = crypto_ft_tab[0];
diff --git a/crypto/aegis128.c b/crypto/aegis128.c
index 4f8f1cdef129..1bbd3e49c890 100644
--- a/crypto/aegis128.c
+++ b/crypto/aegis128.c
@@ -8,6 +8,7 @@
 
 #include <crypto/algapi.h>
 #include <crypto/internal/aead.h>
+#include <crypto/internal/simd.h>
 #include <crypto/internal/skcipher.h>
 #include <crypto/scatterwalk.h>
 #include <linux/err.h>
@@ -15,6 +16,7 @@
 #include <linux/kernel.h>
 #include <linux/module.h>
 #include <linux/scatterlist.h>
+#include <asm/simd.h>
 
 #include "aegis.h"
 
@@ -40,6 +42,15 @@ struct aegis128_ops {
 			    const u8 *src, unsigned int size);
 };
 
+static bool have_simd;
+
+bool crypto_aegis128_have_simd(void);
+void crypto_aegis128_update_simd(struct aegis_state *state, const void *msg);
+void crypto_aegis128_encrypt_chunk_simd(struct aegis_state *state, u8 *dst,
+					const u8 *src, unsigned int size);
+void crypto_aegis128_decrypt_chunk_simd(struct aegis_state *state, u8 *dst,
+					const u8 *src, unsigned int size);
+
 static void crypto_aegis128_update(struct aegis_state *state)
 {
 	union aegis_block tmp;
@@ -55,12 +66,22 @@ static void crypto_aegis128_update(struct aegis_state *state)
 static void crypto_aegis128_update_a(struct aegis_state *state,
 				     const union aegis_block *msg)
 {
+	if (have_simd && crypto_simd_usable()) {
+		crypto_aegis128_update_simd(state, msg);
+		return;
+	}
+
 	crypto_aegis128_update(state);
 	crypto_aegis_block_xor(&state->blocks[0], msg);
 }
 
 static void crypto_aegis128_update_u(struct aegis_state *state, const void *msg)
 {
+	if (have_simd && crypto_simd_usable()) {
+		crypto_aegis128_update_simd(state, msg);
+		return;
+	}
+
 	crypto_aegis128_update(state);
 	crypto_xor(state->blocks[0].bytes, msg, AEGIS_BLOCK_SIZE);
 }
@@ -365,7 +386,7 @@ static void crypto_aegis128_crypt(struct aead_request *req,
 
 static int crypto_aegis128_encrypt(struct aead_request *req)
 {
-	static const struct aegis128_ops ops = {
+	const struct aegis128_ops *ops = &(struct aegis128_ops){
 		.skcipher_walk_init = skcipher_walk_aead_encrypt,
 		.crypt_chunk = crypto_aegis128_encrypt_chunk,
 	};
@@ -375,7 +396,12 @@ static int crypto_aegis128_encrypt(struct aead_request *req)
 	unsigned int authsize = crypto_aead_authsize(tfm);
 	unsigned int cryptlen = req->cryptlen;
 
-	crypto_aegis128_crypt(req, &tag, cryptlen, &ops);
+	if (have_simd && crypto_simd_usable())
+		ops = &(struct aegis128_ops){
+			.skcipher_walk_init = skcipher_walk_aead_encrypt,
+			.crypt_chunk = crypto_aegis128_encrypt_chunk_simd };
+
+	crypto_aegis128_crypt(req, &tag, cryptlen, ops);
 
 	scatterwalk_map_and_copy(tag.bytes, req->dst, req->assoclen + cryptlen,
 				 authsize, 1);
@@ -384,7 +410,7 @@ static int crypto_aegis128_encrypt(struct aead_request *req)
 
 static int crypto_aegis128_decrypt(struct aead_request *req)
 {
-	static const struct aegis128_ops ops = {
+	const struct aegis128_ops *ops = &(struct aegis128_ops){
 		.skcipher_walk_init = skcipher_walk_aead_decrypt,
 		.crypt_chunk = crypto_aegis128_decrypt_chunk,
 	};
@@ -398,7 +424,12 @@ static int crypto_aegis128_decrypt(struct aead_request *req)
 	scatterwalk_map_and_copy(tag.bytes, req->src, req->assoclen + cryptlen,
 				 authsize, 0);
 
-	crypto_aegis128_crypt(req, &tag, cryptlen, &ops);
+	if (have_simd && crypto_simd_usable())
+		ops = &(struct aegis128_ops){
+			.skcipher_walk_init = skcipher_walk_aead_decrypt,
+			.crypt_chunk = crypto_aegis128_decrypt_chunk_simd };
+
+	crypto_aegis128_crypt(req, &tag, cryptlen, ops);
 
 	return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
 }
@@ -429,6 +460,9 @@ static struct aead_alg crypto_aegis128_alg = {
 
 static int __init crypto_aegis128_module_init(void)
 {
+	if (IS_ENABLED(CONFIG_CRYPTO_AEGIS128_SIMD))
+		have_simd = crypto_aegis128_have_simd();
+
 	return crypto_register_aead(&crypto_aegis128_alg);
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
