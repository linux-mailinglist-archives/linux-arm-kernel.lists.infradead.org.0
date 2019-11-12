Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB627F9D12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 23:31:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Wh8zHJrvoVmuEc6kateFjRP8LF/ZbVZZxTm4YAdY8c=; b=LrEU2k4DeW+AYU
	MucMqu9ZN+ry9Ip5AX8G03tZejmSNHW35nX5MyTrtdfYKpIt+99w4c4xncPF6lLfUP/3jOG53JNnz
	2ueE1wDNd0x9A961YSxVJwZxsZU1L2zYTBwGyQw2X77/hdptcfW7YWeZoBPyjHaEOR7JVWv8NQfXO
	NeEMYIN2VLE9l+vHWkBLt3TTHy7KNJtu/vmxAxmveStzFojGoOxa7vH8QEN146qYRqlggXr61YHqW
	iioWitZqfCUYicKfNWXmQyjXIIwRg93JY0G9w5d+7oMaOqPVJ4LS0Vs4DmrEWkVfJ2W6ltwpb9a8v
	76Ftu4Zf3s5Qaf0gnBDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUegd-0003AJ-K0; Tue, 12 Nov 2019 22:30:59 +0000
Received: from mail-pg1-x54a.google.com ([2607:f8b0:4864:20::54a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUegW-000396-32
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 22:30:53 +0000
Received: by mail-pg1-x54a.google.com with SMTP id w22so237895pgj.18
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 12 Nov 2019 14:30:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=U81lJmfzqNQm0pyA5eUdhCvih6sty3E2vARCwUP37no=;
 b=L79FnTH8a4f9dafUSbc9kT0H0+kQTG9Ma0RWob/OOfBfmz5yXeAee9gVNBgImUREZn
 BkMjiK2w4GuMG/SszoTkp/ohIIoixdg03YJxA6zbRODAWhPxv2Ai8zFqfhVOtmPBxB+O
 8T1gn15UfnZxh6C1k8Pb0p9bPVq8WS+Ai7II1TLr82K+OrStcUrjyqwoJdlbr5pM1zwW
 Sn5ijVA2FzdBLiOXxHWRhGxcIbb16oTqpJ0Hy2gIZ1Sv/XWP27z+tjDIDWde4+fhh91k
 UECU1/S0qlTwcxLTe3HXUZx8KTD2ehcI7+ScbW0peheXZVjVSt+jFdv/lfnxfHx3kKX8
 dMKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=U81lJmfzqNQm0pyA5eUdhCvih6sty3E2vARCwUP37no=;
 b=l/Hi3QER86qpgJYaWrjZ9D2qYkb66EVcoQclKCiq+9PxfeAV8DbA2IxDDfLEGYeuzY
 wi73vDkCM3wU6w++aJIKcnQcRa3dO6ghjwQIuXBsfKGTNu9Ehtt948VOcbLMuiYZ8AD/
 Stps4bsK5/jEB8aRaJIPYaxeq5q2ppDsyK+nLOC/tmd51UWWY7MNLRNRFsyLHhaBy0Oe
 4o/xdzkEi40P1P4/WIceIPQKn9v4CvQ01J9Ecjg64q3Rt+iKxv0Fv3msMPwGb42W9I1M
 DTcdoJD7geAakC97JIK0Yq/JP9SPdhQ+RPPELpJRtVcMppS8OL+1cthMzM1NjT1c/TAT
 /G/w==
X-Gm-Message-State: APjAAAX9wnUB2ACBRmKOstyHrqdV1tSG5vjC03uTFiKj5Op0zyp8OpE5
 7L6ErtQ88XTXWmIH7rCQh91P4JFC1xqis8t+AT8=
X-Google-Smtp-Source: APXvYqyWxcbNe9CqGqZpjLmZ9VuzEq25ADUo6QJ3ZUOqiZA4GB5tBJm6055hhVoFTnzZqogA/Aj0bxBMFG+fE1uIY0g=
X-Received: by 2002:a63:6fce:: with SMTP id
 k197mr34380305pgc.202.1573597849438; 
 Tue, 12 Nov 2019 14:30:49 -0800 (PST)
Date: Tue, 12 Nov 2019 14:30:46 -0800
Message-Id: <20191112223046.176097-1-samitolvanen@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH] crypto: arm64/sha: fix function types
From: Sami Tolvanen <samitolvanen@google.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_143052_161743_BB6A1687 
X-CRM114-Status: GOOD (  10.53  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:54a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Kees Cook <keescook@chromium.org>, Eric Biggers <ebiggers@google.com>,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 Sami Tolvanen <samitolvanen@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Declare assembly functions with the expected function type
instead of casting pointers in C to avoid type mismatch failures
with Control-Flow Integrity (CFI) checking.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 arch/arm64/crypto/sha1-ce-glue.c   | 12 +++++-------
 arch/arm64/crypto/sha2-ce-glue.c   | 26 +++++++++++---------------
 arch/arm64/crypto/sha256-glue.c    | 30 ++++++++++++------------------
 arch/arm64/crypto/sha512-ce-glue.c | 23 ++++++++++-------------
 arch/arm64/crypto/sha512-glue.c    | 13 +++++--------
 5 files changed, 43 insertions(+), 61 deletions(-)

diff --git a/arch/arm64/crypto/sha1-ce-glue.c b/arch/arm64/crypto/sha1-ce-glue.c
index bdc1b6d7aff7..3153a9bbb683 100644
--- a/arch/arm64/crypto/sha1-ce-glue.c
+++ b/arch/arm64/crypto/sha1-ce-glue.c
@@ -25,7 +25,7 @@ struct sha1_ce_state {
 	u32			finalize;
 };
 
-asmlinkage void sha1_ce_transform(struct sha1_ce_state *sst, u8 const *src,
+asmlinkage void sha1_ce_transform(struct sha1_state *sst, u8 const *src,
 				  int blocks);
 
 const u32 sha1_ce_offsetof_count = offsetof(struct sha1_ce_state, sst.count);
@@ -41,8 +41,7 @@ static int sha1_ce_update(struct shash_desc *desc, const u8 *data,
 
 	sctx->finalize = 0;
 	kernel_neon_begin();
-	sha1_base_do_update(desc, data, len,
-			    (sha1_block_fn *)sha1_ce_transform);
+	sha1_base_do_update(desc, data, len, sha1_ce_transform);
 	kernel_neon_end();
 
 	return 0;
@@ -64,10 +63,9 @@ static int sha1_ce_finup(struct shash_desc *desc, const u8 *data,
 	sctx->finalize = finalize;
 
 	kernel_neon_begin();
-	sha1_base_do_update(desc, data, len,
-			    (sha1_block_fn *)sha1_ce_transform);
+	sha1_base_do_update(desc, data, len, sha1_ce_transform);
 	if (!finalize)
-		sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
+		sha1_base_do_finalize(desc, sha1_ce_transform);
 	kernel_neon_end();
 	return sha1_base_finish(desc, out);
 }
@@ -81,7 +79,7 @@ static int sha1_ce_final(struct shash_desc *desc, u8 *out)
 
 	sctx->finalize = 0;
 	kernel_neon_begin();
-	sha1_base_do_finalize(desc, (sha1_block_fn *)sha1_ce_transform);
+	sha1_base_do_finalize(desc, sha1_ce_transform);
 	kernel_neon_end();
 	return sha1_base_finish(desc, out);
 }
diff --git a/arch/arm64/crypto/sha2-ce-glue.c b/arch/arm64/crypto/sha2-ce-glue.c
index 604a01a4ede6..a4dacedfe4d4 100644
--- a/arch/arm64/crypto/sha2-ce-glue.c
+++ b/arch/arm64/crypto/sha2-ce-glue.c
@@ -25,7 +25,7 @@ struct sha256_ce_state {
 	u32			finalize;
 };
 
-asmlinkage void sha2_ce_transform(struct sha256_ce_state *sst, u8 const *src,
+asmlinkage void sha2_ce_transform(struct sha256_state *sst, u8 const *src,
 				  int blocks);
 
 const u32 sha256_ce_offsetof_count = offsetof(struct sha256_ce_state,
@@ -33,7 +33,8 @@ const u32 sha256_ce_offsetof_count = offsetof(struct sha256_ce_state,
 const u32 sha256_ce_offsetof_finalize = offsetof(struct sha256_ce_state,
 						 finalize);
 
-asmlinkage void sha256_block_data_order(u32 *digest, u8 const *src, int blocks);
+asmlinkage void sha256_block_data_order(struct sha256_state *sst, u8 const *src,
+					int blocks);
 
 static int sha256_ce_update(struct shash_desc *desc, const u8 *data,
 			    unsigned int len)
@@ -42,12 +43,11 @@ static int sha256_ce_update(struct shash_desc *desc, const u8 *data,
 
 	if (!crypto_simd_usable())
 		return sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
+				sha256_block_data_order);
 
 	sctx->finalize = 0;
 	kernel_neon_begin();
-	sha256_base_do_update(desc, data, len,
-			      (sha256_block_fn *)sha2_ce_transform);
+	sha256_base_do_update(desc, data, len, sha2_ce_transform);
 	kernel_neon_end();
 
 	return 0;
@@ -62,9 +62,8 @@ static int sha256_ce_finup(struct shash_desc *desc, const u8 *data,
 	if (!crypto_simd_usable()) {
 		if (len)
 			sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
-		sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_data_order);
+				sha256_block_data_order);
+		sha256_base_do_finalize(desc, sha256_block_data_order);
 		return sha256_base_finish(desc, out);
 	}
 
@@ -75,11 +74,9 @@ static int sha256_ce_finup(struct shash_desc *desc, const u8 *data,
 	sctx->finalize = finalize;
 
 	kernel_neon_begin();
-	sha256_base_do_update(desc, data, len,
-			      (sha256_block_fn *)sha2_ce_transform);
+	sha256_base_do_update(desc, data, len, sha2_ce_transform);
 	if (!finalize)
-		sha256_base_do_finalize(desc,
-					(sha256_block_fn *)sha2_ce_transform);
+		sha256_base_do_finalize(desc, sha2_ce_transform);
 	kernel_neon_end();
 	return sha256_base_finish(desc, out);
 }
@@ -89,14 +86,13 @@ static int sha256_ce_final(struct shash_desc *desc, u8 *out)
 	struct sha256_ce_state *sctx = shash_desc_ctx(desc);
 
 	if (!crypto_simd_usable()) {
-		sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_data_order);
+		sha256_base_do_finalize(desc, sha256_block_data_order);
 		return sha256_base_finish(desc, out);
 	}
 
 	sctx->finalize = 0;
 	kernel_neon_begin();
-	sha256_base_do_finalize(desc, (sha256_block_fn *)sha2_ce_transform);
+	sha256_base_do_finalize(desc, sha2_ce_transform);
 	kernel_neon_end();
 	return sha256_base_finish(desc, out);
 }
diff --git a/arch/arm64/crypto/sha256-glue.c b/arch/arm64/crypto/sha256-glue.c
index e273faca924f..dac3157937ba 100644
--- a/arch/arm64/crypto/sha256-glue.c
+++ b/arch/arm64/crypto/sha256-glue.c
@@ -23,28 +23,25 @@ MODULE_LICENSE("GPL v2");
 MODULE_ALIAS_CRYPTO("sha224");
 MODULE_ALIAS_CRYPTO("sha256");
 
-asmlinkage void sha256_block_data_order(u32 *digest, const void *data,
-					unsigned int num_blks);
+asmlinkage void sha256_block_data_order(struct sha256_state *sst, u8 const *src,
+					int blocks);
 EXPORT_SYMBOL(sha256_block_data_order);
 
-asmlinkage void sha256_block_neon(u32 *digest, const void *data,
-				  unsigned int num_blks);
+asmlinkage void sha256_block_neon(struct sha256_state *sst, u8 const *src,
+				  int blocks);
 
 static int crypto_sha256_arm64_update(struct shash_desc *desc, const u8 *data,
 				      unsigned int len)
 {
-	return sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
+	return sha256_base_do_update(desc, data, len, sha256_block_data_order);
 }
 
 static int crypto_sha256_arm64_finup(struct shash_desc *desc, const u8 *data,
 				     unsigned int len, u8 *out)
 {
 	if (len)
-		sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
-	sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_data_order);
+		sha256_base_do_update(desc, data, len, sha256_block_data_order);
+	sha256_base_do_finalize(desc, sha256_block_data_order);
 
 	return sha256_base_finish(desc, out);
 }
@@ -87,7 +84,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
 
 	if (!crypto_simd_usable())
 		return sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
+				sha256_block_data_order);
 
 	while (len > 0) {
 		unsigned int chunk = len;
@@ -103,8 +100,7 @@ static int sha256_update_neon(struct shash_desc *desc, const u8 *data,
 				sctx->count % SHA256_BLOCK_SIZE;
 
 		kernel_neon_begin();
-		sha256_base_do_update(desc, data, chunk,
-				      (sha256_block_fn *)sha256_block_neon);
+		sha256_base_do_update(desc, data, chunk, sha256_block_neon);
 		kernel_neon_end();
 		data += chunk;
 		len -= chunk;
@@ -118,15 +114,13 @@ static int sha256_finup_neon(struct shash_desc *desc, const u8 *data,
 	if (!crypto_simd_usable()) {
 		if (len)
 			sha256_base_do_update(desc, data, len,
-				(sha256_block_fn *)sha256_block_data_order);
-		sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_data_order);
+				sha256_block_data_order);
+		sha256_base_do_finalize(desc, sha256_block_data_order);
 	} else {
 		if (len)
 			sha256_update_neon(desc, data, len);
 		kernel_neon_begin();
-		sha256_base_do_finalize(desc,
-				(sha256_block_fn *)sha256_block_neon);
+		sha256_base_do_finalize(desc, sha256_block_neon);
 		kernel_neon_end();
 	}
 	return sha256_base_finish(desc, out);
diff --git a/arch/arm64/crypto/sha512-ce-glue.c b/arch/arm64/crypto/sha512-ce-glue.c
index 2369540040aa..0f964235d753 100644
--- a/arch/arm64/crypto/sha512-ce-glue.c
+++ b/arch/arm64/crypto/sha512-ce-glue.c
@@ -27,18 +27,18 @@ MODULE_LICENSE("GPL v2");
 asmlinkage void sha512_ce_transform(struct sha512_state *sst, u8 const *src,
 				    int blocks);
 
-asmlinkage void sha512_block_data_order(u64 *digest, u8 const *src, int blocks);
+asmlinkage void sha512_block_data_order(struct sha512_state *sst, u8 const *src,
+					int blocks);
 
 static int sha512_ce_update(struct shash_desc *desc, const u8 *data,
 			    unsigned int len)
 {
 	if (!crypto_simd_usable())
 		return sha512_base_do_update(desc, data, len,
-				(sha512_block_fn *)sha512_block_data_order);
+					     sha512_block_data_order);
 
 	kernel_neon_begin();
-	sha512_base_do_update(desc, data, len,
-			      (sha512_block_fn *)sha512_ce_transform);
+	sha512_base_do_update(desc, data, len, sha512_ce_transform);
 	kernel_neon_end();
 
 	return 0;
@@ -50,16 +50,14 @@ static int sha512_ce_finup(struct shash_desc *desc, const u8 *data,
 	if (!crypto_simd_usable()) {
 		if (len)
 			sha512_base_do_update(desc, data, len,
-				(sha512_block_fn *)sha512_block_data_order);
-		sha512_base_do_finalize(desc,
-				(sha512_block_fn *)sha512_block_data_order);
+					      sha512_block_data_order);
+		sha512_base_do_finalize(desc, sha512_block_data_order);
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
@@ -67,13 +65,12 @@ static int sha512_ce_finup(struct shash_desc *desc, const u8 *data,
 static int sha512_ce_final(struct shash_desc *desc, u8 *out)
 {
 	if (!crypto_simd_usable()) {
-		sha512_base_do_finalize(desc,
-				(sha512_block_fn *)sha512_block_data_order);
+		sha512_base_do_finalize(desc, sha512_block_data_order);
 		return sha512_base_finish(desc, out);
 	}
 
 	kernel_neon_begin();
-	sha512_base_do_finalize(desc, (sha512_block_fn *)sha512_ce_transform);
+	sha512_base_do_finalize(desc, sha512_ce_transform);
 	kernel_neon_end();
 	return sha512_base_finish(desc, out);
 }
diff --git a/arch/arm64/crypto/sha512-glue.c b/arch/arm64/crypto/sha512-glue.c
index d915c656e5fe..0f6b610a7954 100644
--- a/arch/arm64/crypto/sha512-glue.c
+++ b/arch/arm64/crypto/sha512-glue.c
@@ -20,25 +20,22 @@ MODULE_LICENSE("GPL v2");
 MODULE_ALIAS_CRYPTO("sha384");
 MODULE_ALIAS_CRYPTO("sha512");
 
-asmlinkage void sha512_block_data_order(u32 *digest, const void *data,
-					unsigned int num_blks);
+asmlinkage void sha512_block_data_order(struct sha512_state *sst,
+					u8 const *src, int blocks);
 EXPORT_SYMBOL(sha512_block_data_order);
 
 static int sha512_update(struct shash_desc *desc, const u8 *data,
 			 unsigned int len)
 {
-	return sha512_base_do_update(desc, data, len,
-			(sha512_block_fn *)sha512_block_data_order);
+	return sha512_base_do_update(desc, data, len, sha512_block_data_order);
 }
 
 static int sha512_finup(struct shash_desc *desc, const u8 *data,
 			unsigned int len, u8 *out)
 {
 	if (len)
-		sha512_base_do_update(desc, data, len,
-			(sha512_block_fn *)sha512_block_data_order);
-	sha512_base_do_finalize(desc,
-			(sha512_block_fn *)sha512_block_data_order);
+		sha512_base_do_update(desc, data, len, sha512_block_data_order);
+	sha512_base_do_finalize(desc, sha512_block_data_order);
 
 	return sha512_base_finish(desc, out);
 }

base-commit: 100d46bd72ec689a5582c2f5f4deadc5bcb92d60
-- 
2.24.0.rc1.363.gb1bccd3e3d-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
