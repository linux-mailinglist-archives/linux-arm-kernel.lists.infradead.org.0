Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A57D3BE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 11:08:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6jxfQEEXTxwAB52dsa21t1vEJGARnMlR/MxxorG/Ado=; b=T7sxjk7uSiyFQp
	yB6UGlUTmgCumfrvHXqPhHWyhxwP1bA93o09o7D8GUSN9QgcYMabfBUfuAsLR0JfxfvbNeQ9R4zPy
	TJMxZ6sVI/f7hESjOCfhnG+gs6IMnyi08DhovpE95ts7ieV8wP8mmkcijcfJ0mo1Mv1TT8YUYBfPa
	gsp14Yc8uTiCwolVxRh7hFmn/M0r20TDsqS05W1oV9s1CEQnWIu1yQBxFUkdciSzK3S9r6A3vedCd
	PaL/HDOCQZAEpy5iOwsX5oCZL0JeaP4Oq4Efn0EBEtWQpI+y+GeGQ1AlOO8kqUk/AfPoeIxmDdF6+
	ERRnQ1GaQRVV0NsW3hpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIquH-00065W-8Z; Fri, 11 Oct 2019 09:08:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIqu8-0005uL-K5
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 09:08:10 +0000
Received: by mail-wm1-x343.google.com with SMTP id y135so8955495wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 02:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=osW9rjE+e6peUtuaNcDyISMJ0h1vI1FUHiMcs3jdGNc=;
 b=GGMDuU/t6Ot5KXu1N3L8+DMaT0soqnK/gj1Hkh3tqCepIJkcvVMP6TR1PyCT2a4lFX
 om9eN/6pEDfIKA5B+yB/bibXDoA0lYT6FJKnOvSO5/6VORKdJVntJEAcDKBnzd5VhIJD
 VaafxsdFyDi6uHklKGZbimw7fEpCaqdZ68735VvvBNEeXpjvyleAKPBwC5tuG570ICp8
 DyZS6U7XXTxwJ2seplIY67xhLKEbeMHJHyg3Xqhp/9VAm7pbNf9uVzI1fIME2kC7Y4lC
 q4h7jV8Si+7bqXTvAVtEWvogP22XNwXGrDlQrPxlv9PeUNAFzZWLX7HAroaboSvVFVQF
 eKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=osW9rjE+e6peUtuaNcDyISMJ0h1vI1FUHiMcs3jdGNc=;
 b=JnXlQLquWcDzp/B5ml7uIXOZdaOIBxzlZNcWBoNbgPFf3bP0TFJVPArQFbUOsVV2Rs
 C3lrTPks1z1OZ+J4QOwzydkDhQWqqxpvXZ1vzECxuz3e7tW50kfYIxwamZ5hTz5RBH90
 +217YqZKsgKnmXdMGxdcqJCnNUXIo96IldYNrTpv5lGNIHQS4vq/FjzzKjfOq4aF3e3B
 leOvV1rQq8TB7TFE+tnOaWJh1ZZS6FfKsuldNrTjHE6MEr8v7cnPhmOC4NnsW0kiXEv1
 VRqsmMl25urH0qMhHN/js20qSgIb9bF9qFgABGeLRpFXHc6YZaJkzl5UbEbDMVsQOKRA
 TPpg==
X-Gm-Message-State: APjAAAU5FBW1H1rKII3gykYM1II6MTASySmk9nysBAYD+VwaMut5ywZq
 es4LddAHtwVy2HqFWhOrVY0AaA==
X-Google-Smtp-Source: APXvYqx8fAlFUXm6NdBEdEQJEpAeQwMxfq7Og9Xu8MteeVJOvdC36RxUcWR+rt1YZYBkyPth6eAeAA==
X-Received: by 2002:a1c:5408:: with SMTP id i8mr2324548wmb.149.1570784884349; 
 Fri, 11 Oct 2019 02:08:04 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:89d9:ced7:2b7a:29ff])
 by smtp.gmail.com with ESMTPSA id e18sm11482346wrv.63.2019.10.11.02.08.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 11 Oct 2019 02:08:03 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH] crypto: arm - use Kconfig based compiler checks for crypto
 opcodes
