Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DCBC17F6
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:41:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=scrzrfru85JzXKE9c0skNDmzIqvZy0wtMB9is/yBM4g=; b=V1py/OIJuEYlVbgTA7hz8fYN2K
	OIfYcZjUxqP8ueOG3l7bStvnqvfZV22EiYkQwlCjE5r4SE9l9twK48iTrVnuANz8F3LEBiWPI0kvY
	kxy8wKqgWzwpfGX/OtSZD0fHvOFJqSz11WsOfKl8ednnz7VLMXGoTyiP48PVUuvAvaobnsh+HC/qP
	ky+XWNZ4z9hIM2J2WRw8q5r1Suu7E7sbsnHZ0182YrmKSs6FsMl8D9lroGIGGEP56mm1Klov9gJWQ
	8gJn8rOFub8CV0CgbW4bsnYutwCuGyGZzotU2OJftG0iYnryzxXdK7T5U4cLAFy1/6Uzt7rB2sdFB
	2i/IigAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdBv-0003Ij-Hs; Sun, 29 Sep 2019 17:41:03 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEdA1-00012K-NN
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:39:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id y19so8457122wrd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Db287ko6zQqbNHe2YgcEJlShSLuvRxzkUrp4l5J8zd0=;
 b=STvI54kFXNvpfueHy5Bm5uWEwsHLIz5Wjpn72Y/5A+xbfVWDP9nbIOg0OUQtIasaOk
 D/jYnOeT21TgavJGJfWAZRCg994PVeFRtDo8zyg5ExznQLgy4L0uqiIiURKc/H2mXaLL
 X4sp5Fv3F8dQu5YphyqoWXIhL3oaFX/k8aGswrCaDX0qhxh19BStbK4cgEaaeRPk2lrO
 ZWevdItbYQ6Rco5eucZR4TdaRWwhIP5y4xEup8nLnmUqX//Aqkng64EuXz+oHXrODeKv
 YogqQVQ+P2Bpm0csoWPa5FhkXazJJi7ZZ0NYce/vBfdVIC0nMyXY4eYQybHsSXxXxyJR
 sANw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Db287ko6zQqbNHe2YgcEJlShSLuvRxzkUrp4l5J8zd0=;
 b=Fzrr5q6YxUZuPPM5XI022OjmegDGJGc6LaVewLrwDVR4gaHo7yzqaczxk8qvd8hKAW
 ATELYeux0mAcZ9GpcVvxOiuMfRMsLpas4TGJ/rEj0OJo0jJLJmfT9Mq+gbpgS8OPARS/
 XjH/l9WtWx1UqD0hM6NTBsIo0hLkgdJoOoP4XxAiDjuBxvEXwxSjKKiew+lohhMUr02n
 7U+M34ZLSUCzNB63i4593n0Oo+GdV/LHdPGBRUxx/cfInDf9W0/FjQFtHe8Bb4pq+gvP
 jVjNjOhAe+Dg1AQm8cMwfPWKx66lkRNdipHVHbxVSL1WueIRoAUzXIruwypULN2Ehi5u
 txAA==
X-Gm-Message-State: APjAAAURfG0reqXBiJchKjjZHRpqbK83JXQdptR5Dg87eWsdRcfjLfR4
 ujLgHdWfU8cNRUeHhCWGrlZjeA==
X-Google-Smtp-Source: APXvYqykJ3hVfBYWkhZ9pwlioP+dugWSdXdQ52qcXBMaWaLbW9AGLyWW2Qu/3gtwz1RkBnj9rlcnTg==
X-Received: by 2002:adf:c7cf:: with SMTP id y15mr10662252wrg.54.1569778744018; 
 Sun, 29 Sep 2019 10:39:04 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.39.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:39:03 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 04/20] crypto: arm/chacha - expose ARM ChaCha routine as
 library function
Date: Sun, 29 Sep 2019 19:38:34 +0200
Message-Id: <20190929173850.26055-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103905_775011_1BA8D622 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

Expose the accelerated NEON ChaCha routine directly as a symbol
export so that users of the ChaCha library can use it directly.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/arm/crypto/Kconfig            |  1 +
 arch/arm/crypto/chacha-neon-glue.c | 19 +++++++++++++++++--
 2 files changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/crypto/Kconfig b/arch/arm/crypto/Kconfig
index b24df84a1d7a..70e4d5fe5bdb 100644
--- a/arch/arm/crypto/Kconfig
+++ b/arch/arm/crypto/Kconfig
@@ -130,6 +130,7 @@ config CRYPTO_CHACHA20_NEON
 	depends on KERNEL_MODE_NEON
 	select CRYPTO_BLKCIPHER
 	select CRYPTO_CHACHA20
+	select CRYPTO_ARCH_HAVE_LIB_CHACHA
 
 config CRYPTO_NHPOLY1305_NEON
 	tristate "NEON accelerated NHPoly1305 hash function (for Adiantum)"
diff --git a/arch/arm/crypto/chacha-neon-glue.c b/arch/arm/crypto/chacha-neon-glue.c
index 26576772f18b..1a32c6e5c885 100644
--- a/arch/arm/crypto/chacha-neon-glue.c
+++ b/arch/arm/crypto/chacha-neon-glue.c
@@ -36,6 +36,8 @@ asmlinkage void chacha_4block_xor_neon(const u32 *state, u8 *dst, const u8 *src,
 				       int nrounds);
 asmlinkage void hchacha_block_neon(const u32 *state, u32 *out, int nrounds);
 
+static bool have_neon __ro_after_init;
+
 static void chacha_doneon(u32 *state, u8 *dst, const u8 *src,
 			  unsigned int bytes, int nrounds)
 {
@@ -62,6 +64,18 @@ static void chacha_doneon(u32 *state, u8 *dst, const u8 *src,
 	}
 }
 
+void chacha_crypt(u32 *state, u8 *dst, const u8 *src, unsigned int bytes,
+		  int nrounds)
+{
+	if (!have_neon || bytes <= CHACHA_BLOCK_SIZE || !crypto_simd_usable())
+		return chacha_crypt_generic(state, dst, src, bytes, nrounds);
+
+	kernel_neon_begin();
+	chacha_doneon(state, dst, src, bytes, nrounds);
+	kernel_neon_end();
+}
+EXPORT_SYMBOL(chacha_crypt);
+
 static int chacha_neon_stream_xor(struct skcipher_request *req,
 				  const struct chacha_ctx *ctx, const u8 *iv)
 {
@@ -177,8 +191,9 @@ static struct skcipher_alg algs[] = {
 
 static int __init chacha_simd_mod_init(void)
 {
-	if (!(elf_hwcap & HWCAP_NEON))
-		return -ENODEV;
+	have_neon = (elf_hwcap & HWCAP_NEON);
+	if (!have_neon)
+		return 0;
 
 	return crypto_register_skciphers(algs, ARRAY_SIZE(algs));
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
