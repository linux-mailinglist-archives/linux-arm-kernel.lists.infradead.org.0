Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA73F60A4
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 18:21:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3adlbhuItkcDHFN6V0y+QOPlzqdX3FLP7WWDHQME900=; b=pnq6F+Mem98cERFmTSyFhOQDdF
	1ToUG/VJ4EK0AYcsqeZRCx6UAsAdBtpEynYEtaCsx9GL/Xy6YBu3OC60SJKyWGq1PeQI50WfARmwY
	DC9tk/1Bvhku7Hom7Y+RG9SKX9/jayyWS3wS4m3OTjn7dpxFHfCL+v42Aox+LgQgDdt0B9aE/DVr/
	qm65W9ec0Qjlx0GnGa52oYTFMmcAKEb+N6QQeIKGD5s4HDWv/pVn7U1QduKZuCpfdZW6CmyVK8l+K
	qmRK+IlaeVv1SIvy7zjlyPjvm4LGF26Z5JKFzNV+atZ8nYuk15oUTy/vriloWTvWwVH5V0Mee7iTA
	3kBGtV3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTUQH-0006Vg-2v; Sat, 09 Nov 2019 17:21:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTUH3-0005BS-EZ
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 17:11:52 +0000
Received: from e123331-lin.home (lfbn-mar-1-643-104.w90-118.abo.wanadoo.fr
 [90.118.215.104])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7FDA7207FF;
 Sat,  9 Nov 2019 17:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573319504;
 bh=EoP3v3FoprLMVU0i8pYsyQNCvQiXIG8JIzDzNHMV6y4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=MEkk2EO4gYsb/7mpVg9YGHKMvy7EegZleVKtEPUG0HuZRG4JT9wrtj9Cwmu5DX8GR
 ugrKjwrw7vtGmjbhWNXE9zEAfT7z0W9cyfeUNJojF5+O6upojQroRkcj52VOaL1h+i
 hgJsgUHWUr77yKTX+cGAH1MmTkrELshwV7FygyLI=
From: Ard Biesheuvel <ardb@kernel.org>
To: linux-crypto@vger.kernel.org
Subject: [PATCH v4 28/29] crypto: remove deprecated and unused ablkcipher
 support
Date: Sat,  9 Nov 2019 18:09:53 +0100
Message-Id: <20191109170954.756-29-ardb@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191109170954.756-1-ardb@kernel.org>
References: <20191109170954.756-1-ardb@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191109_091145_641530_67232ABC 
X-CRM114-Status: GOOD (  16.59  )
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

Now that all users of the deprecated ablkcipher interface have been
moved to the skcipher interface, ablkcipher is no longer used and
can be removed.

Reviewed-by: Eric Biggers <ebiggers@kernel.org>
Signed-off-by: Ard Biesheuvel <ardb@kernel.org>
---
 Documentation/crypto/api-skcipher.rst  |  20 +-
 Documentation/crypto/architecture.rst  |   2 -
 Documentation/crypto/crypto_engine.rst |   4 -
 crypto/Makefile                        |   4 +-
 crypto/ablkcipher.c                    | 407 ------------------
 crypto/algapi.c                        |  26 --
 crypto/crypto_engine.c                 |  29 --
 crypto/skcipher.c                      | 106 -----
 include/crypto/aead.h                  |   2 +-
 include/crypto/algapi.h                |  75 ----
 include/crypto/engine.h                |   4 -
 include/crypto/hash.h                  |   2 +-
 include/crypto/internal/des.h          |  12 -
 include/crypto/internal/skcipher.h     |  20 -
 include/crypto/skcipher.h              |   6 -
 include/linux/crypto.h                 | 435 --------------------
 16 files changed, 4 insertions(+), 1150 deletions(-)

diff --git a/Documentation/crypto/api-skcipher.rst b/Documentation/crypto/api-skcipher.rst
index 56274109ee56..1aaf8985894b 100644
--- a/Documentation/crypto/api-skcipher.rst
+++ b/Documentation/crypto/api-skcipher.rst
@@ -5,7 +5,7 @@ Block Cipher Algorithm Definitions
    :doc: Block Cipher Algorithm Definitions
 
 .. kernel-doc:: include/linux/crypto.h
-   :functions: crypto_alg ablkcipher_alg cipher_alg compress_alg
+   :functions: crypto_alg cipher_alg compress_alg
 
 Symmetric Key Cipher API
 ------------------------
@@ -33,21 +33,3 @@ Single Block Cipher API
 
 .. kernel-doc:: include/linux/crypto.h
    :functions: crypto_alloc_cipher crypto_free_cipher crypto_has_cipher crypto_cipher_blocksize crypto_cipher_setkey crypto_cipher_encrypt_one crypto_cipher_decrypt_one
-
-Asynchronous Block Cipher API - Deprecated
-------------------------------------------
-
-.. kernel-doc:: include/linux/crypto.h
-   :doc: Asynchronous Block Cipher API
-
-.. kernel-doc:: include/linux/crypto.h
-   :functions: crypto_free_ablkcipher crypto_ablkcipher_ivsize crypto_ablkcipher_blocksize crypto_ablkcipher_setkey crypto_ablkcipher_reqtfm crypto_ablkcipher_encrypt crypto_ablkcipher_decrypt
-
-Asynchronous Cipher Request Handle - Deprecated
------------------------------------------------
-
-.. kernel-doc:: include/linux/crypto.h
-   :doc: Asynchronous Cipher Request Handle
-
-.. kernel-doc:: include/linux/crypto.h
-   :functions: crypto_ablkcipher_reqsize ablkcipher_request_set_tfm ablkcipher_request_alloc ablkcipher_request_free ablkcipher_request_set_callback ablkcipher_request_set_crypt
diff --git a/Documentation/crypto/architecture.rst b/Documentation/crypto/architecture.rst
index da90bb006ab0..646c3380a7ed 100644
--- a/Documentation/crypto/architecture.rst
+++ b/Documentation/crypto/architecture.rst
@@ -201,8 +201,6 @@ the aforementioned cipher types:
 -  CRYPTO_ALG_TYPE_AEAD Authenticated Encryption with Associated Data
    (MAC)
 
--  CRYPTO_ALG_TYPE_ABLKCIPHER Asynchronous multi-block cipher
-
 -  CRYPTO_ALG_TYPE_KPP Key-agreement Protocol Primitive (KPP) such as
    an ECDH or DH implementation
 
diff --git a/Documentation/crypto/crypto_engine.rst b/Documentation/crypto/crypto_engine.rst
index 3baa23c2cd08..25cf9836c336 100644
--- a/Documentation/crypto/crypto_engine.rst
+++ b/Documentation/crypto/crypto_engine.rst
@@ -63,8 +63,6 @@ request by using:
 When your driver receives a crypto_request, you must to transfer it to
 the crypto engine via one of:
 
-* crypto_transfer_ablkcipher_request_to_engine()
-
 * crypto_transfer_aead_request_to_engine()
 
 * crypto_transfer_akcipher_request_to_engine()
@@ -75,8 +73,6 @@ the crypto engine via one of:
 
 At the end of the request process, a call to one of the following functions is needed:
 
-* crypto_finalize_ablkcipher_request()
-
 * crypto_finalize_aead_request()
 
 * crypto_finalize_akcipher_request()
diff --git a/crypto/Makefile b/crypto/Makefile
index efe63940b4e9..6a6e21f374d8 100644
--- a/crypto/Makefile
+++ b/crypto/Makefile
@@ -15,9 +15,7 @@ obj-$(CONFIG_CRYPTO_ALGAPI2) += crypto_algapi.o
 
 obj-$(CONFIG_CRYPTO_AEAD2) += aead.o
 
-crypto_skcipher-y := ablkcipher.o
-crypto_skcipher-y += skcipher.o
-obj-$(CONFIG_CRYPTO_SKCIPHER2) += crypto_skcipher.o
+obj-$(CONFIG_CRYPTO_SKCIPHER2) += skcipher.o
 obj-$(CONFIG_CRYPTO_SEQIV) += seqiv.o
 obj-$(CONFIG_CRYPTO_ECHAINIV) += echainiv.o
 
