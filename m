Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D80DD572D0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 22:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgQRKU3wH0RrO34pcP3F8l5Q9bnZzxR8TyE0qUpbNMk=; b=YVCBkPlgIhYzCB
	vdN8YYr78s/6Qj8BorWXFRaL05aKqMYDabM+7Cds7Y8BSXIfnd8rHZFI2s7HvhDTlAF97RGZseX1D
	AtaVbBKh+rSIbQyNrWxLu/cnoNyVhYJnlseONBjZkbX8RWks91drPLjgpuNkYFlT5gV7cvO6XG7/x
	TLu0lesYVrOn2bkGGRMKY+Jk0tKufAju1qw/xH2AyzmeAZBvGUP6Bpf9uPbTGy4Y5LND3WQJ85N3k
	qNBiIEIrWy8txg7MigWZtiLl4w46aLr8lCLJlT5ifGtPAy9aCzJ0qH7FUrhsZycA0Jom9aCfP5KrP
	lqIiC1o9DLx7w8sEegXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgElE-0004R3-B8; Wed, 26 Jun 2019 20:43:20 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEiw-0003NE-7Z
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 20:41:01 +0000
Received: by mail-wm1-x341.google.com with SMTP id u8so3423606wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 13:40:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0C30waaUNG8lCVZnBPnYOmd0NAF2K1blMYiYZG3BUfY=;
 b=UhWez6BJR0XgvoCPp4LGIQKgJn0VKmqLrrSHkCmadW6BTDkBqaNTq8yt0Lwk8VOSOA
 8p+3wzi5NrgCGK1IrACbiOpxUMcU/f9kxEhGazMxP2nCWetVyRvd/97UWLYxutba615z
 qC65JTBE9fIl39xzAN/WCX0q/HISTsZTYoEpaT8UZDn+W4jFwmXBkgdFIBAPHZr1eDd4
 cFdTKnjgIMwADiCwX94KsSGjPwHrf6NGuduvncSmoW3c8qcKS5PrA1fjoCi/HxSldXAK
 lPms3TyWljPb8BV/jF7YWTEjMQYX3JVw9wmrp5CkiIT/heEZAjhhU+0K6O98jJzN6ncY
 zoIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0C30waaUNG8lCVZnBPnYOmd0NAF2K1blMYiYZG3BUfY=;
 b=WJtbmsgYqduvc2Q1BhZfCJU0Nrj3jyFwKXojTyTeS3ahpnmit7LqzJZXINDGNRpZGm
 mdTqeVtmYS3SgG7H6MCzBrCngJwdGKBmL0JuIY9UOn78EzOO+wptSNgOHTqQguddctk3
 tFRCFYSoxTYXtqZ/4Gem7C0LMwopD7L2ZX4T2mS0SsC5tf4k924gfnWPphsT+mwcY3Ak
 INX2UAsfQtvtd2RZT+SwWcV27YUeU2s+CYxnhKbo9CCxI1/vqn5+jUvOreOshNXNq/JP
 7R7kZEDjgr0vMgBKvIxl/049CXrFVIQWzkFlNbxAnZynlVkkvOLcQ4I2BPL7Vh9FJAXP
 Fexg==
X-Gm-Message-State: APjAAAXyLWVvK7h2LDQe3oAmTaLPUzFjPS9QWghPwJ73+Iplul3vuKv7
 mWVCYt+1D4+zu7nvu/KMFOU2tQ==
X-Google-Smtp-Source: APXvYqy4J98+72v7NGpkZTmR3OF3XL2fQbSfN+Z1VBISxMdrMoME7K+cJQsuw8Y/Zpaq8sLnvmtZxA==
X-Received: by 2002:a1c:1d8d:: with SMTP id d135mr503480wmd.54.1561581656506; 
 Wed, 26 Jun 2019 13:40:56 -0700 (PDT)
