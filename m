Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8244C102D53
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 21:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNr/J2oU8WgKzEM7z1jnfodTrALr3o+t3KDKtXPKgPA=; b=lwartbkQdS9FB/
	AJRt/LB4UJ6WUai48aryOrLa7dq00kB87ZzSeJRXhADH4P1VXcvdBGDMZeLP24fDG2R/TOQ9WLoVj
	3IPI3uNZxvStn7PxGUcPvaa/qm26BKn/8zV+xNUwV6LtwlVj7zdLDBpI6USkS0XiMgocEXjj19bu2
	QIHqTDwjJ83IBaucTZ0kaus2Yp1Dvx3gmLqukJ1r+AM0QkKeNa7pXVtTJZTrrrtqy7ghAy8qLX/vt
	GmMySsyTFz4Ni3Z4X+cuiBmBMNJGfmFTHnvzV444U2RzE02iDJqTqRc2gmi1wXQkAso5MrNPjbkQ4
	DMKy32eOM9gRffPLZ8Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX9t5-0000i4-2o; Tue, 19 Nov 2019 20:14:11 +0000
Received: from mail-yw1-xc4a.google.com ([2607:f8b0:4864:20::c4a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX9sv-0000hX-2V
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 20:14:02 +0000
Received: by mail-yw1-xc4a.google.com with SMTP id y200so16058994ywg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 19 Nov 2019 12:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=qEdCdjP4BexaUog9maNHbd+sfUTCO9EvJoK3FBXUd84=;
 b=TO1qMMmrtZrDJgYMOJsXmmeexyIgdRgCK7zL/PxqAp25EfVP2bHm9DzQMdFSDPfen9
 zsD2OjcFZ33CBLVl6+mY8C0J9qBDepwcDYh/DmCzTf04JZvsPbTg1vzlO3VAseBv4FEu
 7wGhZ6yYUDFJmdHLs2ccMmObCOCt38fwQPAz5WwXe1cxQGxHITuLJjKMm7SGCnCHx62N
 TPgElylwRSN0WirLOJjA1DvC7dC5E+VIl4Ny8qZYvp3q0WPtgu7qx3dw4N6i49KKI99k
 oPrvC6RuksOY9UhY1Ibd+JFTAW3Pocmd3eJay85LV+myOY5a6ILwubhFnaQ7W0Egk1Cz
 dfFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=qEdCdjP4BexaUog9maNHbd+sfUTCO9EvJoK3FBXUd84=;
 b=Dc9o4StTbxIk6Q7kyOrCOWuKP86yP1Tw7W2FRSC9dZ2O27tft2x2Jm5THYmuSsZSnp
 +o7XYuBzICNK2jse/shB8x3LBaNzYkfjJToRKxjPxhJgJBIL+/wfdp0LqsPvOWJyQKGA
 wXBEtFVkb+b3jBK6lZk27DiWjvgPa62j6r471J48tYzNIUXwc4zPLjXP8OnIE8nTCWcp
 sH6AJxIQnOfnLSoqN2Mgpkoh4ST/zy0BR24IeWiJ/tSCToWOsgubW0vOByAMjRJuOvHD
 FgT7FqgdpbZTA4tiIr7zpLp61vKi115cLkdFlppSbAPbKvvKHNamwCvjcrvTdTW5q0tB
 IqDA==
X-Gm-Message-State: APjAAAVgZiItV1jhovuu6nGrkMz+DnmmNXEZM+OEOUpiThf8Fum4/L11
 5kekPWMu4fk700drYgeHIBMVoehF+7vVJQqW/gI=
X-Google-Smtp-Source: APXvYqyHE6B081o13UrL5AepXxrXh/3PYC8ps1WqD4o+JJgg7wsKZCtedmaNSTNhvJ8CCp9WPYjNjEUjYab4BYU/T/M=
X-Received: by 2002:a25:2594:: with SMTP id
 l142mr28621802ybl.481.1574194438449; 
 Tue, 19 Nov 2019 12:13:58 -0800 (PST)
Date: Tue, 19 Nov 2019 12:13:53 -0800
In-Reply-To: <20191112223046.176097-1-samitolvanen@google.com>
Message-Id: <20191119201353.2589-1-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191112223046.176097-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.432.g9d3f5f5b63-goog
Subject: [PATCH v3] crypto: arm64/sha: fix function types
From: Sami Tolvanen <samitolvanen@google.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
 Eric Biggers <ebiggers@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_121401_141016_ABF9544E 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c4a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of casting pointers to callback functions, add C wrappers
to avoid type mismatch failures with Control-Flow Integrity (CFI)
checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Ard Biesheuvel <ardb@kernel.org>
---
Changes in v3:
  - Removed unnecessary inline attributes.

Changes in v2:
  - Added wrapper functions instead of changing parameter types
    for the assembly functions.

---
 arch/arm64/crypto/sha1-ce-glue.c   | 17 +++++++++------
 arch/arm64/crypto/sha2-ce-glue.c   | 34 ++++++++++++++++++------------
 arch/arm64/crypto/sha256-glue.c    | 32 +++++++++++++++++-----------
 arch/arm64/crypto/sha512-ce-glue.c | 26 ++++++++++++-----------
 arch/arm64/crypto/sha512-glue.c    | 15 ++++++++-----
 5 files changed, 76 insertions(+), 48 deletions(-)

diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
index bdc1b6d7aff7..ee8d9f0edb1a 100644
--- a/arch/arm64/crypto/sha1-ce-glue.c
+++ b/arch/arm64/crypto/sha1-ce-glue.c
@@ -28,6 +28,13 @@ struct sha1_ce_state {
 asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
 				  int blocks);
 
+static void __sha1_ce_transform(struct sha1_state *sst, u8 const *src,
+				int blocks)
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
index 604a01a4ede6..2b05e95ab2b5 100644
--- a/arch/arm64/crypto/sha2-ce-glue.c
+++ b/arch/arm64/crypto/sha2-ce-glue.c
@@ -28,6 +28,13 @@ struct sha256_ce_state {
 asmlinkage void sha2_ce_transform(struct sha256_ce_state *sst, u8 const *src,
 				  int blocks);
 
+static void __sha2_ce_transform(struct sha256_state *sst, u8 const *src,
+				int blocks)
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
 
+static void __sha256_block_data_order(struct sha256_state *sst, u8 const *src,
+				      int blocks)
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
index e273faca924f..03ed0358c6eb 100644
--- a/arch/arm64/crypto/sha256-glue.c
+++ b/arch/arm64/crypto/sha256-glue.c
@@ -27,14 +27,26 @@ asmlinkage void sha256_block_data_order(u32 *digest, const void *data,
 					unsigned int num_blks);
 EXPORT_SYMBOL(sha256_block_data_order);
 
+static void __sha256_block_data_order(struct sha256_state *sst, u8 const *src,
+				      int blocks)
+{
+	return sha256_block_data_order(sst->state, src, blocks);
+}
+
 asmlinkage void sha256_block_neon(u32 *digest, const void *data,
 				  unsigned int num_blks);
 
+static void __sha256_block_neon(struct sha256_state *sst, u8 const *src,
+				int blocks)
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
index 2369540040aa..659c913cd056 100644
--- a/arch/arm64/crypto/sha512-ce-glue.c
+++ b/arch/arm64/crypto/sha512-ce-glue.c
@@ -29,16 +29,21 @@ asmlinkage void sha512_ce_transform(struct sha512_state *sst, u8 const *src,
 
 asmlinkage void sha512_block_data_order(u64 *digest, u8 const *src, int blocks);
 
+static void __sha512_block_data_order(struct sha512_state *sst, u8 const *src,
+				      int blocks)
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
index d915c656e5fe..86045ae596b1 100644
--- a/arch/arm64/crypto/sha512-glue.c
+++ b/arch/arm64/crypto/sha512-glue.c
@@ -20,15 +20,21 @@ MODULE_LICENSE("GPL v2");
 MODULE_ALIAS_CRYPTO("sha384");
 MODULE_ALIAS_CRYPTO("sha512");
 
-asmlinkage void sha512_block_data_order(u32 *digest, const void *data,
+asmlinkage void sha512_block_data_order(u64 *digest, const void *data,
 					unsigned int num_blks);
 EXPORT_SYMBOL(sha512_block_data_order);
 
+static void __sha512_block_data_order(struct sha512_state *sst, u8 const *src,
+				      int blocks)
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

base-commit: fd8f64df95204951c3edd4c4a7817c909d55a100
-- 
2.24.0.432.g9d3f5f5b63-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