Date: Fri, 11 Oct 2019 11:08:00 +0200
Message-Id: <20191011090800.29386-1-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_020808_698246_5738BC08 
X-CRM114-Status: GOOD (  12.36  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arnd@arndb.de, herbert@gondor.apana.org.au,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of allowing the Crypto Extensions algorithms to be selected when
using a toolchain that does not support them, and complain about it at
build time, use the information we have about the compiler to prevent
them from being selected in the first place. Users that are stuck with
a GCC version <4.8 are unlikely to care about these routines anyway, and
it cleans up the Makefile considerably.

While at it, add explicit 'armv8-a' CPU specifiers to the code that uses
the 'crypto-neon-fp-armv8' FPU specifier so we don't regress Clang, which
will complain about this in version 10 and later.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm/crypto/Kconfig             | 14 +++++++------
 arch/arm/crypto/Makefile            | 32 ++++++-----------------------
 arch/arm/crypto/aes-ce-core.S       |  1 +
 arch/arm/crypto/crct10dif-ce-core.S |  2 +-
 arch/arm/crypto/ghash-ce-core.S     |  1 +
 arch/arm/crypto/sha1-ce-core.S      |  1 +
 arch/arm/crypto/sha2-ce-core.S      |  1 +
 7 files changed, 19 insertions(+), 33 deletions(-)

diff --git a/arch/arm/crypto/Kconfig b/arch/arm/crypto/Kconfig
index a618f3e65822..562e48ee54cd 100644
--- a/arch/arm/crypto/Kconfig
+++ b/arch/arm/crypto/Kconfig
@@ -30,7 +30,7 @@ config CRYPTO_SHA1_ARM_NEON
 
 config CRYPTO_SHA1_ARM_CE
 	tristate "SHA1 digest algorithm (ARM v8 Crypto Extensions)"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
 	select CRYPTO_SHA1_ARM
 	select CRYPTO_HASH
 	help
@@ -39,7 +39,7 @@ config CRYPTO_SHA1_ARM_CE
 
 config CRYPTO_SHA2_ARM_CE
 	tristate "SHA-224/256 digest algorithm (ARM v8 Crypto Extensions)"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
 	select CRYPTO_SHA256_ARM
 	select CRYPTO_HASH
 	help
@@ -96,7 +96,7 @@ config CRYPTO_AES_ARM_BS
 
 config CRYPTO_AES_ARM_CE
 	tristate "Accelerated AES using ARMv8 Crypto Extensions"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
 	select CRYPTO_BLKCIPHER
 	select CRYPTO_SIMD
 	help
@@ -105,7 +105,7 @@ config CRYPTO_AES_ARM_CE
 
 config CRYPTO_GHASH_ARM_CE
 	tristate "PMULL-accelerated GHASH using NEON/ARMv8 Crypto Extensions"
-	depends on KERNEL_MODE_NEON
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
 	select CRYPTO_HASH
 	select CRYPTO_CRYPTD
 	select CRYPTO_GF128MUL
@@ -117,12 +117,14 @@ config CRYPTO_GHASH_ARM_CE
 
 config CRYPTO_CRCT10DIF_ARM_CE
 	tristate "CRCT10DIF digest algorithm using PMULL instructions"
-	depends on KERNEL_MODE_NEON && CRC_T10DIF
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+	depends on CRC_T10DIF
 	select CRYPTO_HASH
 
 config CRYPTO_CRC32_ARM_CE
 	tristate "CRC32(C) digest algorithm using CRC and/or PMULL instructions"
-	depends on KERNEL_MODE_NEON && CRC32
+	depends on KERNEL_MODE_NEON && (CC_IS_CLANG || GCC_VERSION >= 40800)
+	depends on CRC32
 	select CRYPTO_HASH
 
 config CRYPTO_CHACHA20_NEON
diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index a432bc8bb3eb..01d2eabc016a 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -14,32 +14,12 @@ obj-$(CONFIG_CRYPTO_POLY1305_ARM) += poly1305-arm.o
 obj-$(CONFIG_CRYPTO_NHPOLY1305_NEON) += nhpoly1305-neon.o
 obj-$(CONFIG_CRYPTO_LIB_CURVE25519_NEON) += libcurve25519-neon.o
 
-ce-obj-$(CONFIG_CRYPTO_AES_ARM_CE) += aes-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_SHA1_ARM_CE) += sha1-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_SHA2_ARM_CE) += sha2-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_GHASH_ARM_CE) += ghash-arm-ce.o
-ce-obj-$(CONFIG_CRYPTO_CRCT10DIF_ARM_CE) += crct10dif-arm-ce.o
-crc-obj-$(CONFIG_CRYPTO_CRC32_ARM_CE) += crc32-arm-ce.o
-
-ifneq ($(crc-obj-y)$(crc-obj-m),)
-ifeq ($(call as-instr,.arch armv8-a\n.arch_extension crc,y,n),y)
-ce-obj-y += $(crc-obj-y)
-ce-obj-m += $(crc-obj-m)
-else
-$(warning These CRC Extensions modules need binutils 2.23 or higher)
-$(warning $(crc-obj-y) $(crc-obj-m))
-endif
-endif
-
-ifneq ($(ce-obj-y)$(ce-obj-m),)
-ifeq ($(call as-instr,.fpu crypto-neon-fp-armv8,y,n),y)
-obj-y += $(ce-obj-y)
-obj-m += $(ce-obj-m)
-else
-$(warning These ARMv8 Crypto Extensions modules need binutils 2.23 or higher)
-$(warning $(ce-obj-y) $(ce-obj-m))
-endif
-endif
+obj-$(CONFIG_CRYPTO_AES_ARM_CE) += aes-arm-ce.o
+obj-$(CONFIG_CRYPTO_SHA1_ARM_CE) += sha1-arm-ce.o
+obj-$(CONFIG_CRYPTO_SHA2_ARM_CE) += sha2-arm-ce.o
+obj-$(CONFIG_CRYPTO_GHASH_ARM_CE) += ghash-arm-ce.o
+obj-$(CONFIG_CRYPTO_CRCT10DIF_ARM_CE) += crct10dif-arm-ce.o
+obj-$(CONFIG_CRYPTO_CRC32_ARM_CE) += crc32-arm-ce.o
 
 aes-arm-y	:= aes-cipher-core.o aes-cipher-glue.o
 aes-arm-bs-y	:= aes-neonbs-core.o aes-neonbs-glue.o
