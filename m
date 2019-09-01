Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A4E9A4BF5
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Sep 2019 22:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3O7s/78+L5KB4nXZqX9eNftwQl6ySym1WJZE+ZobiJk=; b=sY14t3fygeHH/n
	ze6tIeLZpUGqSWcKKQmIHJJsoy+yiggK1qMB7tffyb0JSaEEYg1VPL6fTvnLdfVMh3j7zXUQX7jbY
	yup9o3MU7klz5TJCsEJf2aFoX1PCFIR6I8gRdEK8uAO39B+qOAbhq1b2m87qpouHNciQRaiiY3Dnu
	JmbNrJrbLzKfCfw/FflI30DkBBYICjBNY5H02OwXr0BlK64ttBkndTtk/pKYtVQCJYU4SqkF9hPX4
	FvgviLglei95uNGB4PlOdKfyqI05jsrg99/eqtW/yAVvVVS9iLfJOqHqBC0rXSal66As9ARG+l8wF
	Fw5F0NLTsBJgODWW58fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4Wb4-0003cN-4g; Sun, 01 Sep 2019 20:37:14 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4WZu-0002mN-Gr
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Sep 2019 20:36:04 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id E8DC0307D88D;
 Sun,  1 Sep 2019 20:36:01 +0000 (UTC)
Received: from shalem.localdomain.com (ovpn-116-36.ams2.redhat.com
 [10.36.116.36])
 by smtp.corp.redhat.com (Postfix) with ESMTP id BABD160606;
 Sun,  1 Sep 2019 20:35:57 +0000 (UTC)
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
Subject: [PATCH 5/9] crypto: ccree - Rename arrays to avoid conflict with
 crypto/sha256.h
Date: Sun,  1 Sep 2019 22:35:28 +0200
Message-Id: <20190901203532.2615-6-hdegoede@redhat.com>
In-Reply-To: <20190901203532.2615-1-hdegoede@redhat.com>
References: <20190901203532.2615-1-hdegoede@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Sun, 01 Sep 2019 20:36:02 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_133602_688133_20526059 
X-CRM114-Status: GOOD (  18.25  )
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

Rename the algo_init arrays to cc_algo_init so that they do not conflict
with the functions declared in crypto/sha256.h.

This is a preparation patch for folding crypto/sha256.h into crypto/sha.h.

Signed-off-by: Hans de Goede <hdegoede@redhat.com>
---
 drivers/crypto/ccree/cc_hash.c | 153 +++++++++++++++++----------------
 1 file changed, 77 insertions(+), 76 deletions(-)

diff --git a/drivers/crypto/ccree/cc_hash.c b/drivers/crypto/ccree/cc_hash.c
index a6abe4e3bb0e..bc71bdf44a9f 100644
--- a/drivers/crypto/ccree/cc_hash.c
+++ b/drivers/crypto/ccree/cc_hash.c
@@ -25,27 +25,27 @@ struct cc_hash_handle {
 	struct list_head hash_list;
 };
 
