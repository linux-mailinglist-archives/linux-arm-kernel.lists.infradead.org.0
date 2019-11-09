Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3BFF60A3
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:20:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yShiiSd4v1cdk2qvbeLVB7Ar7K0WhlLvhlrueHDwxAE=; b=RcpRK3WTOJsUM/8i0uMBF9+jrp
	dBvNWz5CY/Q3HzZH4/hawf5nzTaVTFBXBkxiSIzw+J6hA6IbK8hcH1ExnhqQbu1hIJkTsg9drGbXK
	3k1DvUYkim5y+iv/YYmoZPEIK0+EgQXLjOFYapZOA+TUNR1UQTY0b1Drb4ElKSN9V6385j2AQ5HaD
	C8MLM0DkSgTfGX1zcqeKrCBuPYVahhZxizr9r5KLF9pS+ac8Amc4UIiFhCK6f8DyXUaky9r9uuTmW
	QKwMuHesUyRZAx1DIfOkwVkaKKM3pPNJbcx+7kd5Ieqx4ISl4p4ryMHoUZuN0YyxP+nlTZDEagkd1
	QqnY6eoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUPg-00063d-B5; Sat, 09 Nov 2019 17:20:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUH5-0005DJ-9O
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:11:49 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE47B20869;
 Sat,  9 Nov 2019 17:11:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573319506;
 bh=hfc1/O945SnRL73VHWK31MFGF1og32LtjQd9E+nXHF0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W3EzBEIDVBXibH4a70ye2OjYy209vk0VBATiqiAEepWZHpwdkkiFNb72Cval9WDbj
 bay+ysJ2nBbjPUPG+ldvxN6erpnhFyAUKDYMKSHuCWSsLZi+H6jW8UvJu15k7dRsqB
 D8oizQruJ0aI5PBGBPgvIduft2MeOI0aaFjxLw98=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v4 29/29] crypto: ccree - update a stale reference to
 ablkcipher
Date: Sat,  9 Nov 2019 18:09:54 +0100
Message-Id: <20191109170954.756-30-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191109170954.756-1-ardb@kernel.org>
References: <20191109170954.756-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_091147_468978_976CE442 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ccree driver does not use the ablkcipher interface but contains
a rudimentary reference to it in the naming of an unrelated macro.
Let's rename it to avoid confusion.

Acked-by: Gilad Ben-Yossef <gilad@benyossef.com>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/ccree/cc_cipher.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/ccree/cc_cipher.c b/drivers/crypto/ccree/cc_cipher.c
index 254b48797799..3112b58d0bb1 100644
--- a/drivers/crypto/ccree/cc_cipher.c
+++ b/drivers/crypto/ccree/cc_cipher.c
@@ -16,7 +16,7 @@
 #include "cc_cipher.h"
 #include "cc_request_mgr.h"
 
-#define MAX_ABLKCIPHER_SEQ_LEN 6
+#define MAX_SKCIPHER_SEQ_LEN 6
 
 #define template_skcipher	template_u.skcipher
 
@@ -822,7 +822,7 @@ static int cc_cipher_process(struct skcipher_request *req,
 	void *iv = req->iv;
 	struct cc_cipher_ctx *ctx_p = crypto_tfm_ctx(tfm);
 	struct device *dev = drvdata_to_dev(ctx_p->drvdata);
-	struct cc_hw_desc desc[MAX_ABLKCIPHER_SEQ_LEN];
+	struct cc_hw_desc desc[MAX_SKCIPHER_SEQ_LEN];
 	struct cc_crypto_req cc_req = {};
 	int rc;
 	unsigned int seq_len = 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