Received: from sudo.home ([2a01:cb1d:112:6f00:9c7f:f574:ee94:7dec])
 by smtp.gmail.com with ESMTPSA id 32sm35164587wra.35.2019.06.26.13.40.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 26 Jun 2019 13:40:55 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v5 4/7] md: dm-crypt: switch to ESSIV crypto API template
Date: Wed, 26 Jun 2019 22:40:44 +0200
Message-Id: <20190626204047.32131-5-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
References: <20190626204047.32131-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_134058_373535_DB5D5391 
X-CRM114-Status: GOOD (  20.53  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

Replace the explicit ESSIV handling in the dm-crypt driver with calls
into the crypto API, which now possesses the capability to perform
this processing within the crypto subsystem.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 drivers/md/Kconfig    |   1 +
 drivers/md/dm-crypt.c | 200 ++++----------------
 2 files changed, 36 insertions(+), 165 deletions(-)

diff --git a/drivers/md/Kconfig b/drivers/md/Kconfig
index 45254b3ef715..30ca87cf25db 100644
--- a/drivers/md/Kconfig
+++ b/drivers/md/Kconfig
@@ -271,6 +271,7 @@ config DM_CRYPT
 	depends on BLK_DEV_DM
 	select CRYPTO
 	select CRYPTO_CBC
+	select CRYPTO_ESSIV
 	---help---
 	  This device-mapper target allows you to create a device that
 	  transparently encrypts the data on it. You'll need to activate
diff --git a/drivers/md/dm-crypt.c b/drivers/md/dm-crypt.c
index f001f1104cb5..e26a09c2d1a6 100644
--- a/drivers/md/dm-crypt.c
+++ b/drivers/md/dm-crypt.c
@@ -98,11 +98,6 @@ struct crypt_iv_operations {
 		    struct dm_crypt_request *dmreq);
 };
 
-struct iv_essiv_private {
-	struct crypto_shash *hash_tfm;
-	u8 *salt;
-};
-
 struct iv_benbi_private {
 	int shift;
 };