-static const u32 digest_len_init[] = {
+static const u32 cc_digest_len_init[] = {
 	0x00000040, 0x00000000, 0x00000000, 0x00000000 };
-static const u32 md5_init[] = {
+static const u32 cc_md5_init[] = {
 	SHA1_H3, SHA1_H2, SHA1_H1, SHA1_H0 };
-static const u32 sha1_init[] = {
+static const u32 cc_sha1_init[] = {
 	SHA1_H4, SHA1_H3, SHA1_H2, SHA1_H1, SHA1_H0 };
-static const u32 sha224_init[] = {
+static const u32 cc_sha224_init[] = {
 	SHA224_H7, SHA224_H6, SHA224_H5, SHA224_H4,
 	SHA224_H3, SHA224_H2, SHA224_H1, SHA224_H0 };
-static const u32 sha256_init[] = {
+static const u32 cc_sha256_init[] = {
 	SHA256_H7, SHA256_H6, SHA256_H5, SHA256_H4,
 	SHA256_H3, SHA256_H2, SHA256_H1, SHA256_H0 };
-static const u32 digest_len_sha512_init[] = {
+static const u32 cc_digest_len_sha512_init[] = {
 	0x00000080, 0x00000000, 0x00000000, 0x00000000 };
-static u64 sha384_init[] = {
+static u64 cc_sha384_init[] = {
 	SHA384_H7, SHA384_H6, SHA384_H5, SHA384_H4,
 	SHA384_H3, SHA384_H2, SHA384_H1, SHA384_H0 };
-static u64 sha512_init[] = {
+static u64 cc_sha512_init[] = {
 	SHA512_H7, SHA512_H6, SHA512_H5, SHA512_H4,
 	SHA512_H3, SHA512_H2, SHA512_H1, SHA512_H0 };
-static const u32 sm3_init[] = {
+static const u32 cc_sm3_init[] = {
 	SM3_IVH, SM3_IVG, SM3_IVF, SM3_IVE,
 	SM3_IVD, SM3_IVC, SM3_IVB, SM3_IVA };
 
@@ -144,10 +144,11 @@ static void cc_init_req(struct device *dev, struct ahash_req_ctx *state,
 			if (ctx->hash_mode == DRV_HASH_SHA512 ||
 			    ctx->hash_mode == DRV_HASH_SHA384)
 				memcpy(state->digest_bytes_len,
-				       digest_len_sha512_init,
+				       cc_digest_len_sha512_init,
 				       ctx->hash_len);
 			else
-				memcpy(state->digest_bytes_len, digest_len_init,
+				memcpy(state->digest_bytes_len,
+				       cc_digest_len_init,
 				       ctx->hash_len);
 		}
 
@@ -1873,26 +1874,26 @@ int cc_init_hash_sram(struct cc_drvdata *drvdata)
 	int rc = 0;
 
 	/* Copy-to-sram digest-len */
-	cc_set_sram_desc(digest_len_init, sram_buff_ofs,
-			 ARRAY_SIZE(digest_len_init), larval_seq,
+	cc_set_sram_desc(cc_digest_len_init, sram_buff_ofs,
+			 ARRAY_SIZE(cc_digest_len_init), larval_seq,
 			 &larval_seq_len);
 	rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 	if (rc)
 		goto init_digest_const_err;
 
-	sram_buff_ofs += sizeof(digest_len_init);
+	sram_buff_ofs += sizeof(cc_digest_len_init);
 	larval_seq_len = 0;
 
 	if (large_sha_supported) {
 		/* Copy-to-sram digest-len for sha384/512 */
-		cc_set_sram_desc(digest_len_sha512_init, sram_buff_ofs,
-				 ARRAY_SIZE(digest_len_sha512_init),
+		cc_set_sram_desc(cc_digest_len_sha512_init, sram_buff_ofs,
+				 ARRAY_SIZE(cc_digest_len_sha512_init),
 				 larval_seq, &larval_seq_len);
 		rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 		if (rc)
 			goto init_digest_const_err;
 
-		sram_buff_ofs += sizeof(digest_len_sha512_init);
+		sram_buff_ofs += sizeof(cc_digest_len_sha512_init);
 		larval_seq_len = 0;
 	}
 
@@ -1900,64 +1901,64 @@ int cc_init_hash_sram(struct cc_drvdata *drvdata)
 	hash_handle->larval_digest_sram_addr = sram_buff_ofs;
 
 	/* Copy-to-sram initial SHA* digests */
-	cc_set_sram_desc(md5_init, sram_buff_ofs, ARRAY_SIZE(md5_init),
+	cc_set_sram_desc(cc_md5_init, sram_buff_ofs, ARRAY_SIZE(cc_md5_init),
 			 larval_seq, &larval_seq_len);
 	rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 	if (rc)
 		goto init_digest_const_err;
-	sram_buff_ofs += sizeof(md5_init);
+	sram_buff_ofs += sizeof(cc_md5_init);
 	larval_seq_len = 0;
 
-	cc_set_sram_desc(sha1_init, sram_buff_ofs,
-			 ARRAY_SIZE(sha1_init), larval_seq,
+	cc_set_sram_desc(cc_sha1_init, sram_buff_ofs,
+			 ARRAY_SIZE(cc_sha1_init), larval_seq,
 			 &larval_seq_len);
 	rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 	if (rc)
 		goto init_digest_const_err;
-	sram_buff_ofs += sizeof(sha1_init);
+	sram_buff_ofs += sizeof(cc_sha1_init);
 	larval_seq_len = 0;
 
-	cc_set_sram_desc(sha224_init, sram_buff_ofs,
-			 ARRAY_SIZE(sha224_init), larval_seq,
+	cc_set_sram_desc(cc_sha224_init, sram_buff_ofs,
+			 ARRAY_SIZE(cc_sha224_init), larval_seq,
 			 &larval_seq_len);
 	rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 	if (rc)
 		goto init_digest_const_err;
-	sram_buff_ofs += sizeof(sha224_init);
+	sram_buff_ofs += sizeof(cc_sha224_init);
 	larval_seq_len = 0;
 
-	cc_set_sram_desc(sha256_init, sram_buff_ofs,
-			 ARRAY_SIZE(sha256_init), larval_seq,
+	cc_set_sram_desc(cc_sha256_init, sram_buff_ofs,
+			 ARRAY_SIZE(cc_sha256_init), larval_seq,
 			 &larval_seq_len);
 	rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 	if (rc)
 		goto init_digest_const_err;
-	sram_buff_ofs += sizeof(sha256_init);
+	sram_buff_ofs += sizeof(cc_sha256_init);
 	larval_seq_len = 0;
 
 	if (sm3_supported) {
-		cc_set_sram_desc(sm3_init, sram_buff_ofs,
-				 ARRAY_SIZE(sm3_init), larval_seq,
+		cc_set_sram_desc(cc_sm3_init, sram_buff_ofs,
+				 ARRAY_SIZE(cc_sm3_init), larval_seq,
 				 &larval_seq_len);
 		rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 		if (rc)
 			goto init_digest_const_err;
-		sram_buff_ofs += sizeof(sm3_init);
+		sram_buff_ofs += sizeof(cc_sm3_init);
 		larval_seq_len = 0;
 	}
 
 	if (large_sha_supported) {
-		cc_set_sram_desc((u32 *)sha384_init, sram_buff_ofs,
-				 (ARRAY_SIZE(sha384_init) * 2), larval_seq,
+		cc_set_sram_desc((u32 *)cc_sha384_init, sram_buff_ofs,
+				 (ARRAY_SIZE(cc_sha384_init) * 2), larval_seq,
 				 &larval_seq_len);
 		rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 		if (rc)
 			goto init_digest_const_err;
-		sram_buff_ofs += sizeof(sha384_init);
+		sram_buff_ofs += sizeof(cc_sha384_init);
 		larval_seq_len = 0;
 
-		cc_set_sram_desc((u32 *)sha512_init, sram_buff_ofs,
-				 (ARRAY_SIZE(sha512_init) * 2), larval_seq,
+		cc_set_sram_desc((u32 *)cc_sha512_init, sram_buff_ofs,
+				 (ARRAY_SIZE(cc_sha512_init) * 2), larval_seq,
 				 &larval_seq_len);
 		rc = send_request_init(drvdata, larval_seq, larval_seq_len);
 		if (rc)
@@ -1986,8 +1987,8 @@ static void __init cc_swap_dwords(u32 *buf, unsigned long size)
  */
 void __init cc_hash_global_init(void)
 {
-	cc_swap_dwords((u32 *)&sha384_init, (ARRAY_SIZE(sha384_init) * 2));
-	cc_swap_dwords((u32 *)&sha512_init, (ARRAY_SIZE(sha512_init) * 2));
+	cc_swap_dwords((u32 *)&cc_sha384_init, (ARRAY_SIZE(cc_sha384_init) * 2));
+	cc_swap_dwords((u32 *)&cc_sha512_init, (ARRAY_SIZE(cc_sha512_init) * 2));
 }
 
 int cc_hash_alloc(struct cc_drvdata *drvdata)
@@ -2006,18 +2007,18 @@ int cc_hash_alloc(struct cc_drvdata *drvdata)
 	INIT_LIST_HEAD(&hash_handle->hash_list);
 	drvdata->hash_handle = hash_handle;
 
-	sram_size_to_alloc = sizeof(digest_len_init) +
-			sizeof(md5_init) +
-			sizeof(sha1_init) +
-			sizeof(sha224_init) +
-			sizeof(sha256_init);
+	sram_size_to_alloc = sizeof(cc_digest_len_init) +
+			sizeof(cc_md5_init) +
+			sizeof(cc_sha1_init) +
+			sizeof(cc_sha224_init) +
+			sizeof(cc_sha256_init);
 
 	if (drvdata->hw_rev >= CC_HW_REV_713)
-		sram_size_to_alloc += sizeof(sm3_init);
+		sram_size_to_alloc += sizeof(cc_sm3_init);
 
 	if (drvdata->hw_rev >= CC_HW_REV_712)
-		sram_size_to_alloc += sizeof(digest_len_sha512_init) +
-			sizeof(sha384_init) + sizeof(sha512_init);
+		sram_size_to_alloc += sizeof(cc_digest_len_sha512_init) +
+			sizeof(cc_sha384_init) + sizeof(cc_sha512_init);
 
 	sram_buff = cc_sram_alloc(drvdata, sram_size_to_alloc);
 	if (sram_buff == NULL_SRAM_ADDR) {
@@ -2258,22 +2259,22 @@ static const void *cc_larval_digest(struct device *dev, u32 mode)
 {
 	switch (mode) {
 	case DRV_HASH_MD5:
-		return md5_init;
+		return cc_md5_init;
 	case DRV_HASH_SHA1:
-		return sha1_init;
+		return cc_sha1_init;
 	case DRV_HASH_SHA224:
-		return sha224_init;
+		return cc_sha224_init;
 	case DRV_HASH_SHA256:
-		return sha256_init;
+		return cc_sha256_init;
 	case DRV_HASH_SHA384:
-		return sha384_init;
+		return cc_sha384_init;
 	case DRV_HASH_SHA512:
-		return sha512_init;
+		return cc_sha512_init;
 	case DRV_HASH_SM3:
-		return sm3_init;
+		return cc_sm3_init;
 	default:
 		dev_err(dev, "Invalid hash mode (%d)\n", mode);
-		return md5_init;
+		return cc_md5_init;
 	}
 }
 
@@ -2301,40 +2302,40 @@ cc_sram_addr_t cc_larval_digest_addr(void *drvdata, u32 mode)
 		return (hash_handle->larval_digest_sram_addr);
 	case DRV_HASH_SHA1:
 		return (hash_handle->larval_digest_sram_addr +
-			sizeof(md5_init));
+			sizeof(cc_md5_init));
 	case DRV_HASH_SHA224:
 		return (hash_handle->larval_digest_sram_addr +
-			sizeof(md5_init) +
-			sizeof(sha1_init));
+			sizeof(cc_md5_init) +
+			sizeof(cc_sha1_init));
 	case DRV_HASH_SHA256:
 		return (hash_handle->larval_digest_sram_addr +
-			sizeof(md5_init) +
-			sizeof(sha1_init) +
-			sizeof(sha224_init));
+			sizeof(cc_md5_init) +
+			sizeof(cc_sha1_init) +
+			sizeof(cc_sha224_init));
 	case DRV_HASH_SM3:
 		return (hash_handle->larval_digest_sram_addr +
-			sizeof(md5_init) +
-			sizeof(sha1_init) +
-			sizeof(sha224_init) +
-			sizeof(sha256_init));
+			sizeof(cc_md5_init) +
+			sizeof(cc_sha1_init) +
+			sizeof(cc_sha224_init) +
+			sizeof(cc_sha256_init));
 	case DRV_HASH_SHA384:
 		addr = (hash_handle->larval_digest_sram_addr +
-			sizeof(md5_init) +
-			sizeof(sha1_init) +
-			sizeof(sha224_init) +
-			sizeof(sha256_init));
+			sizeof(cc_md5_init) +
+			sizeof(cc_sha1_init) +
+			sizeof(cc_sha224_init) +
+			sizeof(cc_sha256_init));
 		if (sm3_supported)
-			addr += sizeof(sm3_init);
+			addr += sizeof(cc_sm3_init);
 		return addr;
 	case DRV_HASH_SHA512:
 		addr = (hash_handle->larval_digest_sram_addr +
-			sizeof(md5_init) +
-			sizeof(sha1_init) +
-			sizeof(sha224_init) +
-			sizeof(sha256_init) +
-			sizeof(sha384_init));
+			sizeof(cc_md5_init) +
+			sizeof(cc_sha1_init) +
+			sizeof(cc_sha224_init) +
+			sizeof(cc_sha256_init) +
+			sizeof(cc_sha384_init));
 		if (sm3_supported)
-			addr += sizeof(sm3_init);
+			addr += sizeof(cc_sm3_init);
 		return addr;
 	default:
 		dev_err(dev, "Invalid hash mode (%d)\n", mode);
@@ -2360,7 +2361,7 @@ cc_digest_len_addr(void *drvdata, u32 mode)
 #if (CC_DEV_SHA_MAX > 256)
 	case DRV_HASH_SHA384:
 	case DRV_HASH_SHA512:
-		return  digest_len_addr + sizeof(digest_len_init);
+		return  digest_len_addr + sizeof(cc_digest_len_init);
 #endif
 	default:
 		return digest_len_addr; /*to avoid kernel crash*/
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
