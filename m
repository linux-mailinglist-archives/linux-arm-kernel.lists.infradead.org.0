Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F6ACA4BF7
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:37:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IiqgX19EdbgFim6U66Cg9QsY+T0CsyFkFooIeSl6CNs=; b=tNfYA1TH58oBR9
	Aw4H+2wctjVT0oNO5KGqHQWYVbU3I4c+j7aP7/MtqS1OpNd0IeEQbDzdvIyyqns7qnvyBmgpyNpuE
	j7dHCrwQvlUI+Z0ds8HZacd8ysEVrs0shAs/yHAao0Wbvfvk+K5eCRi6R5URJWQDlTATU2SYmSUhh
	fIZEmlBthFeQP9YI6EKMvsOXrs980sp8lL7+EQ9imVbKPdHgjeVuwXCZAV1CAXl+lXnz3L9wFdDcx
	SEgsQ0bFdxgVmNAGtklUS5oMhaSwL3ppU6GhhV/jdZFBPct/o62nAaARdMnHIFL/77WhUgM46CImI
	z7vz+La0imTh0zaZB9rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Wbc-0004Gp-Tq; Sun, 01 Sep 2019 20:37:49 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4Wa3-0002uq-H7
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:36:12 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E09698BA2D4;
 Sun,  1 Sep 2019 20:36:10 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-36.ams2.redhat.com
 [10.36.116.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id AF20860606;
 Sun,  1 Sep 2019 20:36:06 +0000 (UTC)
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
Subject: [PATCH 7/9] crypto: n2 - Rename arrays to avoid conflict with
 crypto/sha256.h
Date: Sun,  1 Sep 2019 22:35:30 +0200
Message-Id: <20190901203532.2615-8-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
References: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Sun, 01 Sep 2019 20:36:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_133611_624409_16862AFA 
X-CRM114-Status: GOOD (  14.49  )
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

Rename the sha*_init arrays to n2_sha*_init so that they do not conflict
with the functions declared in crypto/sha256.h.

Also rename md5_init to n2_md5_init for consistency.

This is a preparation patch for folding crypto/sha256.h into crypto/sha.h.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/crypto/n2_core.c | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/n2_core.c b/drivers/crypto/n2_core.c
index 760e72a5893b..c4bf85fc9601 100644
--- a/drivers/crypto/n2_core.c
+++ b/drivers/crypto/n2_core.c
@@ -1295,20 +1295,20 @@ struct n2_hash_tmpl {
 	u8		hmac_type;
 };
 
-static const u32 md5_init[MD5_HASH_WORDS] = {
+static const u32 n2_md5_init[MD5_HASH_WORDS] = {
 	cpu_to_le32(MD5_H0),
 	cpu_to_le32(MD5_H1),
 	cpu_to_le32(MD5_H2),
 	cpu_to_le32(MD5_H3),
 };
-static const u32 sha1_init[SHA1_DIGEST_SIZE / 4] = {
+static const u32 n2_sha1_init[SHA1_DIGEST_SIZE / 4] = {
 	SHA1_H0, SHA1_H1, SHA1_H2, SHA1_H3, SHA1_H4,
 };
-static const u32 sha256_init[SHA256_DIGEST_SIZE / 4] = {
+static const u32 n2_sha256_init[SHA256_DIGEST_SIZE / 4] = {
 	SHA256_H0, SHA256_H1, SHA256_H2, SHA256_H3,
 	SHA256_H4, SHA256_H5, SHA256_H6, SHA256_H7,
 };
-static const u32 sha224_init[SHA256_DIGEST_SIZE / 4] = {
+static const u32 n2_sha224_init[SHA256_DIGEST_SIZE / 4] = {
 	SHA224_H0, SHA224_H1, SHA224_H2, SHA224_H3,
 	SHA224_H4, SHA224_H5, SHA224_H6, SHA224_H7,
 };
@@ -1316,7 +1316,7 @@ static const u32 sha224_init[SHA256_DIGEST_SIZE / 4] = {
 static const struct n2_hash_tmpl hash_tmpls[] = {
 	{ .name		= "md5",
 	  .hash_zero	= md5_zero_message_hash,
-	  .hash_init	= md5_init,
+	  .hash_init	= n2_md5_init,
 	  .auth_type	= AUTH_TYPE_MD5,
 	  .hmac_type	= AUTH_TYPE_HMAC_MD5,
 	  .hw_op_hashsz	= MD5_DIGEST_SIZE,
@@ -1324,7 +1324,7 @@ static const struct n2_hash_tmpl hash_tmpls[] = {
 	  .block_size	= MD5_HMAC_BLOCK_SIZE },
 	{ .name		= "sha1",
 	  .hash_zero	= sha1_zero_message_hash,
-	  .hash_init	= sha1_init,
+	  .hash_init	= n2_sha1_init,
 	  .auth_type	= AUTH_TYPE_SHA1,
 	  .hmac_type	= AUTH_TYPE_HMAC_SHA1,
 	  .hw_op_hashsz	= SHA1_DIGEST_SIZE,
@@ -1332,7 +1332,7 @@ static const struct n2_hash_tmpl hash_tmpls[] = {
 	  .block_size	= SHA1_BLOCK_SIZE },
 	{ .name		= "sha256",
 	  .hash_zero	= sha256_zero_message_hash,
-	  .hash_init	= sha256_init,
+	  .hash_init	= n2_sha256_init,
 	  .auth_type	= AUTH_TYPE_SHA256,
 	  .hmac_type	= AUTH_TYPE_HMAC_SHA256,
 	  .hw_op_hashsz	= SHA256_DIGEST_SIZE,
@@ -1340,7 +1340,7 @@ static const struct n2_hash_tmpl hash_tmpls[] = {
 	  .block_size	= SHA256_BLOCK_SIZE },
 	{ .name		= "sha224",
 	  .hash_zero	= sha224_zero_message_hash,
-	  .hash_init	= sha224_init,
+	  .hash_init	= n2_sha224_init,
 	  .auth_type	= AUTH_TYPE_SHA256,
 	  .hmac_type	= AUTH_TYPE_RESERVED,
 	  .hw_op_hashsz	= SHA256_DIGEST_SIZE,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
