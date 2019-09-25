Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 019E7BE21F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 18:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jGcRqjcvQ9VYoDI7zULExA+idF1aDwZPkvN5HzOSRI=; b=pHWGu9UFnqg/87
	H5lXRfJ9AmZTVaBYQnjH/U8c54WSPrs1a87dQogL1npR9HH33X1ucboQWxoITKyh6fhIbl0STGRW6
	eqx9Kt8IT/gE9ja7fq3y0N43RzxPsz4owlg1nytUrYj0jtHJ//C3PPngBWoyK8JCdyJvjuXQVGPbb
	IgZ2Rm7wXHUb87RAQuMZlKDHs2LWhUAMfAC3S1HRip+OntlNj8IiPtjKqf/h84sOEgr5BQohlMmSo
	OGhK2QCEDtRkWvo6NJq2qbA3OayPDkMI66mXS0jv2pK+DGH+Fn6MOkgvJIDNqyqacbJEknkoSM0Bh
	T8t/eUd2OF6NNt5gKB5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD9vk-0003sz-C8; Wed, 25 Sep 2019 16:14:16 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD9vJ-0003s2-Nu
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 16:13:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id i16so6392391wmd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 25 Sep 2019 09:13:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Tn6PuyCvHzBYqw98o/h7jtBUwnaA2ySt5tvs6NRZxxw=;
 b=sVEBaPJKCR8iK0Ti7MEQI9T+ABca2s8phVUtojeWGaOvvOnjGzCAWbIcwzTp83jDXY
 m5r+f8qSrlBt5lQOpjo4PbCjfXkKE1E7AhkpXc7Gewyt0NaJ1VnNP6JhkqSfMoqmY7GF
 j8xyagkcnqsJPh13J/t3KvX77GFGnCn2aaaOo208psPIV4dtHsVaEJ/ehJH3zSYUCemn
 4MlEFV8zbH5FzW68MLAwQC6BkiilCT/nnAaN30Tx0lJxhAMMEHA1RjS7B96k4pywgs/l
 E8RSZdVJ1XxGKuaBONZ5Q7tUfH03ni0EiUQRWdXTdNNWtPojWjjnjsAtJEFlLJjTztif
 q7sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Tn6PuyCvHzBYqw98o/h7jtBUwnaA2ySt5tvs6NRZxxw=;
 b=XG7n9qHRYUEH8Y9RBBXM4Y7aJYyOv1x/aqsDBH6bGfPapDadFc8aPwe8rEfAS4RI47
 Tpsw3J6F1/K7UtEr7GF9mvaWP8qmThZpbaJmVodccymwzYAUWWytSVWHqGO3WyjSXs5i
 xLuztyiiphloNEmVU1mMjA6RUQLXQgWBxaq0DvsxOqwQYKcVt4Y71j8WUZbbm2BL4yjx
 /TZk6zgnld2HUIUPi8DfiZMRjMxq/LAnjStLwMIK94uH9g9GkQcSsO+ecTyPEIO6yNfu
 bXZhm7cNNUHMzyLH1Sju/oxA/+iIiOVQdZJ6KsParqrFi/Ps2VavO/2I61eN+EJOC5f6
 p6Ow==
X-Gm-Message-State: APjAAAWo5wp/RzxKHv7rG46D7JEn4vE6K5m7yBUsfD9pdaQVSIk/hKm0
 nclk7xtZ57x7RxqHZIhHy+oSJg==
X-Google-Smtp-Source: APXvYqyiGoS0vuNCTz14AtTm1UOuqGwmutm4W/PM/ZgKxsJ2voQXgcF4hUOWb9WVVS3FaxjAQLdoPg==
X-Received: by 2002:a1c:a516:: with SMTP id o22mr5410877wme.116.1569428028214; 
 Wed, 25 Sep 2019 09:13:48 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-657-1-83-120.w92-154.abo.wanadoo.fr. [92.154.90.120])
 by smtp.gmail.com with ESMTPSA id o70sm4991085wme.29.2019.09.25.09.13.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Sep 2019 09:13:47 -0700 (PDT)
From: Ard Biesheuvel <ard.biesheuvel@linaro.org>
To: linux-crypto@vger.kernel.org
Subject: [RFC PATCH 01/18] crypto: shash - add plumbing for operating on
 scatterlists