@@ -155,7 +150,6 @@ struct crypt_config {
 
 	const struct crypt_iv_operations *iv_gen_ops;
 	union {
-		struct iv_essiv_private essiv;
 		struct iv_benbi_private benbi;
 		struct iv_lmk_private lmk;
 		struct iv_tcw_private tcw;
@@ -165,8 +159,6 @@ struct crypt_config {
 	unsigned short int sector_size;
 	unsigned char sector_shift;
 
-	/* ESSIV: struct crypto_cipher *essiv_tfm */
-	void *iv_private;
 	union {
 		struct crypto_skcipher **tfms;
 		struct crypto_aead **tfms_aead;
@@ -323,157 +315,15 @@ static int crypt_iv_plain64be_gen(struct crypt_config *cc, u8 *iv,
 	return 0;
 }
 
-/* Initialise ESSIV - compute salt but no local memory allocations */
-static int crypt_iv_essiv_init(struct crypt_config *cc)
-{
-	struct iv_essiv_private *essiv = &cc->iv_gen_private.essiv;
-	SHASH_DESC_ON_STACK(desc, essiv->hash_tfm);
-	struct crypto_cipher *essiv_tfm;
-	int err;
-
-	desc->tfm = essiv->hash_tfm;
-
-	err = crypto_shash_digest(desc, cc->key, cc->key_size, essiv->salt);
-	shash_desc_zero(desc);
-	if (err)
-		return err;
-
-	essiv_tfm = cc->iv_private;
-
-	err = crypto_cipher_setkey(essiv_tfm, essiv->salt,
-			    crypto_shash_digestsize(essiv->hash_tfm));
-	if (err)
-		return err;
-
-	return 0;
-}
-
-/* Wipe salt and reset key derived from volume key */
-static int crypt_iv_essiv_wipe(struct crypt_config *cc)
-{
-	struct iv_essiv_private *essiv = &cc->iv_gen_private.essiv;
-	unsigned salt_size = crypto_shash_digestsize(essiv->hash_tfm);
-	struct crypto_cipher *essiv_tfm;
-	int r, err = 0;
-
-	memset(essiv->salt, 0, salt_size);
-
-	essiv_tfm = cc->iv_private;
-	r = crypto_cipher_setkey(essiv_tfm, essiv->salt, salt_size);
-	if (r)
-		err = r;
-
-	return err;
-}
-
-/* Allocate the cipher for ESSIV */
-static struct crypto_cipher *alloc_essiv_cipher(struct crypt_config *cc,
-						struct dm_target *ti,
-						const u8 *salt,
-						unsigned int saltsize)
-{
-	struct crypto_cipher *essiv_tfm;
-	int err;
-
-	/* Setup the essiv_tfm with the given salt */
-	essiv_tfm = crypto_alloc_cipher(cc->cipher, 0, 0);
-	if (IS_ERR(essiv_tfm)) {
-		ti->error = "Error allocating crypto tfm for ESSIV";
-		return essiv_tfm;
-	}
-
-	if (crypto_cipher_blocksize(essiv_tfm) != cc->iv_size) {
-		ti->error = "Block size of ESSIV cipher does "
-			    "not match IV size of block cipher";
-		crypto_free_cipher(essiv_tfm);
-		return ERR_PTR(-EINVAL);
-	}
-
-	err = crypto_cipher_setkey(essiv_tfm, salt, saltsize);
-	if (err) {
-		ti->error = "Failed to set key for ESSIV cipher";
-		crypto_free_cipher(essiv_tfm);
-		return ERR_PTR(err);
-	}
-
-	return essiv_tfm;
-}
-
-static void crypt_iv_essiv_dtr(struct crypt_config *cc)
-{
-	struct crypto_cipher *essiv_tfm;
-	struct iv_essiv_private *essiv = &cc->iv_gen_private.essiv;
-
-	crypto_free_shash(essiv->hash_tfm);
-	essiv->hash_tfm = NULL;
-
-	kzfree(essiv->salt);
-	essiv->salt = NULL;
-
-	essiv_tfm = cc->iv_private;
-
-	if (essiv_tfm)
-		crypto_free_cipher(essiv_tfm);
-
-	cc->iv_private = NULL;
-}
-
-static int crypt_iv_essiv_ctr(struct crypt_config *cc, struct dm_target *ti,
-			      const char *opts)
-{
-	struct crypto_cipher *essiv_tfm = NULL;
-	struct crypto_shash *hash_tfm = NULL;
-	u8 *salt = NULL;
-	int err;
-
-	if (!opts) {
-		ti->error = "Digest algorithm missing for ESSIV mode";
-		return -EINVAL;
-	}
-
-	/* Allocate hash algorithm */
-	hash_tfm = crypto_alloc_shash(opts, 0, 0);
-	if (IS_ERR(hash_tfm)) {
-		ti->error = "Error initializing ESSIV hash";
-		err = PTR_ERR(hash_tfm);
-		goto bad;
-	}
-
-	salt = kzalloc(crypto_shash_digestsize(hash_tfm), GFP_KERNEL);
-	if (!salt) {
-		ti->error = "Error kmallocing salt storage in ESSIV";
-		err = -ENOMEM;
-		goto bad;
-	}
-
-	cc->iv_gen_private.essiv.salt = salt;
-	cc->iv_gen_private.essiv.hash_tfm = hash_tfm;
-
-	essiv_tfm = alloc_essiv_cipher(cc, ti, salt,
-				       crypto_shash_digestsize(hash_tfm));
-	if (IS_ERR(essiv_tfm)) {
-		crypt_iv_essiv_dtr(cc);
-		return PTR_ERR(essiv_tfm);
-	}
-	cc->iv_private = essiv_tfm;
-
-	return 0;
-
-bad:
-	if (hash_tfm && !IS_ERR(hash_tfm))
-		crypto_free_shash(hash_tfm);
-	kfree(salt);
-	return err;
-}
-
 static int crypt_iv_essiv_gen(struct crypt_config *cc, u8 *iv,
 			      struct dm_crypt_request *dmreq)
 {
-	struct crypto_cipher *essiv_tfm = cc->iv_private;
-
+	/*
+	 * ESSIV encryption of the IV is now handled by the crypto API,
+	 * so just pass the plain sector number here.
+	 */
 	memset(iv, 0, cc->iv_size);
 	*(__le64 *)iv = cpu_to_le64(dmreq->iv_sector);
-	crypto_cipher_encrypt_one(essiv_tfm, iv, iv);
 
 	return 0;
 }
@@ -854,10 +704,6 @@ static const struct crypt_iv_operations crypt_iv_plain64be_ops = {
 };
 
 static const struct crypt_iv_operations crypt_iv_essiv_ops = {
-	.ctr       = crypt_iv_essiv_ctr,
-	.dtr       = crypt_iv_essiv_dtr,
-	.init      = crypt_iv_essiv_init,
-	.wipe      = crypt_iv_essiv_wipe,
 	.generator = crypt_iv_essiv_gen
 };
 
@@ -2397,7 +2243,7 @@ static int crypt_ctr_cipher_new(struct dm_target *ti, char *cipher_in, char *key
 				char **ivmode, char **ivopts)
 {
 	struct crypt_config *cc = ti->private;
-	char *tmp, *cipher_api;
+	char *tmp, *cipher_api, buf[CRYPTO_MAX_ALG_NAME];
 	int ret = -EINVAL;
 
 	cc->tfms_count = 1;
@@ -2435,9 +2281,19 @@ static int crypt_ctr_cipher_new(struct dm_target *ti, char *cipher_in, char *key
 	}
 
 	ret = crypt_ctr_blkdev_cipher(cc, cipher_api);
-	if (ret < 0) {
-		ti->error = "Cannot allocate cipher string";
-		return -ENOMEM;
+	if (ret < 0)
+		goto bad_mem;
+
+	if (*ivmode && !strcmp(*ivmode, "essiv")) {
+		if (!*ivopts) {
+			ti->error = "Digest algorithm missing for ESSIV mode";
+			return -EINVAL;
+		}
+		ret = snprintf(buf, CRYPTO_MAX_ALG_NAME, "essiv(%s,%s,%s)",
+			       cipher_api, cc->cipher, *ivopts);
+		if (ret < 0 || ret >= CRYPTO_MAX_ALG_NAME)
+			goto bad_mem;
+		cipher_api = buf;
 	}
 
 	cc->key_parts = cc->tfms_count;
@@ -2456,6 +2312,9 @@ static int crypt_ctr_cipher_new(struct dm_target *ti, char *cipher_in, char *key
 		cc->iv_size = crypto_skcipher_ivsize(any_tfm(cc));
 
 	return 0;
+bad_mem:
+	ti->error = "Cannot allocate cipher string";
+	return -ENOMEM;
 }
 
 static int crypt_ctr_cipher_old(struct dm_target *ti, char *cipher_in, char *key,
@@ -2515,9 +2374,20 @@ static int crypt_ctr_cipher_old(struct dm_target *ti, char *cipher_in, char *key
 	if (!cipher_api)
 		goto bad_mem;
 
-	ret = snprintf(cipher_api, CRYPTO_MAX_ALG_NAME,
-		       "%s(%s)", chainmode, cipher);
-	if (ret < 0) {
+	if (*ivmode && !strcmp(*ivmode, "essiv")) {
+		if (!*ivopts) {
+			ti->error = "Digest algorithm missing for ESSIV mode";
+			kfree(cipher_api);
+			return -EINVAL;
+		}
+		ret = snprintf(cipher_api, CRYPTO_MAX_ALG_NAME,
+			       "essiv(%s(%s),%s,%s)", chainmode, cipher,
+			       cipher, *ivopts);
+	} else {
+		ret = snprintf(cipher_api, CRYPTO_MAX_ALG_NAME,
+			       "%s(%s)", chainmode, cipher);
+	}
+	if (ret < 0 || ret >= CRYPTO_MAX_ALG_NAME) {
 		kfree(cipher_api);
 		goto bad_mem;
 	}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
