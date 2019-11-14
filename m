Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8FAFD126
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 23:51:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/NMVTdjULY/wTISAqh+tHLSNpvWofz1SMUG8Tsc3TmE=; b=A7vFCxVHdSJM2Z
	6muCDf35cC8ced82DAA+YgqYqyfj5N9+wp1+C09s9chGB5ZJyAplCRwwwzjHsLjnt3ZNoP9jMAto1
	o2i29hwA+2hYfbs43bJSFSAutS7+Yle8hWkxujFchoYbwDh3LmoBVTAGnj7dS0j60Wvc7ghYC8zFC
	zAMoJV6rp748seCsli5MtbOIC4RiiR+ixaBc+KN7J5LshaBT2lAwhavFlPxMQWGEqxFUN3R+s/3RP
	2GpTb3lQn1Oa9vGkOGC1e/aeKquLp+BxUnhO4sS8y8PS1vLj7rv1U3zSrAOSurePBYdoc4COI9P1S
	hGTGoxxwmKQqOxwG471g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVNxX-0007i3-Lm; Thu, 14 Nov 2019 22:51:27 +0000
Received: from mail-qk1-x74a.google.com ([2607:f8b0:4864:20::74a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVNxP-0007hb-3p
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 22:51:20 +0000
Received: by mail-qk1-x74a.google.com with SMTP id b82so5103995qkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 14:51:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=Z82FviZ10GPuSN7k4gwEKpenqifKlX+EGzH91RqIPos=;
 b=NYolwvAVckZOEVXGzRMSA3huu6nW7kd03/8Cj4LDA+Z7b7xrDAbyfkJWru5Ryl71ic
 ogmfo6kv5oZPXJjXh1Qs01zbiDKy6s44nBtlmJnhNVc9/ftCib7TmMM1PYLX2zJJ0AaI
 WMaciwdQHgHMSQ8kWVytQlZtmOOnUTXX6VUxXwSAbwfMce+zbPtKzxH89PCibk2bVgYH
 1+YHissm1C6Lt1KJkhpJuoQgnYzQZvbW0tgIfc3EMHV8J2Vjh/CDkVKrLhjrUgqSGeS3
 MJqcSMRO4TDwUGSMEloArocLdSGULI7xZhdQJXEnhPDbjjb6ZZqvvEeJxGbBawZPoRC/
 QYhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=Z82FviZ10GPuSN7k4gwEKpenqifKlX+EGzH91RqIPos=;
 b=bnehnnjglCug6DKPsEzXoGZT9nnTJtNeiWiHxDnRPPf4ESIH0SLezievLVLkh9T8l3
 0jgE0c1vvjm26k/+qOegvvP4wTMvJ4sSvyUlTwUyzz+oljaREauqpiPjEKW3Q9kOFu85
 SjuoRCpwKESShFb1nNiX2CRDaWnwK+GvlpoBlhyyx3TAP9ekIpfbE+YdxY/J1MLbxT4f
 V/MlnUoQNEEbZsOWjGY16Q97w4rKM3yLMuNRC5RXWiLvzyph8x+0mT3nz2mmU+qTaym5
 jr3MDZN/IgZcGEMeCsnQGKU0XkKwWsCpq+1JpBsfwOql8HHHcR39aYKkwm38c9Mwuc2Y
 ILNA==
X-Gm-Message-State: APjAAAUtRcQ+jB/+T47bTjL90F0sDVHUHs0PRfKfhSyTdBMouSi0hatW
 XQ02svv6EC6ZACUa9e3BiOXKEdL/00Rs0ePSUfs=
X-Google-Smtp-Source: APXvYqzdwQZFdraUhts5HllVbfYwkHVkKZDbBSvP58XiuRXl9A9wCuH5rs8UVvMRBB5js6/vw+hKNzSWAiC+Kfan/mA=
X-Received: by 2002:a0c:fe8c:: with SMTP id d12mr10791589qvs.146.1573771876916; 
 Thu, 14 Nov 2019 14:51:16 -0800 (PST)
Date: Thu, 14 Nov 2019 14:51:13 -0800
In-Reply-To: <20191112223046.176097-1-samitolvanen@google.com>
Message-Id: <20191114225113.155143-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191112223046.176097-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v2] crypto: arm64/sha: fix function types
From: Sami Tolvanen <samitolvanen@google.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Eric Biggers <ebiggers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_145119_185465_38C5E695 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:74a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>,
 Kees Cook <keescook@chromium.org>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of casting pointers to callback functions, add C wrappers
to avoid type mismatch failures with Control-Flow Integrity (CFI)
checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/crypto/sha1-ce-glue.c   | 17 +++++++++------
 arch/arm64/crypto/sha2-ce-glue.c   | 34 ++++++++++++++++++------------
 arch/arm64/crypto/sha256-glue.c    | 32 +++++++++++++++++-----------
 arch/arm64/crypto/sha512-ce-glue.c | 26 ++++++++++++-----------
 arch/arm64/crypto/sha512-glue.c    | 15 ++++++++-----
 5 files changed, 76 insertions(+), 48 deletions(-)

diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
index bdc1b6d7aff7..76a951ce2a7b 100644
--- a/arch/arm64/crypto/sha1-ce-glue.c
+++ b/arch/arm64/crypto/sha1-ce-glue.c
@@ -28,6 +28,13 @@ struct sha1_ce_state {
 asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
 				  int blocks);
 
+static inline void __sha1_ce_transform(struct sha1_state *sst, u8 const *src,
+				       int blocks)
+{
+	return sha1_ce_transform(container_of(sst, struct sha1_ce_state, sst),
+				 src, blocks);
+}
+
 const u32 sha1_ce_offsetof_count = offsetof(struct sha1_ce_state, sst.count);
 const u32 sha1_ce_offsetof_finalize = offsetof(struct sha1_ce_state, finalize);
 
@@ -41,8 +48,7 @@ static int sha1_ce_update(struct shash_desc *desc, const u8 *data,
 
 	sctx->finalize = 0;
 	kernel_neon_begin();
-	sha1_base_do_update(desc, data, len,
-			    (sha1_block_fn *)sha1_ce_transform);
+	sha1_base_do_update(desc, data, len, __sha1_ce_transform);
 	kernel_neon_end();
 
 	return 0;
@@ -64,10 +70,9 @@ static int sha1_ce_finup(struct shash_desc *desc, const u8 *data,
 	sctx->finalize = finalize;
 
 	kernel_neon_begin();
-	sha1_base_do_update(desc, data, len,
-			    (sha1_block_fn *)sha1_ce_transform);
+	sha1_base_do_update(desc, data, len, __sha1_ce_transform);
 	if (!finalize)
-		sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
+		sha1_base_do_finalize(desc, __sha1_ce_transform);
 	kernel_neon_end();
 	return sha1_base_finish(desc, out);
 }
@@ -81,7 +86,7 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
 
 	sctx->finalize = 0;
 	kernel_neon_begin();
-	sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
+	sha1_base_do_finalize(desc, __sha1_ce_transform);
 	kernel_neon_end();
 	return sha1_base_finish(desc, out);
 }
diff --git a/arch/arm64/crypto/sha2-ce-glue.c b/arch/arm64/crypto/sha2-ce-glue.c
index 604a01a4ede6..6042555517b0 100644
--- a/arch/arm64/crypto/sha2-ce-glue.c
+++ b/arch/arm64/crypto/sha2-ce-glue.c
@@ -28,6 +28,13 @@ struct sha256_ce_state {
 asmlinkage void sha2_ce_transform(struct sha256_ce_state *sst, u8 const *src,
 				  int blocks);
 
+static inline void __sha2_ce_transform(struct sha256_state *sst, u8 const *src,
+				       int blocks)
+{
+	return sha2_ce_transform(container_of(sst, struct sha256_ce_state, sst),
+				 src, blocks);
+}
+
 const u32 sha256_ce_offsetof_count = offsetof(struct sha256_ce_state,
 					      sst.count);
 const u32 sha256_ce_offsetof_finalize = offsetof(struct sha256_ce_state,
@@ -35,6 +42,12 @@ const u32 sha256_ce_offsetof_finalize = offsetof(struct sha256_ce_state,
 
 asmlinkage void sha256_block_data_order(u32 *digest, u8 const *src, int blocks);
 
+static inline void __sha256_block_data_order(struct sha256_state *sst,
+					     u8 const *src, int blocks)
+{
+	return sha256_block_data_order(sst->state, src, blocks);
+}
+
 static int sha256_ce_update(struct shash_desc *desc, const u8 *data,
 			    unsigned int len)
 {
@@ -42,12 +55,11 @@ static int sha256_ce_update(struct shash_desc *desc, const u8 *data,
 
 	if (!crypto_simd_usable())
 		return sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
+				__sha256_block_data_order);
 
 	sctx->finalize = 0;
 	kernel_neon_begin();
-	sha256_base_do_update(desc, data, len,
-			      (sha256_block_fn *)sha2_ce_transform);
+	sha256_base_do_update(desc, data, len, __sha2_ce_transform);
 	kernel_neon_end();
 
 	return 0;
@@ -62,9 +74,8 @@ static int sha256_ce_finup(struct shash_desc *desc, const u8 *data,
 	if (!crypto_simd_usable()) {
 		if (len)
 			sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
-		sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_data_order);
+				__sha256_block_data_order);
+		sha256_base_do_finalize(desc, __sha256_block_data_order);
 		return sha256_base_finish(desc, out);
 	}
 
@@ -75,11 +86,9 @@ static int sha256_ce_finup(struct shash_desc *desc, const u8 *data,
 	sctx->finalize = finalize;
 
 	kernel_neon_begin();
-	sha256_base_do_update(desc, data, len,
-			      (sha256_block_fn *)sha2_ce_transform);
+	sha256_base_do_update(desc, data, len, __sha2_ce_transform);
 	if (!finalize)
-		sha256_base_do_finalize(desc,
-					(sha256_block_fn *)sha2_ce_transform);
+		sha256_base_do_finalize(desc, __sha2_ce_transform);
 	kernel_neon_end();
 	return sha256_base_finish(desc, out);
 }
@@ -89,14 +98,13 @@ static int sha256_ce_final(struct shash_desc *desc, u8 *out)
 	struct sha256_ce_state *sctx = shash_desc_ctx(desc);
 
 	if (!crypto_simd_usable()) {
-		sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_data_order);
+		sha256_base_do_finalize(desc, __sha256_block_data_order);
 		return sha256_base_finish(desc, out);
 	}
 
 	sctx->finalize = 0;
 	kernel_neon_begin();
-	sha256_base_do_finalize(desc, (sha256_block_fn *)sha2_ce_transform);
+	sha256_base_do_finalize(desc, __sha2_ce_transform);
 	kernel_neon_end();
 	return sha256_base_finish(desc, out);
 }
diff --git a/arch/arm64/crypto/sha256-glue.c b/arch/arm64/crypto/sha256-glue.c
index e273faca924f..bb0f89382d70 100644
--- a/arch/arm64/crypto/sha256-glue.c
+++ b/arch/arm64/crypto/sha256-glue.c
@@ -27,14 +27,26 @@ asmlinkage void sha256_block_data_order(u32 *digest, const void *data,
 					unsigned int num_blks);
 EXPORT_SYMBOL(sha256_block_data_order);
 
+static inline void __sha256_block_data_order(struct sha256_state *sst,
+					     u8 const *src, int blocks)
+{
+	return sha256_block_data_order(sst->state, src, blocks);
+}
+
 asmlinkage void sha256_block_neon(u32 *digest, const void *data,
 				  unsigned int num_blks);
 
+static inline void __sha256_block_neon(struct sha256_state *sst,
+				       u8 const *src, int blocks)
+{
+	return sha256_block_neon(sst->state, src, blocks);
+}
+
 static int crypto_sha256_arm64_update(struct shash_desc *desc, const u8 *data,
 				      unsigned int len)
 {
 	return sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
+				     __sha256_block_data_order);
 }
 
 static int crypto_sha256_arm64_finup(struct shash_desc *desc, const u8 *data,
@@ -42,9 +54,8 @@ static int crypto_sha256_arm64_finup(struct shash_desc *desc, const u8 *data,
 {
 	if (len)
 		sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
-	sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_data_order);
+				      __sha256_block_data_order);
+	sha256_base_do_finalize(desc, __sha256_block_data_order);
 
 	return sha256_base_finish(desc, out);
 }
@@ -87,7 +98,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
 
 	if (!crypto_simd_usable())
 		return sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
+				__sha256_block_data_order);
 
 	while (len > 0) {
 		unsigned int chunk = len;
@@ -103,8 +114,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
 				sctx->count % SHA256_BLOCK_SIZE;
 
 		kernel_neon_begin();
-		sha256_base_do_update(desc, data, chunk,
-				      (sha256_block_fn *)sha256_block_neon);
+		sha256_base_do_update(desc, data, chunk, __sha256_block_neon);
 		kernel_neon_end();
 		data += chunk;
 		len -= chunk;
@@ -118,15 +128,13 @@ static int sha256_finup_neon(struct shash_desc *desc, const u8 *data,
 	if (!crypto_simd_usable()) {
 		if (len)
 			sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
-		sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_data_order);
+				__sha256_block_data_order);
+		sha256_base_do_finalize(desc, __sha256_block_data_order);
 	} else {
 		if (len)
 			sha256_update_neon(desc, data, len);
 		kernel_neon_begin();
-		sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_neon);
+		sha256_base_do_finalize(desc, __sha256_block_neon);
 		kernel_neon_end();
 	}
 	return sha256_base_finish(desc, out);
