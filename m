Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 289AC18456E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:03:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=dcnNVPydpMkj/uHNKTuGIMy3BYIv4fVbWETYpm/pB+M=; b=JPH
	abb4rrNVFacOf0s96T6qNfYIC8JWCL/f5NToTIuW6lDB8Q1WUBHVN3YDYuKNuO09ixxhdJHeWO+CJ
	yrIjrt/EFTBA4VRtd/oJCBxpXgmCZSrDMnqh7g144x6KvYSPuRlTBfG3jT31joTGvQ9Xyq9nM+eyq
	GVi8/G4LBr7cwhezftugMvDfx/zprJrPjuMYmTS1taA2BXn8jkFtmQCWMZRPqKJF0QAkr1wEjjqJq
	iRwAu5YOVq3lItdIlFqgO8HHdul3KW+y9pMechReSxbAHhV61L2anA2IbPKmr7gtPU/4RWjAls8Xm
	Xcj4FtFZNssUBtTLca4IDltMBgSV2xA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCi5y-0000pP-3V; Fri, 13 Mar 2020 11:03:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCi5n-0000oc-QI
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:03:05 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id 94A0668C4E; Fri, 13 Mar 2020 12:02:58 +0100 (CET)
From: Torsten Duwe <duwe@lst.de>
To: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Subject: [Patch][Fix] crypto: arm{,64} neon: memzero_explicit aes-cbc key
Message-Id: <20200313110258.94A0668C4E@verein.lst.de>
Date: Fri, 13 Mar 2020 12:02:58 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_040303_995629_A97E45C7 
X-CRM114-Status: UNSURE (   5.18  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Torsten Duwe <duwe@suse.de>

At function exit, do not leave the expanded key in the rk struct
which got allocated on the stack.

Signed-off-by: Torsten Duwe <duwe@suse.de>
---
Another small fix from our FIPS evaluation. I hope you don't mind I merged
arm32 and arm64 into one patch -- this is really simple.
--- a/arch/arm/crypto/aes-neonbs-glue.c
+++ b/arch/arm/crypto/aes-neonbs-glue.c
@@ -138,6 +138,7 @@ static int aesbs_cbc_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
 	kernel_neon_begin();
 	aesbs_convert_key(ctx->key.rk, rk.key_enc, ctx->key.rounds);
 	kernel_neon_end();
+	memzero_explicit(&rk, sizeof(rk));
 
 	return crypto_cipher_setkey(ctx->enc_tfm, in_key, key_len);
 }
diff --git a/arch/arm64/crypto/aes-neonbs-glue.c b/arch/arm64/crypto/aes-neonbs-glue.c
index e3e27349a9fe..c0b980503643 100644
--- a/arch/arm64/crypto/aes-neonbs-glue.c
+++ b/arch/arm64/crypto/aes-neonbs-glue.c
@@ -151,6 +151,7 @@ static int aesbs_cbc_setkey(struct crypto_skcipher *tfm, const u8 *in_key,
 	kernel_neon_begin();
 	aesbs_convert_key(ctx->key.rk, rk.key_enc, ctx->key.rounds);
 	kernel_neon_end();
+	memzero_explicit(&rk, sizeof(rk));
 
 	return 0;
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