diff --git a/crypto/ablkcipher.c b/crypto/ablkcipher.c
deleted file mode 100644
index 072b5646a0a3..000000000000
--- a/crypto/ablkcipher.c
+++ /dev/null
@@ -1,407 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-/*
- * Asynchronous block chaining cipher operations.
- *
- * This is the asynchronous version of blkcipher.c indicating completion
- * via a callback.
- *
- * Copyright (c) 2006 Herbert Xu <herbert@gondor.apana.org.au>
- */
-
-#include <crypto/internal/skcipher.h>
-#include <linux/err.h>
-#include <linux/kernel.h>
-#include <linux/slab.h>
-#include <linux/seq_file.h>
-#include <linux/cryptouser.h>
-#include <linux/compiler.h>
-#include <net/netlink.h>
-
-#include <crypto/scatterwalk.h>
-
-#include "internal.h"
-
-struct ablkcipher_buffer {
-	struct list_head	entry;
-	struct scatter_walk	dst;
-	unsigned int		len;
-	void			*data;
-};
-
-enum {
-	ABLKCIPHER_WALK_SLOW = 1 << 0,
-};
-
-static inline void ablkcipher_buffer_write(struct ablkcipher_buffer *p)
-{
-	scatterwalk_copychunks(p->data, &p->dst, p->len, 1);
-}
-
-void __ablkcipher_walk_complete(struct ablkcipher_walk *walk)
-{
-	struct ablkcipher_buffer *p, *tmp;
-
-	list_for_each_entry_safe(p, tmp, &walk->buffers, entry) {
-		ablkcipher_buffer_write(p);
-		list_del(&p->entry);
-		kfree(p);
-	}
-}
-EXPORT_SYMBOL_GPL(__ablkcipher_walk_complete);
-
-static inline void ablkcipher_queue_write(struct ablkcipher_walk *walk,
-					  struct ablkcipher_buffer *p)
-{
-	p->dst = walk->out;
-	list_add_tail(&p->entry, &walk->buffers);
-}
-
-/* Get a spot of the specified length that does not straddle a page.
- * The caller needs to ensure that there is enough space for this operation.
- */
-static inline u8 *ablkcipher_get_spot(u8 *start, unsigned int len)
-{
-	u8 *end_page = (u8 *)(((unsigned long)(start + len - 1)) & PAGE_MASK);
-
-	return max(start, end_page);
-}
-
-static inline void ablkcipher_done_slow(struct ablkcipher_walk *walk,
-					unsigned int n)
-{
-	for (;;) {
-		unsigned int len_this_page = scatterwalk_pagelen(&walk->out);
-
-		if (len_this_page > n)
-			len_this_page = n;
-		scatterwalk_advance(&walk->out, n);
-		if (n == len_this_page)
-			break;
-		n -= len_this_page;
-		scatterwalk_start(&walk->out, sg_next(walk->out.sg));
-	}
-}
-
-static inline void ablkcipher_done_fast(struct ablkcipher_walk *walk,
-					unsigned int n)
-{
-	scatterwalk_advance(&walk->in, n);
-	scatterwalk_advance(&walk->out, n);
-}
-
-static int ablkcipher_walk_next(struct ablkcipher_request *req,
-				struct ablkcipher_walk *walk);
-
-int ablkcipher_walk_done(struct ablkcipher_request *req,
-			 struct ablkcipher_walk *walk, int err)
-{
-	struct crypto_tfm *tfm = req->base.tfm;
-	unsigned int n; /* bytes processed */
-	bool more;
-
-	if (unlikely(err < 0))
-		goto finish;
-
-	n = walk->nbytes - err;
-	walk->total -= n;
-	more = (walk->total != 0);
-
-	if (likely(!(walk->flags & ABLKCIPHER_WALK_SLOW))) {
-		ablkcipher_done_fast(walk, n);
-	} else {
-		if (WARN_ON(err)) {
-			/* unexpected case; didn't process all bytes */
-			err = -EINVAL;
-			goto finish;
-		}
-		ablkcipher_done_slow(walk, n);
-	}
-
-	scatterwalk_done(&walk->in, 0, more);
-	scatterwalk_done(&walk->out, 1, more);
-
-	if (more) {
-		crypto_yield(req->base.flags);
-		return ablkcipher_walk_next(req, walk);
-	}
-	err = 0;
-finish:
-	walk->nbytes = 0;
-	if (walk->iv != req->info)
-		memcpy(req->info, walk->iv, tfm->crt_ablkcipher.ivsize);
-	kfree(walk->iv_buffer);
-	return err;
-}
-EXPORT_SYMBOL_GPL(ablkcipher_walk_done);
-
-static inline int ablkcipher_next_slow(struct ablkcipher_request *req,
-				       struct ablkcipher_walk *walk,
-				       unsigned int bsize,
-				       unsigned int alignmask,
-				       void **src_p, void **dst_p)
-{
-	unsigned aligned_bsize = ALIGN(bsize, alignmask + 1);
-	struct ablkcipher_buffer *p;
-	void *src, *dst, *base;
-	unsigned int n;
-
-	n = ALIGN(sizeof(struct ablkcipher_buffer), alignmask + 1);
-	n += (aligned_bsize * 3 - (alignmask + 1) +
-	      (alignmask & ~(crypto_tfm_ctx_alignment() - 1)));
-
-	p = kmalloc(n, GFP_ATOMIC);
-	if (!p)
-		return ablkcipher_walk_done(req, walk, -ENOMEM);
-
-	base = p + 1;
-
-	dst = (u8 *)ALIGN((unsigned long)base, alignmask + 1);
-	src = dst = ablkcipher_get_spot(dst, bsize);
-
-	p->len = bsize;
-	p->data = dst;
-
-	scatterwalk_copychunks(src, &walk->in, bsize, 0);
-
-	ablkcipher_queue_write(walk, p);
-
-	walk->nbytes = bsize;
-	walk->flags |= ABLKCIPHER_WALK_SLOW;
-
-	*src_p = src;
-	*dst_p = dst;
-
-	return 0;
-}
-
-static inline int ablkcipher_copy_iv(struct ablkcipher_walk *walk,
-				     struct crypto_tfm *tfm,
-				     unsigned int alignmask)
-{
-	unsigned bs = walk->blocksize;
-	unsigned int ivsize = tfm->crt_ablkcipher.ivsize;
-	unsigned aligned_bs = ALIGN(bs, alignmask + 1);
-	unsigned int size = aligned_bs * 2 + ivsize + max(aligned_bs, ivsize) -
-			    (alignmask + 1);
-	u8 *iv;
-
-	size += alignmask & ~(crypto_tfm_ctx_alignment() - 1);
-	walk->iv_buffer = kmalloc(size, GFP_ATOMIC);
-	if (!walk->iv_buffer)
-		return -ENOMEM;
-
-	iv = (u8 *)ALIGN((unsigned long)walk->iv_buffer, alignmask + 1);
-	iv = ablkcipher_get_spot(iv, bs) + aligned_bs;
-	iv = ablkcipher_get_spot(iv, bs) + aligned_bs;
-	iv = ablkcipher_get_spot(iv, ivsize);
-
-	walk->iv = memcpy(iv, walk->iv, ivsize);
-	return 0;
-}
-
-static inline int ablkcipher_next_fast(struct ablkcipher_request *req,
-				       struct ablkcipher_walk *walk)
-{
-	walk->src.page = scatterwalk_page(&walk->in);
-	walk->src.offset = offset_in_page(walk->in.offset);
-	walk->dst.page = scatterwalk_page(&walk->out);
-	walk->dst.offset = offset_in_page(walk->out.offset);
-
-	return 0;
-}
-
-static int ablkcipher_walk_next(struct ablkcipher_request *req,
-				struct ablkcipher_walk *walk)
-{
-	struct crypto_tfm *tfm = req->base.tfm;
-	unsigned int alignmask, bsize, n;
-	void *src, *dst;
-	int err;
-
-	alignmask = crypto_tfm_alg_alignmask(tfm);
-	n = walk->total;
-	if (unlikely(n < crypto_tfm_alg_blocksize(tfm))) {
-		req->base.flags |= CRYPTO_TFM_RES_BAD_BLOCK_LEN;
-		return ablkcipher_walk_done(req, walk, -EINVAL);
-	}
-
-	walk->flags &= ~ABLKCIPHER_WALK_SLOW;
-	src = dst = NULL;
-
-	bsize = min(walk->blocksize, n);
-	n = scatterwalk_clamp(&walk->in, n);
-	n = scatterwalk_clamp(&walk->out, n);
-
-	if (n < bsize ||
-	    !scatterwalk_aligned(&walk->in, alignmask) ||
-	    !scatterwalk_aligned(&walk->out, alignmask)) {
-		err = ablkcipher_next_slow(req, walk, bsize, alignmask,
-					   &src, &dst);
-		goto set_phys_lowmem;
-	}
-
-	walk->nbytes = n;
-
-	return ablkcipher_next_fast(req, walk);
-
-set_phys_lowmem:
-	if (err >= 0) {
-		walk->src.page = virt_to_page(src);
-		walk->dst.page = virt_to_page(dst);
-		walk->src.offset = ((unsigned long)src & (PAGE_SIZE - 1));
-		walk->dst.offset = ((unsigned long)dst & (PAGE_SIZE - 1));
-	}
-
-	return err;
-}
-
-static int ablkcipher_walk_first(struct ablkcipher_request *req,
-				 struct ablkcipher_walk *walk)
-{
-	struct crypto_tfm *tfm = req->base.tfm;
-	unsigned int alignmask;
-
-	alignmask = crypto_tfm_alg_alignmask(tfm);
-	if (WARN_ON_ONCE(in_irq()))
-		return -EDEADLK;
-
-	walk->iv = req->info;
-	walk->nbytes = walk->total;
-	if (unlikely(!walk->total))
-		return 0;
-
-	walk->iv_buffer = NULL;
-	if (unlikely(((unsigned long)walk->iv & alignmask))) {
-		int err = ablkcipher_copy_iv(walk, tfm, alignmask);
-
-		if (err)
-			return err;
-	}
-
-	scatterwalk_start(&walk->in, walk->in.sg);
-	scatterwalk_start(&walk->out, walk->out.sg);
-
-	return ablkcipher_walk_next(req, walk);
-}
-
-int ablkcipher_walk_phys(struct ablkcipher_request *req,
-			 struct ablkcipher_walk *walk)
-{
-	walk->blocksize = crypto_tfm_alg_blocksize(req->base.tfm);
-	return ablkcipher_walk_first(req, walk);
-}
-EXPORT_SYMBOL_GPL(ablkcipher_walk_phys);
-
-static int setkey_unaligned(struct crypto_ablkcipher *tfm, const u8 *key,
-			    unsigned int keylen)
-{
-	struct ablkcipher_alg *cipher = crypto_ablkcipher_alg(tfm);
-	unsigned long alignmask = crypto_ablkcipher_alignmask(tfm);
-	int ret;
-	u8 *buffer, *alignbuffer;
-	unsigned long absize;
-
-	absize = keylen + alignmask;
-	buffer = kmalloc(absize, GFP_ATOMIC);
-	if (!buffer)
-		return -ENOMEM;
-
-	alignbuffer = (u8 *)ALIGN((unsigned long)buffer, alignmask + 1);
-	memcpy(alignbuffer, key, keylen);
-	ret = cipher->setkey(tfm, alignbuffer, keylen);
-	memset(alignbuffer, 0, keylen);
-	kfree(buffer);
-	return ret;
-}
-
-static int setkey(struct crypto_ablkcipher *tfm, const u8 *key,
-		  unsigned int keylen)
-{
-	struct ablkcipher_alg *cipher = crypto_ablkcipher_alg(tfm);
-	unsigned long alignmask = crypto_ablkcipher_alignmask(tfm);
-
-	if (keylen < cipher->min_keysize || keylen > cipher->max_keysize) {
-		crypto_ablkcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
-		return -EINVAL;
-	}
-
-	if ((unsigned long)key & alignmask)
-		return setkey_unaligned(tfm, key, keylen);
-
-	return cipher->setkey(tfm, key, keylen);
-}
-
-static unsigned int crypto_ablkcipher_ctxsize(struct crypto_alg *alg, u32 type,
-					      u32 mask)
-{
-	return alg->cra_ctxsize;
-}
-
-static int crypto_init_ablkcipher_ops(struct crypto_tfm *tfm, u32 type,
-				      u32 mask)
-{
-	struct ablkcipher_alg *alg = &tfm->__crt_alg->cra_ablkcipher;
-	struct ablkcipher_tfm *crt = &tfm->crt_ablkcipher;
-
-	if (alg->ivsize > PAGE_SIZE / 8)
-		return -EINVAL;
-
-	crt->setkey = setkey;
-	crt->encrypt = alg->encrypt;
-	crt->decrypt = alg->decrypt;
-	crt->base = __crypto_ablkcipher_cast(tfm);
-	crt->ivsize = alg->ivsize;
-
-	return 0;
-}
-
-#ifdef CONFIG_NET
-static int crypto_ablkcipher_report(struct sk_buff *skb, struct crypto_alg *alg)
-{
-	struct crypto_report_blkcipher rblkcipher;
-
-	memset(&rblkcipher, 0, sizeof(rblkcipher));
-
-	strscpy(rblkcipher.type, "ablkcipher", sizeof(rblkcipher.type));
-	strscpy(rblkcipher.geniv, "<default>", sizeof(rblkcipher.geniv));
-
-	rblkcipher.blocksize = alg->cra_blocksize;
-	rblkcipher.min_keysize = alg->cra_ablkcipher.min_keysize;
-	rblkcipher.max_keysize = alg->cra_ablkcipher.max_keysize;
-	rblkcipher.ivsize = alg->cra_ablkcipher.ivsize;
-
-	return nla_put(skb, CRYPTOCFGA_REPORT_BLKCIPHER,
-		       sizeof(rblkcipher), &rblkcipher);
-}
-#else
-static int crypto_ablkcipher_report(struct sk_buff *skb, struct crypto_alg *alg)
-{
-	return -ENOSYS;
-}
-#endif
-
-static void crypto_ablkcipher_show(struct seq_file *m, struct crypto_alg *alg)
-	__maybe_unused;
-static void crypto_ablkcipher_show(struct seq_file *m, struct crypto_alg *alg)
-{
-	struct ablkcipher_alg *ablkcipher = &alg->cra_ablkcipher;
-
-	seq_printf(m, "type         : ablkcipher\n");
-	seq_printf(m, "async        : %s\n", alg->cra_flags & CRYPTO_ALG_ASYNC ?
-					     "yes" : "no");
-	seq_printf(m, "blocksize    : %u\n", alg->cra_blocksize);
-	seq_printf(m, "min keysize  : %u\n", ablkcipher->min_keysize);
-	seq_printf(m, "max keysize  : %u\n", ablkcipher->max_keysize);
-	seq_printf(m, "ivsize       : %u\n", ablkcipher->ivsize);
-	seq_printf(m, "geniv        : <default>\n");
-}
-
-const struct crypto_type crypto_ablkcipher_type = {
-	.ctxsize = crypto_ablkcipher_ctxsize,
-	.init = crypto_init_ablkcipher_ops,
-#ifdef CONFIG_PROC_FS
-	.show = crypto_ablkcipher_show,
-#endif
-	.report = crypto_ablkcipher_report,
-};
-EXPORT_SYMBOL_GPL(crypto_ablkcipher_type);
diff --git a/crypto/algapi.c b/crypto/algapi.c
index de30ddc952d8..b052f38edba6 100644
--- a/crypto/algapi.c
+++ b/crypto/algapi.c
@@ -1052,32 +1052,6 @@ void crypto_stats_get(struct crypto_alg *alg)
 }
 EXPORT_SYMBOL_GPL(crypto_stats_get);
 
