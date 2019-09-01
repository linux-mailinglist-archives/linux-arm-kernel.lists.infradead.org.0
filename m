Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC9CA4BF6
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:37:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QXqQaauF6fajyoh+3b6mcXtqDgLh36dZ9AOhtlmEJ0k=; b=jm4odct6uQw+OU
	Y1WtzaZdPQWOWO6EL76dvOEqrEvBaO+4ODhdKN085f5N6JOI+/Vht+mYLrl3NmVZ1bRl4lgyKkv/w
	iIzDNLuquvxiJNloE1Nq/LTKQ6ojO2rU914NqGgNKHBvUTAQ60zS6fE4tq4Wblkdr+K8f6Zs3g8M7
	LDoMQ5F2/fa3PbA+MihQ7ZUnejvtuMgbQodUQuxztBGq8G2BOe3wrVZtLstzIU1XiJXR+62dIweAR
	3mD67wkbBU8RnyHWEWvs03JWD24fU7njizLF5QGcnRD4udfang8y82tgp51o7ynBXDM/xTeW9eMhp
	GBeBKRMINwqxifwbB+tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4WbM-0003zf-Ge; Sun, 01 Sep 2019 20:37:32 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WZz-0002qt-0t
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:36:09 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6808810A8139;
 Sun,  1 Sep 2019 20:36:06 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-36.ams2.redhat.com
 [10.36.116.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 39B1360606;
 Sun,  1 Sep 2019 20:36:02 +0000 (UTC)
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
Subject: [PATCH 6/9] crypto: chelsio - Rename arrays to avoid conflict with
 crypto/sha256.h
Date: Sun,  1 Sep 2019 22:35:29 +0200
Message-Id: <20190901203532.2615-7-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
References: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Sun, 01 Sep 2019 20:36:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_133607_655681_6982C430 
X-CRM114-Status: GOOD (  14.74  )
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

Rename the sha*_init arrays to chcr_sha*_init so that they do not conflict
with the functions declared in crypto/sha256.h.

This is a preparation patch for folding crypto/sha256.h into crypto/sha.h.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/crypto/chelsio/chcr_algo.h | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/crypto/chelsio/chcr_algo.h b/drivers/crypto/chelsio/chcr_algo.h
index ee20dd899e83..d1e6b51df0ce 100644
--- a/drivers/crypto/chelsio/chcr_algo.h
+++ b/drivers/crypto/chelsio/chcr_algo.h
@@ -333,26 +333,26 @@ struct phys_sge_pairs {
 };
 
 
-static const u32 sha1_init[SHA1_DIGEST_SIZE / 4] = {
+static const u32 chcr_sha1_init[SHA1_DIGEST_SIZE / 4] = {
 		SHA1_H0, SHA1_H1, SHA1_H2, SHA1_H3, SHA1_H4,
 };
 
-static const u32 sha224_init[SHA256_DIGEST_SIZE / 4] = {
+static const u32 chcr_sha224_init[SHA256_DIGEST_SIZE / 4] = {
 		SHA224_H0, SHA224_H1, SHA224_H2, SHA224_H3,
 		SHA224_H4, SHA224_H5, SHA224_H6, SHA224_H7,
 };
 
-static const u32 sha256_init[SHA256_DIGEST_SIZE / 4] = {
+static const u32 chcr_sha256_init[SHA256_DIGEST_SIZE / 4] = {
 		SHA256_H0, SHA256_H1, SHA256_H2, SHA256_H3,
 		SHA256_H4, SHA256_H5, SHA256_H6, SHA256_H7,
 };
 
-static const u64 sha384_init[SHA512_DIGEST_SIZE / 8] = {
+static const u64 chcr_sha384_init[SHA512_DIGEST_SIZE / 8] = {
 		SHA384_H0, SHA384_H1, SHA384_H2, SHA384_H3,
 		SHA384_H4, SHA384_H5, SHA384_H6, SHA384_H7,
 };
 
-static const u64 sha512_init[SHA512_DIGEST_SIZE / 8] = {
+static const u64 chcr_sha512_init[SHA512_DIGEST_SIZE / 8] = {
 		SHA512_H0, SHA512_H1, SHA512_H2, SHA512_H3,
 		SHA512_H4, SHA512_H5, SHA512_H6, SHA512_H7,
 };
@@ -362,21 +362,21 @@ static inline void copy_hash_init_values(char *key, int digestsize)
 	u8 i;
 	__be32 *dkey = (__be32 *)key;
 	u64 *ldkey = (u64 *)key;
-	__be64 *sha384 = (__be64 *)sha384_init;
-	__be64 *sha512 = (__be64 *)sha512_init;
+	__be64 *sha384 = (__be64 *)chcr_sha384_init;
+	__be64 *sha512 = (__be64 *)chcr_sha512_init;
 
 	switch (digestsize) {
 	case SHA1_DIGEST_SIZE:
 		for (i = 0; i < SHA1_INIT_STATE; i++)
-			dkey[i] = cpu_to_be32(sha1_init[i]);
+			dkey[i] = cpu_to_be32(chcr_sha1_init[i]);
 		break;
 	case SHA224_DIGEST_SIZE:
 		for (i = 0; i < SHA224_INIT_STATE; i++)
-			dkey[i] = cpu_to_be32(sha224_init[i]);
+			dkey[i] = cpu_to_be32(chcr_sha224_init[i]);
 		break;
 	case SHA256_DIGEST_SIZE:
 		for (i = 0; i < SHA256_INIT_STATE; i++)
-			dkey[i] = cpu_to_be32(sha256_init[i]);
+			dkey[i] = cpu_to_be32(chcr_sha256_init[i]);
 		break;
 	case SHA384_DIGEST_SIZE:
 		for (i = 0; i < SHA384_INIT_STATE; i++)
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
