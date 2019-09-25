Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DB1EBE22D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:16:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JcgHSvq621QvC0oM60pjdatfQ7XK0Op9B94nsdcJ11k=; b=JFmqX9vTWGs9pC
	X2ZrmZ2xagUGCCUnfTmMuXndV34R3Ac3q2bZFQALZIbFzqP7EnUwQc2P68n9hg4FXSq1Tmw3U1zLg
	WG7Vmzk70RADUA3i+rlCXun79F2EQoA6bkIqoAVTyUp0ZBdIKxQwWHMJSWWJo+c/F4BGlP6aRMugU
	XrE8pbmmTdusfSFKqzjq/vT9KEu6eU9jG2lS56W/Mj/yTYZkHzF313+WKVmmrMJqy6xK5RkMxtobs
	EL0NRumEgKpZm275Oc0CiJEb1v8EpcSucvU5v+kfnJhhZsJeUAHya+WegjIhF6x682ppH9ekAeF5I
	3mGXBMxzOpESuCpnHhkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9y4-0006Zd-UA; Wed, 25 Sep 2019 16:16:41 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vP-0003tq-HZ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:14:02 +0000
Received: by mail-wm1-x344.google.com with SMTP id r17so4563266wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:13:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PGDTNzIZ6y6016+pkZuy7eopyTkRy+b3+Rm6GuFwl+o=;
 b=Kk76jONfB7bYtNj5FLDtcUv3/0s91W51rv+Ls26I7fkC/vvPK+9mdMx9Jg8Gdn0Tcn
 VmGbHLqGOgcc6adUbG6WtJTOvrL7VcNdk4v8qXMawr+zsMV+rl2/H6D65p2AQACNgVJm
 96eKIYWp95lJSTAh1bUeI+do/goY0hFe+CieySDxUSRiduz3B2wlctEOXfsW/5XVnTp9
 kH4PC/QifwyhXM92pdY2lJB5BxiT113GYS5ygPyowWDRvD0YYxODbbRovbZ0uN+hJEaS
 HDXKvO4yCCgMNSKxhUgbdS1Xi/YdjCExPj56j7m9DwoP60fme5iwmF+DEY1GnXx5NgLh
 ALpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PGDTNzIZ6y6016+pkZuy7eopyTkRy+b3+Rm6GuFwl+o=;
 b=W5NWJc8uKeJjYlEBBKkfn7xWVoJYp4/SsiE7gidoRLZiCzSuFdeOgoBcmeS2KL7GNe
 jxq7Z655BdGgu/97OXlef5JaDFnyRFozswn09NdMVQOPsNpxFcv2yOZM7S+Zm5fpo/Il
 g9nFSajqP9xytcv2vknHqQmF8QZ7sy2f7q99QCRC+LSsby5dhuTxl9cl++dGrtBucb6s
 6sWnuT+yHhm7Si5T6uPcSCTqv6LxLO+sCwGao3ZW9Tmcg7VK5CPNJWCAG/Erxs78figo
 k+ZeQ6K92g/nhdSYBv5zXikQBhDSLmw/zoguQwldpU7gnr5VtLE6TQLoxkZ27jOH15IT
 ZgBA==
X-Gm-Message-State: APjAAAV5nW4lTz/FsziFVtruOP7eSKVPxQOLO4le0TrbBzOpQOuhpk4j
 YrLUFlCpyDYuaFvgGE2FboS3ww==
X-Google-Smtp-Source: APXvYqwQoMwvrb5AFrXI7RvbmhhqvWPNR93S1WiOoTVJ3TGzKCNodQ0gbSq7O7lLYwggpA5BuvkJIA==
X-Received: by 2002:a7b:cb8b:: with SMTP id m11mr3357719wmi.145.1569428033925; 
 Wed, 25 Sep 2019 09:13:53 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.13.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:13:52 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 05/18] crypto: chacha - move existing library code into
 lib/crypto
Date: Wed, 25 Sep 2019 18:12:42 +0200
Message-Id: <20190925161255.1871-6-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091355_769245_ABE8FD46 
X-CRM114-Status: GOOD (  18.57  )
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

Move the existing shared ChaCha code into lib/crypto, and at the
same time, split the support header into a public version, and an
internal version that is only intended for consumption by crypto
implementations.