diff --git a/arch/arm64/crypto/sha512-ce-glue.c b/arch/arm64/crypto/sha512-ce-glue.c
index 2369540040aa..076fcae454e0 100644
--- a/arch/arm64/crypto/sha512-ce-glue.c
+++ b/arch/arm64/crypto/sha512-ce-glue.c
@@ -29,16 +29,21 @@ asmlinkage void sha512_ce_transform(struct sha512_state *sst, u8 const *src,
 
 asmlinkage void sha512_block_data_order(u64 *digest, u8 const *src, int blocks);
 
+static inline void __sha512_block_data_order(struct sha512_state *sst,
+					     u8 const *src, int blocks)
+{
+	return sha512_block_data_order(sst->state, src, blocks);
+}
+
 static int sha512_ce_update(struct shash_desc *desc, const u8 *data,
 			    unsigned int len)
 {
 	if (!crypto_simd_usable())
 		return sha512_base_do_update(desc, data, len,
-				(sha512_block_fn *)sha512_block_data_order);
+					     __sha512_block_data_order);
 
 	kernel_neon_begin();
-	sha512_base_do_update(desc, data, len,
-			      (sha512_block_fn *)sha512_ce_transform);
+	sha512_base_do_update(desc, data, len, sha512_ce_transform);
 	kernel_neon_end();
 
 	return 0;
@@ -50,16 +55,14 @@ static int sha512_ce_finup(struct shash_desc *desc, const u8 *data,
 	if (!crypto_simd_usable()) {
 		if (len)
 			sha512_base_do_update(desc, data, len,
-				(sha512_block_fn *)sha512_block_data_order);
-		sha512_base_do_finalize(desc,
-				(sha512_block_fn *)sha512_block_data_order);
+					      __sha512_block_data_order);
+		sha512_base_do_finalize(desc, __sha512_block_data_order);
 		return sha512_base_finish(desc, out);
 	}
 
 	kernel_neon_begin();
-	sha512_base_do_update(desc, data, len,
-			      (sha512_block_fn *)sha512_ce_transform);
-	sha512_base_do_finalize(desc, (sha512_block_fn *)sha512_ce_transform);
+	sha512_base_do_update(desc, data, len, sha512_ce_transform);
+	sha512_base_do_finalize(desc, sha512_ce_transform);
 	kernel_neon_end();
 	return sha512_base_finish(desc, out);
 }
