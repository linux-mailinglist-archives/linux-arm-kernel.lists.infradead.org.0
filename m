Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06494503C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:39:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w5EvgQU1w0e1NE515wlVneT1d5xbj8EumwrZ9JpNbTY=; b=Q0sZp2gIb7Xa4R
	Vol9BxU3iRX+J3YUyJt3YkSdRP8K7aAtacMsPbM+r9CfaRzy4Hw/40/BHsrT3pYJP32f0BbvhuCSX
	ScT7JXgfS+nhfEUzRJBdrrpzehByzMttKVgbzsbtbxYGjHTRPLWLKVZS/qGBeHAZQnjrlQ2PpfaFi
	7Zs61TDfcrbM9qnThGLjfi0bl2Y8eL6iJe2p9ZS3l3A6ks7q89NQNrIjemS2y4DMxNWAkxB/zT4dD
	+IHExPYaoMQbaAe8Wu+ySz3lwL+w2ccqd5H3I/iTwNqgTqb/ybN6LtDNciXe3361UG8BsQ64XZpnC
	PI0TaCn98zjmj5X7Bc8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJZj-0007xV-1R; Mon, 24 Jun 2019 07:39:39 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJYe-0007Do-TP
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:38:34 +0000
Received: by mail-wm1-x333.google.com with SMTP id c66so11739235wmf.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:38:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uGyMTMnEnmfpuuNXf+kr/+c5q+YqlmYZacjCBN2vQcA=;
 b=ks4afDpGmz7AEkmqzocmxBMmnx4ccAywUGq3s5K8VRlJjzKlkaewMwT33lNFF1f3p0
 2znOrZoDv3oJ0Ct1oGVhVYE3CGSvuDS/S1jCF9Gj246Ijw3cXplRi35OX/N7KFxz1Ids
 N6ED6uwdR4RRSupXQJ8gcJXZi7l4KMdKfkyciMwyhiES+aIR0AubgDtqzPu0e7tal/4k
 w6MesfjMAqohVWqugFBMLNYv1IYAg9kJ8ui9UNprwcn124bSqcObf9Wwx4jpJnySOUGo
 3peHcr3FrPnhhwFIZbbHeegFLFzqcups0pdW0OBkyi/qdzRAr/l8FId77u+HuVsfd7yC
 PQig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uGyMTMnEnmfpuuNXf+kr/+c5q+YqlmYZacjCBN2vQcA=;
 b=uknWr0vDlgNDaJVXijvnt/PaK1btPrscx1gLNBddjM4fBFbo8sz65QqGED1vbzYYyz
 fE0ijQx4O1oNWETfnEjkgTLjfks6nkDsbHdAPDLazvG9xGXFdfCym0fPmWYHBk6hA3hC
 dIvHHhkpQaWWfZNFaXO2Dwcr5zxxjDrvd3vVPEUCmDLUxKJocwZDpffHuNGpiFPeItH8
 f2wqBNQQwLYqDhRhJE8V/mCO6fx4bLHaRTzOuCm/0qamWdZs2Ax4C0hPmQCQuM+1bC75
 0CEqFLs3uynw2QPqOBCFW0VDohaHD+gjt/k/ISAV6xfofogGRYkAwx8JvdVhgg4BaIng
 VncA==
X-Gm-Message-State: APjAAAVyMx9/BbaQg4kdhFxOdKB/48NK2LoL0l1a/LMmLBc5eHKraWjo
 hTyYYJWO4Y2sGn0Kq4WIyvR2zjv3PwoyZw==
X-Google-Smtp-Source: APXvYqyQemsHDH1snkHDlRmvBVHNkTuLaGqWRu7VAdW1Q7D82Zp29FgrPEIWR+QsWb5D+pgdvJ9Etw==
X-Received: by 2002:a1c:7d02:: with SMTP id y2mr14631078wmc.15.1561361911279; 
 Mon, 24 Jun 2019 00:38:31 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:4866:7cdc:a930:8455])
 by smtp.gmail.com with ESMTPSA id 203sm7419280wmc.30.2019.06.24.00.38.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:38:30 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 2/6] crypto: aegis - drop empty TFM init/exit routines
