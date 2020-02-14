Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D7515E8A5
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 18:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NNVL0tsJ6i/PvKCY2NfzC+uMiZtuSAJFC8erN93rgeo=; b=rudAAhZarpxnWI
	HMRaQTf2mJjBEPrVukhlm1ezoQ7vVbGjYgbxiQVvKZl1mDsjn0M/CICwnUm89P5jxuhFRWHtPOylJ
	cVBC0HwHFPuCWTFNDNs7c58wmQSfxBRJ6iE5p//gN5wvI5qjql1VI9ZbWDSsBuwhmpRiKDWqZB7r5
	BdaUWHldAVRh9wpAeh1QgV5XHeNTlg4CncjxiVQNppYv8IIK1YqfL7bPchJXoO9s2HBsNaEHLUJpw
	lmhdaJos7WvuEmnywx/aDkhm8C77HsQ61jAlzyMKKd0qjJv8D2BmKjnyKL306CyDrAbJ1MnMeJfG3
	VELbAaFFCbsaiaoL8x+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eLZ-00033b-9o; Fri, 14 Feb 2020 17:01:45 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2e78-0000Ga-O5
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Feb 2020 16:46:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=mVcJT4sMvTKIPxMjl4IriqWkrqIIRIDzSUi0pAsqwds=; b=RElQ+4LxbDcMdLvcGSj33pyDZX
 xUBcEVFxcOHPazgqzcbgCjqTMN2GSGJQQj9XQHrWpRnMmTSA715t/K+aWjI3Jzs3NGu5Lyd1QYPzU
 qAecAWi/jIH3s+CSCMCphP8xEmJ25d4t0emq5rAT0Rw6O8jH/d9YNsqZWEsNUKpaHkSgZX62AJx8Y
 pDDm/TXK1H0b1kIoTgPhJVzQnEE5u6tS/z/TC8h8xTpQlMe1Iqzj+mXBnr14G4U1g84oeUDxEYQoc
 vOMOocjJKU+9wg7r+9Ke+Vu+U0vJz5vX+eFDCZaQHF1Le2Pv1/jWXx7ZPHlvBYMQAZbqldaH8bRXd
 6vIZcpCg==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dc6-0007VQ-Ec
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:14:47 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A3446246D1;
 Fri, 14 Feb 2020 16:14:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581696885;
 bh=IfYo5GkUeVfcL4RXB4WcxTzZDrn3bEBNAepBs8eLd9s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=wnvP+A9gBkSDekrajdkmddNjILaFH0cXlzZ3FRtALqKDHsoSNbhZIBGbiZ0Kso/jX
 mF5idyLazO9UrNum2pPkFZcQb9egRuHd1GydDMLVLbzePYnUIVkBLohPw7mjVVD+9H
 e1GQ5EU6C0iNRJBZZi/YcoXFX1WxzGXW4qqtH8Cs=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 139/252] crypto: atmel-sha - fix error handling
 when setting hmac key
Date: Fri, 14 Feb 2020 11:09:54 -0500
Message-Id: <20200214161147.15842-139-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161147.15842-1-sashal@kernel.org>
References: <20200214161147.15842-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sasha Levin <sashal@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Eric Biggers <ebiggers@google.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Eric Biggers <ebiggers@google.com>

[ Upstream commit b529f1983b2dcc46354f311feda92e07b6e9e2da ]

HMAC keys can be of any length, and atmel_sha_hmac_key_set() can only
fail due to -ENOMEM.  But atmel_sha_hmac_setkey() incorrectly treated
any error as a "bad key length" error.  Fix it to correctly propagate
the -ENOMEM error code and not set any tfm result flags.

Fixes: 81d8750b2b59 ("crypto: atmel-sha - add support to hmac(shaX)")
Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
Signed-off-by: Eric Biggers <ebiggers@google.com>
Reviewed-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Signed-off-by: Herbert Xu <herbert@gondor.apana.org.au>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/crypto/atmel-sha.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

diff --git a/drivers/crypto/atmel-sha.c b/drivers/crypto/atmel-sha.c
index ef125d4be8fc4..cb548a0506c54 100644
--- a/drivers/crypto/atmel-sha.c
+++ b/drivers/crypto/atmel-sha.c
@@ -1921,12 +1921,7 @@ static int atmel_sha_hmac_setkey(struct crypto_ahash *tfm, const u8 *key,
 {
 	struct atmel_sha_hmac_ctx *hmac = crypto_ahash_ctx(tfm);
 
-	if (atmel_sha_hmac_key_set(&hmac->hkey, key, keylen)) {
-		crypto_ahash_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
-		return -EINVAL;
-	}
-
-	return 0;
+	return atmel_sha_hmac_key_set(&hmac->hkey, key, keylen);
 }
 
 static int atmel_sha_hmac_init(struct ahash_request *req)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