Date: Wed, 25 Sep 2019 18:12:38 +0200
Message-Id: <20190925161255.1871-2-ard.biesheuvel@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_091349_779370_4E818665 
X-CRM114-Status: GOOD (  16.78  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "Jason A . Donenfeld" <Jason@zx2c4.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg KH <gregkh@linuxfoundation.org>, Eric Biggers <ebiggers@google.com>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, Andy Lutomirski <luto@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add an internal method to the shash interface that permits templates
to invoke it with a scatterlist. Drivers implementing the shash
interface can opt into using this method, making it more straightforward
for templates to pass down data provided via scatterlists without forcing
the underlying shash to process each scatterlist entry with a discrete
update() call. This will be used later in the SIMD accelerated Poly1305
to amortize SIMD begin()/end() calls over the entire input.

Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>
---
 crypto/ahash.c                 | 18 +++++++++++++++
 crypto/shash.c                 | 24 ++++++++++++++++++++
 include/crypto/hash.h          |  3 +++
 include/crypto/internal/hash.h | 19 ++++++++++++++++
 4 files changed, 64 insertions(+)

diff --git a/crypto/ahash.c b/crypto/ahash.c
index 3815b363a693..aecb48f0f50c 100644
--- a/crypto/ahash.c
+++ b/crypto/ahash.c
@@ -144,6 +144,24 @@ int crypto_hash_walk_first(struct ahash_request *req,
 }
 EXPORT_SYMBOL_GPL(crypto_hash_walk_first);
 
+int crypto_shash_walk_sg(struct shash_desc *desc, struct scatterlist *sg,
+			 int nbytes, struct crypto_hash_walk *walk, int flags)
+{
+	walk->total = nbytes;
+
+	if (!walk->total) {
+		walk->entrylen = 0;
+		return 0;
+	}
+
+	walk->alignmask = crypto_shash_alignmask(desc->tfm);
+	walk->sg = sg;
+	walk->flags = flags;
+
+	return hash_walk_new_entry(walk);
+}
+EXPORT_SYMBOL_GPL(crypto_shash_walk_sg);
+
 int crypto_ahash_walk_first(struct ahash_request *req,
 			    struct crypto_hash_walk *walk)
 {
diff --git a/crypto/shash.c b/crypto/shash.c
index e83c5124f6eb..b16ab5590dc4 100644
--- a/crypto/shash.c
+++ b/crypto/shash.c
@@ -121,6 +121,30 @@ int crypto_shash_update(struct shash_desc *desc, const u8 *data,
 }
 EXPORT_SYMBOL_GPL(crypto_shash_update);
 
+int crypto_shash_update_from_sg(struct shash_desc *desc, struct scatterlist *sg,
+				unsigned int len, bool atomic)
+{
+	struct crypto_shash *tfm = desc->tfm;
+	struct shash_alg *shash = crypto_shash_alg(tfm);
+	struct crypto_hash_walk walk;
+	int flags = 0;
+	int nbytes;
+
+	if (!atomic)
+		flags = CRYPTO_TFM_REQ_MAY_SLEEP;
+
+	if (shash->update_from_sg)
+		return shash->update_from_sg(desc, sg, len, flags);
+
+	for (nbytes = crypto_shash_walk_sg(desc, sg, len, &walk, flags);
+	     nbytes > 0;
+	     nbytes = crypto_hash_walk_done(&walk, nbytes))
+		nbytes = crypto_shash_update(desc, walk.data, nbytes);
+
+	return nbytes;
+}
+EXPORT_SYMBOL_GPL(crypto_shash_update_from_sg);
+
 static int shash_final_unaligned(struct shash_desc *desc, u8 *out)
 {
 	struct crypto_shash *tfm = desc->tfm;
diff --git a/include/crypto/hash.h b/include/crypto/hash.h
index ef10c370605a..0b83d85a3828 100644
--- a/include/crypto/hash.h
+++ b/include/crypto/hash.h
@@ -158,6 +158,7 @@ struct shash_desc {
  * struct shash_alg - synchronous message digest definition
  * @init: see struct ahash_alg
  * @update: see struct ahash_alg
+ * @update_from_sg: variant of update() taking a scatterlist as input [optional]
  * @final: see struct ahash_alg
  * @finup: see struct ahash_alg
  * @digest: see struct ahash_alg
@@ -175,6 +176,8 @@ struct shash_alg {
 	int (*init)(struct shash_desc *desc);
 	int (*update)(struct shash_desc *desc, const u8 *data,
 		      unsigned int len);
+	int (*update_from_sg)(struct shash_desc *desc, struct scatterlist *sg,
+			      unsigned int len, int flags);
 	int (*final)(struct shash_desc *desc, u8 *out);
 	int (*finup)(struct shash_desc *desc, const u8 *data,
 		     unsigned int len, u8 *out);
diff --git a/include/crypto/internal/hash.h b/include/crypto/internal/hash.h
index bfc9db7b100d..6f4bfa057bea 100644
--- a/include/crypto/internal/hash.h
+++ b/include/crypto/internal/hash.h
@@ -50,6 +50,8 @@ extern const struct crypto_type crypto_ahash_type;
 int crypto_hash_walk_done(struct crypto_hash_walk *walk, int err);
 int crypto_hash_walk_first(struct ahash_request *req,
 			   struct crypto_hash_walk *walk);
+int crypto_shash_walk_sg(struct shash_desc *desc, struct scatterlist *sg,
+			 int nbytes, struct crypto_hash_walk *walk, int flags);
 int crypto_ahash_walk_first(struct ahash_request *req,
 			   struct crypto_hash_walk *walk);
 
@@ -242,5 +244,22 @@ static inline struct crypto_shash *__crypto_shash_cast(struct crypto_tfm *tfm)
 	return container_of(tfm, struct crypto_shash, base);
 }
 
+/**
+ * crypto_shash_update_from_sg() - add data from a scatterlist to message digest
+ * 				   for processing
+ * @desc: operational state handle that is already initialized
+ * @data: scatterlist with input data to be added to the message digest
+ * @len: length of the input data
+ * @atomic: whether or not the call is permitted to sleep
+ *
+ * Updates the message digest state of the operational state handle.
+ *
+ * Context: Any context.
+ * Return: 0 if the message digest update was successful; < 0 if an error
+ *	   occurred
+ */
+int crypto_shash_update_from_sg(struct shash_desc *desc, struct scatterlist *sg,
+				unsigned int len, bool atomic);
+
 #endif	/* _CRYPTO_INTERNAL_HASH_H */
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
