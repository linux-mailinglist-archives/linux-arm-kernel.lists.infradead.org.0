Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D7BF1B77F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 16:06:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u9IX3PVxakOtddGubpwb5KlKhUjKWPPKAg0PC78VcB8=; b=bo/Y0l/rBqdqXOvg2gQG30GE8i
	KpvW0pi3cWm91o7JIHCgycDX/7ahlyfgEgyqD51rv8x5F/KYk75jzDQv8iKZOO6Nk9Q9ND5BXNOMV
	g+wQxxNUlmDJ2kBxeAWjuF6O8eGEa3vkpUZ6yAa/qkPX8dNjoXZoFEMhkhoSX9bq7QMAGl4vHXoXQ
	OUiwlSTgEt2Wmn8FL09vEllmVIjH4FqJt4xz0vmLmBBQ7VRwWhC3lf9D71e0ki7ZeMDEqdRnAnhNL
	i0lsy2ok4CDvng7x1g48WRP1yuEfjiUotKsIcyKFoZ9ldlIj2Aq4+1UFwYaVzkWMJtcKrb6FsuFyd
	lo3KYYbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRyy4-0007ow-Ky; Fri, 24 Apr 2020 14:06:12 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRyum-0002lx-Cb
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 14:02:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id x17so10212443wrt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Apr 2020 07:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=g8U0XNbBq8ssolXmS0TLiEjhDwf6nz3yMHXDCMAD7sc=;
 b=DvyaBcQJNGWVZFD/KC3yEryBXIDwQgzX41kqbDE1JtzMJeRsGTiVE4RWEsUE2jKI4d
 WfDzZKJ+X8l2lVeS4suyru8mstxkQJUBzRsPR2D2bUZsWxsmfnuNRDPJyxTpUggfQIx6
 NODPu6tDNArn+nEEPr+O+0cBOsAzVuw1C4uGje7mWI9Z9J8WROFtBgOnMjS9N65wsNrW
 CtZIA5Q5x7bH+Jlpq00ngCzFugkIVG+kXL3DpgsRkNA7BE8qkrntot8y6mARKJXaE0EC
 N5F3X/CI5wuyMldZo4zqKO6yXtXKuc5cYn1zmUrW8CelFcfYh3c3gJbPtZtdW2y8D0Yi
 gtDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=g8U0XNbBq8ssolXmS0TLiEjhDwf6nz3yMHXDCMAD7sc=;
 b=Mepxu53X5VYcTJxojGNKcblLSP3UPN8wHX8gwhUprhQAN2J6LUw8kF5suhZ7OAidYt
 2bQTrDIgGbixZ6maJiZCR3pVtD6Ui7bIAKXQ263EBaiXoN+qRmtbzbX+mNh0nta8rDdB
 jb1S473m9/hV3Q6Aip0zdCYtl+59KoKq3Mdr9JX7tBW0wIDGY8MOkH6tHqvyr/4Orhlk
 UDcXvVidu+wGJymaI0uv+zKWrhBq94TwixCCrj0DKFAv+0mBRXyrSGsV1gyUd+g44eub
 c+wTXX4yVQK+CgcHh984Zkl6huaJkKXxKszCV62dbz7aqkHo+1cqQvcdjnnythLvrotD
 rtgw==
X-Gm-Message-State: AGi0PubHKf8tmbEQxkNkA2WPmOyQTWn78ughBGrRiPmI/Zn2bUAknVGT
 lEWy2+sbkO4FBkUk5ewISwyTmQ==
X-Google-Smtp-Source: APiQypKpesTpZF+Cl8O0C7Cg5hyDE+qe5ZCnpiV8wq9RtKMvRqWamf8VuzxeA/XldX6c4hfQW95pXg==
X-Received: by 2002:a5d:5745:: with SMTP id q5mr12047098wrw.351.1587736966051; 
 Fri, 24 Apr 2020 07:02:46 -0700 (PDT)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id v131sm3061051wmb.19.2020.04.24.07.02.44
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 Apr 2020 07:02:44 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mripard@kernel.org,
 wens@csie.org
Subject: [PATCH v2 10/14] crypto: sun8i-ce: rename has_t_dlen_in_bytes to
 cipher_t_dlen_in_bytes
Date: Fri, 24 Apr 2020 14:02:10 +0000
Message-Id: <1587736934-22801-11-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
References: <1587736934-22801-1-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_070248_450511_F48165A2 
X-CRM114-Status: GOOD (  15.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
index d662dac83361..ee7add582e90 100644
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
index 80f7918fbea8..8bc669f18010 100644
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
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
