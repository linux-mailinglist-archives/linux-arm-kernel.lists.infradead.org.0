Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5794715E6D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Feb 2020 17:51:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NRUgSXwS3mGiD8la9Tz2IUNFnd0x7hFKZYoa29HnYcY=; b=kbOqjgxiRtGyj0
	QF6bhF3wxG4VW6oVGUNmWM9h0IU5I8YrYNNxm8ozWvSndQxCGLaSK9lPwXmyxqPAtSZiDWDN7PqFz
	/rzxNvLNI//K5qa7TkZlNt5Gc43OjdsY/Y7rRfOevGJVItHql0KQkME2/Vzfz/7NE4NLlXe/ARcg6
	F6yMgrLMm1UU6aSAJpoSlJwDafe1UC6/KL58oUaWIVgxpJR0Zzi97M+SGWeRpwGDqLT2mEYb6x4Rx
	evhJJeOtZbRic29AN26LJQe2DKIINzELU6gC9Ud/bXRgO6jXRdB/BImExUL6iMcaCqK7Z7G25jN1R
	szaD32YgaA9w1ON9UPPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2eBB-0006VB-I4; Fri, 14 Feb 2020 16:51:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dgk-0002Wf-0Z
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Feb 2020 16:19:35 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D07624723;
 Fri, 14 Feb 2020 16:19:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581697173;
 bh=LM7wiUu+ffIB5ULfVlTb2KRdHpbm5rIab5qqr09YXkc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yyNLFmDvF+3c6Hqb5AvJvd7xG8dajR3QBWH8dYcvR/BABhITUXsS6flgPMu2q9wJR
 VNJQ2qUgVu5+gVGznvfF29YbXXpNkKTsYUOXATVoht97ZNYf1IP/joaWq9l7/cNZRR
 VPdv6/9bc8aDxDgcD3gJK5LDLlxJkN01ARa3x7iw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 106/186] crypto: atmel-sha - fix error handling
 when setting hmac key
Date: Fri, 14 Feb 2020 11:15:55 -0500
Message-Id: <20200214161715.18113-106-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214161715.18113-1-sashal@kernel.org>
References: <20200214161715.18113-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_081934_154170_738DC0CA 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
index 3e2f41b3eaf3a..15e68774034ae 100644
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
