Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EC4211948B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 22:16:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DG0qzVlpHZJGS4W+hYIfn17NOeTKNPK5m7ZqiPqNCI8=; b=HjD6QAZmb7vuVz
	XmyEl+cb1uSHnoMcaJiBwN0UYYQJIBkJFT4reDNnHadqAcFjD0wc4qpgoChjPfdDFnM14/BJHwvid
	UGi8eHgdW0xAUO/jd6ep1jE3DaZkddIPyqVtVARHWyFIF9RrbIrVIiZ5WWMD+JV9y4d4KRG2EiJuJ
	X58MUYyWWz1UINbrJmJRk2zwx/nvmWjBvYWoGiKlGkVn4xrZRSBNDyWdFjvMHSC7QGunT5rC8tQmf
	3YwQKNWoHB7onBSphG83A1t1J/plRxP4I1jaPUudXaqpKU3XRjcJd0yW48ZFa6/x1EMrh+qgtZjHP
	7zmbkJWnu0QD6p1+zhlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iemrs-0002Sy-L4; Tue, 10 Dec 2019 21:16:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iemp5-0007M9-VS
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 21:13:38 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2BCDF214D8;
 Tue, 10 Dec 2019 21:13:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576012414;
 bh=eIQ0z7KFrVi9cIMOCkXs+VUcprEsuWDL5eY/GTbXQ8g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=PUU5xt0KPUN49hcxkZ9nFzwPHkG/+H4xqiY78qECKhehP4COzer7TC4v4R/UP2fbG
 QyHRlsvReY7qJgJpVls2nYzxpPCmN4zIuQz79gvmebEstmXzk6r6k6aPHAjvRS1PqI
 SM7cUuQBB3C6VLVSqvgZkxWr8L2zDLLZqoEtztyM=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 331/350] crypto: sun4i-ss - Fix 64-bit size_t
 warnings on sun4i-ss-hash.c
Date: Tue, 10 Dec 2019 16:07:16 -0500
Message-Id: <20191210210735.9077-292-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191210210735.9077-1-sashal@kernel.org>
References: <20191210210735.9077-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_131336_066479_1D7199A0 
X-CRM114-Status: GOOD (  10.66  )
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

[ Upstream commit a7126603d46fe8f01aeedf589e071c6aaa6c6c39 ]

If you try to compile this driver on a 64-bit platform then you
will get warnings because it mixes size_t with unsigned int which
only works on 32-bit.

This patch fixes all of the warnings on sun4i-ss-hash.c.
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/sunxi-ss/sun4i-ss-hash.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/sunxi-ss/sun4i-ss-hash.c b/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
index fcffba5ef9276..1369c5fa30871 100644
--- a/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
+++ b/drivers/crypto/sunxi-ss/sun4i-ss-hash.c
@@ -272,8 +272,8 @@ static int sun4i_hash(struct ahash_request *areq)
 			 */
 			while (op->len < 64 && i < end) {
 				/* how many bytes we can read from current SG */
-				in_r = min3(mi.length - in_i, end - i,
-					    64 - op->len);
+				in_r = min(end - i, 64 - op->len);
+				in_r = min_t(size_t, mi.length - in_i, in_r);
 				memcpy(op->buf + op->len, mi.addr + in_i, in_r);
 				op->len += in_r;
 				i += in_r;
@@ -293,8 +293,8 @@ static int sun4i_hash(struct ahash_request *areq)
 		}
 		if (mi.length - in_i > 3 && i < end) {
 			/* how many bytes we can read from current SG */
-			in_r = min3(mi.length - in_i, areq->nbytes - i,
-				    ((mi.length - in_i) / 4) * 4);
+			in_r = min_t(size_t, mi.length - in_i, areq->nbytes - i);
+			in_r = min_t(size_t, ((mi.length - in_i) / 4) * 4, in_r);
 			/* how many bytes we can write in the device*/
 			todo = min3((u32)(end - i) / 4, rx_cnt, (u32)in_r / 4);
 			writesl(ss->base + SS_RXFIFO, mi.addr + in_i, todo);
@@ -320,8 +320,8 @@ static int sun4i_hash(struct ahash_request *areq)
 	if ((areq->nbytes - i) < 64) {
 		while (i < areq->nbytes && in_i < mi.length && op->len < 64) {
 			/* how many bytes we can read from current SG */
-			in_r = min3(mi.length - in_i, areq->nbytes - i,
-				    64 - op->len);
+			in_r = min(areq->nbytes - i, 64 - op->len);
+			in_r = min_t(size_t, mi.length - in_i, in_r);
 			memcpy(op->buf + op->len, mi.addr + in_i, in_r);
 			op->len += in_r;
 			i += in_r;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