@@ -67,13 +70,12 @@ static int sha512_ce_finup(struct shash_desc *desc, const u8 *data,
 static int sha512_ce_final(struct shash_desc *desc, u8 *out)
 {
 	if (!crypto_simd_usable()) {
-		sha512_base_do_finalize(desc,
-				(sha512_block_fn *)sha512_block_data_order);
+		sha512_base_do_finalize(desc, __sha512_block_data_order);
 		return sha512_base_finish(desc, out);
 	}
 
 	kernel_neon_begin();
-	sha512_base_do_finalize(desc, (sha512_block_fn *)sha512_ce_transform);
+	sha512_base_do_finalize(desc, sha512_ce_transform);
 	kernel_neon_end();
 	return sha512_base_finish(desc, out);
 }
diff --git a/arch/arm64/crypto/sha512-glue.c b/arch/arm64/crypto/sha512-glue.c
index d915c656e5fe..125aac89c3c4 100644
--- a/arch/arm64/crypto/sha512-glue.c
+++ b/arch/arm64/crypto/sha512-glue.c
@@ -20,15 +20,21 @@ MODULE_LICENSE("GPL v2");
 MODULE_ALIAS_CRYPTO("sha384");
 MODULE_ALIAS_CRYPTO("sha512");
 
-asmlinkage void sha512_block_data_order(u32 *digest, const void *data,
+asmlinkage void sha512_block_data_order(u64 *digest, const void *data,
 					unsigned int num_blks);
 EXPORT_SYMBOL(sha512_block_data_order);
 
+static inline void __sha512_block_data_order(struct sha512_state *sst,
+					     u8 const *src, int blocks)
+{
+	return sha512_block_data_order(sst->state, src, blocks);
+}
+
 static int sha512_update(struct shash_desc *desc, const u8 *data,
 			 unsigned int len)
 {
 	return sha512_base_do_update(desc, data, len,
-			(sha512_block_fn *)sha512_block_data_order);
+				     __sha512_block_data_order);
 }
 
 static int sha512_finup(struct shash_desc *desc, const u8 *data,
@@ -36,9 +42,8 @@ static int sha512_finup(struct shash_desc *desc, const u8 *data,
 {
 	if (len)
 		sha512_base_do_update(desc, data, len,
-			(sha512_block_fn *)sha512_block_data_order);
-	sha512_base_do_finalize(desc,
-			(sha512_block_fn *)sha512_block_data_order);
+				      __sha512_block_data_order);
+	sha512_base_do_finalize(desc, __sha512_block_data_order);
 
 	return sha512_base_finish(desc, out);
 }

base-commit: 96b95eff4a591dbac582c2590d067e356a18aacb
-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
