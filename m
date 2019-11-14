Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBA65FC4AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 11:49:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gdH2mEzxYgICLDVHi46RTvDneLkcQVgb0vd/MdvwWIo=; b=ZLf6KH9gr6cdJk
	ofAc3sppCb7DTYnspGTJaurqwYmF9yObnTOdKg2NlOXxKz0FyjU896xVkTKI51MbQn0801nLiucno
	fCZ/87LzlIusMwUD+Boor9cmWMtJEhYcEqCu/32qTZKFaZ7gJxdxYIlDliuQMdoqRjZjPA7KxwEKK
	JUXdMTU/SDtWZfV7PH9zgPq+YxPTvw2u21Pvt+A+EWNS9GWq1xT4YqsxzJuT36/4fK83rd0II5oaZ
	HOxV/+epxi8O7NcpdO3rH31LBe5Mphnl+3cPFRKL3X6VCIMItt6miLlP0t6/6xqJpWFthSgo6adwa
	ALvWWdL2xKLc7vdBXgRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVChD-000645-5x; Thu, 14 Nov 2019 10:49:51 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVCgn-0005uF-Py
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 10:49:28 +0000
Received: by mail-wr1-x441.google.com with SMTP id r10so5909650wrx.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 02:49:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PsHKqqY8IP1kGma0cvoxtMrhEOwaSBiNr+WZYaEGu0g=;
 b=NOcHHWglfoKO58skQZauX0HJysJ9mN4S6+/mfw7RSDHMs8+6clX4CVpTzVYOz8R7dO
 rBXc73FjmFa3n3a1Er6eaHQiAew4lci0+BOEzL8aq6lEvv0OVq6tJBqX58wCKBnYfUnN
 /SeIUC20vxg7pm6jnlJKsf+8rqnfrNqglyC1N2+3zJjmUKpiW/DXD6sCtHuKAV0gxibc
 LCwmj4J6LiSkPjn0l3YU2aZNkzGpxokdbcZuc2id8DKoQKm9jBjpfgALJ9uyQ9naKv39
 NARuO18x4XX2ng9JxlMUgZYrQbscQ3HCnlSrEkXok7fCR9l7bSv0n92PDtqmYd3uruy/
 NNrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PsHKqqY8IP1kGma0cvoxtMrhEOwaSBiNr+WZYaEGu0g=;
 b=F2NaUY1R4U3Sj8CxpqGKmh46Yv8UGjYnLWJZanRyUn2fnLEhj2fDkTA3JuQ6L7Ietl
 ZnZb22aP8LL5H3OSs8bcWPUjl0dGDbRMzMaMLTgnsPUV7a61Ayxdd7ESWkAr1Da1XUqJ
 i2AC95Rknwc+lkKGMfB0vDzYsti4Y3Ack6le7K12PmDqCK+nbL41HrUXyRubhHXZAnL7
 jlmVByE46L5e4e5/jXY0dMgxGiWPYzCRu0Wlg1c4nxm5YBTgi5ye75oHHJxsdQp/snje
 NO8UhA5HBU+zhXjLCucxPZPFQwYohgDLMzEWZO8Oc38bvkoil889H6b9X8eU+63gVhQS
 DNdQ==
X-Gm-Message-State: APjAAAU6Swg9rscuV3BMgUUBWMUC6ZAlnuEN7CQv6B/AQ5WIwxnAN++2
 yFqN2IxsWH1OrjI93NCSj90=
X-Google-Smtp-Source: APXvYqzW70DVjuUaihSTDR9YctsEX5FZ+s1gUJ7ISZDeUN6w5dhrMPFEcE91FgX+8CB+6kXYCTA1CA==
X-Received: by 2002:a5d:6b51:: with SMTP id x17mr8043604wrw.148.1573728563385; 
 Thu, 14 Nov 2019 02:49:23 -0800 (PST)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id k14sm7229301wrw.46.2019.11.14.02.49.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 02:49:22 -0800 (PST)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 1/2] crypto: sun4i-ss: Fix 64-bit size_t warnings on
 sun4i-ss-hash.c
Date: Thu, 14 Nov 2019 11:49:06 +0100
Message-Id: <20191114104907.10645-1-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_024926_995524_8EA6682A 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If you try to compile this driver on a 64-bit platform then you
will get warnings because it mixes size_t with unsigned int which
only works on 32-bit.

This patch fixes all of the warnings on sun4i-ss-hash.c.
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
index 9930c9ce8971..91cf58db3845 100644
--- a/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
+++ b/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-hash.c
@@ -284,8 +284,8 @@ static int sun4i_hash(struct ahash_request *areq)
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
@@ -305,8 +305,8 @@ static int sun4i_hash(struct ahash_request *areq)
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
@@ -332,8 +332,8 @@ static int sun4i_hash(struct ahash_request *areq)
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
