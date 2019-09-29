Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2290C17AB
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=V6KhidRqyDtzuIXcfqITlUPW5Yyb0BgaCJb2i6pZv7o=; b=aYpfvc8/MFZKikBISMG+eWKoim
	GRjQbG2bqW7/yklEQ2ZpvF4HjachQT+kcktJcjurNx+k6sopbVGAEcUu9u8Op4GjEaR+D/9A55iSu
	bH19Perfor8ZYjw9G10t9V/n5xQ9tC1hmmhMbLD0pa6CJf/U3FZfsMUyrf7FIY+8lz3oSaDO+AvLj
	dKgsFgOWLSyAeGaN8X1DX71xgYONkp/z9sEzIPTofOIQeS8Sr5oVU9+lj8ROxAgCl7GCVvq2YRAOn
	RmiGvEyW2tICP7XSx8zAAoypb9TsLIaG9aZBfqJ6V0H7rOuVnuuODqPyQRp/Sbg/CIDF2Xo5+8pbx
	FXhGPRRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdBB-0001XE-LG; Sun, 29 Sep 2019 17:40:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEd9x-000103-LO
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:39:03 +0000
Received: by mail-wm1-x343.google.com with SMTP id r19so10756419wmh.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cBp6PywBGrrDFi1QW6lqAmfKN7mIcjSAmZn0xXGIqw0=;
 b=n6531c2xJzxbzbpw5U49hgV3g6MsO+gc/8vVog7Gk/AshBv1eI7AGcuEOa8NIABXmk
 lPuLy5AW76WWSLz6ca2hgTzcrMdBh2YkCFgEbCjGibtIOukb54o42aLmYcBSIXXsVUXM
 TvwqrjqSCgpVcGh9uYoBtC4OAQAmSa52qt0SlqcRtajyP2qYOVix2LBCeTQ7bCLJ6cCq
 ZO8R3ftIBa8N6wEJMRPfdRP9XKIP1KL/hFYcF1XfS00Ruqi1PISYd+pb20sd1zXmWImL
 jPdcJFn70r51ypjEzZx00UVhbAvRqcJ6TvukiAXtOxLjuGYoa93VzropMRuPvWu5+xZB
 S+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cBp6PywBGrrDFi1QW6lqAmfKN7mIcjSAmZn0xXGIqw0=;
 b=A9amuzlV2PUHy82D71K92MUceg3XGgbO0hAjxQs8BK6TRyuaxVtJipaLBhlENc7IIb
 ilkorBrF4aB8AcyoukMxSAs1YXN19U6g/9x0xZPpX5kyejKMDHchnZgMKROER1GqGxgV
 TM9kb/v4vsfJ5PrNg1sAj7xGyul4NXINv2HudsZ9GvtQQrOhZlVaLUlM2T3csHRIDUFu
 q0C0RQKp+l461vrWhngMXjfGol6Mnr0wr3aQMGN4xGqaFAHo1ed2z03uGvt+5UeIOWjo
 mw87Mu/M4DyMqlNNtNWS9VNjY1oiE47IkAU4kEQ4+vxR/DMSRNaNFri7atn95AVdn0/1
 Z5pw==
X-Gm-Message-State: APjAAAWvxIA2O9QgDUNZ8Qsxj66/x7WAN2OpGNY6IW6licXdfyLsYSbe
 SYAXMpY8rDuou6hJxX9lIqYU/A==
X-Google-Smtp-Source: APXvYqztbHjeSBUe3gLQ7J81/5r0fdMHWBfHWrlHuH9tmjvuMQ7NBuTNEvL5JUg1niBGtWoyjJfHiw==
X-Received: by 2002:a7b:c0d4:: with SMTP id s20mr15045988wmh.101.1569778740451; 
 Sun, 29 Sep 2019 10:39:00 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.38.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:38:59 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 02/20] crypto: x86/chacha - expose SIMD ChaCha routine as
 library function
Date: Sun, 29 Sep 2019 19:38:32 +0200
Message-Id: <20190929173850.26055-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103901_696970_CB32B751 
X-CRM114-Status: GOOD (  13.42  )
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

Wire the existing x86 SIMD ChaCha code into the new ChaCha library
interface.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/x86/crypto/chacha_glue.c | 14 ++++++++++++++
 crypto/Kconfig                |  1 +
 include/crypto/chacha.h       |  9 +++++++++
 3 files changed, 24 insertions(+)

diff --git a/arch/x86/crypto/chacha_glue.c b/arch/x86/crypto/chacha_glue.c
index bc62daa8dafd..1ea31d77fa00 100644
--- a/arch/x86/crypto/chacha_glue.c
+++ b/arch/x86/crypto/chacha_glue.c
@@ -123,6 +123,20 @@ static void chacha_dosimd(u32 *state, u8 *dst, const u8 *src,
 	}
 }
 
+void chacha_crypt(u32 *state, u8 *dst, const u8 *src, unsigned int bytes,
+		  int nrounds)
+{
+	state = PTR_ALIGN(state, CHACHA_STATE_ALIGN);
+
+	if (bytes <= CHACHA_BLOCK_SIZE || !crypto_simd_usable())
+		return chacha_crypt_generic(state, dst, src, bytes, nrounds);
+
+	kernel_fpu_begin();
+	chacha_dosimd(state, dst, src, bytes, nrounds);
+	kernel_fpu_end();
+}
+EXPORT_SYMBOL(chacha_crypt);
+
 static int chacha_simd_stream_xor(struct skcipher_walk *walk,
 				  const struct chacha_ctx *ctx, const u8 *iv)
 {
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 5826381aca3a..780d080fc5ec 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -1408,6 +1408,7 @@ config CRYPTO_CHACHA20_X86_64
 	depends on X86 && 64BIT
 	select CRYPTO_BLKCIPHER
 	select CRYPTO_CHACHA20
+	select CRYPTO_ARCH_HAVE_LIB_CHACHA
 	help
 	  SSSE3, AVX2, and AVX-512VL optimized implementations of the ChaCha20,
 	  XChaCha20, and XChaCha12 stream ciphers.
diff --git a/include/crypto/chacha.h b/include/crypto/chacha.h
index c29d8f7d69ed..23747b20d470 100644
--- a/include/crypto/chacha.h
+++ b/include/crypto/chacha.h
@@ -25,6 +25,12 @@
 #define CHACHA_BLOCK_SIZE	64
 #define CHACHAPOLY_IV_SIZE	12
 
+#ifdef CONFIG_X86_64
+#define CHACHA_STATE_WORDS	((CHACHA_BLOCK_SIZE + 12) / sizeof(u32))
+#else
+#define CHACHA_STATE_WORDS	(CHACHA_BLOCK_SIZE / sizeof(u32))
+#endif
+
 /* 192-bit nonce, then 64-bit stream position */
 #define XCHACHA_IV_SIZE		32
 
@@ -57,6 +63,9 @@ static inline void chacha_init_generic(u32 *state, const u32 *key, const u8 *iv)
 
 static inline void chacha_init(u32 *state, const u32 *key, const u8 *iv)
 {
+	if (IS_ENABLED(CONFIG_X86_64))
+		state = PTR_ALIGN(state, 16);
+
 	chacha_init_generic(state, key, iv);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
