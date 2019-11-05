Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B9E9EFEC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 14:37:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aaTloU59cDEeykbBgmbJ66H8oeByC1SwZUaeu/juj6Y=; b=YxRKRD3+OCgB1Q
	YKq4rERIhUB2lf4WSQ+LrQ9X7GeRfIgcT8dX1iwHzONg++qj2RR0DuK2peHo2PGWn6/0X9k4C7tU1
	kB/GINrsN7oUUMkVfdvipsXlEItbhyPAqzt6xQopMkQulXY4qzILvJna31OBJx12qd/o4suUuy6AF
	kyEK/YnNQOwRPkVOmIzjmZoLQETVsTfczY4C1pmADlfR48JCYUc6JicN1D9vxCjpnVZJtA9tplW31
	PRjSaJJ0Nkfq7PmCbSW8GMTWvZiot+g35/GYj2pNQ0VG93/zlgqTj0JqOdn3zi0qo41k8IjZbSze6
	lYSy9EvjabLB9hEniUow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRz1q-0001Ih-9g; Tue, 05 Nov 2019 13:37:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRytq-0000sw-Sk
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 13:29:38 +0000
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr [92.154.90.120])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8D4E02190F;
 Tue,  5 Nov 2019 13:29:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572960573;
 bh=9siA7yMMHrQQj/tFGDxCU5tWG0e1feLftg/584iuhrI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wvgyWKgx8DIzqM778cU21vMMfHt7IaAmzxjZh4Ohybc2fX92soAStucb93gfewoVk
 yrOrhewkzKyEchXzCDKRZY1FIHOgsrF1bEgtnVh/VH1DN4114MWDkyUuXVgxzkB3EN
 Q76Y0hOt0DY53u6pXhBdyt9U5AVA6Qvu687fewV8=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v3 27/29] crypto: nx - remove stale comment referring to the
 blkcipher walk API
Date: Tue,  5 Nov 2019 14:28:24 +0100
Message-Id: <20191105132826.1838-28-ardb@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191105132826.1838-1-ardb@kernel.org>
References: <20191105132826.1838-1-ardb@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_052935_064173_C930E305 
X-CRM114-Status: GOOD (  10.38  )
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
Cc: "David S. Miller" <davem@davemloft.net>, Eric Biggers <ebiggers@google.com>,
 Ard Biesheuvel <ardb@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Herbert Xu <herbert@gondor.apana.org.au>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

These drivers do not use either the deprecated blkcipher or the current
skcipher walk API, so this comment must refer to a previous state of the
driver that no longer exists. So drop the comments.

Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 drivers/crypto/nx/nx-aes-ccm.c | 5 -----
 drivers/crypto/nx/nx-aes-gcm.c | 5 -----
 2 files changed, 10 deletions(-)

diff --git a/drivers/crypto/nx/nx-aes-ccm.c b/drivers/crypto/nx/nx-aes-ccm.c
index 84fed736ed2e..4c9362eebefd 100644
--- a/drivers/crypto/nx/nx-aes-ccm.c
+++ b/drivers/crypto/nx/nx-aes-ccm.c
@@ -525,11 +525,6 @@ static int ccm_aes_nx_decrypt(struct aead_request *req)
 	return ccm_nx_decrypt(req, req->iv, req->assoclen);
 }
 
-/* tell the block cipher walk routines that this is a stream cipher by
- * setting cra_blocksize to 1. Even using blkcipher_walk_virt_block
- * during encrypt/decrypt doesn't solve this problem, because it calls
- * blkcipher_walk_done under the covers, which doesn't use walk->blocksize,
- * but instead uses this tfm->blocksize. */
 struct aead_alg nx_ccm_aes_alg = {
 	.base = {
 		.cra_name        = "ccm(aes)",
diff --git a/drivers/crypto/nx/nx-aes-gcm.c b/drivers/crypto/nx/nx-aes-gcm.c
index 898220e159d3..19c6ed5baea4 100644
--- a/drivers/crypto/nx/nx-aes-gcm.c
+++ b/drivers/crypto/nx/nx-aes-gcm.c
@@ -467,11 +467,6 @@ static int gcm4106_aes_nx_decrypt(struct aead_request *req)
 	return gcm_aes_nx_crypt(req, 0, req->assoclen - 8);
 }
 
-/* tell the block cipher walk routines that this is a stream cipher by
- * setting cra_blocksize to 1. Even using blkcipher_walk_virt_block
- * during encrypt/decrypt doesn't solve this problem, because it calls
- * blkcipher_walk_done under the covers, which doesn't use walk->blocksize,
- * but instead uses this tfm->blocksize. */
 struct aead_alg nx_gcm_aes_alg = {
 	.base = {
 		.cra_name        = "gcm(aes)",
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
