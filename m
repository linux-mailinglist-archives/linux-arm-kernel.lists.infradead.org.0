Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FB6119478
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:16:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5UiOFAPBe36t0I+djyF5/fniS7q3ysbb/kJavFFSw8o=; b=dgt58otJZegmbt
	D6mB3Alu8kl/LdfZHEnjLVAN31cckpoqAZWx7YsIk6HuaOt6qDYxQ3KIzM8iPlIBJwUo7w+kqM45/
	b5x4Xo1+2dQ14b+xEGC9NHfl5lAY+G6Ag2YWZQbKAOl74MdfenIBCyHG64asUVLwsYP2hcL29N3ON
	lJkjjPk8z2RJerzK1C3Xc/NpMK2Lg3XZoDj4mrCv82duZ/w0JAmpSe1Bpx8hAVCkPKuiLFpfoShKn
	5vBxpmz3K0r92iXfHIbt29EwNpAQHryyyoOzpr+Jy0AIBX53JiDXzqPV7pdlWd4DBGQvqi3q77oKM
	ZMpdyAkqH7wYMChg0nxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemrd-0002H5-Vu; Tue, 10 Dec 2019 21:16:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemp2-0007JS-Ce
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:13:34 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 43A4B2467F;
 Tue, 10 Dec 2019 21:13:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012412;
 bh=nb5yFAF53BWgm75qXbUF4VqZi6/1osmYFffo1aDSVAI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W80mPfBXffffsDyZom/UOQkWaAqVJIEgKRSzKo1FnPWnrwHZPJPIO4KRS7HLe0AL2
 0/MEbnJIw7eXOe9syJ/hZdD8yVoXa6N+8lAl7uASMlm10FdY+Q+tQ2RDTsiu5YkjB+
 S+SeLd1c9reT+M5VOT1vhkoRbx47VvNQf1IkYMzk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 329/350] crypto: sun4i-ss - Fix 64-bit size_t
 warnings
Date: Tue, 10 Dec 2019 16:07:14 -0500
Message-Id: <20191210210735.9077-290-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131332_474344_F92A5C62 
X-CRM114-Status: GOOD (  13.23  )
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

From: Herbert Xu <herbert@gondor.apana.org.au>

[ Upstream commit d6e9da21ee8246b5e556b3b153401ab045adb986 ]

If you try to compile this driver on a 64-bit platform then you
will get warnings because it mixes size_t with unsigned int which
only works on 32-bit.

This patch fixes all of the warnings.

Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Acked-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Tested-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/sunxi-ss/sun4i-ss-cipher.c | 22 ++++++++++++++--------
 1 file changed, 14 insertions(+), 8 deletions(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
index 6536fd4bee657..7e5e092a23b3c 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-cipher.c
@@ -72,7 +72,8 @@ static int noinline_for_stack sun4i_ss_opti_poll(struct skcipher_request *areq)
 	oi = 0;
 	oo = 0;
 	do {
-		todo = min3(rx_cnt, ileft, (mi.length - oi) / 4);
+		todo = min(rx_cnt, ileft);
+		todo = min_t(size_t, todo, (mi.length - oi) / 4);
 		if (todo) {
 			ileft -= todo;
 			writesl(ss->base + SS_RXFIFO, mi.addr + oi, todo);
@@ -87,7 +88,8 @@ static int noinline_for_stack sun4i_ss_opti_poll(struct skcipher_request *areq)
 		rx_cnt = SS_RXFIFO_SPACES(spaces);
 		tx_cnt = SS_TXFIFO_SPACES(spaces);
 
-		todo = min3(tx_cnt, oleft, (mo.length - oo) / 4);
+		todo = min(tx_cnt, oleft);
+		todo = min_t(size_t, todo, (mo.length - oo) / 4);
 		if (todo) {
 			oleft -= todo;
 			readsl(ss->base + SS_TXFIFO, mo.addr + oo, todo);
@@ -239,7 +241,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 			 * todo is the number of consecutive 4byte word that we
 			 * can read from current SG
 			 */
-			todo = min3(rx_cnt, ileft / 4, (mi.length - oi) / 4);
+			todo = min(rx_cnt, ileft / 4);
+			todo = min_t(size_t, todo, (mi.length - oi) / 4);
 			if (todo && !ob) {
 				writesl(ss->base + SS_RXFIFO, mi.addr + oi,
 					todo);
@@ -253,8 +256,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 				 * we need to be able to write all buf in one
 				 * pass, so it is why we min() with rx_cnt
 				 */
-				todo = min3(rx_cnt * 4 - ob, ileft,
-					    mi.length - oi);
+				todo = min(rx_cnt * 4 - ob, ileft);
+				todo = min_t(size_t, todo, mi.length - oi);
 				memcpy(buf + ob, mi.addr + oi, todo);
 				ileft -= todo;
 				oi += todo;
@@ -274,7 +277,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 		spaces = readl(ss->base + SS_FCSR);
 		rx_cnt = SS_RXFIFO_SPACES(spaces);
 		tx_cnt = SS_TXFIFO_SPACES(spaces);
-		dev_dbg(ss->dev, "%x %u/%u %u/%u cnt=%u %u/%u %u/%u cnt=%u %u\n",
+		dev_dbg(ss->dev,
+			"%x %u/%zu %u/%u cnt=%u %u/%zu %u/%u cnt=%u %u\n",
 			mode,
 			oi, mi.length, ileft, areq->cryptlen, rx_cnt,
 			oo, mo.length, oleft, areq->cryptlen, tx_cnt, ob);
@@ -282,7 +286,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 		if (!tx_cnt)
 			continue;
 		/* todo in 4bytes word */
-		todo = min3(tx_cnt, oleft / 4, (mo.length - oo) / 4);
+		todo = min(tx_cnt, oleft / 4);
+		todo = min_t(size_t, todo, (mo.length - oo) / 4);
 		if (todo) {
 			readsl(ss->base + SS_TXFIFO, mo.addr + oo, todo);
 			oleft -= todo * 4;
@@ -308,7 +313,8 @@ static int sun4i_ss_cipher_poll(struct skcipher_request *areq)
 				 * no more than remaining buffer
 				 * no need to test against oleft
 				 */
-				todo = min(mo.length - oo, obl - obo);
+				todo = min_t(size_t,
+					     mo.length - oo, obl - obo);
 				memcpy(mo.addr + oo, bufo + obo, todo);
 				oleft -= todo;
 				obo += todo;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
