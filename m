Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00BD3572CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 22:43:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rwfA5eilQY/yKcBUraRMxqYHmoA3ScvPPgGsXiIC+hg=; b=ZkspiLx2Lr3bBR
	fmCKB0i95/n1ghgRP7vxoJey1z84xmQT6AlAfyAKpYNbUdjxcXJUR8j6GGVSk6jtwncpkjiyVHlAI
	1wU/9CT2UcTmhPrWcBLn/ZslUgCaaUsHI1FYUPHDw10b85SXTuGp06Gfp2nG2ftZQhYDT7+jx/Wjx
	lynkROX6ZBlLC9DlFLZ9A7se9KCktl2JXwz1/uyIvf990077iJn+itV/4nXBX8gpjYz3wegACAUv9
	hhcLwqmAFcA1Yfabktoamnd7YA3at4BsyhBaWDzZvmKiVdRJf/ag5KpbFWAAoE15rGDJZkWCvpyZ/
	MeSbulALpbx9tMr3tnmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEku-0004CJ-IW; Wed, 26 Jun 2019 20:43:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEiv-0003Mr-0V
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 20:40:59 +0000
Received: by mail-wr1-x443.google.com with SMTP id p13so4248234wru.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 13:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qsECSzDwZmZWjunZWkZ4/sxN9oyV7lbTfmYWPWEtO7o=;
 b=FuRzHg6WARvoMr4E98EICb8lwwzIkbNBKvhn//9fQIZP0++3MvWAoCSrdGYu8BCegm
 5ISVo6liu2D7Wo8iyygHWiH0pepQFFzZ59L+Y5efKzNWIRpBllpV+SBsfvNuTG9GnNny
 ZUMOlkGUgaQT3cliACBRB6tqcbJ2jE9miSPiinOPLUrNbI+M/uQBIDhKlbpmZ6pOw9+z
 Y7J0Wogs6S1do87Ht/xrJhSzF1Fii0Drd+eM/u8hTZKTyXw547DaqLmLCuox/Egkbyuh
 NbILSRFmsOXMBCiPHzh3brPgtl7mkkYGIGJSSyO9ATt7lHHJv+H+Pw2f988YEk1NyzF8
 B/qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qsECSzDwZmZWjunZWkZ4/sxN9oyV7lbTfmYWPWEtO7o=;
 b=Sgsk6UKkPYdJbJ4N0kgucrGJF3lFyqmN8itL1k5fWGXkghvVbKSEA5+BFPzI0XSYsH
 OVOj3p0sVsLRiyHvL2aOcmQLHOt5qX4ZpWBMmWrDVjFhb4PZctf3+6Mg1rBOff/kt0JT
 HzkWlNHg0pDpKzQ2olozIcYnITd5RHYHHrlj2C5MOkB0cMEzeh54ZeN9dj6Cj0DxeDDf
 Qi6ie//8ZdjZLc8jkqoEE5nD0M3QmoSpm7bV4p78F3dNNv+IoxUD0i82F3WJPq5AiPqL
 gJYFBaJqG2pHZ645PezOvMEWfw093c5waTYek1M3+xk63/ZyTxLIZwHCUb/72M4+mUId
 ZAvA==
X-Gm-Message-State: APjAAAXo3RD7HEkO1hD2YXo2s8nsuhnlhKNqQGFPW12Wp56nTZg1GUmZ
 esOsRF3yX+jr/GFSZw8CpbXBGg==
X-Google-Smtp-Source: APXvYqwT2vdUDZjOVAKI7TP1MpC5tHuP5aufQx/van5wF9QyBVhZM2u4wH+aKT/EYsX6kPH2BZ1frA==
X-Received: by 2002:adf:e691:: with SMTP id r17mr5121901wrm.67.1561581655279; 
 Wed, 26 Jun 2019 13:40:55 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:9c7f:f574:ee94:7dec])
 by smtp.gmail.com with ESMTPSA id 32sm35164587wra.35.2019.06.26.13.40.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 13:40:54 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v5 3/7] md: dm-crypt: infer ESSIV block cipher from cipher
 string directly