-void crypto_stats_ablkcipher_encrypt(unsigned int nbytes, int ret,
-				     struct crypto_alg *alg)
-{
-	if (ret && ret != -EINPROGRESS && ret != -EBUSY) {
-		atomic64_inc(&alg->stats.cipher.err_cnt);
-	} else {
-		atomic64_inc(&alg->stats.cipher.encrypt_cnt);
-		atomic64_add(nbytes, &alg->stats.cipher.encrypt_tlen);
-	}
-	crypto_alg_put(alg);
-}
-EXPORT_SYMBOL_GPL(crypto_stats_ablkcipher_encrypt);
-
-void crypto_stats_ablkcipher_decrypt(unsigned int nbytes, int ret,
-				     struct crypto_alg *alg)
-{
-	if (ret && ret != -EINPROGRESS && ret != -EBUSY) {
-		atomic64_inc(&alg->stats.cipher.err_cnt);
-	} else {
-		atomic64_inc(&alg->stats.cipher.decrypt_cnt);
-		atomic64_add(nbytes, &alg->stats.cipher.decrypt_tlen);
-	}
-	crypto_alg_put(alg);
-}
-EXPORT_SYMBOL_GPL(crypto_stats_ablkcipher_decrypt);
-
 void crypto_stats_aead_encrypt(unsigned int cryptlen, struct crypto_alg *alg,
 			       int ret)
 {
diff --git a/crypto/crypto_engine.c b/crypto/crypto_engine.c
index 055d17977280..eb029ff1e05a 100644
--- a/crypto/crypto_engine.c
+++ b/crypto/crypto_engine.c
@@ -213,20 +213,6 @@ static int crypto_transfer_request_to_engine(struct crypto_engine *engine,
 	return crypto_transfer_request(engine, req, true);
 }
 
-/**
- * crypto_transfer_ablkcipher_request_to_engine - transfer one ablkcipher_request
- * to list into the engine queue
- * @engine: the hardware engine
- * @req: the request need to be listed into the engine queue
- * TODO: Remove this function when skcipher conversion is finished
- */
-int crypto_transfer_ablkcipher_request_to_engine(struct crypto_engine *engine,
-						 struct ablkcipher_request *req)
-{
-	return crypto_transfer_request_to_engine(engine, &req->base);
-}
-EXPORT_SYMBOL_GPL(crypto_transfer_ablkcipher_request_to_engine);
-
 /**
  * crypto_transfer_aead_request_to_engine - transfer one aead_request
  * to list into the engine queue
@@ -279,21 +265,6 @@ int crypto_transfer_skcipher_request_to_engine(struct crypto_engine *engine,
 }
 EXPORT_SYMBOL_GPL(crypto_transfer_skcipher_request_to_engine);
 
-/**
- * crypto_finalize_ablkcipher_request - finalize one ablkcipher_request if
- * the request is done
- * @engine: the hardware engine
- * @req: the request need to be finalized
- * @err: error number
- * TODO: Remove this function when skcipher conversion is finished
- */
-void crypto_finalize_ablkcipher_request(struct crypto_engine *engine,
-					struct ablkcipher_request *req, int err)
-{
-	return crypto_finalize_request(engine, &req->base, err);
-}
-EXPORT_SYMBOL_GPL(crypto_finalize_ablkcipher_request);
-
 /**
  * crypto_finalize_aead_request - finalize one aead_request if
  * the request is done
diff --git a/crypto/skcipher.c b/crypto/skcipher.c
index 1ce8fbb85f95..13da43c84b64 100644
--- a/crypto/skcipher.c
+++ b/crypto/skcipher.c
@@ -580,9 +580,6 @@ EXPORT_SYMBOL_GPL(skcipher_walk_aead_decrypt);
 
 static unsigned int crypto_skcipher_extsize(struct crypto_alg *alg)
 {
-	if (alg->cra_type == &crypto_ablkcipher_type)
-		return sizeof(struct crypto_ablkcipher *);
-
 	return crypto_alg_extsize(alg);
 }
 
@@ -592,106 +589,6 @@ static void skcipher_set_needkey(struct crypto_skcipher *tfm)
 		crypto_skcipher_set_flags(tfm, CRYPTO_TFM_NEED_KEY);
 }
 
-static int skcipher_setkey_ablkcipher(struct crypto_skcipher *tfm,
-				      const u8 *key, unsigned int keylen)
-{
-	struct crypto_ablkcipher **ctx = crypto_skcipher_ctx(tfm);
-	struct crypto_ablkcipher *ablkcipher = *ctx;
-	int err;
-
-	crypto_ablkcipher_clear_flags(ablkcipher, ~0);
-	crypto_ablkcipher_set_flags(ablkcipher,
-				    crypto_skcipher_get_flags(tfm) &
-				    CRYPTO_TFM_REQ_MASK);
-	err = crypto_ablkcipher_setkey(ablkcipher, key, keylen);
-	crypto_skcipher_set_flags(tfm,
-				  crypto_ablkcipher_get_flags(ablkcipher) &
-				  CRYPTO_TFM_RES_MASK);
-	if (unlikely(err)) {
-		skcipher_set_needkey(tfm);
-		return err;
-	}
-
-	crypto_skcipher_clear_flags(tfm, CRYPTO_TFM_NEED_KEY);
-	return 0;
-}
-
-static int skcipher_crypt_ablkcipher(struct skcipher_request *req,
-				     int (*crypt)(struct ablkcipher_request *))
-{
-	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(req);
-	struct crypto_ablkcipher **ctx = crypto_skcipher_ctx(tfm);
-	struct ablkcipher_request *subreq = skcipher_request_ctx(req);
-
-	ablkcipher_request_set_tfm(subreq, *ctx);
-	ablkcipher_request_set_callback(subreq, skcipher_request_flags(req),
-					req->base.complete, req->base.data);
-	ablkcipher_request_set_crypt(subreq, req->src, req->dst, req->cryptlen,
-				     req->iv);
-
-	return crypt(subreq);
-}
-
-static int skcipher_encrypt_ablkcipher(struct skcipher_request *req)
-{
-	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
-	struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
-	struct ablkcipher_alg *alg = &tfm->__crt_alg->cra_ablkcipher;
-
-	return skcipher_crypt_ablkcipher(req, alg->encrypt);
-}
-
-static int skcipher_decrypt_ablkcipher(struct skcipher_request *req)
-{
-	struct crypto_skcipher *skcipher = crypto_skcipher_reqtfm(req);
-	struct crypto_tfm *tfm = crypto_skcipher_tfm(skcipher);
-	struct ablkcipher_alg *alg = &tfm->__crt_alg->cra_ablkcipher;
-
-	return skcipher_crypt_ablkcipher(req, alg->decrypt);
-}
-
-static void crypto_exit_skcipher_ops_ablkcipher(struct crypto_tfm *tfm)
-{
-	struct crypto_ablkcipher **ctx = crypto_tfm_ctx(tfm);
-
-	crypto_free_ablkcipher(*ctx);
-}
-
-static int crypto_init_skcipher_ops_ablkcipher(struct crypto_tfm *tfm)
-{
-	struct crypto_alg *calg = tfm->__crt_alg;
-	struct crypto_skcipher *skcipher = __crypto_skcipher_cast(tfm);
-	struct crypto_ablkcipher **ctx = crypto_tfm_ctx(tfm);
-	struct crypto_ablkcipher *ablkcipher;
-	struct crypto_tfm *abtfm;
-
-	if (!crypto_mod_get(calg))
-		return -EAGAIN;
-
-	abtfm = __crypto_alloc_tfm(calg, 0, 0);
-	if (IS_ERR(abtfm)) {
-		crypto_mod_put(calg);
-		return PTR_ERR(abtfm);
-	}
-
-	ablkcipher = __crypto_ablkcipher_cast(abtfm);
-	*ctx = ablkcipher;
-	tfm->exit = crypto_exit_skcipher_ops_ablkcipher;
-
-	skcipher->setkey = skcipher_setkey_ablkcipher;
-	skcipher->encrypt = skcipher_encrypt_ablkcipher;
-	skcipher->decrypt = skcipher_decrypt_ablkcipher;
-
-	skcipher->ivsize = crypto_ablkcipher_ivsize(ablkcipher);
-	skcipher->reqsize = crypto_ablkcipher_reqsize(ablkcipher) +
-			    sizeof(struct ablkcipher_request);
-	skcipher->keysize = calg->cra_ablkcipher.max_keysize;
-
-	skcipher_set_needkey(skcipher);
-
-	return 0;
-}
-
 static int skcipher_setkey_unaligned(struct crypto_skcipher *tfm,
 				     const u8 *key, unsigned int keylen)
 {
@@ -786,9 +683,6 @@ static int crypto_skcipher_init_tfm(struct crypto_tfm *tfm)
 	struct crypto_skcipher *skcipher = __crypto_skcipher_cast(tfm);
 	struct skcipher_alg *alg = crypto_skcipher_alg(skcipher);
 
-	if (tfm->__crt_alg->cra_type == &crypto_ablkcipher_type)
-		return crypto_init_skcipher_ops_ablkcipher(tfm);
-
 	skcipher->setkey = skcipher_setkey;
 	skcipher->encrypt = alg->encrypt;
 	skcipher->decrypt = alg->decrypt;
diff --git a/include/crypto/aead.h b/include/crypto/aead.h
index 3c245b1859e7..a3bdadf6221e 100644
--- a/include/crypto/aead.h
+++ b/include/crypto/aead.h
@@ -321,7 +321,7 @@ int crypto_aead_encrypt(struct aead_request *req);
 
 /**
  * crypto_aead_decrypt() - decrypt ciphertext
- * @req: reference to the ablkcipher_request handle that holds all information
+ * @req: reference to the aead_request handle that holds all information
  *	 needed to perform the cipher operation
  *
  * Decrypt ciphertext data using the aead_request handle. That data structure
diff --git a/include/crypto/algapi.h b/include/crypto/algapi.h
index cadc5257c612..5cd846defdd6 100644
--- a/include/crypto/algapi.h
+++ b/include/crypto/algapi.h
@@ -85,25 +85,6 @@ struct scatter_walk {
 	unsigned int offset;
 };
 
-struct ablkcipher_walk {
-	struct {
-		struct page *page;
-		unsigned int offset;
-	} src, dst;
-
-	struct scatter_walk	in;
-	unsigned int		nbytes;
-	struct scatter_walk	out;
-	unsigned int		total;
-	struct list_head	buffers;
-	u8			*iv_buffer;
-	u8			*iv;
-	int			flags;
-	unsigned int		blocksize;
-};
-
-extern const struct crypto_type crypto_ablkcipher_type;
-
 void crypto_mod_put(struct crypto_alg *alg);
 
 int crypto_register_template(struct crypto_template *tmpl);
@@ -202,12 +183,6 @@ static inline void crypto_xor_cpy(u8 *dst, const u8 *src1, const u8 *src2,
 	}
 }
 
-int ablkcipher_walk_done(struct ablkcipher_request *req,
-			 struct ablkcipher_walk *walk, int err);
-int ablkcipher_walk_phys(struct ablkcipher_request *req,
-			 struct ablkcipher_walk *walk);
-void __ablkcipher_walk_complete(struct ablkcipher_walk *walk);
-
 static inline void *crypto_tfm_ctx_aligned(struct crypto_tfm *tfm)
 {
 	return PTR_ALIGN(crypto_tfm_ctx(tfm),
@@ -225,22 +200,6 @@ static inline void *crypto_instance_ctx(struct crypto_instance *inst)
 	return inst->__ctx;
 }
 
-static inline struct ablkcipher_alg *crypto_ablkcipher_alg(
-	struct crypto_ablkcipher *tfm)
-{
-	return &crypto_ablkcipher_tfm(tfm)->__crt_alg->cra_ablkcipher;
-}
-
-static inline void *crypto_ablkcipher_ctx(struct crypto_ablkcipher *tfm)
-{
-	return crypto_tfm_ctx(&tfm->base);
-}
-
-static inline void *crypto_ablkcipher_ctx_aligned(struct crypto_ablkcipher *tfm)
-{
-	return crypto_tfm_ctx_aligned(&tfm->base);
-}
-
 static inline struct crypto_cipher *crypto_spawn_cipher(
 	struct crypto_spawn *spawn)
 {
@@ -255,23 +214,6 @@ static inline struct cipher_alg *crypto_cipher_alg(struct crypto_cipher *tfm)
 	return &crypto_cipher_tfm(tfm)->__crt_alg->cra_cipher;
 }
 
-static inline void ablkcipher_walk_init(struct ablkcipher_walk *walk,
-					struct scatterlist *dst,
-					struct scatterlist *src,
-					unsigned int nbytes)
-{
-	walk->in.sg = src;
-	walk->out.sg = dst;
-	walk->total = nbytes;
-	INIT_LIST_HEAD(&walk->buffers);
-}
-
-static inline void ablkcipher_walk_complete(struct ablkcipher_walk *walk)
-{
-	if (unlikely(!list_empty(&walk->buffers)))
-		__ablkcipher_walk_complete(walk);
-}
-
 static inline struct crypto_async_request *crypto_get_backlog(
 	struct crypto_queue *queue)
 {
@@ -279,23 +221,6 @@ static inline struct crypto_async_request *crypto_get_backlog(
 	       container_of(queue->backlog, struct crypto_async_request, list);
 }
 
-static inline int ablkcipher_enqueue_request(struct crypto_queue *queue,
-					     struct ablkcipher_request *request)
-{
-	return crypto_enqueue_request(queue, &request->base);
-}
-
-static inline struct ablkcipher_request *ablkcipher_dequeue_request(
-	struct crypto_queue *queue)
-{
-	return ablkcipher_request_cast(crypto_dequeue_request(queue));
-}
-
-static inline void *ablkcipher_request_ctx(struct ablkcipher_request *req)
-{
-	return req->__ctx;
-}
-
 static inline struct crypto_alg *crypto_get_attr_alg(struct rtattr **tb,
 						     u32 type, u32 mask)
 {
diff --git a/include/crypto/engine.h b/include/crypto/engine.h
index 84c708bba00b..e29cd67f93c7 100644
--- a/include/crypto/engine.h
+++ b/include/crypto/engine.h
@@ -83,8 +83,6 @@ struct crypto_engine_ctx {
 	struct crypto_engine_op op;
 };
 
-int crypto_transfer_ablkcipher_request_to_engine(struct crypto_engine *engine,
-						 struct ablkcipher_request *req);
 int crypto_transfer_aead_request_to_engine(struct crypto_engine *engine,
 					   struct aead_request *req);
 int crypto_transfer_akcipher_request_to_engine(struct crypto_engine *engine,
@@ -93,8 +91,6 @@ int crypto_transfer_hash_request_to_engine(struct crypto_engine *engine,
 					       struct ahash_request *req);
 int crypto_transfer_skcipher_request_to_engine(struct crypto_engine *engine,
 					       struct skcipher_request *req);
-void crypto_finalize_ablkcipher_request(struct crypto_engine *engine,
-					struct ablkcipher_request *req, int err);
 void crypto_finalize_aead_request(struct crypto_engine *engine,
 				  struct aead_request *req, int err);
 void crypto_finalize_akcipher_request(struct crypto_engine *engine,
diff --git a/include/crypto/hash.h b/include/crypto/hash.h
index d52b95b75ae4..fe7f73bad1e2 100644
--- a/include/crypto/hash.h
+++ b/include/crypto/hash.h
@@ -227,7 +227,7 @@ struct crypto_shash {
  * CRYPTO_ALG_TYPE_AHASH (listed as type "ahash" in /proc/crypto)
  *
  * The asynchronous cipher operation discussion provided for the
- * CRYPTO_ALG_TYPE_ABLKCIPHER API applies here as well.
+ * CRYPTO_ALG_TYPE_SKCIPHER API applies here as well.
  */
 
 static inline struct crypto_ahash *__crypto_ahash_cast(struct crypto_tfm *tfm)
diff --git a/include/crypto/internal/des.h b/include/crypto/internal/des.h
index 81ea1a425e9c..f62a2bb1866b 100644
--- a/include/crypto/internal/des.h
+++ b/include/crypto/internal/des.h
@@ -117,18 +117,6 @@ static inline int verify_skcipher_des3_key(struct crypto_skcipher *tfm,
 	return crypto_des3_ede_verify_key(crypto_skcipher_tfm(tfm), key);
 }
 
-static inline int verify_ablkcipher_des_key(struct crypto_ablkcipher *tfm,
-					    const u8 *key)
-{
-	return crypto_des_verify_key(crypto_ablkcipher_tfm(tfm), key);
-}
-
-static inline int verify_ablkcipher_des3_key(struct crypto_ablkcipher *tfm,
-					     const u8 *key)
-{
-	return crypto_des3_ede_verify_key(crypto_ablkcipher_tfm(tfm), key);
-}
-
 static inline int verify_aead_des_key(struct crypto_aead *tfm, const u8 *key,
 				      int keylen)
 {
diff --git a/include/crypto/internal/skcipher.h b/include/crypto/internal/skcipher.h
index 454e898d5f5f..921c409fe1b1 100644
--- a/include/crypto/internal/skcipher.h
+++ b/include/crypto/internal/skcipher.h
@@ -153,17 +153,6 @@ static inline void skcipher_walk_abort(struct skcipher_walk *walk)
 	skcipher_walk_done(walk, -ECANCELED);
 }
 
-static inline void ablkcipher_request_complete(struct ablkcipher_request *req,
-					       int err)
-{
-	req->base.complete(&req->base, err);
-}
-
-static inline u32 ablkcipher_request_flags(struct ablkcipher_request *req)
-{
-	return req->base.flags;
-}
-
 static inline void *crypto_skcipher_ctx(struct crypto_skcipher *tfm)
 {
 	return crypto_tfm_ctx(&tfm->base);
@@ -182,27 +171,18 @@ static inline u32 skcipher_request_flags(struct skcipher_request *req)
 static inline unsigned int crypto_skcipher_alg_min_keysize(
 	struct skcipher_alg *alg)
 {
-	if (alg->base.cra_ablkcipher.encrypt)
-		return alg->base.cra_ablkcipher.min_keysize;
-
 	return alg->min_keysize;
 }
 
 static inline unsigned int crypto_skcipher_alg_max_keysize(
 	struct skcipher_alg *alg)
 {
-	if (alg->base.cra_ablkcipher.encrypt)
-		return alg->base.cra_ablkcipher.max_keysize;
-
 	return alg->max_keysize;
 }
 
 static inline unsigned int crypto_skcipher_alg_walksize(
 	struct skcipher_alg *alg)
 {
-	if (alg->base.cra_ablkcipher.encrypt)
-		return alg->base.cra_blocksize;
-
 	return alg->walksize;
 }
 
diff --git a/include/crypto/skcipher.h b/include/crypto/skcipher.h
index 8c5a31e810da..b4655d91661f 100644
--- a/include/crypto/skcipher.h
+++ b/include/crypto/skcipher.h
@@ -241,9 +241,6 @@ static inline struct skcipher_alg *crypto_skcipher_alg(
 
 static inline unsigned int crypto_skcipher_alg_ivsize(struct skcipher_alg *alg)
 {
-	if (alg->base.cra_ablkcipher.encrypt)
-		return alg->base.cra_ablkcipher.ivsize;
-
 	return alg->ivsize;
 }
 
@@ -286,9 +283,6 @@ static inline unsigned int crypto_skcipher_blocksize(
 static inline unsigned int crypto_skcipher_alg_chunksize(
 	struct skcipher_alg *alg)
 {
-	if (alg->base.cra_ablkcipher.encrypt)
-		return alg->base.cra_blocksize;
-
 	return alg->chunksize;
 }
 
diff --git a/include/linux/crypto.h b/include/linux/crypto.h
index e9f2c6b5d800..23365a9d062e 100644
--- a/include/linux/crypto.h
+++ b/include/linux/crypto.h
@@ -41,7 +41,6 @@
 #define CRYPTO_ALG_TYPE_CIPHER		0x00000001
 #define CRYPTO_ALG_TYPE_COMPRESS	0x00000002
 #define CRYPTO_ALG_TYPE_AEAD		0x00000003
-#define CRYPTO_ALG_TYPE_ABLKCIPHER	0x00000005
 #define CRYPTO_ALG_TYPE_SKCIPHER	0x00000005
 #define CRYPTO_ALG_TYPE_KPP		0x00000008
 #define CRYPTO_ALG_TYPE_ACOMPRESS	0x0000000a
@@ -137,7 +136,6 @@
 #define CRYPTO_MINALIGN_ATTR __attribute__ ((__aligned__(CRYPTO_MINALIGN)))
 
 struct scatterlist;
-struct crypto_ablkcipher;
 struct crypto_async_request;
 struct crypto_tfm;
 struct crypto_type;
@@ -160,19 +158,6 @@ struct crypto_async_request {
 	u32 flags;
 };
 
-struct ablkcipher_request {
-	struct crypto_async_request base;
-
-	unsigned int nbytes;
-
-	void *info;
-
-	struct scatterlist *src;
-	struct scatterlist *dst;
-
-	void *__ctx[] CRYPTO_MINALIGN_ATTR;
-};
-
 /**
  * DOC: Block Cipher Algorithm Definitions
  *
@@ -180,57 +165,6 @@ struct ablkcipher_request {
  * managed via crypto_register_alg() and crypto_unregister_alg().
  */
 
-/**
- * struct ablkcipher_alg - asynchronous block cipher definition
- * @min_keysize: Minimum key size supported by the transformation. This is the
- *		 smallest key length supported by this transformation algorithm.
- *		 This must be set to one of the pre-defined values as this is
- *		 not hardware specific. Possible values for this field can be
- *		 found via git grep "_MIN_KEY_SIZE" include/crypto/
- * @max_keysize: Maximum key size supported by the transformation. This is the
- *		 largest key length supported by this transformation algorithm.
- *		 This must be set to one of the pre-defined values as this is
- *		 not hardware specific. Possible values for this field can be
- *		 found via git grep "_MAX_KEY_SIZE" include/crypto/
- * @setkey: Set key for the transformation. This function is used to either
- *	    program a supplied key into the hardware or store the key in the
- *	    transformation context for programming it later. Note that this
- *	    function does modify the transformation context. This function can
- *	    be called multiple times during the existence of the transformation
- *	    object, so one must make sure the key is properly reprogrammed into
- *	    the hardware. This function is also responsible for checking the key
- *	    length for validity. In case a software fallback was put in place in
- *	    the @cra_init call, this function might need to use the fallback if
- *	    the algorithm doesn't support all of the key sizes.
- * @encrypt: Encrypt a scatterlist of blocks. This function is used to encrypt
- *	     the supplied scatterlist containing the blocks of data. The crypto
- *	     API consumer is responsible for aligning the entries of the
- *	     scatterlist properly and making sure the chunks are correctly
- *	     sized. In case a software fallback was put in place in the
- *	     @cra_init call, this function might need to use the fallback if
- *	     the algorithm doesn't support all of the key sizes. In case the
- *	     key was stored in transformation context, the key might need to be
- *	     re-programmed into the hardware in this function. This function
- *	     shall not modify the transformation context, as this function may
- *	     be called in parallel with the same transformation object.
- * @decrypt: Decrypt a single block. This is a reverse counterpart to @encrypt
- *	     and the conditions are exactly the same.
- * @ivsize: IV size applicable for transformation. The consumer must provide an
- *	    IV of exactly that size to perform the encrypt or decrypt operation.
- *
- * All fields except @ivsize are mandatory and must be filled.
- */
-struct ablkcipher_alg {
-	int (*setkey)(struct crypto_ablkcipher *tfm, const u8 *key,
-	              unsigned int keylen);
-	int (*encrypt)(struct ablkcipher_request *req);
-	int (*decrypt)(struct ablkcipher_request *req);
-
-	unsigned int min_keysize;
-	unsigned int max_keysize;
-	unsigned int ivsize;
-};
-
 /**
  * struct cipher_alg - single-block symmetric ciphers definition
  * @cia_min_keysize: Minimum key size supported by the transformation. This is
@@ -415,7 +349,6 @@ struct crypto_istat_rng {
 };
 #endif /* CONFIG_CRYPTO_STATS */
 
-#define cra_ablkcipher	cra_u.ablkcipher
 #define cra_cipher	cra_u.cipher
 #define cra_compress	cra_u.compress
 
@@ -483,8 +416,6 @@ struct crypto_istat_rng {
  * @cra_exit: Deinitialize the cryptographic transformation object. This is a
  *	      counterpart to @cra_init, used to remove various changes set in
  *	      @cra_init.
- * @cra_u.ablkcipher: Union member which contains an asynchronous block cipher
- *		      definition. See @struct @ablkcipher_alg.
  * @cra_u.cipher: Union member which contains a single-block symmetric cipher
  *		  definition. See @struct @cipher_alg.
  * @cra_u.compress: Union member which contains a (de)compression algorithm.
@@ -526,7 +457,6 @@ struct crypto_alg {
 	const struct crypto_type *cra_type;
 
 	union {
-		struct ablkcipher_alg ablkcipher;
 		struct cipher_alg cipher;
 		struct compress_alg compress;
 	} cra_u;
@@ -554,8 +484,6 @@ struct crypto_alg {
 #ifdef CONFIG_CRYPTO_STATS
 void crypto_stats_init(struct crypto_alg *alg);
 void crypto_stats_get(struct crypto_alg *alg);
-void crypto_stats_ablkcipher_encrypt(unsigned int nbytes, int ret, struct crypto_alg *alg);
-void crypto_stats_ablkcipher_decrypt(unsigned int nbytes, int ret, struct crypto_alg *alg);
 void crypto_stats_aead_encrypt(unsigned int cryptlen, struct crypto_alg *alg, int ret);
 void crypto_stats_aead_decrypt(unsigned int cryptlen, struct crypto_alg *alg, int ret);
 void crypto_stats_ahash_update(unsigned int nbytes, int ret, struct crypto_alg *alg);
@@ -578,10 +506,6 @@ static inline void crypto_stats_init(struct crypto_alg *alg)
 {}
 static inline void crypto_stats_get(struct crypto_alg *alg)
 {}
-static inline void crypto_stats_ablkcipher_encrypt(unsigned int nbytes, int ret, struct crypto_alg *alg)
-{}
-static inline void crypto_stats_ablkcipher_decrypt(unsigned int nbytes, int ret, struct crypto_alg *alg)
-{}
 static inline void crypto_stats_aead_encrypt(unsigned int cryptlen, struct crypto_alg *alg, int ret)
 {}
 static inline void crypto_stats_aead_decrypt(unsigned int cryptlen, struct crypto_alg *alg, int ret)
@@ -675,18 +599,6 @@ int crypto_has_alg(const char *name, u32 type, u32 mask);
  * crypto_free_*(), as well as the various helpers below.
  */
 
-struct ablkcipher_tfm {
-	int (*setkey)(struct crypto_ablkcipher *tfm, const u8 *key,
-	              unsigned int keylen);
-	int (*encrypt)(struct ablkcipher_request *req);
-	int (*decrypt)(struct ablkcipher_request *req);
-
-	struct crypto_ablkcipher *base;
-
-	unsigned int ivsize;
-	unsigned int reqsize;
-};
-
 struct cipher_tfm {
 	int (*cit_setkey)(struct crypto_tfm *tfm,
 	                  const u8 *key, unsigned int keylen);
@@ -703,7 +615,6 @@ struct compress_tfm {
 	                      u8 *dst, unsigned int *dlen);
 };
 
-#define crt_ablkcipher	crt_u.ablkcipher
 #define crt_cipher	crt_u.cipher
 #define crt_compress	crt_u.compress
 
@@ -712,7 +623,6 @@ struct crypto_tfm {
 	u32 crt_flags;
 	
 	union {
-		struct ablkcipher_tfm ablkcipher;
 		struct cipher_tfm cipher;
 		struct compress_tfm compress;
 	} crt_u;
@@ -724,10 +634,6 @@ struct crypto_tfm {
 	void *__crt_ctx[] CRYPTO_MINALIGN_ATTR;
 };
 
-struct crypto_ablkcipher {
-	struct crypto_tfm base;
-};
-
 struct crypto_cipher {
 	struct crypto_tfm base;
 };
@@ -835,347 +741,6 @@ static inline unsigned int crypto_tfm_ctx_alignment(void)
 	return __alignof__(tfm->__crt_ctx);
 }
 
-/*
- * API wrappers.
- */
-static inline struct crypto_ablkcipher *__crypto_ablkcipher_cast(
-	struct crypto_tfm *tfm)
-{
-	return (struct crypto_ablkcipher *)tfm;
-}
-
-/**
- * DOC: Asynchronous Block Cipher API
- *
- * Asynchronous block cipher API is used with the ciphers of type
- * CRYPTO_ALG_TYPE_ABLKCIPHER (listed as type "ablkcipher" in /proc/crypto).
- *
- * Asynchronous cipher operations imply that the function invocation for a
- * cipher request returns immediately before the completion of the operation.
- * The cipher request is scheduled as a separate kernel thread and therefore
- * load-balanced on the different CPUs via the process scheduler. To allow
- * the kernel crypto API to inform the caller about the completion of a cipher
- * request, the caller must provide a callback function. That function is
- * invoked with the cipher handle when the request completes.
- *
- * To support the asynchronous operation, additional information than just the
- * cipher handle must be supplied to the kernel crypto API. That additional
- * information is given by filling in the ablkcipher_request data structure.
- *
- * For the asynchronous block cipher API, the state is maintained with the tfm
- * cipher handle. A single tfm can be used across multiple calls and in
- * parallel. For asynchronous block cipher calls, context data supplied and
- * only used by the caller can be referenced the request data structure in
- * addition to the IV used for the cipher request. The maintenance of such
- * state information would be important for a crypto driver implementer to
- * have, because when calling the callback function upon completion of the
- * cipher operation, that callback function may need some information about
- * which operation just finished if it invoked multiple in parallel. This
- * state information is unused by the kernel crypto API.
- */
-
-static inline struct crypto_tfm *crypto_ablkcipher_tfm(
-	struct crypto_ablkcipher *tfm)
-{
-	return &tfm->base;
-}
-
-/**
- * crypto_free_ablkcipher() - zeroize and free cipher handle
- * @tfm: cipher handle to be freed
- */
-static inline void crypto_free_ablkcipher(struct crypto_ablkcipher *tfm)
-{
-	crypto_free_tfm(crypto_ablkcipher_tfm(tfm));
-}
-
-static inline struct ablkcipher_tfm *crypto_ablkcipher_crt(
-	struct crypto_ablkcipher *tfm)
-{
-	return &crypto_ablkcipher_tfm(tfm)->crt_ablkcipher;
-}
-
-/**
- * crypto_ablkcipher_ivsize() - obtain IV size
- * @tfm: cipher handle
- *
- * The size of the IV for the ablkcipher referenced by the cipher handle is
- * returned. This IV size may be zero if the cipher does not need an IV.
- *
- * Return: IV size in bytes
- */
-static inline unsigned int crypto_ablkcipher_ivsize(
-	struct crypto_ablkcipher *tfm)
-{
-	return crypto_ablkcipher_crt(tfm)->ivsize;
-}
-
-/**
- * crypto_ablkcipher_blocksize() - obtain block size of cipher
- * @tfm: cipher handle
- *
- * The block size for the ablkcipher referenced with the cipher handle is
- * returned. The caller may use that information to allocate appropriate
- * memory for the data returned by the encryption or decryption operation
- *
- * Return: block size of cipher
- */
-static inline unsigned int crypto_ablkcipher_blocksize(
-	struct crypto_ablkcipher *tfm)
-{
-	return crypto_tfm_alg_blocksize(crypto_ablkcipher_tfm(tfm));
-}
-
-static inline unsigned int crypto_ablkcipher_alignmask(
-	struct crypto_ablkcipher *tfm)
-{
-	return crypto_tfm_alg_alignmask(crypto_ablkcipher_tfm(tfm));
-}
-
-static inline u32 crypto_ablkcipher_get_flags(struct crypto_ablkcipher *tfm)
-{
-	return crypto_tfm_get_flags(crypto_ablkcipher_tfm(tfm));
-}
-
-static inline void crypto_ablkcipher_set_flags(struct crypto_ablkcipher *tfm,
-					       u32 flags)
-{
-	crypto_tfm_set_flags(crypto_ablkcipher_tfm(tfm), flags);
-}
-
-static inline void crypto_ablkcipher_clear_flags(struct crypto_ablkcipher *tfm,
-						 u32 flags)
-{
-	crypto_tfm_clear_flags(crypto_ablkcipher_tfm(tfm), flags);
-}
-
-/**
- * crypto_ablkcipher_setkey() - set key for cipher
- * @tfm: cipher handle
- * @key: buffer holding the key
- * @keylen: length of the key in bytes
- *
- * The caller provided key is set for the ablkcipher referenced by the cipher
- * handle.
- *
- * Note, the key length determines the cipher type. Many block ciphers implement
- * different cipher modes depending on the key size, such as AES-128 vs AES-192
- * vs. AES-256. When providing a 16 byte key for an AES cipher handle, AES-128
- * is performed.
- *
- * Return: 0 if the setting of the key was successful; < 0 if an error occurred
- */
-static inline int crypto_ablkcipher_setkey(struct crypto_ablkcipher *tfm,
-					   const u8 *key, unsigned int keylen)
-{
-	struct ablkcipher_tfm *crt = crypto_ablkcipher_crt(tfm);
-
-	return crt->setkey(crt->base, key, keylen);
-}
-
-/**
- * crypto_ablkcipher_reqtfm() - obtain cipher handle from request
- * @req: ablkcipher_request out of which the cipher handle is to be obtained
- *
- * Return the crypto_ablkcipher handle when furnishing an ablkcipher_request
- * data structure.
- *
- * Return: crypto_ablkcipher handle
- */
-static inline struct crypto_ablkcipher *crypto_ablkcipher_reqtfm(
-	struct ablkcipher_request *req)
-{
-	return __crypto_ablkcipher_cast(req->base.tfm);
-}
-
-/**
- * crypto_ablkcipher_encrypt() - encrypt plaintext
- * @req: reference to the ablkcipher_request handle that holds all information
- *	 needed to perform the cipher operation
- *
- * Encrypt plaintext data using the ablkcipher_request handle. That data
- * structure and how it is filled with data is discussed with the
- * ablkcipher_request_* functions.
- *
- * Return: 0 if the cipher operation was successful; < 0 if an error occurred
- */
-static inline int crypto_ablkcipher_encrypt(struct ablkcipher_request *req)
-{
-	struct ablkcipher_tfm *crt =
-		crypto_ablkcipher_crt(crypto_ablkcipher_reqtfm(req));
-	struct crypto_alg *alg = crt->base->base.__crt_alg;
-	unsigned int nbytes = req->nbytes;
-	int ret;
-
-	crypto_stats_get(alg);
-	ret = crt->encrypt(req);
-	crypto_stats_ablkcipher_encrypt(nbytes, ret, alg);
-	return ret;
-}
-
-/**
- * crypto_ablkcipher_decrypt() - decrypt ciphertext
- * @req: reference to the ablkcipher_request handle that holds all information
- *	 needed to perform the cipher operation
- *
- * Decrypt ciphertext data using the ablkcipher_request handle. That data
- * structure and how it is filled with data is discussed with the
- * ablkcipher_request_* functions.
- *
- * Return: 0 if the cipher operation was successful; < 0 if an error occurred
- */
-static inline int crypto_ablkcipher_decrypt(struct ablkcipher_request *req)
-{
-	struct ablkcipher_tfm *crt =
-		crypto_ablkcipher_crt(crypto_ablkcipher_reqtfm(req));
-	struct crypto_alg *alg = crt->base->base.__crt_alg;
-	unsigned int nbytes = req->nbytes;
-	int ret;
-
-	crypto_stats_get(alg);
-	ret = crt->decrypt(req);
-	crypto_stats_ablkcipher_decrypt(nbytes, ret, alg);
-	return ret;
-}
-
-/**
- * DOC: Asynchronous Cipher Request Handle
- *
- * The ablkcipher_request data structure contains all pointers to data
- * required for the asynchronous cipher operation. This includes the cipher
- * handle (which can be used by multiple ablkcipher_request instances), pointer
- * to plaintext and ciphertext, asynchronous callback function, etc. It acts
- * as a handle to the ablkcipher_request_* API calls in a similar way as
- * ablkcipher handle to the crypto_ablkcipher_* API calls.
- */
-
-/**
- * crypto_ablkcipher_reqsize() - obtain size of the request data structure
- * @tfm: cipher handle
- *
- * Return: number of bytes
- */
-static inline unsigned int crypto_ablkcipher_reqsize(
-	struct crypto_ablkcipher *tfm)
-{
-	return crypto_ablkcipher_crt(tfm)->reqsize;
-}
-
-/**
- * ablkcipher_request_set_tfm() - update cipher handle reference in request
- * @req: request handle to be modified
- * @tfm: cipher handle that shall be added to the request handle
- *
- * Allow the caller to replace the existing ablkcipher handle in the request
- * data structure with a different one.
- */
-static inline void ablkcipher_request_set_tfm(
-	struct ablkcipher_request *req, struct crypto_ablkcipher *tfm)
-{
-	req->base.tfm = crypto_ablkcipher_tfm(crypto_ablkcipher_crt(tfm)->base);
-}
-
-static inline struct ablkcipher_request *ablkcipher_request_cast(
-	struct crypto_async_request *req)
-{
-	return container_of(req, struct ablkcipher_request, base);
-}
-
-/**
- * ablkcipher_request_alloc() - allocate request data structure
- * @tfm: cipher handle to be registered with the request
- * @gfp: memory allocation flag that is handed to kmalloc by the API call.
- *
- * Allocate the request data structure that must be used with the ablkcipher
- * encrypt and decrypt API calls. During the allocation, the provided ablkcipher
- * handle is registered in the request data structure.
- *
- * Return: allocated request handle in case of success, or NULL if out of memory
- */
-static inline struct ablkcipher_request *ablkcipher_request_alloc(
-	struct crypto_ablkcipher *tfm, gfp_t gfp)
-{
-	struct ablkcipher_request *req;
-
-	req = kmalloc(sizeof(struct ablkcipher_request) +
-		      crypto_ablkcipher_reqsize(tfm), gfp);
-
-	if (likely(req))
-		ablkcipher_request_set_tfm(req, tfm);
-
-	return req;
-}
-
-/**
- * ablkcipher_request_free() - zeroize and free request data structure
- * @req: request data structure cipher handle to be freed
- */
-static inline void ablkcipher_request_free(struct ablkcipher_request *req)
-{
-	kzfree(req);
-}
-
-/**
- * ablkcipher_request_set_callback() - set asynchronous callback function
- * @req: request handle
- * @flags: specify zero or an ORing of the flags
- *	   CRYPTO_TFM_REQ_MAY_BACKLOG the request queue may back log and
- *	   increase the wait queue beyond the initial maximum size;
- *	   CRYPTO_TFM_REQ_MAY_SLEEP the request processing may sleep
- * @compl: callback function pointer to be registered with the request handle
- * @data: The data pointer refers to memory that is not used by the kernel
- *	  crypto API, but provided to the callback function for it to use. Here,
- *	  the caller can provide a reference to memory the callback function can
- *	  operate on. As the callback function is invoked asynchronously to the
- *	  related functionality, it may need to access data structures of the
- *	  related functionality which can be referenced using this pointer. The
- *	  callback function can access the memory via the "data" field in the
- *	  crypto_async_request data structure provided to the callback function.
- *
- * This function allows setting the callback function that is triggered once the
- * cipher operation completes.
- *
- * The callback function is registered with the ablkcipher_request handle and
- * must comply with the following template::
- *
- *	void callback_function(struct crypto_async_request *req, int error)
- */
-static inline void ablkcipher_request_set_callback(
-	struct ablkcipher_request *req,
-	u32 flags, crypto_completion_t compl, void *data)
-{
-	req->base.complete = compl;
-	req->base.data = data;
-	req->base.flags = flags;
-}
-
-/**
- * ablkcipher_request_set_crypt() - set data buffers
- * @req: request handle
- * @src: source scatter / gather list
- * @dst: destination scatter / gather list
- * @nbytes: number of bytes to process from @src
- * @iv: IV for the cipher operation which must comply with the IV size defined
- *      by crypto_ablkcipher_ivsize
- *
- * This function allows setting of the source data and destination data
- * scatter / gather lists.
- *
- * For encryption, the source is treated as the plaintext and the
- * destination is the ciphertext. For a decryption operation, the use is
- * reversed - the source is the ciphertext and the destination is the plaintext.
- */
-static inline void ablkcipher_request_set_crypt(
-	struct ablkcipher_request *req,
-	struct scatterlist *src, struct scatterlist *dst,
-	unsigned int nbytes, void *iv)
-{
-	req->src = src;
-	req->dst = dst;
-	req->nbytes = nbytes;
-	req->info = iv;
-}
-
 /**
  * DOC: Single Block Cipher API
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