While at it, tidy up lib/crypto/Makefile a bit so we are ready for
some new arrivals.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm/crypto/chacha-neon-glue.c   |  2 +-
 arch/arm64/crypto/chacha-neon-glue.c |  2 +-
 arch/x86/crypto/chacha_glue.c        |  2 +-
 crypto/chacha_generic.c              | 42 ++------------------
 include/crypto/chacha.h              | 37 ++++++++++-------
 include/crypto/internal/chacha.h     | 25 ++++++++++++
 lib/Makefile                         |  3 +-
 lib/crypto/Makefile                  | 19 +++++----
 lib/{ => crypto}/chacha.c            | 23 +++++++++++
 9 files changed, 89 insertions(+), 66 deletions(-)

diff --git a/arch/arm/crypto/chacha-neon-glue.c b/arch/arm/crypto/chacha-neon-glue.c
index a8e9b534c8da..26576772f18b 100644
--- a/arch/arm/crypto/chacha-neon-glue.c
+++ b/arch/arm/crypto/chacha-neon-glue.c
@@ -20,7 +20,7 @@
  */
 
 #include <crypto/algapi.h>
-#include <crypto/chacha.h>
+#include <crypto/internal/chacha.h>
 #include <crypto/internal/simd.h>
 #include <crypto/internal/skcipher.h>
 #include <linux/kernel.h>
diff --git a/arch/arm64/crypto/chacha-neon-glue.c b/arch/arm64/crypto/chacha-neon-glue.c
index 1495d2b18518..d4cc61bfe79d 100644
--- a/arch/arm64/crypto/chacha-neon-glue.c
+++ b/arch/arm64/crypto/chacha-neon-glue.c
@@ -20,7 +20,7 @@
  */
 
 #include <crypto/algapi.h>
-#include <crypto/chacha.h>
+#include <crypto/internal/chacha.h>
 #include <crypto/internal/simd.h>
 #include <crypto/internal/skcipher.h>
 #include <linux/kernel.h>
diff --git a/arch/x86/crypto/chacha_glue.c b/arch/x86/crypto/chacha_glue.c
index 388f95a4ec24..bc62daa8dafd 100644
--- a/arch/x86/crypto/chacha_glue.c
+++ b/arch/x86/crypto/chacha_glue.c
@@ -7,7 +7,7 @@
  */
 
 #include <crypto/algapi.h>
-#include <crypto/chacha.h>
+#include <crypto/internal/chacha.h>
 #include <crypto/internal/simd.h>
 #include <crypto/internal/skcipher.h>
 #include <linux/kernel.h>
diff --git a/crypto/chacha_generic.c b/crypto/chacha_generic.c
index 085d8d219987..0a0847eacfc8 100644
--- a/crypto/chacha_generic.c
+++ b/crypto/chacha_generic.c
@@ -8,29 +8,10 @@
 
 #include <asm/unaligned.h>
 #include <crypto/algapi.h>
-#include <crypto/chacha.h>
+#include <crypto/internal/chacha.h>
 #include <crypto/internal/skcipher.h>
 #include <linux/module.h>
 
