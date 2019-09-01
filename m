Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D4E9A4BF9
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dG6vwwtcc6g+vWZB35alLmujfmFi/qj1nIAyCQPg9f0=; b=MPW4iKAHFwK70z
	FHdPl94w2ctvQ3T6dfB2Mc/9Iu+fg/FQJLV/AxzlLMyQh3NxXmysCghY/rvOWa6vXIujj2dFpr2IE
	giWWZeeanyiMeTkp0Fa2dNYGtKMuoRxWoyKiCsrGg+aMZ1YjvAY2vEgyIMW5xDCxmVSBsRTqc9y6D
	Sye9vKx+wMKCKjoXYgIx8toy2nZbKofSsFZD1pSfEKSdEBsSnHvdipKXEhjLpZ6RR2SfeSidGavW4
	CM5ZnWUynu7GWmT2InIN5K44Z5+JMIr35HATRRcXb6j3D6Q1yvOa4KuoKXzBu+WwYphsbPtAVpnFG
	+Lk0JPtW8PcKC1nar3kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Wc6-0004ho-EY; Sun, 01 Sep 2019 20:38:18 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WaC-00033m-Fi
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:36:22 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id CF7DA308FC4B;
 Sun,  1 Sep 2019 20:36:19 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-36.ams2.redhat.com
 [10.36.116.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A602C60920;
 Sun,  1 Sep 2019 20:36:15 +0000 (UTC)
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
Subject: [PATCH 9/9] crypto: sha256 - Remove sha256/224_init code duplication
Date: Sun,  1 Sep 2019 22:35:32 +0200
Message-Id: <20190901203532.2615-10-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
References: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Sun, 01 Sep 2019 20:36:20 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_133620_611493_9B8513EA 
X-CRM114-Status: GOOD (  15.01  )
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

lib/crypto/sha256.c and include/crypto/sha256_base.h define
99% identical functions to init a sha256_state struct for sha224 or
sha256 use.

This commit moves the functions from lib/crypto/sha256.c to
include/crypto/sha.h (making them static inline) and makes the
sha224/256_base_init static inline functions from
include/crypto/sha256_base.h wrappers around the now also
static inline include/crypto/sha.h functions.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 include/crypto/sha.h         | 30 ++++++++++++++++++++++++++++--
 include/crypto/sha256_base.h | 24 ++----------------------
 lib/crypto/sha256.c          | 32 --------------------------------
 3 files changed, 30 insertions(+), 56 deletions(-)

diff --git a/include/crypto/sha.h b/include/crypto/sha.h
index 535955c84187..5c2132c71900 100644
--- a/include/crypto/sha.h
+++ b/include/crypto/sha.h
@@ -123,12 +123,38 @@ extern int crypto_sha512_finup(struct shash_desc *desc, const u8 *data,
  * For details see lib/crypto/sha256.c
  */
 
-extern int sha256_init(struct sha256_state *sctx);
+static inline int sha256_init(struct sha256_state *sctx)
+{
+	sctx->state[0] = SHA256_H0;
+	sctx->state[1] = SHA256_H1;
+	sctx->state[2] = SHA256_H2;
+	sctx->state[3] = SHA256_H3;
+	sctx->state[4] = SHA256_H4;
+	sctx->state[5] = SHA256_H5;
+	sctx->state[6] = SHA256_H6;
+	sctx->state[7] = SHA256_H7;
+	sctx->count = 0;
+
+	return 0;
+}
 extern int sha256_update(struct sha256_state *sctx, const u8 *input,
 			 unsigned int length);
 extern int sha256_final(struct sha256_state *sctx, u8 *hash);
 
-extern int sha224_init(struct sha256_state *sctx);
+static inline int sha224_init(struct sha256_state *sctx)
+{
+	sctx->state[0] = SHA224_H0;
+	sctx->state[1] = SHA224_H1;
+	sctx->state[2] = SHA224_H2;
+	sctx->state[3] = SHA224_H3;
+	sctx->state[4] = SHA224_H4;
+	sctx->state[5] = SHA224_H5;
+	sctx->state[6] = SHA224_H6;
+	sctx->state[7] = SHA224_H7;
+	sctx->count = 0;
+
+	return 0;
+}
 extern int sha224_update(struct sha256_state *sctx, const u8 *input,
 			 unsigned int length);
 extern int sha224_final(struct sha256_state *sctx, u8 *hash);
diff --git a/include/crypto/sha256_base.h b/include/crypto/sha256_base.h
index 59159bc944f5..b8af853690b9 100644
--- a/include/crypto/sha256_base.h
+++ b/include/crypto/sha256_base.h
@@ -19,34 +19,14 @@ static inline int sha224_base_init(struct shash_desc *desc)
 {
 	struct sha256_state *sctx = shash_desc_ctx(desc);
 
-	sctx->state[0] = SHA224_H0;
-	sctx->state[1] = SHA224_H1;
-	sctx->state[2] = SHA224_H2;
-	sctx->state[3] = SHA224_H3;
-	sctx->state[4] = SHA224_H4;
-	sctx->state[5] = SHA224_H5;
-	sctx->state[6] = SHA224_H6;
-	sctx->state[7] = SHA224_H7;
-	sctx->count = 0;
-
-	return 0;
+	return sha224_init(sctx);
 }
 
 static inline int sha256_base_init(struct shash_desc *desc)
 {
 	struct sha256_state *sctx = shash_desc_ctx(desc);
 
-	sctx->state[0] = SHA256_H0;
-	sctx->state[1] = SHA256_H1;
-	sctx->state[2] = SHA256_H2;
-	sctx->state[3] = SHA256_H3;
-	sctx->state[4] = SHA256_H4;
-	sctx->state[5] = SHA256_H5;
-	sctx->state[6] = SHA256_H6;
-	sctx->state[7] = SHA256_H7;
-	sctx->count = 0;
-
-	return 0;
+	return sha256_init(sctx);
 }
 
 static inline int sha256_base_do_update(struct shash_desc *desc,
diff --git a/lib/crypto/sha256.c b/lib/crypto/sha256.c
index 220b74c2bbd8..66cb04b0cf4e 100644
--- a/lib/crypto/sha256.c
+++ b/lib/crypto/sha256.c
@@ -206,38 +206,6 @@ static void sha256_transform(u32 *state, const u8 *input)
 	memzero_explicit(W, 64 * sizeof(u32));
 }
 
-int sha256_init(struct sha256_state *sctx)
-{
-	sctx->state[0] = SHA256_H0;
-	sctx->state[1] = SHA256_H1;
-	sctx->state[2] = SHA256_H2;
-	sctx->state[3] = SHA256_H3;
-	sctx->state[4] = SHA256_H4;
-	sctx->state[5] = SHA256_H5;
-	sctx->state[6] = SHA256_H6;
-	sctx->state[7] = SHA256_H7;
-	sctx->count = 0;
-
-	return 0;
-}
-EXPORT_SYMBOL(sha256_init);
-
-int sha224_init(struct sha256_state *sctx)
-{
-	sctx->state[0] = SHA224_H0;
-	sctx->state[1] = SHA224_H1;
-	sctx->state[2] = SHA224_H2;
-	sctx->state[3] = SHA224_H3;
-	sctx->state[4] = SHA224_H4;
-	sctx->state[5] = SHA224_H5;
-	sctx->state[6] = SHA224_H6;
-	sctx->state[7] = SHA224_H7;
-	sctx->count = 0;
-
-	return 0;
-}
-EXPORT_SYMBOL(sha224_init);
-
 int sha256_update(struct sha256_state *sctx, const u8 *data, unsigned int len)
 {
 	unsigned int partial, done;
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