Date: Wed, 26 Jun 2019 22:40:43 +0200
Message-Id: <20190626204047.32131-4-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
References: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_134057_059494_B282A7FA 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Eric Biggers <ebiggers@google.com>, Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 linux-fscrypt@vger.kernel.org, Gilad Ben-Yossef <gilad@benyossef.com>,
 dm-devel@redhat.com, Milan Broz <gmazyland@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Instead of allocating a crypto skcipher tfm 'foo' and attempting to
infer the encapsulated block cipher from the driver's 'name' field,
directly parse the string that we used to allocated the tfm. These
are always identical (unless the allocation failed, in which case
we bail anyway), but using the string allows us to use it in the
allocation, which is something we will need when switching to the
'essiv' crypto API template.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/md/dm-crypt.c | 35 +++++++++-----------
 1 file changed, 15 insertions(+), 20 deletions(-)

diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index 1b16d34bb785..f001f1104cb5 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -2321,25 +2321,17 @@ static int crypt_ctr_ivmode(struct dm_target *ti, const char *ivmode)
  * The cc->cipher is currently used only in ESSIV.
  * This should be probably done by crypto-api calls (once available...)
  */
-static int crypt_ctr_blkdev_cipher(struct crypt_config *cc)
+static int crypt_ctr_blkdev_cipher(struct crypt_config *cc, char *alg_name)
 {
-	const char *alg_name = NULL;
 	char *start, *end;
 
 	if (crypt_integrity_aead(cc)) {
-		alg_name = crypto_tfm_alg_name(crypto_aead_tfm(any_tfm_aead(cc)));
-		if (!alg_name)
-			return -EINVAL;
 		if (crypt_integrity_hmac(cc)) {
 			alg_name = strchr(alg_name, ',');
 			if (!alg_name)
 				return -EINVAL;
 		}
 		alg_name++;
-	} else {
-		alg_name = crypto_tfm_alg_name(crypto_skcipher_tfm(any_tfm(cc)));
-		if (!alg_name)
-			return -EINVAL;
 	}
 
 	start = strchr(alg_name, '(');
@@ -2434,6 +2426,20 @@ static int crypt_ctr_cipher_new(struct dm_target *ti, char *cipher_in, char *key
 	if (*ivmode && !strcmp(*ivmode, "lmk"))
 		cc->tfms_count = 64;
 
+	if (crypt_integrity_aead(cc)) {
+		ret = crypt_ctr_auth_cipher(cc, cipher_api);
+		if (ret < 0) {
+			ti->error = "Invalid AEAD cipher spec";
+			return -ENOMEM;
+	       }
+	}
+
+	ret = crypt_ctr_blkdev_cipher(cc, cipher_api);
+	if (ret < 0) {
+		ti->error = "Cannot allocate cipher string";
+		return -ENOMEM;
+	}
+
 	cc->key_parts = cc->tfms_count;
 
 	/* Allocate cipher */
@@ -2445,21 +2451,10 @@ static int crypt_ctr_cipher_new(struct dm_target *ti, char *cipher_in, char *key
 
 	/* Alloc AEAD, can be used only in new format. */
 	if (crypt_integrity_aead(cc)) {
-		ret = crypt_ctr_auth_cipher(cc, cipher_api);
-		if (ret < 0) {
-			ti->error = "Invalid AEAD cipher spec";
-			return -ENOMEM;
-		}
 		cc->iv_size = crypto_aead_ivsize(any_tfm_aead(cc));
 	} else
 		cc->iv_size = crypto_skcipher_ivsize(any_tfm(cc));
 
-	ret = crypt_ctr_blkdev_cipher(cc);
-	if (ret < 0) {
-		ti->error = "Cannot allocate cipher string";
-		return -ENOMEM;
-	}
-
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
