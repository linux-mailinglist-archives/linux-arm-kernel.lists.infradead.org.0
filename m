Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07C9D90D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 14:27:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OQJYKlG053ITShFhwhzDbNcajjxCK0fpx9Pb5lil1J8=; b=OnLpDl9cHa4+X3
	yxql+HN/dEBPqv9qt4NVDfqdWujI3fO/1JspheqUUUUWbibewND3KdveT2n3vTvtMdJQZJfMcPlNB
	N1GNvv21otfIJ/p/jDkKZGOYIJAA2+Xu8BK3LSM4gZrDlWSblOy11OGwEzHO6PGE10f95w6R6WRxA
	QaAllcx2d4f7XTIeRZ1zdjZ2vLQX/XJllanUssMMEANa/x6oTpP7SkRO1JYYNUxUdYh7d5LqsO9Aj
	NbJhm1qAg+gI5AGFlFSk6Z19fWySLcmKtrWYI+NPdE27AN8WCSY0Pq5XVfZFAXxY+Tomm2qw+dntO
	pVIy8h+FLQg2CV5fAozQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKiON-00056m-9n; Wed, 16 Oct 2019 12:27:03 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKiOC-00055j-Mz
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 12:26:56 +0000
Received: from [167.98.27.226] (helo=rainbowdash.codethink.co.uk)
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iKiNu-0007GA-ME; Wed, 16 Oct 2019 13:26:34 +0100
Received: from ben by rainbowdash.codethink.co.uk with local (Exim 4.92.2)
 (envelope-from <ben@rainbowdash.codethink.co.uk>)
 id 1iKiNu-0000aZ-6f; Wed, 16 Oct 2019 13:26:34 +0100
From: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
To: linux-kernel@lists.codethink.co.uk
Subject: [PATCH] crypto: atmel - fix data types for __be{32,64}
Date: Wed, 16 Oct 2019 13:26:33 +0100
Message-Id: <20191016122633.2220-1-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_052655_090923_23C8F364 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 "Ben Dooks \(Codethink\)" <ben.dooks@codethink.co.uk>,
 linux-crypto@vger.kernel.org, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The driver uses a couple of buffers that seem to
be __be32 or __be64 fields, but declares them as
u32. This means there are a number of warnings
from sparse due to casting to/from __beXXX.

Fix these by changing the types of the buffer
and the associated variables.

drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1023:15: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1059:28: warning: incorrect type in assignment (different base types)
drivers/crypto/atmel-aes.c:1059:28:    expected unsigned int
drivers/crypto/atmel-aes.c:1059:28:    got restricted __be32 [usertype]
drivers/crypto/atmel-aes.c:1550:28: warning: incorrect type in assignment (different base types)
drivers/crypto/atmel-aes.c:1550:28:    expected unsigned int
drivers/crypto/atmel-aes.c:1550:28:    got restricted __be32 [usertype]
drivers/crypto/atmel-aes.c:1561:39: warning: incorrect type in assignment (different base types)
drivers/crypto/atmel-aes.c:1561:39:    expected unsigned long long [usertype]
drivers/crypto/atmel-aes.c:1561:39:    got restricted __be64 [usertype]
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:17: warning: cast to restricted __be32
drivers/crypto/atmel-aes.c:1599:15: warning: incorrect type in assignment (different base types)
drivers/crypto/atmel-aes.c:1599:15:    expected unsigned int [usertype]
drivers/crypto/atmel-aes.c:1599:15:    got restricted __be32 [usertype]
drivers/crypto/atmel-aes.c:1692:17: warning: incorrect type in assignment (different base types)
drivers/crypto/atmel-aes.c:1692:17:    expected unsigned long long [usertype]
drivers/crypto/atmel-aes.c:1692:17:    got restricted __be64 [usertype]
drivers/crypto/atmel-aes.c:1693:17: warning: incorrect type in assignment (different base types)
drivers/crypto/atmel-aes.c:1693:17:    expected unsigned long long [usertype]
drivers/crypto/atmel-aes.c:1693:17:    got restricted __be64 [usertype]
drivers/crypto/atmel-aes.c:1888:63: warning: incorrect type in initializer (different base types)
drivers/crypto/atmel-aes.c:1888:63:    expected unsigned int
drivers/crypto/atmel-aes.c:1888:63:    got restricted __le32 [usertype]

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
---
Cc: Herbert Xu <herbert@gondor.apana.org.au>
Cc: "David S. Miller" <davem@davemloft.net>
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Cc: linux-crypto@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
.. (open list)
---
 drivers/crypto/atmel-aes.c | 30 +++++++++++++++---------------
 1 file changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/crypto/atmel-aes.c b/drivers/crypto/atmel-aes.c