-static void chacha_docrypt(u32 *state, u8 *dst, const u8 *src,
-			   unsigned int bytes, int nrounds)
-{
-	/* aligned to potentially speed up crypto_xor() */
-	u8 stream[CHACHA_BLOCK_SIZE] __aligned(sizeof(long));
-
-	while (bytes >= CHACHA_BLOCK_SIZE) {
-		chacha_block(state, stream, nrounds);
-		crypto_xor_cpy(dst, src, stream, CHACHA_BLOCK_SIZE);
-		bytes -= CHACHA_BLOCK_SIZE;
-		dst += CHACHA_BLOCK_SIZE;
-		src += CHACHA_BLOCK_SIZE;
-	}
-	if (bytes) {
-		chacha_block(state, stream, nrounds);
-		crypto_xor_cpy(dst, src, stream, bytes);
-	}
-}
-
 static int chacha_stream_xor(struct skcipher_request *req,
 			     const struct chacha_ctx *ctx, const u8 *iv)
 {
@@ -48,8 +29,8 @@ static int chacha_stream_xor(struct skcipher_request *req,
 		if (nbytes < walk.total)
 			nbytes = round_down(nbytes, CHACHA_BLOCK_SIZE);
 
-		chacha_docrypt(state, walk.dst.virt.addr, walk.src.virt.addr,
-			       nbytes, ctx->nrounds);
+		chacha_crypt(state, walk.dst.virt.addr, walk.src.virt.addr,
+			     nbytes, ctx->nrounds);
 		err = skcipher_walk_done(&walk, walk.nbytes - nbytes);
 	}
 
@@ -58,22 +39,7 @@ static int chacha_stream_xor(struct skcipher_request *req,
 
 void crypto_chacha_init(u32 *state, const struct chacha_ctx *ctx, const u8 *iv)
 {
-	state[0]  = 0x61707865; /* "expa" */
-	state[1]  = 0x3320646e; /* "nd 3" */
-	state[2]  = 0x79622d32; /* "2-by" */
-	state[3]  = 0x6b206574; /* "te k" */
-	state[4]  = ctx->key[0];
-	state[5]  = ctx->key[1];
-	state[6]  = ctx->key[2];
-	state[7]  = ctx->key[3];
-	state[8]  = ctx->key[4];
-	state[9]  = ctx->key[5];
-	state[10] = ctx->key[6];
-	state[11] = ctx->key[7];
-	state[12] = get_unaligned_le32(iv +  0);
-	state[13] = get_unaligned_le32(iv +  4);
-	state[14] = get_unaligned_le32(iv +  8);
-	state[15] = get_unaligned_le32(iv + 12);
+	chacha_init(state, ctx->key, iv);
 }
 EXPORT_SYMBOL_GPL(crypto_chacha_init);
 
diff --git a/include/crypto/chacha.h b/include/crypto/chacha.h
index d1e723c6a37d..b2aaf711f2e7 100644
--- a/include/crypto/chacha.h
+++ b/include/crypto/chacha.h
@@ -15,9 +15,8 @@
 #ifndef _CRYPTO_CHACHA_H
 #define _CRYPTO_CHACHA_H
 
-#include <crypto/skcipher.h>
+#include <asm/unaligned.h>
 #include <linux/types.h>
-#include <linux/crypto.h>
 
 /* 32-bit stream position, then 96-bit nonce (RFC7539 convention) */
 #define CHACHA_IV_SIZE		16
@@ -29,11 +28,6 @@
 /* 192-bit nonce, then 64-bit stream position */
 #define XCHACHA_IV_SIZE		32
 
-struct chacha_ctx {
-	u32 key[8];
-	int nrounds;
-};
-
 void chacha_block(u32 *state, u8 *stream, int nrounds);
 static inline void chacha20_block(u32 *state, u8 *stream)
 {
@@ -41,14 +35,27 @@ static inline void chacha20_block(u32 *state, u8 *stream)
 }
 void hchacha_block(const u32 *in, u32 *out, int nrounds);
 
-void crypto_chacha_init(u32 *state, const struct chacha_ctx *ctx, const u8 *iv);
-
-int crypto_chacha20_setkey(struct crypto_skcipher *tfm, const u8 *key,
-			   unsigned int keysize);
-int crypto_chacha12_setkey(struct crypto_skcipher *tfm, const u8 *key,
-			   unsigned int keysize);
+static inline void chacha_init(u32 *state, const u32 *key, const u8 *iv)
+{
+	state[0]  = 0x61707865; /* "expa" */
+	state[1]  = 0x3320646e; /* "nd 3" */
+	state[2]  = 0x79622d32; /* "2-by" */
+	state[3]  = 0x6b206574; /* "te k" */
+	state[4]  = key[0];
+	state[5]  = key[1];
+	state[6]  = key[2];
+	state[7]  = key[3];
+	state[8]  = key[4];
+	state[9]  = key[5];
+	state[10] = key[6];
+	state[11] = key[7];
+	state[12] = get_unaligned_le32(iv +  0);
+	state[13] = get_unaligned_le32(iv +  4);
+	state[14] = get_unaligned_le32(iv +  8);
+	state[15] = get_unaligned_le32(iv + 12);
+}
 
-int crypto_chacha_crypt(struct skcipher_request *req);
-int crypto_xchacha_crypt(struct skcipher_request *req);
+void chacha_crypt(u32 *state, u8 *dst, const u8 *src, unsigned int bytes,
+		  int nrounds);
 
 #endif /* _CRYPTO_CHACHA_H */
diff --git a/include/crypto/internal/chacha.h b/include/crypto/internal/chacha.h
new file mode 100644
index 000000000000..f7ffe0f3fa47
--- /dev/null
+++ b/include/crypto/internal/chacha.h
@@ -0,0 +1,25 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef _CRYPTO_INTERNAL_CHACHA_H
+#define _CRYPTO_INTERNAL_CHACHA_H
+
+#include <crypto/chacha.h>
+#include <crypto/skcipher.h>
+#include <linux/crypto.h>
+
+struct chacha_ctx {
+	u32 key[8];
+	int nrounds;
+};
+
+void crypto_chacha_init(u32 *state, const struct chacha_ctx *ctx, const u8 *iv);
+
+int crypto_chacha20_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			   unsigned int keysize);
+int crypto_chacha12_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			   unsigned int keysize);
+
+int crypto_chacha_crypt(struct skcipher_request *req);
+int crypto_xchacha_crypt(struct skcipher_request *req);
+
+#endif /* _CRYPTO_CHACHA_H */
diff --git a/lib/Makefile b/lib/Makefile
index 29c02a924973..1436c9608fdb 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -30,8 +30,7 @@ endif
 
 lib-y := ctype.o string.o vsprintf.o cmdline.o \
 	 rbtree.o radix-tree.o timerqueue.o xarray.o \
