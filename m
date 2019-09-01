Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1749A4BF2
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:36:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uUXFPie6zBjUlPeglOPU7KrDhYOru8hX759Vi2BHb7k=; b=pubS/a5e0/DYkZ
	Y4cxOgc0vULJNxzNrhliqZlvAkGxZxW7am9ccAoFuP5VQvod8DIk12i7Qh7r7CUhr7WaQyx0CJU+x
	XFNuk1/X4fHVuqg/apS1PYBPLc3wiGG3KU+enjB1SViPdTRE4Eveckp989cA5g0CI4XTkzV00UUKS
	8DpAYfJnUwUESwFIMAyla/G6rFgL4qF7ovWWlkpt9J9n6349lB4jNvYzHNdjR92+1YpAbFK6ymZHc
	q/ghRN4bexcFevp2+tNUop3Ma+VNMOKuD7eUHrubVNr39tfrLasE6ifp9M0kZZPj5HNaL2NqWlNq5
	IuLSw9Ps0t5k6gpPxlVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4WaJ-0002wf-6L; Sun, 01 Sep 2019 20:36:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WZh-0002Z8-1u
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:35:50 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 7BDFE8535D;
 Sun,  1 Sep 2019 20:35:48 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-36.ams2.redhat.com
 [10.36.116.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4872060606;
 Sun,  1 Sep 2019 20:35:44 +0000 (UTC)
From: Hans de Goede <hdegoede@redhat.com>
To: Herbert Xu <herbert@gondor.apana.org.au>,
 "David S . Miller" <davem@davemloft.net>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H . Peter Anvin" <hpa@zytor.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Russell King <linux@armlinux.org.uk>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>, Atul Gupta <atul.gupta@chelsio.com>
Subject: [PATCH 2/9] crypto: arm64 - Rename functions to avoid conflict with
 crypto/sha256.h
Date: Sun,  1 Sep 2019 22:35:25 +0200
Message-Id: <20190901203532.2615-3-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
References: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Sun, 01 Sep 2019 20:35:48 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_133549_249254_73A5DA15 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-s390@vger.kernel.org, linux-efi@vger.kernel.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Marc Zyngier <marc.zyngier@arm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, Eric Biggers <ebiggers@kernel.org>,
 Hans de Goede <hdegoede@redhat.com>, linux-crypto@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rename static / file-local functions so that they do not conflict with
the functions declared in crypto/sha256.h.

This is a preparation patch for folding crypto/sha256.h into crypto/sha.h.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 arch/arm64/crypto/sha256-glue.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/arch/arm64/crypto/sha256-glue.c b/arch/arm64/crypto/sha256-glue.c
index 04b9d17b0733..e273faca924f 100644
--- a/arch/arm64/crypto/sha256-glue.c
+++ b/arch/arm64/crypto/sha256-glue.c
@@ -30,15 +30,15 @@ EXPORT_SYMBOL(sha256_block_data_order);
 asmlinkage void sha256_block_neon(u32 *digest, const void *data,
 				  unsigned int num_blks);
 
-static int sha256_update(struct shash_desc *desc, const u8 *data,
-			 unsigned int len)
+static int crypto_sha256_arm64_update(struct shash_desc *desc, const u8 *data,
+				      unsigned int len)
 {
 	return sha256_base_do_update(desc, data, len,
 				(sha256_block_fn *)sha256_block_data_order);
 }
 
-static int sha256_finup(struct shash_desc *desc, const u8 *data,
-			unsigned int len, u8 *out)
+static int crypto_sha256_arm64_finup(struct shash_desc *desc, const u8 *data,
+				     unsigned int len, u8 *out)
 {
 	if (len)
 		sha256_base_do_update(desc, data, len,
@@ -49,17 +49,17 @@ static int sha256_finup(struct shash_desc *desc, const u8 *data,
 	return sha256_base_finish(desc, out);
 }
 
-static int sha256_final(struct shash_desc *desc, u8 *out)
+static int crypto_sha256_arm64_final(struct shash_desc *desc, u8 *out)
 {
-	return sha256_finup(desc, NULL, 0, out);
+	return crypto_sha256_arm64_finup(desc, NULL, 0, out);
 }
 
 static struct shash_alg algs[] = { {
 	.digestsize		= SHA256_DIGEST_SIZE,
 	.init			= sha256_base_init,
-	.update			= sha256_update,
-	.final			= sha256_final,
-	.finup			= sha256_finup,
+	.update			= crypto_sha256_arm64_update,
+	.final			= crypto_sha256_arm64_final,
+	.finup			= crypto_sha256_arm64_finup,
 	.descsize		= sizeof(struct sha256_state),
 	.base.cra_name		= "sha256",
 	.base.cra_driver_name	= "sha256-arm64",
@@ -69,9 +69,9 @@ static struct shash_alg algs[] = { {
 }, {
 	.digestsize		= SHA224_DIGEST_SIZE,
 	.init			= sha224_base_init,
-	.update			= sha256_update,
-	.final			= sha256_final,
-	.finup			= sha256_finup,
+	.update			= crypto_sha256_arm64_update,
+	.final			= crypto_sha256_arm64_final,
+	.finup			= crypto_sha256_arm64_finup,
 	.descsize		= sizeof(struct sha256_state),
 	.base.cra_name		= "sha224",
 	.base.cra_driver_name	= "sha224-arm64",
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
