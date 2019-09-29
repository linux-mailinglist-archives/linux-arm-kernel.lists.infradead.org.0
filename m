Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA06C1816
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=e+MPGJpVcwv7ueB/m8S4cuGtS9QCgx4rcrnn2rscjDw=; b=d3t+vBL6C5YLYNn7V1AyRg0jZE
	btR72i/aTVxMbqzFNg7dOV6YeOAueRhbCwFsPnd67Th6TkXfQvjpr0p6SAOxaMMRhNgvqskqA5Xvc
	5maUCGu9mfipT3+O79IPtbwjanvzWlD8wJmysLChgqiPsCN9wt4QvdJmNZ3t54wHaVE6nHP8FYgOz
	v2U9rCRVp9ZHbBWKt/uPRS2820SV0CaOVq2FL4rbwJTFurc/sMwvt2deWxQaWg01AXeP/R1XJLUra
	vraYFJQkDCPKAQVuG8N4YEGndi6osYJ+KSAItagLFac4NSTj22ikI+hk9fMsW3a8hiD46NPSsQPpm
	a7G1RkMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdCW-0003tR-Ju; Sun, 29 Sep 2019 17:41:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdA5-00017c-PR
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:39:11 +0000
Received: by mail-wr1-x441.google.com with SMTP id q17so8418295wrx.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X/vLL5kgt+leeMxxc/cNujK7VVt1jHGGLQNhA6i9258=;
 b=YdD0dwSXEfmRjBxzhTLjM1ewhfF0rOBkxdm9VQD186pTNSpHTPnlZsmfvX2N45wHXh
 7TIfyUzKkKaMa59tLyegY4yy+fjfKrwAEwUC9scd9Dl2oel72IhYtar9ZyhYWoe804y+
 6pY2K0+CSybGc6Wb/gPBDhxmRkmmRuXlzP1H7Sanvj/mgyQ6fVvpJnZAwp+UmrG6L/Ci
 GKWMmxIRNxs132yh3KsyIsXc1zAB4cN8RtkQmXjF2F6l0wPCYGBrx//9IDU7ksgW6rwy
 I0ceq+4fX/6xC+TmK7EnnPcmUpfus4BcKne0fX7bOap4rv5LuJW7mXjWlhG0a95adhO8
 VmZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X/vLL5kgt+leeMxxc/cNujK7VVt1jHGGLQNhA6i9258=;
 b=kJqyLDiECn1remxJOxbVBYgCZbDX5sQpuWuOwNiCEM3s4snG4OM4KrATVxLTUrex0Y
 aKMZjC9SyzEVHYcX3ivnyVBYnElWNxjnaxFL0zsBA/7VIpeO7QSrCPuf7Xv1PURc5Kcs
 X9DtnsgGJy86RccGXlC09h7HngyEie/sdGx9SxK1uvhfNkG39Wdc/y/lI7EXMrl5lReJ
 GXzL7RB1t6/ucrnGkE2ISVsjd3AnY8Fq1PNwP20MaodL9v+R7z3Mp1w3e+Xpm/CCGg55
 g+HTFDeB/CpP0RobSn3Yv62Eno5ds/NLR53cfWMRTUkwvz5gcp5VRp5c3mxzv+76cImX
 1SWQ==
X-Gm-Message-State: APjAAAXPht87zdFw7Vt8FWZs5ih53dFV7nkX6/Mlz4hq7ll3EpAPXoC6
 UHWicJ9UbOt796zyh5JFL9vvnA==
X-Google-Smtp-Source: APXvYqyUI7Y4iM5nuLvB1G9Yo4MFGA82Kt8p3C8M9GD+cN4Am43n+Seb6gIMwljnPmPg15ZYjCiHXw==
X-Received: by 2002:adf:cf0e:: with SMTP id o14mr10234224wrj.277.1569778748055; 
 Sun, 29 Sep 2019 10:39:08 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.39.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:39:07 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 06/20] crypto: x86/poly1305 - expose existing driver as
 poly1305 library
Date: Sun, 29 Sep 2019 19:38:36 +0200
Message-Id: <20190929173850.26055-7-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103909_855177_C5CCB0E8 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Martin Willi <martin@strongswan.org>, Greg KH <gregkh@linuxfoundation.org>,
 Eric Biggers <ebiggers@google.com>, Samuel Neves <sneves@dei.uc.pt>,
 Will Deacon <will@kernel.org>, Dan Carpenter <dan.carpenter@oracle.com>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Implement the init/update/final Poly1305 library routines in the
accelerated SIMD driver for x86 so they are accessible to users of
the Poly1305 library interface.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/x86/crypto/poly1305_glue.c | 60 +++++++++++++++-----
 crypto/Kconfig                  |  2 +
 2 files changed, 48 insertions(+), 14 deletions(-)

