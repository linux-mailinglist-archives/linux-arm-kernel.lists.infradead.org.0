Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22C38EFEC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:38:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p0CiIkL8itybm1IZH/ZLNSbHJEWFPeVhVMgEeSTg3B8=; b=iHeu3wmqmnjI5T
	5iAso2nN4GszBxq1QtR7aa1oU6ZItnEs51AVuKVHg3SmqKkMPJ3qbHIoZm+yZAdDW0d79rbEv0+od
	+C3T3Um54LQZ3UgpxPMhRhxKHc8Ymdc6e7p5RQDoT9kKtW0MwVaDHPEK2Q/Do8GnABYNaaCuMmfCg
	9r9kYQz2JIlx58ONbtLTiDV2PzTrvegZmetSJgURByJP6PTodfVfCSTeTYDswnMDRsO2v0fPQRO9r
	fFIyxjIyxMlhSZ4qsruUCHsIalurB4kolEaL0Lzx5J+FXd/Jms5YeyfafEcne5dVDjRFDTrv90oZJ
	lkmPfMp88MM3AIyep64w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRz2S-0001kW-G2; Tue, 05 Nov 2019 13:38:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRytu-0000vx-IR
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:29:41 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3557C21D71;
 Tue,  5 Nov 2019 13:29:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572960577;
 bh=rknUie/5FLh/E/jZRyM9TCKhdP4wfCUrpAV9GEc5nnE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=E/wWkRT1+72Bfqxtj28IFp7rFV8z/yuEpS/qQl3TMKL8c2dj3I0ZdowAcF30fFCxP
 0lDD0DIV/DjC7MaRg2d0gjs5SU5gOMjwsBgSGr9IxJArLE1sflUSLGt8GlNZNrx2q+
 0yMd+7AMsa9NB+O2T4p+5kJ6A9WIeeW77q0NC3AI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 29/29] crypto: ccree - update a stale reference to
 ablkcipher
Date: Tue,  5 Nov 2019 14:28:26 +0100
Message-Id: <20191105132826.1838-30-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105132826.1838-1-ardb@kernel.org>
References: <20191105132826.1838-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_052938_764440_5478EB33 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Herbert Xu <herbert@gondor.apana.org.au>,
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ardb@kernel.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ccree driver does not use the ablkcipher interface but contains
a rudimentary reference to it in the naming of an unrelated macro.
Let's rename it to avoid confusion.

Cc: Gilad Ben-Yossef <gilad@benyossef.com>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