diff --git a/arch/arm/crypto/aes-ce-core.S b/arch/arm/crypto/aes-ce-core.S
index b978cdf133af..4d1707388d94 100644
--- a/arch/arm/crypto/aes-ce-core.S
+++ b/arch/arm/crypto/aes-ce-core.S
@@ -9,6 +9,7 @@
 #include <asm/assembler.h>
 
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 	.align		3
 
diff --git a/arch/arm/crypto/crct10dif-ce-core.S b/arch/arm/crypto/crct10dif-ce-core.S
index 86be258a803f..46c02c518a30 100644
--- a/arch/arm/crypto/crct10dif-ce-core.S
+++ b/arch/arm/crypto/crct10dif-ce-core.S
@@ -72,7 +72,7 @@
 #endif
 
 	.text
-	.arch		armv7-a
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 
 	init_crc	.req	r0
diff --git a/arch/arm/crypto/ghash-ce-core.S b/arch/arm/crypto/ghash-ce-core.S
index c47fe81abcb0..534c9647726d 100644
--- a/arch/arm/crypto/ghash-ce-core.S
+++ b/arch/arm/crypto/ghash-ce-core.S
@@ -88,6 +88,7 @@
 	T3_H		.req	d17
 
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 
 	.macro		__pmull_p64, rd, rn, rm, b1, b2, b3, b4
diff --git a/arch/arm/crypto/sha1-ce-core.S b/arch/arm/crypto/sha1-ce-core.S
index 49a74a441aec..8a702e051738 100644
--- a/arch/arm/crypto/sha1-ce-core.S
+++ b/arch/arm/crypto/sha1-ce-core.S
@@ -10,6 +10,7 @@
 #include <asm/assembler.h>
 
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 
 	k0		.req	q0
diff --git a/arch/arm/crypto/sha2-ce-core.S b/arch/arm/crypto/sha2-ce-core.S
index 4ad517577e23..b6369d2440a1 100644
--- a/arch/arm/crypto/sha2-ce-core.S
+++ b/arch/arm/crypto/sha2-ce-core.S
@@ -10,6 +10,7 @@
 #include <asm/assembler.h>
 
 	.text
+	.arch		armv8-a
 	.fpu		crypto-neon-fp-armv8
 
 	k0		.req	q7
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
