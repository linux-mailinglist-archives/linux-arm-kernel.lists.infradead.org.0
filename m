Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D57E2D304F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 10 Oct 2019 20:25:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eBm/4u16LsB2SCCINtmrMhAz82XKcEDX1Gzz2a86kpg=; b=VRiOMtdSSnPdwj
	s2AIFp+CK02ctU28JJsJqNvPfK5w7lDkJLKcOF6yvZTvxVz8tA69yptEkec2WKWcMWcwTKLhbBfWa
	ohQxN3TBgOroRQInGArAI9PipDEF5WK7NiOq+qJtVTV+C2l5pngZpigl/iEZz5iKBa09KYD8kGXFc
	XGSbwfkDSVqYEa8fRxRSAxCzGV+DQ7kQKMkkYgQaa8T8ZQr54Rbn6cdg6M97elj1UmaT7fJy7tbjk
	yO0EBFk/+b4K7mSGSxfe7u/yuZVxhiqzhpf470El9tMLoAljqxnFMYeURGUCVTkXHbh79/jbOvIaV
	2BJ+2c8TjZDVPnuOKWIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iId7s-0004R7-1z; Thu, 10 Oct 2019 18:25:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iId6T-0002Yg-8U
 for linux-arm-kernel@lists.infradead.org; Thu, 10 Oct 2019 18:24:01 +0000
Received: by mail-wm1-x342.google.com with SMTP id y21so7768497wmi.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 11:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iEavIFS9tbhc57UkvgKP61+VOreKyCQRMcxKNvuXKuI=;
 b=rq+l1bzpc7BdcgeV5qqzNAIyt2KAaxorgFSAveXAt6iLRRTad5MgYA3mY3RGwV9sou
 s5j6EOm0O2y/U80ivqx0ZMeTH71epTLy7HGqKc2GSWhSCUpzdKcCwV2Z974F+/02bf4/
 sN7NO7tKyKYs9ZIdLFgAV4Ux9AwZW7ZnKux/osBgPKWuXeL8hmlnUxZxLxZhHkOm8Aq2
 y9QNKI7ZDQ2Kbi53QgTY/QUSLpuE2GCU6GPHFI3WaDwwzbMQF2K+0IqUdVTPVXsLqz2m
 5QOZbUQd8eDYLNNxzhGfiIgi0CxwKYnUUqfZ6F77r+xRv46hescL8v/skJJjRwnqlF1c
 ph2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iEavIFS9tbhc57UkvgKP61+VOreKyCQRMcxKNvuXKuI=;
 b=S8Ww7bbPWfO6Wt7md88kYqaBET2+S6XV3mLIexWiOgN20Y/gMqMSMhmh9DXe/fm/Iv
 J9malL3z1oEskq8OmJIBSl+ZVEAlUBBIER4ZSMDT6Or5y7TVm1UycjaQOm5k0fnsNCKV
 XUchOZ0JJVYx9ns7gXYdk7ZiGxxbIXZRWjbVNXXX1GY13i8QrWY8gvyYgy98SqS6VgSH
 6qOQvGOPi9kjgx7OrHr5I089R7uF3kzUqwRczBa+H9+YOGne7fj0ZJWdFK+QhEX/n7k+
 yrlHE1ZnWnAsv24arg1m8qo7rW/rlc8gXX0NHEM+7ViaqDHVbSb5zQTX/57RknnzEPFc
 y9BA==
X-Gm-Message-State: APjAAAWKNNKXaVXIIXycYcav0O2bKI2Nkd4IXmH1ItY4RBDvipyzhtMQ
 jpiy362xUi/3dj1ybqAhn74=
X-Google-Smtp-Source: APXvYqx4KuBvPsVjYxUAkucZNjdUzzXM6A4R47E+dx3dZP2fVfRvwHcL7RldP4Drh1j7443el51oJQ==
X-Received: by 2002:a7b:c3d2:: with SMTP id t18mr9248631wmj.52.1570731834607; 
 Thu, 10 Oct 2019 11:23:54 -0700 (PDT)
Received: from Red.localdomain ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id
 y186sm11367664wmb.41.2019.10.10.11.23.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 10 Oct 2019 11:23:54 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: catalin.marinas@arm.com, davem@davemloft.net, herbert@gondor.apana.org.au,
 linux@armlinux.org.uk, mark.rutland@arm.com, mripard@kernel.org,
 robh+dt@kernel.org, wens@csie.org, will@kernel.org