diff --git a/arch/x86/crypto/poly1305_glue.c b/arch/x86/crypto/poly1305_glue.c
index b43b93c95e79..d3cc92996f58 100644
--- a/arch/x86/crypto/poly1305_glue.c
+++ b/arch/x86/crypto/poly1305_glue.c
@@ -85,18 +85,11 @@ static unsigned int poly1305_simd_blocks(struct poly1305_desc_ctx *dctx,
 	return srclen;
 }
 
-static int poly1305_simd_update(struct shash_desc *desc,
-				const u8 *src, unsigned int srclen)
+static int poly1305_simd_do_update(struct poly1305_desc_ctx *dctx,
+				   const u8 *src, unsigned int srclen)
 {
-	struct poly1305_desc_ctx *dctx = shash_desc_ctx(desc);
 	unsigned int bytes;
 
-	/* kernel_fpu_begin/end is costly, use fallback for small updates */
-	if (srclen <= 288 || !crypto_simd_usable())
-		return crypto_poly1305_update(desc, src, srclen);
-
-	kernel_fpu_begin();
-
 	if (unlikely(dctx->buflen)) {
 		bytes = min(srclen, POLY1305_BLOCK_SIZE - dctx->buflen);
 		memcpy(dctx->buf + dctx->buflen, src, bytes);
@@ -117,8 +110,6 @@ static int poly1305_simd_update(struct shash_desc *desc,
 		srclen = bytes;
 	}
 
-	kernel_fpu_end();
-
 	if (unlikely(srclen)) {
 		dctx->buflen = srclen;
 		memcpy(dctx->buf, src, srclen);
@@ -127,6 +118,47 @@ static int poly1305_simd_update(struct shash_desc *desc,
 	return 0;
 }
 
+static int poly1305_simd_update(struct shash_desc *desc,
+				const u8 *src, unsigned int srclen)
+{
+	struct poly1305_desc_ctx *dctx = shash_desc_ctx(desc);
+	int ret;
+
+	/* kernel_fpu_begin/end is costly, use fallback for small updates */
+	if (srclen <= 288 || !crypto_simd_usable())
+		return crypto_poly1305_update(desc, src, srclen);
+
+	kernel_fpu_begin();
+	ret = poly1305_simd_do_update(dctx, src, srclen);
+	kernel_fpu_end();
+
+	return ret;
+}
+
+void poly1305_init(struct poly1305_desc_ctx *desc, const u8 *key)
+{
+	poly1305_init_generic(desc, key);
+}
+EXPORT_SYMBOL(poly1305_init);
+
+void poly1305_update(struct poly1305_desc_ctx *dctx, const u8 *src,
+		     unsigned int nbytes)
+{
+	if (nbytes <= 288 || !crypto_simd_usable())
+		return poly1305_update_generic(dctx, src, nbytes);
+
+	kernel_fpu_begin();
+	poly1305_simd_do_update(dctx, src, nbytes);
+	kernel_fpu_end();
+}
+EXPORT_SYMBOL(poly1305_update);
+
+void poly1305_final(struct poly1305_desc_ctx *desc, u8 *digest)
+{
+	poly1305_final_generic(desc, digest);
+}
+EXPORT_SYMBOL(poly1305_final);
+
 static struct shash_alg alg = {
 	.digestsize	= POLY1305_DIGEST_SIZE,
 	.init		= crypto_poly1305_init,
@@ -151,9 +183,9 @@ static int __init poly1305_simd_mod_init(void)
 			    boot_cpu_has(X86_FEATURE_AVX) &&
 			    boot_cpu_has(X86_FEATURE_AVX2) &&
 			    cpu_has_xfeatures(XFEATURE_MASK_SSE | XFEATURE_MASK_YMM, NULL);
-	alg.descsize = sizeof(struct poly1305_desc_ctx) + 5 * sizeof(u32);
-	if (poly1305_use_avx2)
-		alg.descsize += 10 * sizeof(u32);
+	alg.descsize = sizeof(struct poly1305_desc_ctx);
+	if (!poly1305_use_avx2)
+		alg.descsize -= 10 * sizeof(u32);
 
 	return crypto_register_shash(&alg);
 }
diff --git a/crypto/Kconfig b/crypto/Kconfig
index f40e8dca57d1..6a952a61675b 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -659,6 +659,7 @@ config CRYPTO_ARCH_HAVE_LIB_POLY1305
 
 config CRYPTO_LIB_POLY1305_RSIZE
 	int
+	default 4 if X86_64
 	default 1
 
 config CRYPTO_LIB_POLY1305
@@ -680,6 +681,7 @@ config CRYPTO_POLY1305_X86_64
 	tristate "Poly1305 authenticator algorithm (x86_64/SSE2/AVX2)"
 	depends on X86 && 64BIT
 	select CRYPTO_POLY1305
+	select CRYPTO_ARCH_HAVE_LIB_POLY1305
 	help
 	  Poly1305 authenticator algorithm, RFC7539.
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
