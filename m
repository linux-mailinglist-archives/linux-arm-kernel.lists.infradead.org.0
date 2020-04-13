Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7A0F1A64DB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Apr 2020 11:59:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8EC9GNK9Y7G9bqN4zYm869PmUlwfbxCI5727pCLvoT4=; b=S8DqRnq2lcMJ1CgV19YO9CLr54
	MAxp1t0T3/7IikC6wIBISrhyX4DKaq1Avxge2CK0Mt5Klsebtty7tWeyo6QBJmp0BO8CZxUoT0Lj9
	VL3MOly+cQlogh0UqM+rb+VydKxcZKBrzb6LtW76Jn8grPfeTZ424c/PvlAKcs+oiA/3PJnASrPJ6
	3b7KsWZBoaiP2THulZevHEbuXiYqy//wMYFs4v7y/NaXTvKDVnfWI/55iYnMQh62vFPMFFVg0YdLN
	ZiycWRApQAsdvoAhGzoICCRlr3r5RnuCI1EDxKjRmzrwDE/z5WhGbGnXzb1zID2YpTemAUNqp34zO
	CDnKzZ4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNvrw-0006lp-DD; Mon, 13 Apr 2020 09:59:08 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNvrC-0006I4-I6
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 09:58:24 +0000
Received: by mail-wm1-x342.google.com with SMTP id a81so9361686wmf.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 02:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=270315LatKcm38YiOphCjAz8sg6iPQPMFxeWxayqEdo=;
 b=V6JnyI75UT97f+5QqWt2Mq+/Bb3RSLqVqHd4i2+jJkGS980UK2nb3+RYrwiMJiZIL0
 R7mZBwwvs8f5TDSpz1+ZJEwWO6fnF3S1xw24ZzWMCAwr78HaSBU19UxVWYHc7JvtznSJ
 V0XsHSJifoS5OnY7BaHuznRqgm/cVLmkwPSod3mZY0ITbptLlwnjtdl0mAdBcPMwrjQw
 VHSlAp6JIGRmE5UVVHp5Hn38aJZijAsioiBoevIctpCN+dujrqdDoHxwdbxaYjzBxlL4
 Hqr4ZL9ta5PO+1HiguM8G9zmpUNWCW78Qtzmh2y5DRJVth0Dshlryj1gQrsEY30PLO9T
 GzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=270315LatKcm38YiOphCjAz8sg6iPQPMFxeWxayqEdo=;
 b=puUYfJ25yY6tHDe0+Z4ZgVIV+efovV7iVT2d+vfn6KCWAdLZiPW1RXIymzaxX60wrX
 00oKdD9jrBZ3hAZWWiSdw3nQUQAlxE2vo+1BNEErQrAsNuhr+afVXbQtrpJW37yxIUbh
 BXUU5k7x8qlDuK59DOWIfZUvpEVTrPLFu/jKNttvRxy25rcnzViKYafD05eQqD30mDLx
 du+oiNKxS/gA6HryTuhCyFaad3/ZUzTGlaU0fv2M2A5a0ZfHnenzkI5nDxbz8FKKCHqy
 hY4d29FGxEjzo7nvxoLT/4aWXGoXE3N2etNi9c5gG6briXHl7kQyC5k6rljNcKz6DGiI
 E4IQ==
X-Gm-Message-State: AGi0PuYgTWiP4ddTBL+aqR0P3o28oot4km1JhaGLy8TAchqHmR5f6eOa
 LbVsZP2tcPbMoTuF7lP2Fctbtw==
X-Google-Smtp-Source: APiQypIANujX5GHsxzoYJ0LgpUK0yajFTkKBgNnm04d5pRrhJmcngZ9YuxjjrUOOI3lQx00GwMm3hg==
X-Received: by 2002:a1c:e903:: with SMTP id q3mr6020114wmc.76.1586771901101;
 Mon, 13 Apr 2020 02:58:21 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v21sm13594491wmj.8.2020.04.13.02.58.20
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 02:58:20 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH 5/9] crypto: sun8i-ce: rename has_t_dlen_in_bytes to
 cipher_t_dlen_in_bytes
Date: Mon, 13 Apr 2020 09:58:05 +0000
Message-Id: <1586771889-3299-6-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
References: <1586771889-3299-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_025822_592694_18053576 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hash algorithms will need also a spetial t_dlen handling, but since the
meaning will be different, rename the current flag to specify it apply
only on ciphers algorithms.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c | 2 +-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c   | 2 +-
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h        | 4 ++--
 3 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
index fc0a2299c701..0af1e4db2beb 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -122,7 +122,7 @@ static int sun8i_ce_cipher_prepare(struct crypto_engine *engine, void *async_req
 	common |= rctx->op_dir | CE_COMM_INT;
 	cet->t_common_ctl = cpu_to_le32(common);
 	/* CTS and recent CE (H6) need length in bytes, in word otherwise */
-	if (ce->variant->has_t_dlen_in_bytes)
+	if (ce->variant->cipher_t_dlen_in_bytes)
 		cet->t_dlen = cpu_to_le32(areq->cryptlen);
 	else
 		cet->t_dlen = cpu_to_le32(areq->cryptlen / 4);
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
index dbe2e0c3a4f2..7dcdf674058b 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -61,7 +61,7 @@ static const struct ce_variant ce_h6_variant = {
 	},
 	.op_mode = { CE_OP_ECB, CE_OP_CBC
 	},
-	.has_t_dlen_in_bytes = true,
+	.cipher_t_dlen_in_bytes = true,
 	.ce_clks = {
 		{ "bus", 0, 200000000 },
 		{ "mod", 300000000, 0 },
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
index ed1a91da967b..0a70fcc102f1 100644
--- a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -97,7 +97,7 @@ struct ce_clock {
  * @alg_cipher:	list of supported ciphers. for each CE_ID_ this will give the
  *              coresponding CE_ALG_XXX value
  * @op_mode:	list of supported block modes
- * @has_t_dlen_in_bytes:	Does the request size for cipher is in
+ * @cipher_t_dlen_in_bytes:	Does the request size for cipher is in
  *				bytes or words
  * @ce_clks:	list of clocks needed by this variant
  * @esr:	The type of error register
@@ -105,7 +105,7 @@ struct ce_clock {
 struct ce_variant {
 	char alg_cipher[CE_ID_CIPHER_MAX];
 	u32 op_mode[CE_ID_OP_MAX];
-	bool has_t_dlen_in_bytes;
+	bool cipher_t_dlen_in_bytes;
 	struct ce_clock ce_clks[CE_MAX_CLOCKS];
 	int esr;
 };
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