-	 idr.o extable.o \
-	 sha1.o chacha.o irq_regs.o argv_split.o \
+	 idr.o extable.o sha1.o irq_regs.o argv_split.o \
 	 flex_proportions.o ratelimit.o show_mem.o \
 	 is_single_threaded.o plist.o decompress.o kobject_uevent.o \
 	 earlycpio.o seq_buf.o siphash.o dec_and_lock.o \
diff --git a/lib/crypto/Makefile b/lib/crypto/Makefile
index cbe0b6a6450d..24dad058f2ae 100644
--- a/lib/crypto/Makefile
+++ b/lib/crypto/Makefile
@@ -1,13 +1,16 @@
 # SPDX-License-Identifier: GPL-2.0
 
-obj-$(CONFIG_CRYPTO_LIB_AES) += libaes.o
-libaes-y := aes.o
+# chacha is used by the /dev/random driver which is always builtin
+obj-y						+= chacha.o
 
-obj-$(CONFIG_CRYPTO_LIB_ARC4) += libarc4.o
-libarc4-y := arc4.o
+obj-$(CONFIG_CRYPTO_LIB_AES)			+= libaes.o
+libaes-y					:= aes.o
 
-obj-$(CONFIG_CRYPTO_LIB_DES) += libdes.o
-libdes-y := des.o
+obj-$(CONFIG_CRYPTO_LIB_ARC4)			+= libarc4.o
+libarc4-y					:= arc4.o
 
-obj-$(CONFIG_CRYPTO_LIB_SHA256) += libsha256.o
-libsha256-y := sha256.o
+obj-$(CONFIG_CRYPTO_LIB_DES)			+= libdes.o
+libdes-y					:= des.o
+
+obj-$(CONFIG_CRYPTO_LIB_SHA256)			+= libsha256.o
+libsha256-y					:= sha256.o
diff --git a/lib/chacha.c b/lib/crypto/chacha.c
similarity index 85%
rename from lib/chacha.c
rename to lib/crypto/chacha.c
index c7c9826564d3..429adac51f66 100644
--- a/lib/chacha.c
+++ b/lib/crypto/chacha.c
@@ -5,11 +5,14 @@
  * Copyright (C) 2015 Martin Willi
  */
 
+#include <linux/bug.h>
 #include <linux/kernel.h>
 #include <linux/export.h>
 #include <linux/bitops.h>
+#include <linux/string.h>
 #include <linux/cryptohash.h>
 #include <asm/unaligned.h>
+#include <crypto/algapi.h> // for crypto_xor_cpy
 #include <crypto/chacha.h>
 
 static void chacha_permute(u32 *x, int nrounds)
@@ -111,3 +114,23 @@ void hchacha_block(const u32 *in, u32 *out, int nrounds)
 	memcpy(&out[4], &x[12], 16);
 }
 EXPORT_SYMBOL(hchacha_block);
+
+void chacha_crypt(u32 *state, u8 *dst, const u8 *src, unsigned int bytes,
+		  int nrounds)
+{
+	/* aligned to potentially speed up crypto_xor() */
+	u8 stream[CHACHA_BLOCK_SIZE] __aligned(sizeof(long));
+
+	while (bytes >= CHACHA_BLOCK_SIZE) {
+		chacha_block(state, stream, nrounds);
+		crypto_xor_cpy(dst, src, stream, CHACHA_BLOCK_SIZE);
+		bytes -= CHACHA_BLOCK_SIZE;
+		dst += CHACHA_BLOCK_SIZE;
+		src += CHACHA_BLOCK_SIZE;
+	}
+	if (bytes) {
+		chacha_block(state, stream, nrounds);
+		crypto_xor_cpy(dst, src, stream, bytes);
+	}
+}
+EXPORT_SYMBOL(chacha_crypt);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
