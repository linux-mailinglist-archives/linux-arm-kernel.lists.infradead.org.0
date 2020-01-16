Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5591613EEC9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t+4Dbp6T8PWjV/Z44KVUFZ4CuP0fyZFi/Cf++CEBObQ=; b=CvlehnC6QDIRLA
	Vf5wTytn6XiS25x3OeKeH7C3qKvvS82KLwqIN2juEzzTctIkFEeWW1A6TFgdeABVC7anWeuEPdUXO
	x8y5/ESLAIa4n9SRFwLQ2g8KvTmkkmNfq/jTSl13ny1A6NiJxbDOPk0L9133ezcx95HUzQYkJm4wy
	/KWvVJqC7+X3la3C+ZnxvZ0TwXK2QbmYBDb4w26dE1BA3YioSvogemKBsB+FYCUpw9TpIz/eXfcFw
	oKI/flG/SYH+s96Gh94buCzpmgriyZujhuQPD/CvktbrurS43OWt0oFY+jf5g3vTtX7KiBwzY7xXY
	Z52Z5LJ74zLg54wOYwpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9c5-0002Gc-6G; Thu, 16 Jan 2020 18:11:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8z3-0000me-WF
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:31:18 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6EE44246A9;
 Thu, 16 Jan 2020 17:31:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195865;
 bh=qlxTtlN5xuOOnTNEZfsLFK+BikNN2h6MU/dqbxNxv24=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WcHiL3REflSSjWItgR9Sarr/g89EWO53GiL3tOaYkNebVkaT4LhWQzfuWAe4TJ3r8
 SVYP6XH8VIrG84h1+9xrt1iaFfeVRouBWbu8pSNwJhw4RbS25IvdPkwS8g93X+6XqI
 X3lAg7s3De6nj7frjfFuewSur6xUO8AXfCLagkBw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 362/371] crypto: sun4i-ss - fix big endian issues
Date: Thu, 16 Jan 2020 12:23:54 -0500
Message-Id: <20200116172403.18149-305-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_093106_098455_6F5BD12C 
X-CRM114-Status: GOOD (  13.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Corentin Labbe <clabbe.montjoie@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Corentin Labbe <clabbe.montjoie@gmail.com>

[ Upstream commit d1d787bcebfe122a5bd443ae565696661e2e9656 ]

When testing BigEndian kernel, the sun4i-ss was failling all crypto
tests.
This patch fix endian issues with it.

Fixes: 6298e948215f ("crypto: sunxi-ss - Add Allwinner Security System crypto accelerator")
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/sunxi-ss/sun4i-ss-hash.c | 21 +++++++++++----------
 1 file changed, 11 insertions(+), 10 deletions(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-hash.c b/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
index 1a724263761b..2d178e013535 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
@@ -179,7 +179,7 @@ static int sun4i_hash(struct ahash_request *areq)
 	 */
 	unsigned int i = 0, end, fill, min_fill, nwait, nbw = 0, j = 0, todo;
 	unsigned int in_i = 0;
-	u32 spaces, rx_cnt = SS_RX_DEFAULT, bf[32] = {0}, wb = 0, v, ivmode = 0;
+	u32 spaces, rx_cnt = SS_RX_DEFAULT, bf[32] = {0}, v, ivmode = 0;
 	struct sun4i_req_ctx *op = ahash_request_ctx(areq);
 	struct crypto_ahash *tfm = crypto_ahash_reqtfm(areq);
 	struct sun4i_tfm_ctx *tfmctx = crypto_ahash_ctx(tfm);
@@ -188,6 +188,7 @@ static int sun4i_hash(struct ahash_request *areq)
 	struct sg_mapping_iter mi;
 	int in_r, err = 0;
 	size_t copied = 0;
+	__le32 wb = 0;
 
 	dev_dbg(ss->dev, "%s %s bc=%llu len=%u mode=%x wl=%u h0=%0x",
 		__func__, crypto_tfm_alg_name(areq->base.tfm),
@@ -399,7 +400,7 @@ static int sun4i_hash(struct ahash_request *areq)
 
 		nbw = op->len - 4 * nwait;
 		if (nbw) {
-			wb = *(u32 *)(op->buf + nwait * 4);
+			wb = cpu_to_le32(*(u32 *)(op->buf + nwait * 4));
 			wb &= GENMASK((nbw * 8) - 1, 0);
 
 			op->byte_count += nbw;
@@ -408,7 +409,7 @@ static int sun4i_hash(struct ahash_request *areq)
 
 	/* write the remaining bytes of the nbw buffer */
 	wb |= ((1 << 7) << (nbw * 8));
-	bf[j++] = wb;
+	bf[j++] = le32_to_cpu(wb);
 
 	/*
 	 * number of space to pad to obtain 64o minus 8(size) minus 4 (final 1)
@@ -427,13 +428,13 @@ static int sun4i_hash(struct ahash_request *areq)
 
 	/* write the length of data */
 	if (op->mode == SS_OP_SHA1) {
-		__be64 bits = cpu_to_be64(op->byte_count << 3);
-		bf[j++] = lower_32_bits(bits);
-		bf[j++] = upper_32_bits(bits);
+		__be64 *bits = (__be64 *)&bf[j];
+		*bits = cpu_to_be64(op->byte_count << 3);
+		j += 2;
 	} else {
-		__le64 bits = op->byte_count << 3;
-		bf[j++] = lower_32_bits(bits);
-		bf[j++] = upper_32_bits(bits);
+		__le64 *bits = (__le64 *)&bf[j];
+		*bits = cpu_to_le64(op->byte_count << 3);
+		j += 2;
 	}
 	writesl(ss->base + SS_RXFIFO, bf, j);
 
@@ -475,7 +476,7 @@ static int sun4i_hash(struct ahash_request *areq)
 		}
 	} else {
 		for (i = 0; i < 4; i++) {
-			v = readl(ss->base + SS_MD0 + i * 4);
+			v = cpu_to_le32(readl(ss->base + SS_MD0 + i * 4));
 			memcpy(areq->result + i * 4, &v, 4);
 		}
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