Subject: [PATCH v3 02/11] crypto: Add Allwinner sun8i-ce Crypto Engine
Date: Thu, 10 Oct 2019 20:23:19 +0200
Message-Id: <20191010182328.15826-3-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
References: <20191010182328.15826-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_112357_372059_F1FB2FDE 
X-CRM114-Status: GOOD (  21.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Crypto Engine is an hardware cryptographic offloader present
on all recent Allwinner SoCs H2+, H3, R40, A64, H5, H6

This driver supports AES cipher in CBC/ECB mode.

Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/Kconfig              |  27 +
 drivers/crypto/allwinner/Makefile             |   1 +
 drivers/crypto/allwinner/sun8i-ce/Makefile    |   2 +
 .../allwinner/sun8i-ce/sun8i-ce-cipher.c      | 434 +++++++++++
 .../crypto/allwinner/sun8i-ce/sun8i-ce-core.c | 677 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h  | 254 +++++++
 6 files changed, 1395 insertions(+)
 create mode 100644 drivers/crypto/allwinner/Makefile
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/Makefile
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h

diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
index 0c8a99f7959d..2d901d5d995a 100644
--- a/drivers/crypto/allwinner/Kconfig
+++ b/drivers/crypto/allwinner/Kconfig
@@ -4,3 +4,30 @@ config CRYPTO_DEV_ALLWINNER
 	default y if ARCH_SUNXI
 	help
 	  Say Y here to get to see options for Allwinner hardware crypto devices
+
+config CRYPTO_DEV_SUN8I_CE
+	tristate "Support for Allwinner Crypto Engine cryptographic offloader"
+	select CRYPTO_BLKCIPHER
+	select CRYPTO_ENGINE
+	select CRYPTO_ECB
+	select CRYPTO_CBC
+	select CRYPTO_AES
+	select CRYPTO_DES
+	depends on CRYPTO_DEV_ALLWINNER
+	depends on PM
+	help
+	  Select y here for having support for the crypto Engine availlable on
+	  Allwinner SoC H2+, H3, H5, H6, R40 and A64.
+	  The Crypto Engine handle AES/3DES ciphers in ECB/CBC mode.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called sun8i-ce.
+
+config CRYPTO_DEV_SUN8I_CE_DEBUG
+	bool "Enabled sun8i-ce stats"
+	depends on CRYPTO_DEV_SUN8I_CE
+	depends on DEBUG_FS
+	help
+	  Say y to enabled sun8i-ce debug stats.
+	  This will create /sys/kernel/debug/sun8i-ce/stats for displaying
+	  the number of requests per flow and per algorithm.
diff --git a/drivers/crypto/allwinner/Makefile b/drivers/crypto/allwinner/Makefile
new file mode 100644
index 000000000000..11f02db9ee06
--- /dev/null
+++ b/drivers/crypto/allwinner/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_CRYPTO_DEV_SUN8I_CE) += sun8i-ce/
diff --git a/drivers/crypto/allwinner/sun8i-ce/Makefile b/drivers/crypto/allwinner/sun8i-ce/Makefile
new file mode 100644
index 000000000000..08b68c3c1ca9
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ce/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_CRYPTO_DEV_SUN8I_CE) += sun8i-ce.o
+sun8i-ce-y += sun8i-ce-core.o sun8i-ce-cipher.o
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
new file mode 100644
index 000000000000..f0e7c1e12da6
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c
@@ -0,0 +1,434 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sun8i-ce-cipher.c - hardware cryptographic offloader for
+ * Allwinner H3/A64/H5/H2+/H6/R40 SoC
+ *
+ * Copyright (C) 2016-2019 Corentin LABBE <clabbe.montjoie@gmail.com>
+ *
+ * This file add support for AES cipher with 128,192,256 bits keysize in
+ * CBC and ECB mode.
+ *
+ * You could find a link for the datasheet in Documentation/arm/sunxi/README
+ */
+
+#include <linux/crypto.h>
+#include <linux/dma-mapping.h>
+#include <linux/io.h>
+#include <linux/pm_runtime.h>
+#include <crypto/scatterwalk.h>
+#include <crypto/internal/des.h>
+#include <crypto/internal/skcipher.h>
+#include "sun8i-ce.h"
+
+static int sun8i_ce_cipher_need_fallback(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct scatterlist *sg;
+
+	if (sg_nents(areq->src) > MAX_SG || sg_nents(areq->dst) > MAX_SG)
+		return true;
+
+	if (areq->cryptlen < crypto_skcipher_ivsize(tfm))
+		return true;
+
+	if (areq->cryptlen == 0 || areq->cryptlen % 16)
+		return true;
+
+	sg = areq->src;
+	while (sg) {
+		if (sg->length % 4 || !IS_ALIGNED(sg->offset, sizeof(u32)))
+			return true;
+		sg = sg_next(sg);
+	}
+	sg = areq->dst;
+	while (sg) {
+		if (sg->length % 4 || !IS_ALIGNED(sg->offset, sizeof(u32)))
+			return true;
+		sg = sg_next(sg);
+	}
+	return false;
+}
+
+static int sun8i_ce_cipher_fallback(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	int err;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct sun8i_ce_alg_template *algt;
+#endif
+	SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, op->fallback_tfm);
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	algt = container_of(alg, struct sun8i_ce_alg_template, alg.skcipher);
+	algt->stat_fb++;
+#endif
+
+	skcipher_request_set_sync_tfm(subreq, op->fallback_tfm);
+	skcipher_request_set_callback(subreq, areq->base.flags, NULL, NULL);
+	skcipher_request_set_crypt(subreq, areq->src, areq->dst,
+				   areq->cryptlen, areq->iv);
+	if (rctx->op_dir & CE_DECRYPTION)
+		err = crypto_skcipher_decrypt(subreq);
+	else
+		err = crypto_skcipher_encrypt(subreq);
+	skcipher_request_zero(subreq);
+	return err;
+}
+
+static int sun8i_ce_cipher(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_ce_dev *ce = op->ce;
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct sun8i_ce_alg_template *algt;
+	struct sun8i_ce_flow *chan;
+	struct ce_task *cet;
+	struct scatterlist *sg;
+	unsigned int todo, len, offset, ivsize;
+	void *backup_iv = NULL;
+	int flow, i;
+	int nr_sgs = 0;
+	int nr_sgd = 0;
+	int err = 0;
+
+	algt = container_of(alg, struct sun8i_ce_alg_template, alg.skcipher);
+
+	dev_dbg(ce->dev, "%s %s %u %x IV(%p %u) key=%u\n", __func__,
+		crypto_tfm_alg_name(areq->base.tfm),
+		areq->cryptlen,
+		rctx->op_dir, areq->iv, crypto_skcipher_ivsize(tfm),
+		op->keylen);
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	algt->stat_req++;
+#endif
+
+	flow = rctx->flow;
+
+	chan = &ce->chanlist[flow];
+
+	cet = chan->tl;
+	memset(cet, 0, sizeof(struct ce_task));
+
+	cet->t_id = flow;
+	cet->t_common_ctl = ce->variant->alg_cipher[algt->ce_algo_id];
+	cet->t_common_ctl |= rctx->op_dir | CE_COMM_INT;
+	cet->t_dlen = areq->cryptlen / 4;
+	/* CTS and recent CE (H6) need length in bytes, in word otherwise */
+	if (ce->variant->has_t_dlen_in_bytes)
+		cet->t_dlen = areq->cryptlen;
+
+	cet->t_sym_ctl = ce->variant->op_mode[algt->ce_blockmode];
+	len = op->keylen;
+	switch (len) {
+	case 128 / 8:
+		cet->t_sym_ctl |= CE_AES_128BITS;
+		break;
+	case 192 / 8:
+		cet->t_sym_ctl |= CE_AES_192BITS;
+		break;
+	case 256 / 8:
+		cet->t_sym_ctl |= CE_AES_256BITS;
+		break;
+	}
+
+	cet->t_asym_ctl = 0;
+
+	chan->op_mode = ce->variant->op_mode[algt->ce_blockmode];
+	chan->op_dir = rctx->op_dir;
+	chan->method = ce->variant->alg_cipher[algt->ce_algo_id];
+	chan->keylen = op->keylen;
+
+	cet->t_key = dma_map_single(ce->dev, op->key, op->keylen,
+				    DMA_TO_DEVICE);
+	if (dma_mapping_error(ce->dev, cet->t_key)) {
+		dev_err(ce->dev, "Cannot DMA MAP KEY\n");
+		err = -EFAULT;
+		goto theend;
+	}
+
+	ivsize = crypto_skcipher_ivsize(tfm);
+	if (areq->iv && crypto_skcipher_ivsize(tfm) > 0) {
+		chan->ivlen = ivsize;
+		chan->bounce_iv = kzalloc(ivsize, GFP_KERNEL | GFP_DMA);
+		if (!chan->bounce_iv) {
+			err = -ENOMEM;
+			goto theend_key;
+		}
+		if (rctx->op_dir & CE_DECRYPTION) {
+			backup_iv = kzalloc(ivsize, GFP_KERNEL);
+			if (!backup_iv) {
+				err = -ENOMEM;
+				goto theend_key;
+			}
+			offset = areq->cryptlen - ivsize;
+			scatterwalk_map_and_copy(backup_iv, areq->src, offset,
+						 ivsize, 0);
+		}
+		memcpy(chan->bounce_iv, areq->iv, ivsize);
+		cet->t_iv = dma_map_single(ce->dev, chan->bounce_iv,
+					   chan->ivlen, DMA_TO_DEVICE);
+		if (dma_mapping_error(ce->dev, cet->t_iv)) {
+			dev_err(ce->dev, "Cannot DMA MAP IV\n");
+			err = -ENOMEM;
+			goto theend_iv;
+		}
+	}
+
+	if (areq->src == areq->dst) {
+		nr_sgs = dma_map_sg(ce->dev, areq->src, sg_nents(areq->src),
+				    DMA_BIDIRECTIONAL);
+		if (nr_sgs <= 0 || nr_sgs > MAX_SG) {
+			dev_err(ce->dev, "Invalid sg number %d\n", nr_sgs);
+			err = -EINVAL;
+			goto theend_iv;
+		}
+		nr_sgd = nr_sgs;
+	} else {
+		nr_sgs = dma_map_sg(ce->dev, areq->src, sg_nents(areq->src),
+				    DMA_TO_DEVICE);
+		if (nr_sgs <= 0 || nr_sgs > MAX_SG) {
+			dev_err(ce->dev, "Invalid sg number %d\n", nr_sgs);
+			err = -EINVAL;
+			goto theend_iv;
+		}
+		nr_sgd = dma_map_sg(ce->dev, areq->dst, sg_nents(areq->dst),
+				    DMA_FROM_DEVICE);
+		if (nr_sgd <= 0 || nr_sgd > MAX_SG) {
+			dev_err(ce->dev, "Invalid sg number %d\n", nr_sgd);
+			err = -EINVAL;
+			goto theend_sgs;
+		}
+	}
+
+	len = areq->cryptlen;
+	for_each_sg(areq->src, sg, nr_sgs, i) {
+		cet->t_src[i].addr = sg_dma_address(sg);
+		todo = min(len, sg_dma_len(sg));
+		cet->t_src[i].len = todo / 4;
+		dev_dbg(ce->dev, "%s total=%u SG(%d %u off=%d) todo=%u\n", __func__,
+			areq->cryptlen, i, cet->t_src[i].len, sg->offset, todo);
+		len -= todo;
+	}
+	if (len > 0) {
+		dev_err(ce->dev, "remaining len %d\n", len);
+		err = -EINVAL;
+		goto theend_sgs;
+	}
+
+	len = areq->cryptlen;
+	for_each_sg(areq->dst, sg, nr_sgd, i) {
+		cet->t_dst[i].addr = sg_dma_address(sg);
+		todo = min(len, sg_dma_len(sg));
+		cet->t_dst[i].len = todo / 4;
+		dev_dbg(ce->dev, "%s total=%u SG(%d %u off=%d) todo=%u\n", __func__,
+			areq->cryptlen, i, cet->t_dst[i].len, sg->offset, todo);
+		len -= todo;
+	}
+	if (len > 0) {
+		dev_err(ce->dev, "remaining len %d\n", len);
+		err = -EINVAL;
+		goto theend_sgs;
+	}
+
+	chan->timeout = areq->cryptlen;
+	err = sun8i_ce_run_task(ce, flow, crypto_tfm_alg_name(areq->base.tfm));
+
+theend_sgs:
+	if (areq->src == areq->dst) {
+		dma_unmap_sg(ce->dev, areq->src, nr_sgs, DMA_BIDIRECTIONAL);
+	} else {
+		if (nr_sgs > 0)
+			dma_unmap_sg(ce->dev, areq->src, nr_sgs, DMA_TO_DEVICE);
+		dma_unmap_sg(ce->dev, areq->dst, nr_sgd, DMA_FROM_DEVICE);
+	}
+
+theend_iv:
+	if (areq->iv && ivsize > 0) {
+		if (cet->t_iv)
+			dma_unmap_single(ce->dev, cet->t_iv, chan->ivlen,
+					 DMA_TO_DEVICE);
+		offset = areq->cryptlen - ivsize;
+		if (rctx->op_dir & CE_DECRYPTION) {
+			memcpy(areq->iv, backup_iv, ivsize);
+			kzfree(backup_iv);
+		} else {
+			scatterwalk_map_and_copy(areq->iv, areq->dst, offset,
+						 ivsize, 0);
+		}
+		kfree(chan->bounce_iv);
+	}
+
+theend_key:
+	dma_unmap_single(ce->dev, cet->t_key, op->keylen, DMA_TO_DEVICE);
+
+theend:
+	return err;
+}
+
+static int sun8i_ce_handle_cipher_request(struct crypto_engine *engine, void *areq)
+{
+	int err;
+	struct skcipher_request *breq = container_of(areq, struct skcipher_request, base);
+
+	err = sun8i_ce_cipher(breq);
+	crypto_finalize_skcipher_request(engine, breq, err);
+
+	return 0;
+}
+
+int sun8i_ce_skdecrypt(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	struct crypto_engine *engine;
+	int e;
+
+	rctx->op_dir = CE_DECRYPTION;
+	if (sun8i_ce_cipher_need_fallback(areq))
+		return sun8i_ce_cipher_fallback(areq);
+
+	e = sun8i_ce_get_engine_number(op->ce);
+	rctx->flow = e;
+	engine = op->ce->chanlist[e].engine;
+
+	return crypto_transfer_skcipher_request_to_engine(engine, areq);
+}
+
+int sun8i_ce_skencrypt(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	struct crypto_engine *engine;
+	int e;
+
+	rctx->op_dir = CE_ENCRYPTION;
+	if (sun8i_ce_cipher_need_fallback(areq))
+		return sun8i_ce_cipher_fallback(areq);
+
+	e = sun8i_ce_get_engine_number(op->ce);
+	rctx->flow = e;
+	engine = op->ce->chanlist[e].engine;
+
+	return crypto_transfer_skcipher_request_to_engine(engine, areq);
+}
+
+int sun8i_ce_cipher_init(struct crypto_tfm *tfm)
+{
+	struct sun8i_cipher_tfm_ctx *op = crypto_tfm_ctx(tfm);
+	struct sun8i_ce_alg_template *algt;
+	const char *name = crypto_tfm_alg_name(tfm);
+	struct crypto_skcipher *sktfm = __crypto_skcipher_cast(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(sktfm);
+	int err;
+
+	memset(op, 0, sizeof(struct sun8i_cipher_tfm_ctx));
+
+	algt = container_of(alg, struct sun8i_ce_alg_template, alg.skcipher);
+	op->ce = algt->ce;
+
+	sktfm->reqsize = sizeof(struct sun8i_cipher_req_ctx);
+
+	op->fallback_tfm = crypto_alloc_sync_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
+	if (IS_ERR(op->fallback_tfm)) {
+		dev_err(op->ce->dev, "ERROR: Cannot allocate fallback for %s %ld\n",
+			name, PTR_ERR(op->fallback_tfm));
+		return PTR_ERR(op->fallback_tfm);
+	}
+
+	dev_info(op->ce->dev, "Fallback for %s is %s\n",
+		 crypto_tfm_alg_driver_name(&sktfm->base),
+		 crypto_tfm_alg_driver_name(crypto_skcipher_tfm(&op->fallback_tfm->base)));
+
+	op->enginectx.op.do_one_request = sun8i_ce_handle_cipher_request;
+	op->enginectx.op.prepare_request = NULL;
+	op->enginectx.op.unprepare_request = NULL;
+
+	err = pm_runtime_get_sync(op->ce->dev);
+	if (err < 0)
+		goto error_pm;
+
+	return 0;
+error_pm:
+	crypto_free_sync_skcipher(op->fallback_tfm);
+	return err;
+}
+
+void sun8i_ce_cipher_exit(struct crypto_tfm *tfm)
+{
+	struct sun8i_cipher_tfm_ctx *op = crypto_tfm_ctx(tfm);
+
+	if (op->key) {
+		memzero_explicit(op->key, op->keylen);
+		kfree(op->key);
+	}
+	crypto_free_sync_skcipher(op->fallback_tfm);
+	pm_runtime_put_sync_suspend(op->ce->dev);
+}
+
+int sun8i_ce_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			unsigned int keylen)
+{
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_ce_dev *ce = op->ce;
+
+	switch (keylen) {
+	case 128 / 8:
+		break;
+	case 192 / 8:
+		break;
+	case 256 / 8:
+		break;
+	default:
+		dev_dbg(ce->dev, "ERROR: Invalid keylen %u\n", keylen);
+		crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		return -EINVAL;
+	}
+	if (op->key) {
+		memzero_explicit(op->key, op->keylen);
+		kfree(op->key);
+	}
+	op->keylen = keylen;
+	op->key = kmalloc(keylen, GFP_KERNEL | GFP_DMA);
+	if (!op->key)
+		return -ENOMEM;
+	memcpy(op->key, key, keylen);
+
+	crypto_sync_skcipher_clear_flags(op->fallback_tfm, CRYPTO_TFM_REQ_MASK);
+	crypto_sync_skcipher_set_flags(op->fallback_tfm, tfm->base.crt_flags & CRYPTO_TFM_REQ_MASK);
+
+	return crypto_sync_skcipher_setkey(op->fallback_tfm, key, keylen);
+}
+
+int sun8i_ce_des3_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			 unsigned int keylen)
+{
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	int err;
+
+	err = verify_skcipher_des3_key(tfm, key);
+	if (err)
+		return err;
+
+	if (op->key) {
+		memzero_explicit(op->key, op->keylen);
+		kfree(op->key);
+	}
+	op->keylen = keylen;
+	op->key = kmalloc(keylen, GFP_KERNEL | GFP_DMA);
+	if (!op->key)
+		return -ENOMEM;
+	memcpy(op->key, key, keylen);
+
+	crypto_sync_skcipher_clear_flags(op->fallback_tfm, CRYPTO_TFM_REQ_MASK);
+	crypto_sync_skcipher_set_flags(op->fallback_tfm, tfm->base.crt_flags & CRYPTO_TFM_REQ_MASK);
+
+	return crypto_sync_skcipher_setkey(op->fallback_tfm, key, keylen);
+}
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
new file mode 100644
index 000000000000..6f3c619bd662
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-core.c
@@ -0,0 +1,677 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sun8i-ce-core.c - hardware cryptographic offloader for
+ * Allwinner H3/A64/H5/H2+/H6/R40 SoC
+ *
+ * Copyright (C) 2015-2019 Corentin Labbe <clabbe.montjoie@gmail.com>
+ *
+ * Core file which registers crypto algorithms supported by the CryptoEngine.
+ *
+ * You could find a link for the datasheet in Documentation/arm/sunxi/README
+ */
+#include <linux/clk.h>
+#include <linux/crypto.h>
+#include <linux/delay.h>
+#include <linux/dma-mapping.h>
+#include <linux/interrupt.h>
+#include <linux/io.h>
+#include <linux/irq.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/reset.h>
+#include <crypto/internal/skcipher.h>
+
+#include "sun8i-ce.h"
+
+/*
+ * mod clock is lower on H3 than other SoC due to some DMA timeout occurring
+ * with high value.
+ * If you want to tune mod clock, loading driver and passing selftest is
+ * insufficient, you need to test with some LUKS test (mount and write to it)
+ */
+static const struct ce_variant ce_h3_variant = {
+	.alg_cipher = { CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
+	},
+	.op_mode = { CE_OP_ECB, CE_OP_CBC
+	},
+	.ce_clks = {
+		{ "bus", 0, 200000000 },
+		{ "mod", 50000000, 0 },
+		}
+};
+
+static const struct ce_variant ce_h5_variant = {
+	.alg_cipher = { CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
+	},
+	.op_mode = { CE_OP_ECB, CE_OP_CBC
+	},
+	.ce_clks = {
+		{ "bus", 0, 200000000 },
+		{ "mod", 300000000, 0 },
+		}
+};
+
+static const struct ce_variant ce_h6_variant = {
+	.alg_cipher = { CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
+	},
+	.op_mode = { CE_OP_ECB, CE_OP_CBC
+	},
+	.has_t_dlen_in_bytes = true,
+	.ce_clks = {
+		{ "bus", 0, 200000000 },
+		{ "mod", 300000000, 0 },
+		{ "ram", 0, 400000000 },
+		}
+};
+
+static const struct ce_variant ce_a64_variant = {
+	.alg_cipher = { CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
+	},
+	.op_mode = { CE_OP_ECB, CE_OP_CBC
+	},
+	.ce_clks = {
+		{ "bus", 0, 200000000 },
+		{ "mod", 300000000, 0 },
+		}
+};
+
+static const struct ce_variant ce_r40_variant = {
+	.alg_cipher = { CE_ALG_AES, CE_ALG_DES, CE_ALG_3DES,
+	},
+	.op_mode = { CE_OP_ECB, CE_OP_CBC
+	},
+	.ce_clks = {
+		{ "bus", 0, 200000000 },
+		{ "mod", 300000000, 0 },
+		}
+};
+
+/*
+ * sun8i_ce_get_engine_number() get the next channel slot
+ * This is a simple round-robin way of getting the next channel
+ */
+int sun8i_ce_get_engine_number(struct sun8i_ce_dev *ce)
+{
+	return atomic_inc_return(&ce->flow) % MAXFLOW;
+}
+
+int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name)
+{
+	u32 v;
+	int err = 0;
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	ce->chanlist[flow].stat_req++;
+#endif
+
+	mutex_lock(&ce->mlock);
+
+	v = readl(ce->base + CE_ICR);
+	v |= 1 << flow;
+	writel(v, ce->base + CE_ICR);
+
+	reinit_completion(&ce->chanlist[flow].complete);
+	writel(ce->chanlist[flow].t_phy, ce->base + CE_TDQ);
+
+	ce->chanlist[flow].status = 0;
+	/* Be sure all data is written before enabling the task */
+	wmb();
+
+	v = 1 | (ce->chanlist[flow].tl->t_common_ctl & 0x7F) << 8;
+	writel(v, ce->base + CE_TLR);
+	mutex_unlock(&ce->mlock);
+
+	wait_for_completion_interruptible_timeout(&ce->chanlist[flow].complete,
+			msecs_to_jiffies(ce->chanlist[flow].timeout));
+
+	if (ce->chanlist[flow].status == 0) {
+		dev_err(ce->dev, "DMA timeout for %s\n", name);
+		err = -EFAULT;
+	}
+	/* No need to lock for this read, the channel is locked so
+	 * nothing could modify the error value for this channel
+	 */
+	v = readl(ce->base + CE_ESR);
+	if (v) {
+		v >>= (flow * 4);
+		v &= 0xFF;
+		if (v) {
+			dev_err(ce->dev, "CE ERROR: %x for flow %x\n", v, flow);
+			err = -EFAULT;
+		}
+		if (v & CE_ERR_ALGO_NOTSUP)
+			dev_err(ce->dev, "CE ERROR: algorithm not supported\n");
+		if (v & CE_ERR_DATALEN)
+			dev_err(ce->dev, "CE ERROR: data length error\n");
+		if (v & CE_ERR_KEYSRAM)
+			dev_err(ce->dev, "CE ERROR: keysram access error for AES\n");
+		if (v & CE_ERR_ADDR_INVALID)
+			dev_err(ce->dev, "CE ERROR: address invalid\n");
+		}
+
+	return err;
+}
+
+static irqreturn_t ce_irq_handler(int irq, void *data)
+{
+	struct sun8i_ce_dev *ce = (struct sun8i_ce_dev *)data;
+	int flow = 0;
+	u32 p;
+
+	p = readl(ce->base + CE_ISR);
+	for (flow = 0; flow < MAXFLOW; flow++) {
+		if (p & (BIT(flow))) {
+			writel(BIT(flow), ce->base + CE_ISR);
+			ce->chanlist[flow].status = 1;
+			complete(&ce->chanlist[flow].complete);
+		}
+	}
+
+	return IRQ_HANDLED;
+}
+
+static struct sun8i_ce_alg_template ce_algs[] = {
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.ce_algo_id = CE_ID_CIPHER_AES,
+	.ce_blockmode = CE_ID_OP_CBC,
+	.alg.skcipher = {
+		.base = {
+			.cra_name = "cbc(aes)",
+			.cra_driver_name = "cbc-aes-sun8i-ce",
+			.cra_priority = 400,
+			.cra_blocksize = AES_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct sun8i_cipher_tfm_ctx),
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = sun8i_ce_cipher_init,
+			.cra_exit = sun8i_ce_cipher_exit,
+		},
+		.min_keysize	= AES_MIN_KEY_SIZE,
+		.max_keysize	= AES_MAX_KEY_SIZE,
+		.ivsize		= AES_BLOCK_SIZE,
+		.setkey		= sun8i_ce_aes_setkey,
+		.encrypt	= sun8i_ce_skencrypt,
+		.decrypt	= sun8i_ce_skdecrypt,
+	}
+},
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.ce_algo_id = CE_ID_CIPHER_AES,
+	.ce_blockmode = CE_ID_OP_ECB,
+	.alg.skcipher = {
+		.base = {
+			.cra_name = "ecb(aes)",
+			.cra_driver_name = "ecb-aes-sun8i-ce",
+			.cra_priority = 400,
+			.cra_blocksize = AES_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct sun8i_cipher_tfm_ctx),
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = sun8i_ce_cipher_init,
+			.cra_exit = sun8i_ce_cipher_exit,
+		},
+		.min_keysize	= AES_MIN_KEY_SIZE,
+		.max_keysize	= AES_MAX_KEY_SIZE,
+		.setkey		= sun8i_ce_aes_setkey,
+		.encrypt	= sun8i_ce_skencrypt,
+		.decrypt	= sun8i_ce_skdecrypt,
+	}
+},
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.ce_algo_id = CE_ID_CIPHER_DES3,
+	.ce_blockmode = CE_ID_OP_CBC,
+	.alg.skcipher = {
+		.base = {
+			.cra_name = "cbc(des3_ede)",
+			.cra_driver_name = "cbc-des3-sun8i-ce",
+			.cra_priority = 400,
+			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct sun8i_cipher_tfm_ctx),
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = sun8i_ce_cipher_init,
+			.cra_exit = sun8i_ce_cipher_exit,
+		},
+		.min_keysize	= DES3_EDE_KEY_SIZE,
+		.max_keysize	= DES3_EDE_KEY_SIZE,
+		.ivsize		= DES3_EDE_BLOCK_SIZE,
+		.setkey		= sun8i_ce_des3_setkey,
+		.encrypt	= sun8i_ce_skencrypt,
+		.decrypt	= sun8i_ce_skdecrypt,
+	}
+},
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.ce_algo_id = CE_ID_CIPHER_DES3,
+	.ce_blockmode = CE_ID_OP_ECB,
+	.alg.skcipher = {
+		.base = {
+			.cra_name = "ecb(des3_ede)",
+			.cra_driver_name = "ecb-des3-sun8i-ce",
+			.cra_priority = 400,
+			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct sun8i_cipher_tfm_ctx),
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = sun8i_ce_cipher_init,
+			.cra_exit = sun8i_ce_cipher_exit,
+		},
+		.min_keysize	= DES3_EDE_KEY_SIZE,
+		.max_keysize	= DES3_EDE_KEY_SIZE,
+		.setkey		= sun8i_ce_des3_setkey,
+		.encrypt	= sun8i_ce_skencrypt,
+		.decrypt	= sun8i_ce_skdecrypt,
+	}
+},
+};
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+static int sun8i_ce_dbgfs_read(struct seq_file *seq, void *v)
+{
+	struct sun8i_ce_dev *ce = seq->private;
+	int i;
+
+	for (i = 0; i < MAXFLOW; i++)
+		seq_printf(seq, "Channel %d: nreq %lu\n", i, ce->chanlist[i].stat_req);
+
+	for (i = 0; i < ARRAY_SIZE(ce_algs); i++) {
+		if (!ce_algs[i].ce)
+			continue;
+		switch (ce_algs[i].type) {
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			seq_printf(seq, "%s %s %lu %lu\n",
+				   ce_algs[i].alg.skcipher.base.cra_driver_name,
+				   ce_algs[i].alg.skcipher.base.cra_name,
+				   ce_algs[i].stat_req, ce_algs[i].stat_fb);
+			break;
+		}
+	}
+	return 0;
+}
+
+static int sun8i_ce_dbgfs_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, sun8i_ce_dbgfs_read, inode->i_private);
+}
+
+static const struct file_operations sun8i_ce_debugfs_fops = {
+	.owner = THIS_MODULE,
+	.open = sun8i_ce_dbgfs_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+};
+#endif
+
+static void sun8i_ce_free_chanlist(struct sun8i_ce_dev *ce, int i)
+{
+	while (i >= 0) {
+		crypto_engine_exit(ce->chanlist[i].engine);
+		if (ce->chanlist[i].tl)
+			dma_free_coherent(ce->dev, sizeof(struct ce_task),
+					  ce->chanlist[i].tl,
+					  ce->chanlist[i].t_phy);
+		i--;
+	}
+}
+
+/*
+ * Allocate the channel list structure
+ */
+static int sun8i_ce_allocate_chanlist(struct sun8i_ce_dev *ce)
+{
+	int i, err;
+
+	ce->chanlist = devm_kcalloc(ce->dev, MAXFLOW,
+				    sizeof(struct sun8i_ce_flow), GFP_KERNEL);
+	if (!ce->chanlist)
+		return -ENOMEM;
+
+	for (i = 0; i < MAXFLOW; i++) {
+		init_completion(&ce->chanlist[i].complete);
+
+		ce->chanlist[i].engine = crypto_engine_alloc_init(ce->dev, true);
+		if (!ce->chanlist[i].engine) {
+			dev_err(ce->dev, "Cannot allocate engine\n");
+			i--;
+			goto error_engine;
+		}
+		err = crypto_engine_start(ce->chanlist[i].engine);
+		if (err) {
+			dev_err(ce->dev, "Cannot start engine\n");
+			goto error_engine;
+		}
+		ce->chanlist[i].tl = dma_alloc_coherent(ce->dev,
+							sizeof(struct ce_task),
+							&ce->chanlist[i].t_phy,
+							GFP_KERNEL);
+		if (!ce->chanlist[i].tl) {
+			dev_err(ce->dev, "Cannot get DMA memory for task %d\n",
+				i);
+			err = -ENOMEM;
+			goto error_engine;
+		}
+	}
+	return 0;
+error_engine:
+	sun8i_ce_free_chanlist(ce, i);
+	return err;
+}
+
+/*
+ * Power management strategy: The device is suspended unless a TFM exists for
+ * one of the algorithms proposed by this driver.
+ */
+static int sun8i_ce_pm_suspend(struct device *dev)
+{
+	struct sun8i_ce_dev *ce = dev_get_drvdata(dev);
+	int i;
+
+	reset_control_assert(ce->reset);
+	for (i = 0; i < CE_MAX_CLOCKS; i++)
+		clk_disable_unprepare(ce->ceclks[i]);
+	return 0;
+}
+
+static int sun8i_ce_pm_resume(struct device *dev)
+{
+	struct sun8i_ce_dev *ce = dev_get_drvdata(dev);
+	int err, i;
+
+	for (i = 0; i < CE_MAX_CLOCKS; i++) {
+		if (!ce->variant->ce_clks[i].name)
+			continue;
+		err = clk_prepare_enable(ce->ceclks[i]);
+		if (err) {
+			dev_err(ce->dev, "Cannot prepare_enable %s\n",
+				ce->variant->ce_clks[i].name);
+			goto error;
+		}
+	}
+	err = reset_control_deassert(ce->reset);
+	if (err) {
+		dev_err(ce->dev, "Cannot deassert reset control\n");
+		goto error;
+	}
+	return 0;
+error:
+	sun8i_ce_pm_suspend(dev);
+	return err;
+}
+
+const struct dev_pm_ops sun8i_ce_pm_ops = {
+	SET_RUNTIME_PM_OPS(sun8i_ce_pm_suspend, sun8i_ce_pm_resume, NULL)
+};
+
+static int sun8i_ce_pm_init(struct sun8i_ce_dev *ce)
+{
+	int err;
+
+	pm_runtime_use_autosuspend(ce->dev);
+	pm_runtime_set_autosuspend_delay(ce->dev, 2000);
+
+	err = pm_runtime_set_suspended(ce->dev);
+	if (err)
+		return err;
+	pm_runtime_enable(ce->dev);
+	return err;
+}
+
+static void sun8i_ce_pm_exit(struct sun8i_ce_dev *ce)
+{
+	pm_runtime_disable(ce->dev);
+}
+
+static int sun8i_ce_get_clks(struct sun8i_ce_dev *ce)
+{
+	unsigned long cr;
+	int err, i;
+
+	for (i = 0; i < CE_MAX_CLOCKS; i++) {
+		if (!ce->variant->ce_clks[i].name)
+			continue;
+		ce->ceclks[i] = devm_clk_get(ce->dev, ce->variant->ce_clks[i].name);
+		if (IS_ERR(ce->ceclks[i])) {
+			err = PTR_ERR(ce->ceclks[i]);
+			dev_err(ce->dev, "Cannot get %s CE clock err=%d\n",
+				ce->variant->ce_clks[i].name, err);
+			return err;
+		}
+		cr = clk_get_rate(ce->ceclks[i]);
+		if (!cr)
+			return -EINVAL;
+		if (ce->variant->ce_clks[i].freq > 0 &&
+		    cr != ce->variant->ce_clks[i].freq) {
+			dev_info(ce->dev, "Set %s clock to %lu (%lu Mhz) from %lu (%lu Mhz)\n",
+				 ce->variant->ce_clks[i].name,
+				 ce->variant->ce_clks[i].freq,
+				 ce->variant->ce_clks[i].freq / 1000000,
+				 cr, cr / 1000000);
+			err = clk_set_rate(ce->ceclks[i], ce->variant->ce_clks[i].freq);
+			if (err)
+				dev_err(ce->dev, "Fail to set %s clk speed to %lu hz\n",
+					ce->variant->ce_clks[i].name,
+					ce->variant->ce_clks[i].freq);
+		}
+		if (ce->variant->ce_clks[i].max_freq > 0 &&
+		    cr > ce->variant->ce_clks[i].max_freq)
+			dev_warn(ce->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommandation (%lu hz)",
+				 ce->variant->ce_clks[i].name, cr,
+				 ce->variant->ce_clks[i].max_freq);
+	}
+	return 0;
+}
+
+static int sun8i_ce_register_algs(struct sun8i_ce_dev *ce)
+{
+	int ce_method, err, id, i;
+
+	for (i = 0; i < ARRAY_SIZE(ce_algs); i++) {
+		ce_algs[i].ce = ce;
+		switch (ce_algs[i].type) {
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			id = ce_algs[i].ce_algo_id;
+			ce_method = ce->variant->alg_cipher[id];
+			if (ce_method == CE_ID_NOTSUPP) {
+				dev_dbg(ce->dev,
+					"DEBUG: Algo of %s not supported\n",
+					ce_algs[i].alg.skcipher.base.cra_name);
+				ce_algs[i].ce = NULL;
+				break;
+			}
+			id = ce_algs[i].ce_blockmode;
+			ce_method = ce->variant->op_mode[id];
+			if (ce_method == CE_ID_NOTSUPP) {
+				dev_dbg(ce->dev, "DEBUG: Blockmode of %s not supported\n",
+					ce_algs[i].alg.skcipher.base.cra_name);
+				ce_algs[i].ce = NULL;
+				break;
+			}
+			dev_info(ce->dev, "Register %s\n",
+				 ce_algs[i].alg.skcipher.base.cra_name);
+			err = crypto_register_skcipher(&ce_algs[i].alg.skcipher);
+			if (err) {
+				dev_err(ce->dev, "ERROR: Fail to register %s\n",
+					ce_algs[i].alg.skcipher.base.cra_name);
+				ce_algs[i].ce = NULL;
+				return err;
+			}
+			break;
+		default:
+			ce_algs[i].ce = NULL;
+			dev_err(ce->dev, "ERROR: tryed to register an unknown algo\n");
+		}
+	}
+	return 0;
+}
+
+static void sun8i_ce_unregister_algs(struct sun8i_ce_dev *ce)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ce_algs); i++) {
+		if (!ce_algs[i].ce)
+			continue;
+		switch (ce_algs[i].type) {
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			dev_info(ce->dev, "Unregister %d %s\n", i,
+				 ce_algs[i].alg.skcipher.base.cra_name);
+			crypto_unregister_skcipher(&ce_algs[i].alg.skcipher);
+			break;
+		}
+	}
+}
+
+static int sun8i_ce_probe(struct platform_device *pdev)
+{
+	struct sun8i_ce_dev *ce;
+	struct resource *res;
+	int err, irq;
+	u32 v;
+
+	ce = devm_kzalloc(&pdev->dev, sizeof(*ce), GFP_KERNEL);
+	if (!ce)
+		return -ENOMEM;
+
+	ce->dev = &pdev->dev;
+	platform_set_drvdata(pdev, ce);
+
+	ce->variant = of_device_get_match_data(&pdev->dev);
+	if (!ce->variant) {
+		dev_err(&pdev->dev, "Missing Crypto Engine variant\n");
+		return -EINVAL;
+	}
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	ce->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(ce->base))
+		return PTR_ERR(ce->base);
+
+	err = sun8i_ce_get_clks(ce);
+	if (err)
+		return err;
+
+	/* Get Non Secure IRQ */
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(ce->dev, "Cannot get CryptoEngine Non-secure IRQ\n");
+		return irq;
+	}
+
+	ce->reset = devm_reset_control_get_optional(&pdev->dev, "bus");
+	if (IS_ERR(ce->reset)) {
+		if (PTR_ERR(ce->reset) == -EPROBE_DEFER)
+			return PTR_ERR(ce->reset);
+		dev_err(&pdev->dev, "No reset control found\n");
+		return PTR_ERR(ce->reset);
+	}
+
+	mutex_init(&ce->mlock);
+
+	err = sun8i_ce_allocate_chanlist(ce);
+	if (err)
+		return err;
+
+	err = sun8i_ce_pm_init(ce);
+	if (err)
+		goto error_pm;
+
+	err = devm_request_irq(&pdev->dev, irq, ce_irq_handler, 0,
+			       "sun8i-ce-ns", ce);
+	if (err) {
+		dev_err(ce->dev, "Cannot request CryptoEngine Non-secure IRQ (err=%d)\n", err);
+		goto error_irq;
+	}
+
+	err = sun8i_ce_register_algs(ce);
+	if (err)
+		goto error_alg;
+
+	err = pm_runtime_get_sync(ce->dev);
+	if (err < 0)
+		goto error_alg;
+
+	v = readl(ce->base + CE_CTR);
+	v >>= CE_DIE_ID_SHIFT;
+	v &= CE_DIE_ID_MASK;
+	dev_info(&pdev->dev, "CryptoEngine Die ID %x\n", v);
+
+	pm_runtime_put_sync(ce->dev);
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	/* Ignore error of debugfs */
+	ce->dbgfs_dir = debugfs_create_dir("sun8i-ce", NULL);
+	ce->dbgfs_stats = debugfs_create_file("stats", 0444,
+					      ce->dbgfs_dir, ce,
+					      &sun8i_ce_debugfs_fops);
+#endif
+
+	return 0;
+error_alg:
+	sun8i_ce_unregister_algs(ce);
+error_irq:
+	sun8i_ce_pm_exit(ce);
+error_pm:
+	sun8i_ce_free_chanlist(ce, MAXFLOW);
+	return err;
+}
+
+static int sun8i_ce_remove(struct platform_device *pdev)
+{
+	struct sun8i_ce_dev *ce = platform_get_drvdata(pdev);
+
+	sun8i_ce_unregister_algs(ce);
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	debugfs_remove_recursive(ce->dbgfs_dir);
+#endif
+
+	sun8i_ce_free_chanlist(ce, MAXFLOW);
+
+	sun8i_ce_pm_exit(ce);
+	return 0;
+}
+
+static const struct of_device_id sun8i_ce_crypto_of_match_table[] = {
+	{ .compatible = "allwinner,sun8i-h3-crypto",
+	  .data = &ce_h3_variant },
+	{ .compatible = "allwinner,sun8i-r40-crypto",
+	  .data = &ce_r40_variant },
+	{ .compatible = "allwinner,sun50i-a64-crypto",
+	  .data = &ce_a64_variant },
+	{ .compatible = "allwinner,sun50i-h5-crypto",
+	  .data = &ce_h5_variant },
+	{ .compatible = "allwinner,sun50i-h6-crypto",
+	  .data = &ce_h6_variant },
+	{}
+};
+MODULE_DEVICE_TABLE(of, sun8i_ce_crypto_of_match_table);
+
+static struct platform_driver sun8i_ce_driver = {
+	.probe		 = sun8i_ce_probe,
+	.remove		 = sun8i_ce_remove,
+	.driver		 = {
+		.name		= "sun8i-ce",
+		.pm		= &sun8i_ce_pm_ops,
+		.of_match_table	= sun8i_ce_crypto_of_match_table,
+	},
+};
+
+module_platform_driver(sun8i_ce_driver);
+
+MODULE_DESCRIPTION("Allwinner Crypto Engine cryptographic offloader");
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Corentin Labbe <clabbe.montjoie@gmail.com>");
diff --git a/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
new file mode 100644
index 000000000000..c6ddad3393ed
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ce/sun8i-ce.h
@@ -0,0 +1,254 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * sun8i-ce.h - hardware cryptographic offloader for
+ * Allwinner H3/A64/H5/H2+/H6 SoC
+ *
+ * Copyright (C) 2016-2019 Corentin LABBE <clabbe.montjoie@gmail.com>
+ */
+#include <crypto/aes.h>
+#include <crypto/des.h>
+#include <crypto/engine.h>
+#include <crypto/skcipher.h>
+#include <linux/atomic.h>
+#include <linux/debugfs.h>
+#include <linux/crypto.h>
+
+/* CE Registers */
+#define CE_TDQ	0x00
+#define CE_CTR	0x04
+#define CE_ICR	0x08
+#define CE_ISR	0x0C
+#define CE_TLR	0x10
+#define CE_TSR	0x14
+#define CE_ESR	0x18
+#define CE_CSSGR	0x1C
+#define CE_CDSGR	0x20
+#define CE_CSAR	0x24
+#define CE_CDAR	0x28
+#define CE_TPR	0x2C
+
+/* Used in struct ce_task */
+/* ce_task common */
+#define CE_ENCRYPTION		0
+#define CE_DECRYPTION		BIT(8)
+
+#define CE_COMM_INT		BIT(31)
+
+/* ce_task symmetric */
+#define CE_AES_128BITS 0
+#define CE_AES_192BITS 1
+#define CE_AES_256BITS 2
+
+#define CE_OP_ECB	0
+#define CE_OP_CBC	(1 << 8)
+
+#define CE_ALG_AES		0
+#define CE_ALG_DES		1
+#define CE_ALG_3DES		2
+
+/* Used in ce_variant */
+#define CE_ID_NOTSUPP		0xFF
+
+#define CE_ID_CIPHER_AES	0
+#define CE_ID_CIPHER_DES	1
+#define CE_ID_CIPHER_DES3	2
+#define CE_ID_CIPHER_MAX	3
+
+#define CE_ID_OP_ECB	0
+#define CE_ID_OP_CBC	1
+#define CE_ID_OP_MAX	2
+
+/* Used in CE registers */
+#define CE_ERR_ALGO_NOTSUP	BIT(0)
+#define CE_ERR_DATALEN		BIT(1)
+#define CE_ERR_KEYSRAM		BIT(2)
+#define CE_ERR_ADDR_INVALID	BIT(5)
+#define CE_ERR_KEYLADDER	BIT(6)
+
+#define CE_DIE_ID_SHIFT	16
+#define CE_DIE_ID_MASK	0x07
+
+#define MAX_SG 8
+
+#define CE_MAX_CLOCKS 3
+
+#define MAXFLOW 4
+
+/*
+ * struct ce_clock - Describe clocks used by sun8i-ce
+ * @name:	Name of clock needed by this variant
+ * @freq:	Frequency to set for each clock
+ * @max_freq:	Maximum frequency for each clock (generally given by datasheet)
+ */
+struct ce_clock {
+	const char *name;
+	unsigned long freq;
+	unsigned long max_freq;
+};
+
+/*
+ * struct ce_variant - Describe CE capability for each variant hardware
+ * @alg_cipher:	list of supported ciphers. for each CE_ID_ this will give the
+ *              coresponding CE_ALG_XXX value
+ * @op_mode:	list of supported block modes
+ * @has_t_dlen_in_bytes:	Does the request size for cipher is in
+ *				bytes or words
+ * @ce_clks:	list of clocks needed by this variant
+ */
+struct ce_variant {
+	char alg_cipher[CE_ID_CIPHER_MAX];
+	u32 op_mode[CE_ID_OP_MAX];
+	bool has_t_dlen_in_bytes;
+	struct ce_clock ce_clks[CE_MAX_CLOCKS];
+};
+
+struct sginfo {
+	u32 addr;
+	u32 len;
+} __packed;
+
+/*
+ * struct ce_task - CE Task descriptor
+ * The structure of this descriptor could be found in the datasheet
+ */
+struct ce_task {
+	u32 t_id;
+	u32 t_common_ctl;
+	u32 t_sym_ctl;
+	u32 t_asym_ctl;
+	u32 t_key;
+	u32 t_iv;
+	u32 t_ctr;
+	u32 t_dlen;
+	struct sginfo t_src[MAX_SG];
+	struct sginfo t_dst[MAX_SG];
+	u32 next;
+	u32 reserved[3];
+} __packed __aligned(8);
+
+/*
+ * struct sun8i_ce_flow - Information used by each flow
+ * @engine:	ptr to the crypto_engine for this flow
+ * @bounce_iv:	buffer which contain the IV
+ * @ivlen:	size of bounce_iv
+ * @keylen:	keylen for this flow operation
+ * @complete:	completion for the current task on this flow
+ * @status:	set to 1 by interrupt if task is done
+ * @method:	current method for flow
+ * @op_dir:	direction (encrypt vs decrypt) of this flow
+ * @op_mode:	op_mode for this flow
+ * @t_phy:	Physical address of task
+ * @tl:		pointer to the current ce_task for this flow
+ * @stat_req:	number of request done by this flow
+ */
+struct sun8i_ce_flow {
+	struct crypto_engine *engine;
+	void *bounce_iv;
+	unsigned int ivlen;
+	unsigned int keylen;
+	struct completion complete;
+	int status;
+	u32 method;
+	u32 op_dir;
+	u32 op_mode;
+	dma_addr_t t_phy;
+	int timeout;
+	struct ce_task *tl;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	unsigned long stat_req;
+#endif
+};
+
+/*
+ * struct sun8i_ce_dev - main container for all this driver information
+ * @base:	base address of CE
+ * @ceclks:	clocks used by CE
+ * @reset:	pointer to reset controller
+ * @dev:	the platform device
+ * @mlock:	Control access to device registers
+ * @chanlist:	array of all flow
+ * @flow:	flow to use in next request
+ * @variant:	pointer to variant specific data
+ * @dbgfs_dir:	Debugfs dentry for statistic directory
+ * @dbgfs_stats: Debugfs dentry for statistic counters
+ */
+struct sun8i_ce_dev {
+	void __iomem *base;
+	struct clk *ceclks[CE_MAX_CLOCKS];
+	struct reset_control *reset;
+	struct device *dev;
+	struct mutex mlock;
+	struct sun8i_ce_flow *chanlist;
+	atomic_t flow;
+	const struct ce_variant *variant;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	struct dentry *dbgfs_dir;
+	struct dentry *dbgfs_stats;
+#endif
+};
+
+/*
+ * struct sun8i_cipher_req_ctx - context for a skcipher request
+ * @op_dir:	direction (encrypt vs decrypt) for this request
+ * @flow:	the flow to use for this request
+ */
+struct sun8i_cipher_req_ctx {
+	u32 op_dir;
+	int flow;
+};
+
+/*
+ * struct sun8i_cipher_tfm_ctx - context for a skcipher TFM
+ * @enginectx:		crypto_engine used by this TFM
+ * @key:		pointer to key data
+ * @keylen:		len of the key
+ * @ce:			pointer to the private data of driver handling this TFM
+ * @fallback_tfm:	pointer to the fallback TFM
+ */
+struct sun8i_cipher_tfm_ctx {
+	struct crypto_engine_ctx enginectx;
+	u32 *key;
+	u32 keylen;
+	struct sun8i_ce_dev *ce;
+	struct crypto_sync_skcipher *fallback_tfm;
+};
+
+/*
+ * struct sun8i_ce_alg_template - crypto_alg template
+ * @type:		the CRYPTO_ALG_TYPE for this template
+ * @ce_algo_id:		the CE_ID for this template
+ * @ce_blockmode:	the type of block operation CE_ID
+ * @ce:			pointer to the sun8i_ce_dev structure associated with
+ *			this template
+ * @alg:		one of sub struct must be used
+ * @stat_req:		number of request done on this template
+ * @stat_fb:		total of all data len done on this template
+ */
+struct sun8i_ce_alg_template {
+	u32 type;
+	u32 ce_algo_id;
+	u32 ce_blockmode;
+	struct sun8i_ce_dev *ce;
+	union {
+		struct skcipher_alg skcipher;
+	} alg;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_CE_DEBUG
+	unsigned long stat_req;
+	unsigned long stat_fb;
+#endif
+};
+
+int sun8i_ce_enqueue(struct crypto_async_request *areq, u32 type);
+
+int sun8i_ce_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			unsigned int keylen);
+int sun8i_ce_des3_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			 unsigned int keylen);
+int sun8i_ce_cipher_init(struct crypto_tfm *tfm);
+void sun8i_ce_cipher_exit(struct crypto_tfm *tfm);
+int sun8i_ce_skdecrypt(struct skcipher_request *areq);
+int sun8i_ce_skencrypt(struct skcipher_request *areq);
+
+int sun8i_ce_get_engine_number(struct sun8i_ce_dev *ce);
+
+int sun8i_ce_run_task(struct sun8i_ce_dev *ce, int flow, const char *name);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