index 026f193556f9..6e658be32c2c 100644
--- a/drivers/crypto/atmel-aes.c
+++ b/drivers/crypto/atmel-aes.c
@@ -117,7 +117,7 @@ struct atmel_aes_ctx {
 struct atmel_aes_ctr_ctx {
 	struct atmel_aes_base_ctx	base;
 
-	u32			iv[AES_BLOCK_SIZE / sizeof(u32)];
+	__be32			iv[AES_BLOCK_SIZE / sizeof(u32)];
 	size_t			offset;
 	struct scatterlist	src[2];
 	struct scatterlist	dst[2];
@@ -129,13 +129,13 @@ struct atmel_aes_gcm_ctx {
 	struct scatterlist	src[2];
 	struct scatterlist	dst[2];
 
-	u32			j0[AES_BLOCK_SIZE / sizeof(u32)];
+	__be32			j0[AES_BLOCK_SIZE / sizeof(u32)];
 	u32			tag[AES_BLOCK_SIZE / sizeof(u32)];
-	u32			ghash[AES_BLOCK_SIZE / sizeof(u32)];
+	__be32			ghash[AES_BLOCK_SIZE / sizeof(u32)];
 	size_t			textlen;
 
-	const u32		*ghash_in;
-	u32			*ghash_out;
+	const __be32		*ghash_in;
+	__be32			*ghash_out;
 	atmel_aes_fn_t		ghash_resume;
 };
 
@@ -388,13 +388,13 @@ static void atmel_aes_write_n(struct atmel_aes_dev *dd, u32 offset,
 }
 
 static inline void atmel_aes_read_block(struct atmel_aes_dev *dd, u32 offset,
-					u32 *value)
+					void *value)
 {
 	atmel_aes_read_n(dd, offset, value, SIZE_IN_WORDS(AES_BLOCK_SIZE));
 }
 
 static inline void atmel_aes_write_block(struct atmel_aes_dev *dd, u32 offset,
-					 const u32 *value)
+					 const void *value)
 {
 	atmel_aes_write_n(dd, offset, value, SIZE_IN_WORDS(AES_BLOCK_SIZE));
 }
@@ -530,7 +530,7 @@ static inline int atmel_aes_complete(struct atmel_aes_dev *dd, int err)
 }
 
 static void atmel_aes_write_ctrl_key(struct atmel_aes_dev *dd, bool use_dma,
-				     const u32 *iv, const u32 *key, int keylen)
+				     const __be32 *iv, const u32 *key, int keylen)
 {
 	u32 valmr = 0;
 
@@ -561,7 +561,7 @@ static void atmel_aes_write_ctrl_key(struct atmel_aes_dev *dd, bool use_dma,
 }
 
 static inline void atmel_aes_write_ctrl(struct atmel_aes_dev *dd, bool use_dma,
-					const u32 *iv)
+					const __be32 *iv)
 
 {
 	atmel_aes_write_ctrl_key(dd, use_dma, iv,
@@ -1450,7 +1450,7 @@ static struct crypto_alg aes_cfb64_alg = {
 
 static int atmel_aes_gcm_ghash(struct atmel_aes_dev *dd,
 			       const u32 *data, size_t datalen,
-			       const u32 *ghash_in, u32 *ghash_out,
+			       const __be32 *ghash_in, __be32 *ghash_out,
 			       atmel_aes_fn_t resume);
 static int atmel_aes_gcm_ghash_init(struct atmel_aes_dev *dd);
 static int atmel_aes_gcm_ghash_finalize(struct atmel_aes_dev *dd);
@@ -1471,7 +1471,7 @@ atmel_aes_gcm_ctx_cast(struct atmel_aes_base_ctx *ctx)
 
 static int atmel_aes_gcm_ghash(struct atmel_aes_dev *dd,
 			       const u32 *data, size_t datalen,
-			       const u32 *ghash_in, u32 *ghash_out,
+			       const __be32 *ghash_in, __be32 *ghash_out,
 			       atmel_aes_fn_t resume)
 {
 	struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
@@ -1558,7 +1558,7 @@ static int atmel_aes_gcm_start(struct atmel_aes_dev *dd)
 
 	memcpy(data, iv, ivsize);
 	memset(data + ivsize, 0, padlen + sizeof(u64));
-	((u64 *)(data + datalen))[-1] = cpu_to_be64(ivsize * 8);
+	((__be64 *)(data + datalen))[-1] = cpu_to_be64(ivsize * 8);
 
 	return atmel_aes_gcm_ghash(dd, (const u32 *)data, datalen,
 				   NULL, ctx->j0, atmel_aes_gcm_process);
@@ -1591,7 +1591,7 @@ static int atmel_aes_gcm_length(struct atmel_aes_dev *dd)
 {
 	struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 	struct aead_request *req = aead_request_cast(dd->areq);
-	u32 j0_lsw, *j0 = ctx->j0;
+	__be32 j0_lsw, *j0 = ctx->j0;
 	size_t padlen;
 
 	/* Write incr32(J0) into IV. */
@@ -1674,7 +1674,7 @@ static int atmel_aes_gcm_tag_init(struct atmel_aes_dev *dd)
 {
 	struct atmel_aes_gcm_ctx *ctx = atmel_aes_gcm_ctx_cast(dd->ctx);
 	struct aead_request *req = aead_request_cast(dd->areq);
-	u64 *data = dd->buf;
+	__be64 *data = dd->buf;
 
 	if (likely(dd->flags & AES_FLAGS_GTAGEN)) {
 		if (!(atmel_aes_read(dd, AES_ISR) & AES_INT_TAGRDY)) {
@@ -1885,7 +1885,7 @@ static int atmel_aes_xts_process_data(struct atmel_aes_dev *dd)
 	struct ablkcipher_request *req = ablkcipher_request_cast(dd->areq);
 	bool use_dma = (req->nbytes >= ATMEL_AES_DMA_THRESHOLD);
 	u32 tweak[AES_BLOCK_SIZE / sizeof(u32)];
-	static const u32 one[AES_BLOCK_SIZE / sizeof(u32)] = {cpu_to_le32(1), };
+	static const __le32 one[AES_BLOCK_SIZE / sizeof(u32)] = {cpu_to_le32(1), };
 	u8 *tweak_bytes = (u8 *)tweak;
 	int i;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