Date: Mon, 24 Jun 2019 09:38:14 +0200
Message-Id: <20190624073818.29296-3-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
References: <20190624073818.29296-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003833_067739_39940D46 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:333 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Herbert Xu <herbert@gondor.apana.org.au>, Eric Biggers <ebiggers@google.com>,
 Steve Capper <steve.capper@arm.com>, Ondrej Mosnacek <omosnace@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TFM init/exit routines are optional, so no need to provide empty ones.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/aegis128.c  | 11 -----------
 crypto/aegis128l.c | 11 -----------
 crypto/aegis256.c  | 11 -----------
 3 files changed, 33 deletions(-)

diff --git a/crypto/aegis128.c b/crypto/aegis128.c
index 125e11246990..4f8f1cdef129 100644
--- a/crypto/aegis128.c
+++ b/crypto/aegis128.c
@@ -403,22 +403,11 @@ static int crypto_aegis128_decrypt(struct aead_request *req)
 	return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
 }
 
-static int crypto_aegis128_init_tfm(struct crypto_aead *tfm)
-{
-	return 0;
-}
-
-static void crypto_aegis128_exit_tfm(struct crypto_aead *tfm)
-{
-}
-
 static struct aead_alg crypto_aegis128_alg = {
 	.setkey = crypto_aegis128_setkey,
 	.setauthsize = crypto_aegis128_setauthsize,
 	.encrypt = crypto_aegis128_encrypt,
 	.decrypt = crypto_aegis128_decrypt,
-	.init = crypto_aegis128_init_tfm,
-	.exit = crypto_aegis128_exit_tfm,
 
 	.ivsize = AEGIS128_NONCE_SIZE,
 	.maxauthsize = AEGIS128_MAX_AUTH_SIZE,
diff --git a/crypto/aegis128l.c b/crypto/aegis128l.c
index 9bca3d619a22..ef5bc2297a2c 100644
--- a/crypto/aegis128l.c
+++ b/crypto/aegis128l.c
@@ -467,22 +467,11 @@ static int crypto_aegis128l_decrypt(struct aead_request *req)
 	return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
 }
 
-static int crypto_aegis128l_init_tfm(struct crypto_aead *tfm)
-{
-	return 0;
-}
-
-static void crypto_aegis128l_exit_tfm(struct crypto_aead *tfm)
-{
-}
-
 static struct aead_alg crypto_aegis128l_alg = {
 	.setkey = crypto_aegis128l_setkey,
 	.setauthsize = crypto_aegis128l_setauthsize,
 	.encrypt = crypto_aegis128l_encrypt,
 	.decrypt = crypto_aegis128l_decrypt,
-	.init = crypto_aegis128l_init_tfm,
-	.exit = crypto_aegis128l_exit_tfm,
 
 	.ivsize = AEGIS128L_NONCE_SIZE,
 	.maxauthsize = AEGIS128L_MAX_AUTH_SIZE,
diff --git a/crypto/aegis256.c b/crypto/aegis256.c
index b47fd39595ad..b824ef4d1248 100644
--- a/crypto/aegis256.c
+++ b/crypto/aegis256.c
@@ -418,22 +418,11 @@ static int crypto_aegis256_decrypt(struct aead_request *req)
 	return crypto_memneq(tag.bytes, zeros, authsize) ? -EBADMSG : 0;
 }
 
-static int crypto_aegis256_init_tfm(struct crypto_aead *tfm)
-{
-	return 0;
-}
-
-static void crypto_aegis256_exit_tfm(struct crypto_aead *tfm)
-{
-}
-
 static struct aead_alg crypto_aegis256_alg = {
 	.setkey = crypto_aegis256_setkey,
 	.setauthsize = crypto_aegis256_setauthsize,
 	.encrypt = crypto_aegis256_encrypt,
 	.decrypt = crypto_aegis256_decrypt,
-	.init = crypto_aegis256_init_tfm,
-	.exit = crypto_aegis256_exit_tfm,
 
 	.ivsize = AEGIS256_NONCE_SIZE,
 	.maxauthsize = AEGIS256_MAX_AUTH_SIZE,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
