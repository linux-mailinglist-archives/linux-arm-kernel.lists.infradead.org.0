Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 672B6A4BF4
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:37:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s+uGkdfbRNEQRM48mfPqLoumJaj4q54/6n5mpY+Smfo=; b=Z7XYSmeILZDOwl
	4gh9zxxEoX58NLKDudO6WjqZRbCWavWJ3T8Od2wGGkQoWUlvLitr6vW8g9SqtiXTLaECRKA6L5KFz
	vnNC8AnZYeCew9DLm0nPwMyKKDQrbvedD2nzwwAI2J+Un6cVp49TO8YVLtSVJsjhoUIgYa6Ft8DJG
	1XYTHFqETC7maJR53EoMS0mso7lot/OP8/rLzuXON+2IYw/sRoR+wIKpiIojx51Api4BjTiOmQzSu
	Y0CKFYjH2+GoXPS55UnCAyJCd0PLsvOy4IP7d7PT9JvLv6ty3yswJcEIcUznlFBBHRCASGZMQ4uv6
	4zAcu3ZY2Kmh2/3hLo0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Wao-0003Ox-Uy; Sun, 01 Sep 2019 20:36:59 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WZq-0002i2-18
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:35:59 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 728EB8666C;
 Sun,  1 Sep 2019 20:35:57 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-36.ams2.redhat.com
 [10.36.116.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4264A60606;
 Sun,  1 Sep 2019 20:35:53 +0000 (UTC)
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
Subject: [PATCH 4/9] crypto: x86 - Rename functions to avoid conflict with
 crypto/sha256.h
Date: Sun,  1 Sep 2019 22:35:27 +0200
Message-Id: <20190901203532.2615-5-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
References: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Sun, 01 Sep 2019 20:35:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_133558_194514_DAA42012 
X-CRM114-Status: GOOD (  14.02  )
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
 arch/x86/crypto/sha256_ssse3_glue.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/x86/crypto/sha256_ssse3_glue.c b/arch/x86/crypto/sha256_ssse3_glue.c
index 73867da3cbee..f9aff31fe59e 100644
--- a/arch/x86/crypto/sha256_ssse3_glue.c
+++ b/arch/x86/crypto/sha256_ssse3_glue.c
@@ -45,8 +45,8 @@ asmlinkage void sha256_transform_ssse3(u32 *digest, const char *data,
 				       u64 rounds);
 typedef void (sha256_transform_fn)(u32 *digest, const char *data, u64 rounds);
 
-static int sha256_update(struct shash_desc *desc, const u8 *data,
-			 unsigned int len, sha256_transform_fn *sha256_xform)
+static int _sha256_update(struct shash_desc *desc, const u8 *data,
+			  unsigned int len, sha256_transform_fn *sha256_xform)
 {
 	struct sha256_state *sctx = shash_desc_ctx(desc);
 
@@ -84,7 +84,7 @@ static int sha256_finup(struct shash_desc *desc, const u8 *data,
 static int sha256_ssse3_update(struct shash_desc *desc, const u8 *data,
 			 unsigned int len)
 {
-	return sha256_update(desc, data, len, sha256_transform_ssse3);
+	return _sha256_update(desc, data, len, sha256_transform_ssse3);
 }
 
 static int sha256_ssse3_finup(struct shash_desc *desc, const u8 *data,
@@ -151,7 +151,7 @@ asmlinkage void sha256_transform_avx(u32 *digest, const char *data,
 static int sha256_avx_update(struct shash_desc *desc, const u8 *data,
 			 unsigned int len)
 {
-	return sha256_update(desc, data, len, sha256_transform_avx);
+	return _sha256_update(desc, data, len, sha256_transform_avx);
 }
 
 static int sha256_avx_finup(struct shash_desc *desc, const u8 *data,
@@ -233,7 +233,7 @@ asmlinkage void sha256_transform_rorx(u32 *digest, const char *data,
 static int sha256_avx2_update(struct shash_desc *desc, const u8 *data,
 			 unsigned int len)
 {
-	return sha256_update(desc, data, len, sha256_transform_rorx);
+	return _sha256_update(desc, data, len, sha256_transform_rorx);
 }
 
 static int sha256_avx2_finup(struct shash_desc *desc, const u8 *data,
@@ -313,7 +313,7 @@ asmlinkage void sha256_ni_transform(u32 *digest, const char *data,
 static int sha256_ni_update(struct shash_desc *desc, const u8 *data,
 			 unsigned int len)
 {
-	return sha256_update(desc, data, len, sha256_ni_transform);
+	return _sha256_update(desc, data, len, sha256_ni_transform);
 }
 
 static int sha256_ni_finup(struct shash_desc *desc, const u8 *data,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
