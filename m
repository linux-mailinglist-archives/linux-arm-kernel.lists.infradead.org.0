Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3328C17D7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Sep 2019 19:40:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=D/js19jsjrBUeKAmBOyCFVMPvCgNKzw0R99pkBI60bs=; b=IW3x4715RTWW92wTJq7w8Ob6uh
	72XED7DsyHWgZK+eNI6Zy1HN2QJ5jMsNq7twY6GVhTTjHPXonG2Sv6IeGNWbBmIS1NhefLIQ/UCxE
	njIEfVldYikw02BYpGuxIDI2mk3TY9FFMYuTtBssllgJU+tGuiBCwMpekwZgQ6qgak7qkkQfGu4ww
	+rtK1QHW5NsRfYXGyW35hbHq0kPAiNfdzHkEond71lF1MHJjrCT0mINqXeY9OFQs+lUwiRHfrltwp
	ZVfhsZHx4jyfrVZBsJaW6onPwQbz4LEfzQSi+mdeKkD13kloHBvy4bbVF5U+Jz8oaNS5CAU6gNfmC
	EyHBXLtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEdBZ-000320-Nd; Sun, 29 Sep 2019 17:40:41 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEd9z-00010R-TA
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Sep 2019 17:39:05 +0000
Received: by mail-wm1-x342.google.com with SMTP id y135so12369558wmc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 29 Sep 2019 10:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=p4KKhW/ILVWczJ+i+Rd5vVeZAxxdEodk6kG2Ndh76c8=;
 b=ZEyCF1H/kwGHAmCX7wDAnQK5bIXTg6qZpWC74qnqY63TcIy3pIPkbxc2sTcCg8luZz
 q6N80FqXhB6heMzg+6M6s1ZbjhQiwAwKiwJl5kzEEEf1cYK4WUbFQw0Y8Uj+g2yzNTFv
 9fIVOzRuCjBrBFS7wUp7S242oOoi/7zLsDBJXmprJa01APm+Y1j9gH7WuPc3Sv9tpTmn
 gp/wOHtBOLF70hK4Ck/P8+gHxV0M45lPFCwc8RZ69k6RaE5dcvL+kHTgC1pnah7DR9qV
 1R25ncK0DlZangay+d/xk81n4/XgAm9mJJk2QNmAn+QVgPO/Snle8BXiIFez++yRTcwv
 i5DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=p4KKhW/ILVWczJ+i+Rd5vVeZAxxdEodk6kG2Ndh76c8=;
 b=KQyqeS7bwT8KUrzcr960Y9LWkn9tyoNRnTqnql+igDPqhDQlKnPSIe8cXHvA30S7dQ
 epfnZ+mVfjHBG+xQDtp3T2utepMhYLIU1Yp/AnfQVwfRLJth+waslvmjUT0BS2HMzWbE
 5vB94xYcKLfWfmex3AwCtiqqh65By0QNZ1Imj5ZwmPLlSRsmvAmkY4GyY63lJ/2heR83
 quakkAl5J5mmTNCGL+ipHv5UAKRY1PWeUByn6XtkZlHczqvuO7yIxooEUEqKhPynmCRf
 xA9WuGLBLe9V/QaNdt8+lPsbJzTRnyhY+mx+wi7iBdu6MPXQJEpbczO4+zMIFfG+JwyH
 PVAA==
X-Gm-Message-State: APjAAAX2EEdsLWLaw4KWUtybl1hNDmu6ZQbVn6J39mGmHcrdX7jWUyMJ
 WejEugY2TlwPM98x+XQ5b/3mMg==
X-Google-Smtp-Source: APXvYqzVdpPLvIDo6NIyGdTbXVnTjBD0y591JV31mPDmv2K9ZBqqpbGFCqJX0x7FjrJ/UiHpEQSckg==
X-Received: by 2002:a05:600c:290c:: with SMTP id
 i12mr14943151wmd.77.1569778742225; 
 Sun, 29 Sep 2019 10:39:02 -0700 (PDT)
Received: from e123331-lin.nice.arm.com
 (bar06-5-82-246-156-241.fbx.proxad.net. [82.246.156.241])
 by smtp.gmail.com with ESMTPSA id q192sm17339779wme.23.2019.09.29.10.39.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 29 Sep 2019 10:39:01 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 03/20] crypto: arm64/chacha - expose arm64 ChaCha routine
 as library function
Date: Sun, 29 Sep 2019 19:38:33 +0200
Message-Id: <20190929173850.26055-4-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
References: <20190929173850.26055-1-ard.biesheuvel@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190929_103903_960517_2F65964E 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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
 arch/arm64/crypto/Kconfig            |  1 +
 arch/arm64/crypto/chacha-neon-glue.c | 12 ++++++++++++
 2 files changed, 13 insertions(+)

diff --git a/arch/arm64/crypto/Kconfig b/arch/arm64/crypto/Kconfig
index 4922c4451e7c..09aa69ccc792 100644
--- a/arch/arm64/crypto/Kconfig
+++ b/arch/arm64/crypto/Kconfig
@@ -104,6 +104,7 @@ config CRYPTO_CHACHA20_NEON
 	depends on KERNEL_MODE_NEON
 	select CRYPTO_BLKCIPHER
 	select CRYPTO_CHACHA20
+	select CRYPTO_ARCH_HAVE_LIB_CHACHA
 
 config CRYPTO_NHPOLY1305_NEON
 	tristate "NHPoly1305 hash function using NEON instructions (for Adiantum)"
diff --git a/arch/arm64/crypto/chacha-neon-glue.c b/arch/arm64/crypto/chacha-neon-glue.c
index d4cc61bfe79d..26c12b19a4ad 100644
--- a/arch/arm64/crypto/chacha-neon-glue.c
+++ b/arch/arm64/crypto/chacha-neon-glue.c
@@ -59,6 +59,18 @@ static void chacha_doneon(u32 *state, u8 *dst, const u8 *src,
 	}
 }
 
+void chacha_crypt(u32 *state, u8 *dst, const u8 *src, unsigned int bytes,
+		  int nrounds)
+{
+	if (bytes <= CHACHA_BLOCK_SIZE || !crypto_simd_usable())
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
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
