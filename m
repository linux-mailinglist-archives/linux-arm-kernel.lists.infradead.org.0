Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CD7BE229
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:15:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Fggy79YsgAyRyEn0xNN9qpIM84wg9TTU39OD9sqqLw=; b=kcQfUrCW+jpC9s
	ufxb3xIFEDTR4REkR3ONJOp9ULaFn0+/BGuJZ745zZEvdpSkSqGdw27JReGiWDobvKapYdXEZKx3g
	Ml/TDqULACHPlBZl1z2mm4xnHR/j2yL2qZbJqoAvVkhU0x0rBj7c9BSb6HiviT3t6Xb5ijgJARlSz
	25YQdbzP4FIvzsi/cdm0D0Yjf2XLfrcch3ObbB5y3IePGmwMozEH0OWxBhAoZqQPSUcyEi3yZ76kP
	FF9TTygmoAxo6w6N6JSwCW5BFbJYfVIMwC/gXaQaZ8/2h7DoIiTquzTI0hrrN6yFYyoeQxUjA9Yy1
	uw6F+ujLlFE8TKlHubZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9wn-0004QT-Aj; Wed, 25 Sep 2019 16:15:21 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vK-0003sT-OZ
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:13:52 +0000
Received: by mail-wm1-x341.google.com with SMTP id 5so6425923wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D96R9BcQ8eKJUV7xjET5CNTgwensabrJ4To3CfkaNW8=;
 b=s3m7b9naLnNHrD0f/3+dV9tT2F26ZviX7fM8ksVZppWW7QbSmlRyhtUnKmysWyycxL
 QRgbfaz9jdwloFQ0zmVeGl860ldSIqTCS24yRKEnUgkxsXZQBieWx7+RsIyOabP5l1NI
 CaLze6rOX7Ks1YC8g2XOeNtTS5/IG33f917vYpdsKsKh+XoLQsYogu3bdNXE8TKiSMoO
 lVMRxjAD1pES7Xjw4dmUla/yurD8Lb3HymYsZJKnl29MJ9Ye7dH//ulN/TgabxNdsScb
 YMXMeYP5mQpbr4owmS5HBlq8lFvmKyx5dR9AUIJbus4U0FMeHDjZ1RVoAnMfdwEKJ7H9
 JNOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D96R9BcQ8eKJUV7xjET5CNTgwensabrJ4To3CfkaNW8=;
 b=rsLUiIJcC7BNEu5oaDlIzpgq7I4tbiuzDzOqeRM4Y8aQ51sYK5CfP85cL1quVgaaQB
 Asea6Z1rRcTUV3TH90zEuP5lO2jnUqks+Ed8/UQjDdVZRFMlk7+QIdnNug5M54XgGwJt
 6XGF1jB6aGW0tZWcwLHwigF44oIip6b6ei8Nwt/xhKsmclhT4B8ZfSzPMtOesqb7k17F
 UAWaeXbMlw84xHkJuOyv6bPVO5dg6bIusOfQclxqHS92EIAn4ChCOWeeV+wWWZvRICgM
 8XpE9N6ty77KdKmyYV9jJErqkyjBs8o/DlW9+gjDlSzLwcYaj76q/+QdFQUduzO3mKME
 Feng==
X-Gm-Message-State: APjAAAVzQPq9P6LGWdcDqbrKhBrlorEJq/ur0C4Lx5ktz1OLO3kzQI7D
 P0VmMpuwrPdCqeoba5060ZBypQ==
X-Google-Smtp-Source: APXvYqw7KfClP8SL65AqCCS1/nALL/cUk8vlg2o2VxH4LDsP9p1MBordH+gxH4Q/8d+71ltDn1xJjA==
X-Received: by 2002:a1c:f602:: with SMTP id w2mr8378409wmc.145.1569428029595; 
 Wed, 25 Sep 2019 09:13:49 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.13.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:13:48 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 02/18] crypto: x86/poly1305 - implement .update_from_sg
 method
Date: Wed, 25 Sep 2019 18:12:39 +0200
Message-Id: <20190925161255.1871-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091350_799214_ABC75DE4 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

In order to reduce the number of invocations of the RFC7539 template
into the Poly1305 driver, implement the new internal .update_from_sg
method that allows the driver to amortize the cost of FPU preserve/
restore sequences over a larger chunk of input.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 arch/x86/crypto/poly1305_glue.c | 54 ++++++++++++++++----
 1 file changed, 43 insertions(+), 11 deletions(-)

diff --git a/arch/x86/crypto/poly1305_glue.c b/arch/x86/crypto/poly1305_glue.c
index 4a1c05dce950..f2afaa8e23c2 100644
--- a/arch/x86/crypto/poly1305_glue.c
+++ b/arch/x86/crypto/poly1305_glue.c
@@ -115,18 +115,11 @@ static unsigned int poly1305_simd_blocks(struct poly1305_desc_ctx *dctx,
 	return srclen;
 }
 
-static int poly1305_simd_update(struct shash_desc *desc,
-				const u8 *src, unsigned int srclen)
+static void poly1305_simd_do_update(struct shash_desc *desc,
+				    const u8 *src, unsigned int srclen)
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
@@ -147,12 +140,50 @@ static int poly1305_simd_update(struct shash_desc *desc,
 		srclen = bytes;
 	}
 
-	kernel_fpu_end();
-
 	if (unlikely(srclen)) {
 		dctx->buflen = srclen;
 		memcpy(dctx->buf, src, srclen);
 	}
+}
+
+static int poly1305_simd_update(struct shash_desc *desc,
+				const u8 *src, unsigned int srclen)
+{
+	/* kernel_fpu_begin/end is costly, use fallback for small updates */
+	if (srclen <= 288 || !crypto_simd_usable())
+		return crypto_poly1305_update(desc, src, srclen);
+
+	kernel_fpu_begin();
+	poly1305_simd_do_update(desc, src, srclen);
+	kernel_fpu_end();
+
+	return 0;
+}
+
+static int poly1305_simd_update_from_sg(struct shash_desc *desc,
+					struct scatterlist *sg,
+					unsigned int srclen,
+					int flags)
+{
+	bool do_simd = crypto_simd_usable() && srclen > 288;
+	struct crypto_hash_walk walk;
+	int nbytes;
+
+	if (do_simd) {
+		kernel_fpu_begin();
+		flags &= ~CRYPTO_TFM_REQ_MAY_SLEEP;
+	}
+
+	for (nbytes = crypto_shash_walk_sg(desc, sg, srclen, &walk, flags);
+	     nbytes > 0;
+	     nbytes = crypto_hash_walk_done(&walk, 0)) {
+		if (do_simd)
+			poly1305_simd_do_update(desc, walk.data, nbytes);
+		else
+			crypto_poly1305_update(desc, walk.data, nbytes);
+	}
+	if (do_simd)
+		kernel_fpu_end();
 
 	return 0;
 }
@@ -161,6 +192,7 @@ static struct shash_alg alg = {
 	.digestsize	= POLY1305_DIGEST_SIZE,
 	.init		= poly1305_simd_init,
 	.update		= poly1305_simd_update,
+	.update_from_sg	= poly1305_simd_update_from_sg,
 	.final		= crypto_poly1305_final,
 	.descsize	= sizeof(struct poly1305_simd_desc_ctx),
 	.base		= {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
