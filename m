Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12170E53F9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 20:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lJpgWjSubbBW9xlaA4k4WuBNxobao2DCOCrIzxTAx14=; b=dzJQ3rkyM2Awyx
	DmB7kVLzTjZqc/r7KuyVgdCDheHgfEthmHjp5BWt4dxBlLZ004B2Q6qFOGweVkr0VRGagnhD7fb5I
	oKzNpCw6WsVh44/v5vFJdY7PxfYpf7sbssKPCBc4/yX/iLmhluCl2aZ1cnD2irmvvy7+3PekKnKAi
	lBFiQyHdHDQfia5ytcxdQC2iLj9SRVYN8OL6gNls7xmcuyoAHsvUqbagDEHcmCBMmLaIiJ9TY/AKH
	u2vOI6VJjpwsudtr0dk8fsEdOEjmYNfmH8xilr8AWCiDCdSnEtcUIEg9kfAQwKOfULAXKasXHUzqP
	Fw9BvmvsQKq2vtRgjs/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO4hU-0005rV-Nz; Fri, 25 Oct 2019 18:52:40 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO4gS-00059o-JY
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 18:51:41 +0000
Received: by mail-wm1-x344.google.com with SMTP id g24so3242082wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 11:51:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i0AbyiYbGirqHqRtGkKeIhSxvfDDvLkOm0AW0Zv3wqU=;
 b=Psx04gZZjD0gCLz/52gflUOpqF6LnHmWT79ZmIbCRHb5PbIppU2tSTHQRJtDulmNVf
 s/wI6sloDpPuyt8Bco7RPBrC3e1UooMZopC+3Ja1O5A/PwEhDM9xs536acXTxiY9JhWw
 ghsS87VdT6gUHjhdnZBnvxDBz7pfju89FkQayEpm9LVHStxMzCcRwgtVSxsVdsTCuVbb
 qvjRROocYvKM71nmXJcoCWC8Eqb1wPx/N11k8QC0gZE5geyU+Msovh9VeGhcm8e+3q7U
 947iDNCoZuIgIWkwmj8fKeNzpVwDoLBAKSa/03rHME8h6kbCWJ7FYayUtCdSgMAV+9Wo
 Bbdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i0AbyiYbGirqHqRtGkKeIhSxvfDDvLkOm0AW0Zv3wqU=;
 b=rY9jOW4Bn/lkyYwsyP9udIzfqEf+2rL8OPRjizrfufc7zRSjNggjyq05aCsmBYksRi
 8zIZBiZAn/OfbLAhi2O2cM0zTNUmvEPOmUVU+WKU1AendWIcT+XBtd4hdOpbdiyavM0V
 YaxsJeZ2vhuX+KgLdcSErC/O2vcDlVpwuSHl5yPW6XJYU+k0Aq0K8XpcqhxmiEp++nq9
 2kkWC6DgIgXl9TM4z8QLLJEMvViC+x3RO5Z+Z8FgR2eDzwIN8pGy8P/Mn5EwSSdn1Hvg
 ual996dbBcjxEMbgDrMxUy+bc/Wh1FS32jVbjv0aeduc0uhEZDpUW+PFCQ4CQhFAQgD7
 Wu1Q==
X-Gm-Message-State: APjAAAWIVN4yxyGWcgrifcnM5j9/H8JhOckHiJIcDVKv4jr0vBQ/gfQA
 fSaka7LO5uXeDK4e0Wl139A=
X-Google-Smtp-Source: APXvYqy37N27lk2wbAH99F4KOaxt7cmRnRTCbikwgDY1Mqz+OWLr7+WMX/DFuVU3YRZAaT7s2EvnmQ==
X-Received: by 2002:a7b:cb54:: with SMTP id v20mr4643426wmj.91.1572029494159; 
 Fri, 25 Oct 2019 11:51:34 -0700 (PDT)
Received: from Red.localdomain (lfbn-1-7036-79.w90-116.abo.wanadoo.fr.
 [90.116.209.79])
 by smtp.googlemail.com with ESMTPSA id l22sm4821683wrb.45.2019.10.25.11.51.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 11:51:33 -0700 (PDT)
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, mark.rutland@arm.com,
 mripard@kernel.org, p.zabel@pengutronix.de, robh+dt@kernel.org,
 wens@csie.org
Subject: [PATCH v3 1/4] crypto: Add Allwinner sun8i-ss cryptographic offloader
Date: Fri, 25 Oct 2019 20:51:25 +0200
Message-Id: <20191025185128.24068-2-clabbe.montjoie@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
References: <20191025185128.24068-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_115136_711292_D3FC6ECD 
X-CRM114-Status: GOOD (  20.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Security System is an hardware cryptographic offloader present
on Allwinner SoCs A80 and A83T.
It is different from the previous sun4i-ss.

This driver supports AES cipher in CBC and ECB mode.

Acked-by: Maxime Ripard <mripard@kernel.org>
Signed-off-by: Corentin Labbe <clabbe.montjoie@gmail.com>
---
 drivers/crypto/allwinner/Kconfig              |  28 +
 drivers/crypto/allwinner/Makefile             |   1 +
 drivers/crypto/allwinner/sun8i-ss/Makefile    |   2 +
 .../allwinner/sun8i-ss/sun8i-ss-cipher.c      | 438 ++++++++++++
 .../crypto/allwinner/sun8i-ss/sun8i-ss-core.c | 642 ++++++++++++++++++
 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h  | 218 ++++++
 6 files changed, 1329 insertions(+)
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/Makefile
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
 create mode 100644 drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h

diff --git a/drivers/crypto/allwinner/Kconfig b/drivers/crypto/allwinner/Kconfig
index 9c445973ca08..5b522871ccc5 100644
--- a/drivers/crypto/allwinner/Kconfig
+++ b/drivers/crypto/allwinner/Kconfig
@@ -58,3 +58,31 @@ config CRYPTO_DEV_SUN8I_CE_DEBUG
 	  Say y to enable sun8i-ce debug stats.
 	  This will create /sys/kernel/debug/sun8i-ce/stats for displaying
 	  the number of requests per flow and per algorithm.
+
+config CRYPTO_DEV_SUN8I_SS
+	tristate "Support for Allwinner Security System cryptographic offloader"
+	select CRYPTO_BLKCIPHER
+	select CRYPTO_ENGINE
+	select CRYPTO_ECB
+	select CRYPTO_CBC
+	select CRYPTO_AES
+	select CRYPTO_DES
+	depends on CRYPTO_DEV_ALLWINNER
+	depends on PM
+	help
+	  Select y here to have support for the Security System available on
+	  Allwinner SoC A80, A83T.
+	  The Security System handle AES/3DES ciphers in ECB/CBC mode.
+
+	  To compile this driver as a module, choose M here: the module
+	  will be called sun8i-ss.
+
+config CRYPTO_DEV_SUN8I_SS_DEBUG
+	bool "Enable sun8i-ss stats"
+	depends on CRYPTO_DEV_SUN8I_SS
+	depends on DEBUG_FS
+	help
+	  Say y to enable sun8i-ss debug stats.
+	  This will create /sys/kernel/debug/sun8i-ss/stats for displaying
+	  the number of requests per flow and per algorithm.
+
diff --git a/drivers/crypto/allwinner/Makefile b/drivers/crypto/allwinner/Makefile
index fdb720c5bcc7..6effe864d7ff 100644
--- a/drivers/crypto/allwinner/Makefile
+++ b/drivers/crypto/allwinner/Makefile
@@ -1,2 +1,3 @@
 obj-$(CONFIG_CRYPTO_DEV_SUN4I_SS) += sun4i-ss/
 obj-$(CONFIG_CRYPTO_DEV_SUN8I_CE) += sun8i-ce/
+obj-$(CONFIG_CRYPTO_DEV_SUN8I_SS) += sun8i-ss/
diff --git a/drivers/crypto/allwinner/sun8i-ss/Makefile b/drivers/crypto/allwinner/sun8i-ss/Makefile
new file mode 100644
index 000000000000..add7b0543fd5
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ss/Makefile
@@ -0,0 +1,2 @@
+obj-$(CONFIG_CRYPTO_DEV_SUN8I_SS) += sun8i-ss.o
+sun8i-ss-y += sun8i-ss-core.o sun8i-ss-cipher.o
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
new file mode 100644
index 000000000000..349cce39c257
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c
@@ -0,0 +1,438 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sun8i-ss-cipher.c - hardware cryptographic offloader for
+ * Allwinner A80/A83T SoC
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
+#include <crypto/internal/skcipher.h>
+#include "sun8i-ss.h"
+
+static bool sun8i_ss_need_fallback(struct skcipher_request *areq)
+{
+	struct scatterlist *in_sg = areq->src;
+	struct scatterlist *out_sg = areq->dst;
+	struct scatterlist *sg;
+
+	if (areq->cryptlen == 0 || areq->cryptlen % 16)
+		return true;
+
+	if (sg_nents(areq->src) > 8 || sg_nents(areq->dst) > 8)
+		return true;
+
+	sg = areq->src;
+	while (sg) {
+		if ((sg->length % 16) != 0)
+			return true;
+		if ((sg_dma_len(sg) % 16) != 0)
+			return true;
+		if (!IS_ALIGNED(sg->offset, 16))
+			return true;
+		sg = sg_next(sg);
+	}
+	sg = areq->dst;
+	while (sg) {
+		if ((sg->length % 16) != 0)
+			return true;
+		if ((sg_dma_len(sg) % 16) != 0)
+			return true;
+		if (!IS_ALIGNED(sg->offset, 16))
+			return true;
+		sg = sg_next(sg);
+	}
+
+	/* SS need same numbers of SG (with same length) for source and destination */
+	in_sg = areq->src;
+	out_sg = areq->dst;
+	while (in_sg && out_sg) {
+		if (in_sg->length != out_sg->length)
+			return true;
+		in_sg = sg_next(in_sg);
+		out_sg = sg_next(out_sg);
+	}
+	if (in_sg || out_sg)
+		return true;
+	return false;
+}
+
+static int sun8i_ss_cipher_fallback(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	int err;
+
+	SYNC_SKCIPHER_REQUEST_ON_STACK(subreq, op->fallback_tfm);
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct sun8i_ss_alg_template *algt;
+
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.skcipher);
+	algt->stat_fb++;
+#endif
+	skcipher_request_set_sync_tfm(subreq, op->fallback_tfm);
+	skcipher_request_set_callback(subreq, areq->base.flags, NULL, NULL);
+	skcipher_request_set_crypt(subreq, areq->src, areq->dst,
+				   areq->cryptlen, areq->iv);
+	if (rctx->op_dir & SS_DECRYPTION)
+		err = crypto_skcipher_decrypt(subreq);
+	else
+		err = crypto_skcipher_encrypt(subreq);
+	skcipher_request_zero(subreq);
+	return err;
+}
+
+static int sun8i_ss_cipher(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_ss_dev *ss = op->ss;
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	struct skcipher_alg *alg = crypto_skcipher_alg(tfm);
+	struct sun8i_ss_alg_template *algt;
+	struct scatterlist *sg;
+	unsigned int todo, len, offset, ivsize;
+	void *backup_iv = NULL;
+	int nr_sgs = 0;
+	int nr_sgd = 0;
+	int err = 0;
+	int i;
+
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.skcipher);
+
+	dev_dbg(ss->dev, "%s %s %u %x IV(%p %u) key=%u\n", __func__,
+		crypto_tfm_alg_name(areq->base.tfm),
+		areq->cryptlen,
+		rctx->op_dir, areq->iv, crypto_skcipher_ivsize(tfm),
+		op->keylen);
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	algt->stat_req++;
+#endif
+
+	rctx->op_mode = ss->variant->op_mode[algt->ss_blockmode];
+	rctx->method = ss->variant->alg_cipher[algt->ss_algo_id];
+	rctx->keylen = op->keylen;
+
+	rctx->p_key = dma_map_single(ss->dev, op->key, op->keylen, DMA_TO_DEVICE);
+	if (dma_mapping_error(ss->dev, rctx->p_key)) {
+		dev_err(ss->dev, "Cannot DMA MAP KEY\n");
+		err = -EFAULT;
+		goto theend;
+	}
+
+	ivsize = crypto_skcipher_ivsize(tfm);
+	if (areq->iv && crypto_skcipher_ivsize(tfm) > 0) {
+		rctx->ivlen = ivsize;
+		rctx->biv = kzalloc(ivsize, GFP_KERNEL | GFP_DMA);
+		if (!rctx->biv) {
+			err = -ENOMEM;
+			goto theend_key;
+		}
+		if (rctx->op_dir & SS_DECRYPTION) {
+			backup_iv = kzalloc(ivsize, GFP_KERNEL);
+			if (!backup_iv) {
+				err = -ENOMEM;
+				goto theend_key;
+			}
+			offset = areq->cryptlen - ivsize;
+			scatterwalk_map_and_copy(backup_iv, areq->src, offset,
+						 ivsize, 0);
+		}
+		memcpy(rctx->biv, areq->iv, ivsize);
+		rctx->p_iv = dma_map_single(ss->dev, rctx->biv, rctx->ivlen,
+					    DMA_TO_DEVICE);
+		if (dma_mapping_error(ss->dev, rctx->p_iv)) {
+			dev_err(ss->dev, "Cannot DMA MAP IV\n");
+			err = -ENOMEM;
+			goto theend_iv;
+		}
+	}
+	if (areq->src == areq->dst) {
+		nr_sgs = dma_map_sg(ss->dev, areq->src, sg_nents(areq->src),
+				    DMA_BIDIRECTIONAL);
+		if (nr_sgs <= 0 || nr_sgs > 8) {
+			dev_err(ss->dev, "Invalid sg number %d\n", nr_sgs);
+			err = -EINVAL;
+			goto theend_iv;
+		}
+		nr_sgd = nr_sgs;
+	} else {
+		nr_sgs = dma_map_sg(ss->dev, areq->src, sg_nents(areq->src),
+				    DMA_TO_DEVICE);
+		if (nr_sgs <= 0 || nr_sgs > 8) {
+			dev_err(ss->dev, "Invalid sg number %d\n", nr_sgs);
+			err = -EINVAL;
+			goto theend_iv;
+		}
+		nr_sgd = dma_map_sg(ss->dev, areq->dst, sg_nents(areq->dst),
+				    DMA_FROM_DEVICE);
+		if (nr_sgd <= 0 || nr_sgd > 8) {
+			dev_err(ss->dev, "Invalid sg number %d\n", nr_sgd);
+			err = -EINVAL;
+			goto theend_sgs;
+		}
+	}
+
+	len = areq->cryptlen;
+	i = 0;
+	sg = areq->src;
+	while (i < nr_sgs && sg && len) {
+		if (sg_dma_len(sg) == 0)
+			goto sgs_next;
+		rctx->t_src[i].addr = sg_dma_address(sg);
+		todo = min(len, sg_dma_len(sg));
+		rctx->t_src[i].len = todo / 4;
+		dev_dbg(ss->dev, "%s total=%u SGS(%d %u off=%d) todo=%u\n", __func__,
+			areq->cryptlen, i, rctx->t_src[i].len, sg->offset, todo);
+		len -= todo;
+		i++;
+sgs_next:
+		sg = sg_next(sg);
+	}
+	if (len > 0) {
+		dev_err(ss->dev, "remaining len %d\n", len);
+		err = -EINVAL;
+		goto theend_sgs;
+	}
+
+	len = areq->cryptlen;
+	i = 0;
+	sg = areq->dst;
+	while (i < nr_sgd && sg && len) {
+		if (sg_dma_len(sg) == 0)
+			goto sgd_next;
+		rctx->t_dst[i].addr = sg_dma_address(sg);
+		todo = min(len, sg_dma_len(sg));
+		rctx->t_dst[i].len = todo / 4;
+		dev_dbg(ss->dev, "%s total=%u SGD(%d %u off=%d) todo=%u\n", __func__,
+			areq->cryptlen, i, rctx->t_dst[i].len, sg->offset, todo);
+		len -= todo;
+		i++;
+sgd_next:
+		sg = sg_next(sg);
+	}
+	if (len > 0) {
+		dev_err(ss->dev, "remaining len %d\n", len);
+		err = -EINVAL;
+		goto theend_sgs;
+	}
+
+	err = sun8i_ss_run_task(ss, rctx, crypto_tfm_alg_name(areq->base.tfm));
+
+theend_sgs:
+	if (areq->src == areq->dst) {
+		dma_unmap_sg(ss->dev, areq->src, nr_sgs, DMA_BIDIRECTIONAL);
+	} else {
+		dma_unmap_sg(ss->dev, areq->src, nr_sgs, DMA_TO_DEVICE);
+		dma_unmap_sg(ss->dev, areq->dst, nr_sgd, DMA_FROM_DEVICE);
+	}
+
+theend_iv:
+	if (rctx->p_iv)
+		dma_unmap_single(ss->dev, rctx->p_iv, rctx->ivlen,
+				 DMA_TO_DEVICE);
+
+	if (areq->iv && ivsize > 0) {
+		if (rctx->biv) {
+			offset = areq->cryptlen - ivsize;
+			if (rctx->op_dir & SS_DECRYPTION) {
+				memcpy(areq->iv, backup_iv, ivsize);
+				memzero_explicit(backup_iv, ivsize);
+				kzfree(backup_iv);
+			} else {
+				scatterwalk_map_and_copy(areq->iv, areq->dst, offset,
+							 ivsize, 0);
+			}
+			kfree(rctx->biv);
+		}
+	}
+
+theend_key:
+	dma_unmap_single(ss->dev, rctx->p_key, op->keylen, DMA_TO_DEVICE);
+
+theend:
+
+	return err;
+}
+
+static int sun8i_ss_handle_cipher_request(struct crypto_engine *engine, void *areq)
+{
+	int err;
+	struct skcipher_request *breq = container_of(areq, struct skcipher_request, base);
+
+	err = sun8i_ss_cipher(breq);
+	crypto_finalize_skcipher_request(engine, breq, err);
+
+	return 0;
+}
+
+int sun8i_ss_skdecrypt(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	struct crypto_engine *engine;
+	int e;
+
+	memset(rctx, 0, sizeof(struct sun8i_cipher_req_ctx));
+	rctx->op_dir = SS_DECRYPTION;
+
+	if (sun8i_ss_need_fallback(areq))
+		return sun8i_ss_cipher_fallback(areq);
+
+	e = sun8i_ss_get_engine_number(op->ss);
+	engine = op->ss->flows[e].engine;
+	rctx->flow = e;
+
+	return crypto_transfer_skcipher_request_to_engine(engine, areq);
+}
+
+int sun8i_ss_skencrypt(struct skcipher_request *areq)
+{
+	struct crypto_skcipher *tfm = crypto_skcipher_reqtfm(areq);
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_cipher_req_ctx *rctx = skcipher_request_ctx(areq);
+	struct crypto_engine *engine;
+	int e;
+
+	memset(rctx, 0, sizeof(struct sun8i_cipher_req_ctx));
+	rctx->op_dir = SS_ENCRYPTION;
+
+	if (sun8i_ss_need_fallback(areq))
+		return sun8i_ss_cipher_fallback(areq);
+
+	e = sun8i_ss_get_engine_number(op->ss);
+	engine = op->ss->flows[e].engine;
+	rctx->flow = e;
+
+	return crypto_transfer_skcipher_request_to_engine(engine, areq);
+}
+
+int sun8i_ss_cipher_init(struct crypto_tfm *tfm)
+{
+	struct sun8i_cipher_tfm_ctx *op = crypto_tfm_ctx(tfm);
+	struct sun8i_ss_alg_template *algt;
+	const char *name = crypto_tfm_alg_name(tfm);
+	struct crypto_skcipher *sktfm = __crypto_skcipher_cast(tfm);
+	struct skcipher_alg *alg = crypto_skcipher_alg(sktfm);
+	int err;
+
+	memset(op, 0, sizeof(struct sun8i_cipher_tfm_ctx));
+
+	algt = container_of(alg, struct sun8i_ss_alg_template, alg.skcipher);
+	op->ss = algt->ss;
+
+	sktfm->reqsize = sizeof(struct sun8i_cipher_req_ctx);
+
+	op->fallback_tfm = crypto_alloc_sync_skcipher(name, 0, CRYPTO_ALG_NEED_FALLBACK);
+	if (IS_ERR(op->fallback_tfm)) {
+		dev_err(op->ss->dev, "ERROR: Cannot allocate fallback for %s %ld\n",
+			name, PTR_ERR(op->fallback_tfm));
+		return PTR_ERR(op->fallback_tfm);
+	}
+
+	dev_info(op->ss->dev, "Fallback for %s is %s\n",
+		 crypto_tfm_alg_driver_name(&sktfm->base),
+		 crypto_tfm_alg_driver_name(crypto_skcipher_tfm(&op->fallback_tfm->base)));
+
+	op->enginectx.op.do_one_request = sun8i_ss_handle_cipher_request;
+	op->enginectx.op.prepare_request = NULL;
+	op->enginectx.op.unprepare_request = NULL;
+
+	err = pm_runtime_get_sync(op->ss->dev);
+	if (err < 0) {
+		dev_err(op->ss->dev, "pm error %d\n", err);
+		goto error_pm;
+	}
+
+	return 0;
+error_pm:
+	crypto_free_sync_skcipher(op->fallback_tfm);
+	return err;
+}
+
+void sun8i_ss_cipher_exit(struct crypto_tfm *tfm)
+{
+	struct sun8i_cipher_tfm_ctx *op = crypto_tfm_ctx(tfm);
+
+	if (op->key) {
+		memzero_explicit(op->key, op->keylen);
+		kfree(op->key);
+	}
+	crypto_free_sync_skcipher(op->fallback_tfm);
+	pm_runtime_put_sync(op->ss->dev);
+}
+
+int sun8i_ss_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			unsigned int keylen)
+{
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_ss_dev *ss = op->ss;
+
+	switch (keylen) {
+	case 128 / 8:
+		break;
+	case 192 / 8:
+		break;
+	case 256 / 8:
+		break;
+	default:
+		dev_dbg(ss->dev, "ERROR: Invalid keylen %u\n", keylen);
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
+int sun8i_ss_des3_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			 unsigned int keylen)
+{
+	struct sun8i_cipher_tfm_ctx *op = crypto_skcipher_ctx(tfm);
+	struct sun8i_ss_dev *ss = op->ss;
+
+	if (unlikely(keylen != 3 * DES_KEY_SIZE)) {
+		dev_dbg(ss->dev, "Invalid keylen %u\n", keylen);
+		crypto_skcipher_set_flags(tfm, CRYPTO_TFM_RES_BAD_KEY_LEN);
+		return -EINVAL;
+	}
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
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
new file mode 100644
index 000000000000..e58407ac256b
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-core.c
@@ -0,0 +1,642 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * sun8i-ss-core.c - hardware cryptographic offloader for
+ * Allwinner A80/A83T SoC
+ *
+ * Copyright (C) 2015-2019 Corentin Labbe <clabbe.montjoie@gmail.com>
+ *
+ * Core file which registers crypto algorithms supported by the SecuritySystem
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
+#include "sun8i-ss.h"
+
+static const struct ss_variant ss_a80_variant = {
+	.alg_cipher = { SS_ALG_AES, SS_ALG_DES, SS_ALG_3DES,
+	},
+	.op_mode = { SS_OP_ECB, SS_OP_CBC,
+	},
+	.ss_clks = {
+		{ "bus", 0, 300 * 1000 * 1000 },
+		{ "mod", 0, 300 * 1000 * 1000 },
+	}
+};
+
+static const struct ss_variant ss_a83t_variant = {
+	.alg_cipher = { SS_ALG_AES, SS_ALG_DES, SS_ALG_3DES,
+	},
+	.op_mode = { SS_OP_ECB, SS_OP_CBC,
+	},
+	.ss_clks = {
+		{ "bus", 0, 300 * 1000 * 1000 },
+		{ "mod", 0, 300 * 1000 * 1000 },
+	}
+};
+
+/*
+ * sun8i_ss_get_engine_number() get the next channel slot
+ * This is a simple round-robin way of getting the next channel
+ */
+int sun8i_ss_get_engine_number(struct sun8i_ss_dev *ss)
+{
+	return atomic_inc_return(&ss->flow) % MAXFLOW;
+}
+
+int sun8i_ss_run_task(struct sun8i_ss_dev *ss, struct sun8i_cipher_req_ctx *rctx,
+		      const char *name)
+{
+	int flow = rctx->flow;
+	u32 v = 1;
+	int i;
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	ss->flows[flow].stat_req++;
+#endif
+
+	/* choose between stream0/stream1 */
+	if (flow)
+		v |= SS_FLOW1;
+	else
+		v |= SS_FLOW0;
+
+	v |= rctx->op_mode;
+	v |= rctx->method;
+
+	if (rctx->op_dir)
+		v |= SS_DECRYPTION;
+
+	switch (rctx->keylen) {
+	case 128 / 8:
+		v |= SS_AES_128BITS << 7;
+		break;
+	case 192 / 8:
+		v |= SS_AES_192BITS << 7;
+		break;
+	case 256 / 8:
+		v |= SS_AES_256BITS << 7;
+		break;
+	}
+
+	for (i = 0; i < MAX_SG; i++) {
+		if (!rctx->t_dst[i].addr)
+			break;
+
+		mutex_lock(&ss->mlock);
+		writel(rctx->p_key, ss->base + SS_KEY_ADR_REG);
+
+		if (i == 0) {
+			if (rctx->p_iv)
+				writel(rctx->p_iv, ss->base + SS_IV_ADR_REG);
+		} else {
+			if (rctx->biv) {
+				if (rctx->op_dir == SS_ENCRYPTION)
+					writel(rctx->t_dst[i - 1].addr + rctx->t_dst[i - 1].len * 4 - rctx->ivlen, ss->base + SS_IV_ADR_REG);
+				else
+					writel(rctx->t_src[i - 1].addr + rctx->t_src[i - 1].len * 4 - rctx->ivlen, ss->base + SS_IV_ADR_REG);
+			}
+		}
+
+		dev_dbg(ss->dev,
+			"Processing SG %d on flow %d %s ctl=%x %d to %d method=%x opmode=%x opdir=%x srclen=%d\n",
+			i, flow, name, v,
+			rctx->t_src[i].len, rctx->t_dst[i].len,
+			rctx->method, rctx->op_mode,
+			rctx->op_dir, rctx->t_src[i].len);
+
+		writel(rctx->t_src[i].addr, ss->base + SS_SRC_ADR_REG);
+		writel(rctx->t_dst[i].addr, ss->base + SS_DST_ADR_REG);
+		writel(rctx->t_src[i].len, ss->base + SS_LEN_ADR_REG);
+
+		reinit_completion(&ss->flows[flow].complete);
+		ss->flows[flow].status = 0;
+		wmb();
+
+		writel(v, ss->base + SS_CTL_REG);
+		mutex_unlock(&ss->mlock);
+		wait_for_completion_interruptible_timeout(&ss->flows[flow].complete,
+							  msecs_to_jiffies(2000));
+		if (ss->flows[flow].status == 0) {
+			dev_err(ss->dev, "DMA timeout for %s\n", name);
+			return -EFAULT;
+		}
+	}
+
+	return 0;
+}
+
+static irqreturn_t ss_irq_handler(int irq, void *data)
+{
+	struct sun8i_ss_dev *ss = (struct sun8i_ss_dev *)data;
+	int flow = 0;
+	u32 p;
+
+	p = readl(ss->base + SS_INT_STA_REG);
+	for (flow = 0; flow < MAXFLOW; flow++) {
+		if (p & (BIT(flow))) {
+			writel(BIT(flow), ss->base + SS_INT_STA_REG);
+			ss->flows[flow].status = 1;
+			complete(&ss->flows[flow].complete);
+		}
+	}
+
+	return IRQ_HANDLED;
+}
+
+static struct sun8i_ss_alg_template ss_algs[] = {
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.ss_algo_id = SS_ID_CIPHER_AES,
+	.ss_blockmode = SS_ID_OP_CBC,
+	.alg.skcipher = {
+		.base = {
+			.cra_name = "cbc(aes)",
+			.cra_driver_name = "cbc-aes-sun8i-ss",
+			.cra_priority = 400,
+			.cra_blocksize = AES_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct sun8i_cipher_tfm_ctx),
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = sun8i_ss_cipher_init,
+			.cra_exit = sun8i_ss_cipher_exit,
+		},
+		.min_keysize	= AES_MIN_KEY_SIZE,
+		.max_keysize	= AES_MAX_KEY_SIZE,
+		.ivsize		= AES_BLOCK_SIZE,
+		.setkey		= sun8i_ss_aes_setkey,
+		.encrypt	= sun8i_ss_skencrypt,
+		.decrypt	= sun8i_ss_skdecrypt,
+	}
+},
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.ss_algo_id = SS_ID_CIPHER_AES,
+	.ss_blockmode = SS_ID_OP_ECB,
+	.alg.skcipher = {
+		.base = {
+			.cra_name = "ecb(aes)",
+			.cra_driver_name = "ecb-aes-sun8i-ss",
+			.cra_priority = 400,
+			.cra_blocksize = AES_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct sun8i_cipher_tfm_ctx),
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = sun8i_ss_cipher_init,
+			.cra_exit = sun8i_ss_cipher_exit,
+		},
+		.min_keysize	= AES_MIN_KEY_SIZE,
+		.max_keysize	= AES_MAX_KEY_SIZE,
+		.setkey		= sun8i_ss_aes_setkey,
+		.encrypt	= sun8i_ss_skencrypt,
+		.decrypt	= sun8i_ss_skdecrypt,
+	}
+},
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.ss_algo_id = SS_ID_CIPHER_DES3,
+	.ss_blockmode = SS_ID_OP_CBC,
+	.alg.skcipher = {
+		.base = {
+			.cra_name = "cbc(des3_ede)",
+			.cra_driver_name = "cbc-des3-sun8i-ss",
+			.cra_priority = 400,
+			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct sun8i_cipher_tfm_ctx),
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = sun8i_ss_cipher_init,
+			.cra_exit = sun8i_ss_cipher_exit,
+		},
+		.min_keysize	= DES3_EDE_KEY_SIZE,
+		.max_keysize	= DES3_EDE_KEY_SIZE,
+		.ivsize		= DES3_EDE_BLOCK_SIZE,
+		.setkey		= sun8i_ss_des3_setkey,
+		.encrypt	= sun8i_ss_skencrypt,
+		.decrypt	= sun8i_ss_skdecrypt,
+	}
+},
+{
+	.type = CRYPTO_ALG_TYPE_SKCIPHER,
+	.ss_algo_id = SS_ID_CIPHER_DES3,
+	.ss_blockmode = SS_ID_OP_ECB,
+	.alg.skcipher = {
+		.base = {
+			.cra_name = "ecb(des3_ede)",
+			.cra_driver_name = "ecb-des3-sun8i-ss",
+			.cra_priority = 400,
+			.cra_blocksize = DES3_EDE_BLOCK_SIZE,
+			.cra_flags = CRYPTO_ALG_TYPE_SKCIPHER |
+				CRYPTO_ALG_ASYNC | CRYPTO_ALG_NEED_FALLBACK,
+			.cra_ctxsize = sizeof(struct sun8i_cipher_tfm_ctx),
+			.cra_module = THIS_MODULE,
+			.cra_alignmask = 0xf,
+			.cra_init = sun8i_ss_cipher_init,
+			.cra_exit = sun8i_ss_cipher_exit,
+		},
+		.min_keysize	= DES3_EDE_KEY_SIZE,
+		.max_keysize	= DES3_EDE_KEY_SIZE,
+		.setkey		= sun8i_ss_des3_setkey,
+		.encrypt	= sun8i_ss_skencrypt,
+		.decrypt	= sun8i_ss_skdecrypt,
+	}
+},
+};
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+static int sun8i_ss_dbgfs_read(struct seq_file *seq, void *v)
+{
+	struct sun8i_ss_dev *ss = seq->private;
+	int i;
+
+	for (i = 0; i < MAXFLOW; i++)
+		seq_printf(seq, "Channel %d: nreq %lu\n", i, ss->flows[i].stat_req);
+
+	for (i = 0; i < ARRAY_SIZE(ss_algs); i++) {
+		if (!ss_algs[i].ss)
+			continue;
+		switch (ss_algs[i].type) {
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			seq_printf(seq, "%s %s %lu %lu\n",
+				   ss_algs[i].alg.skcipher.base.cra_driver_name,
+				   ss_algs[i].alg.skcipher.base.cra_name,
+				   ss_algs[i].stat_req, ss_algs[i].stat_fb);
+			break;
+		}
+	}
+	return 0;
+}
+
+static int sun8i_ss_dbgfs_open(struct inode *inode, struct file *file)
+{
+	return single_open(file, sun8i_ss_dbgfs_read, inode->i_private);
+}
+
+static const struct file_operations sun8i_ss_debugfs_fops = {
+	.owner = THIS_MODULE,
+	.open = sun8i_ss_dbgfs_open,
+	.read = seq_read,
+	.llseek = seq_lseek,
+	.release = single_release,
+};
+#endif
+
+static void sun8i_ss_free_flows(struct sun8i_ss_dev *ss, int i)
+{
+	while (i >= 0) {
+		crypto_engine_exit(ss->flows[i].engine);
+		i--;
+	}
+}
+
+/*
+ * Allocate the flow list structure
+ */
+static int allocate_flows(struct sun8i_ss_dev *ss)
+{
+	int i, err;
+
+	ss->flows = devm_kcalloc(ss->dev, MAXFLOW, sizeof(struct sun8i_ss_flow),
+				 GFP_KERNEL);
+	if (!ss->flows)
+		return -ENOMEM;
+
+	for (i = 0; i < MAXFLOW; i++) {
+		init_completion(&ss->flows[i].complete);
+
+		ss->flows[i].engine = crypto_engine_alloc_init(ss->dev, true);
+		if (!ss->flows[i].engine) {
+			dev_err(ss->dev, "Cannot allocate engine\n");
+			i--;
+			err = -ENOMEM;
+			goto error_engine;
+		}
+		err = crypto_engine_start(ss->flows[i].engine);
+		if (err) {
+			dev_err(ss->dev, "Cannot start engine\n");
+			goto error_engine;
+		}
+	}
+	return 0;
+error_engine:
+	sun8i_ss_free_flows(ss, i);
+	return err;
+}
+
+/*
+ * Power management strategy: The device is suspended unless a TFM exists for
+ * one of the algorithms proposed by this driver.
+ */
+static int sun8i_ss_pm_suspend(struct device *dev)
+{
+	struct sun8i_ss_dev *ss = dev_get_drvdata(dev);
+	int i;
+
+	reset_control_assert(ss->reset);
+	for (i = 0; i < SS_MAX_CLOCKS; i++)
+		clk_disable_unprepare(ss->ssclks[i]);
+	return 0;
+}
+
+static int sun8i_ss_pm_resume(struct device *dev)
+{
+	struct sun8i_ss_dev *ss = dev_get_drvdata(dev);
+	int err, i;
+
+	for (i = 0; i < SS_MAX_CLOCKS; i++) {
+		if (!ss->variant->ss_clks[i].name)
+			continue;
+		err = clk_prepare_enable(ss->ssclks[i]);
+		if (err) {
+			dev_err(ss->dev, "Cannot prepare_enable %s\n",
+				ss->variant->ss_clks[i].name);
+			goto error;
+		}
+	}
+	err = reset_control_deassert(ss->reset);
+	if (err) {
+		dev_err(ss->dev, "Cannot deassert reset control\n");
+		goto error;
+	}
+	/* enable interrupts for all flows */
+	writel(BIT(0) | BIT(1), ss->base + SS_INT_CTL_REG);
+
+	return 0;
+error:
+	sun8i_ss_pm_suspend(dev);
+	return err;
+}
+
+static const struct dev_pm_ops sun8i_ss_pm_ops = {
+	SET_RUNTIME_PM_OPS(sun8i_ss_pm_suspend, sun8i_ss_pm_resume, NULL)
+};
+
+static int sun8i_ss_pm_init(struct sun8i_ss_dev *ss)
+{
+	int err;
+
+	pm_runtime_use_autosuspend(ss->dev);
+	pm_runtime_set_autosuspend_delay(ss->dev, 2000);
+
+	err = pm_runtime_set_suspended(ss->dev);
+	if (err)
+		return err;
+	pm_runtime_enable(ss->dev);
+	return err;
+}
+
+static void sun8i_ss_pm_exit(struct sun8i_ss_dev *ss)
+{
+	pm_runtime_disable(ss->dev);
+}
+
+static int sun8i_ss_register_algs(struct sun8i_ss_dev *ss)
+{
+	int ss_method, err, id, i;
+
+	for (i = 0; i < ARRAY_SIZE(ss_algs); i++) {
+		ss_algs[i].ss = ss;
+		switch (ss_algs[i].type) {
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			id = ss_algs[i].ss_algo_id;
+			ss_method = ss->variant->alg_cipher[id];
+			if (ss_method == SS_ID_NOTSUPP) {
+				dev_info(ss->dev,
+					 "DEBUG: Algo of %s not supported\n",
+					 ss_algs[i].alg.skcipher.base.cra_name);
+				ss_algs[i].ss = NULL;
+				break;
+			}
+			id = ss_algs[i].ss_blockmode;
+			ss_method = ss->variant->op_mode[id];
+			if (ss_method == SS_ID_NOTSUPP) {
+				dev_info(ss->dev, "DEBUG: Blockmode of %s not supported\n",
+					 ss_algs[i].alg.skcipher.base.cra_name);
+				ss_algs[i].ss = NULL;
+				break;
+			}
+			dev_info(ss->dev, "DEBUG: Register %s\n",
+				 ss_algs[i].alg.skcipher.base.cra_name);
+			err = crypto_register_skcipher(&ss_algs[i].alg.skcipher);
+			if (err) {
+				dev_err(ss->dev, "Fail to register %s\n",
+					ss_algs[i].alg.skcipher.base.cra_name);
+				ss_algs[i].ss = NULL;
+				return err;
+			}
+			break;
+		default:
+			ss_algs[i].ss = NULL;
+			dev_err(ss->dev, "ERROR: tryed to register an unknown algo\n");
+		}
+	}
+	return 0;
+}
+
+static void sun8i_ss_unregister_algs(struct sun8i_ss_dev *ss)
+{
+	int i;
+
+	for (i = 0; i < ARRAY_SIZE(ss_algs); i++) {
+		if (!ss_algs[i].ss)
+			continue;
+		switch (ss_algs[i].type) {
+		case CRYPTO_ALG_TYPE_SKCIPHER:
+			dev_info(ss->dev, "Unregister %d %s\n", i,
+				 ss_algs[i].alg.skcipher.base.cra_name);
+			crypto_unregister_skcipher(&ss_algs[i].alg.skcipher);
+			break;
+		}
+	}
+}
+
+static int sun8i_ss_get_clks(struct sun8i_ss_dev *ss)
+{
+	unsigned long cr;
+	int err, i;
+
+	for (i = 0; i < SS_MAX_CLOCKS; i++) {
+		if (!ss->variant->ss_clks[i].name)
+			continue;
+		ss->ssclks[i] = devm_clk_get(ss->dev, ss->variant->ss_clks[i].name);
+		if (IS_ERR(ss->ssclks[i])) {
+			err = PTR_ERR(ss->ssclks[i]);
+			dev_err(ss->dev, "Cannot get %s SS clock err=%d\n",
+				ss->variant->ss_clks[i].name, err);
+			return err;
+		}
+		cr = clk_get_rate(ss->ssclks[i]);
+		if (!cr)
+			return -EINVAL;
+		if (ss->variant->ss_clks[i].freq > 0 &&
+		    cr != ss->variant->ss_clks[i].freq) {
+			dev_info(ss->dev, "Set %s clock to %lu (%lu Mhz) from %lu (%lu Mhz)\n",
+				 ss->variant->ss_clks[i].name,
+				 ss->variant->ss_clks[i].freq,
+				 ss->variant->ss_clks[i].freq / 1000000,
+				 cr, cr / 1000000);
+			err = clk_set_rate(ss->ssclks[i], ss->variant->ss_clks[i].freq);
+			if (err)
+				dev_err(ss->dev, "Fail to set %s clk speed to %lu hz\n",
+					ss->variant->ss_clks[i].name,
+					ss->variant->ss_clks[i].freq);
+		}
+		if (ss->variant->ss_clks[i].max_freq > 0 &&
+		    cr > ss->variant->ss_clks[i].max_freq)
+			dev_warn(ss->dev, "Frequency for %s (%lu hz) is higher than datasheet's recommandation (%lu hz)",
+				 ss->variant->ss_clks[i].name, cr,
+				 ss->variant->ss_clks[i].max_freq);
+	}
+	return 0;
+}
+
+static int sun8i_ss_probe(struct platform_device *pdev)
+{
+	struct sun8i_ss_dev *ss;
+	int err, irq;
+	u32 v;
+
+	ss = devm_kzalloc(&pdev->dev, sizeof(*ss), GFP_KERNEL);
+	if (!ss)
+		return -ENOMEM;
+
+	ss->dev = &pdev->dev;
+	platform_set_drvdata(pdev, ss);
+
+	ss->variant = of_device_get_match_data(&pdev->dev);
+	if (!ss->variant) {
+		dev_err(&pdev->dev, "Missing Crypto Engine variant\n");
+		return -EINVAL;
+	}
+
+	ss->base = devm_platform_ioremap_resource(pdev, 0);;
+	if (IS_ERR(ss->base))
+		return PTR_ERR(ss->base);
+
+	err = sun8i_ss_get_clks(ss);
+	if (err)
+		return err;
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(ss->dev, "Cannot get SecuritySystem IRQ\n");
+		return irq;
+	}
+
+	ss->reset = devm_reset_control_get(&pdev->dev, NULL);
+	if (IS_ERR(ss->reset)) {
+		if (PTR_ERR(ss->reset) == -EPROBE_DEFER)
+			return PTR_ERR(ss->reset);
+		dev_err(&pdev->dev, "No reset control found\n");
+		return PTR_ERR(ss->reset);
+	}
+
+	mutex_init(&ss->mlock);
+
+	err = allocate_flows(ss);
+	if (err)
+		return err;
+
+	err = sun8i_ss_pm_init(ss);
+	if (err)
+		goto error_pm;
+
+	err = devm_request_irq(&pdev->dev, irq, ss_irq_handler, 0, "sun8i-ss", ss);
+	if (err) {
+		dev_err(ss->dev, "Cannot request SecuritySystem IRQ (err=%d)\n", err);
+		goto error_irq;
+	}
+
+	err = sun8i_ss_register_algs(ss);
+	if (err)
+		goto error_alg;
+
+	err = pm_runtime_get_sync(ss->dev);
+	if (err < 0)
+		goto error_alg;
+
+	v = readl(ss->base + SS_CTL_REG);
+	v >>= SS_DIE_ID_SHIFT;
+	v &= SS_DIE_ID_MASK;
+	dev_info(&pdev->dev, "Security System Die ID %x\n", v);
+
+	pm_runtime_put_sync(ss->dev);
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	/* Ignore error of debugfs */
+	ss->dbgfs_dir = debugfs_create_dir("sun8i-ss", NULL);
+	ss->dbgfs_stats = debugfs_create_file("stats", 0444,
+					      ss->dbgfs_dir, ss,
+					      &sun8i_ss_debugfs_fops);
+#endif
+
+	return 0;
+error_alg:
+	sun8i_ss_unregister_algs(ss);
+error_irq:
+	sun8i_ss_pm_exit(ss);
+error_pm:
+	sun8i_ss_free_flows(ss, MAXFLOW);
+	return err;
+}
+
+static int sun8i_ss_remove(struct platform_device *pdev)
+{
+	struct sun8i_ss_dev *ss = platform_get_drvdata(pdev);
+
+	sun8i_ss_unregister_algs(ss);
+
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	debugfs_remove_recursive(ss->dbgfs_dir);
+#endif
+
+	sun8i_ss_free_flows(ss, MAXFLOW);
+
+	sun8i_ss_pm_exit(ss);
+
+	return 0;
+}
+
+static const struct of_device_id sun8i_ss_crypto_of_match_table[] = {
+	{ .compatible = "allwinner,sun8i-a83t-crypto",
+	  .data = &ss_a83t_variant },
+	{ .compatible = "allwinner,sun9i-a80-crypto",
+	  .data = &ss_a80_variant },
+	{}
+};
+MODULE_DEVICE_TABLE(of, sun8i_ss_crypto_of_match_table);
+
+static struct platform_driver sun8i_ss_driver = {
+	.probe		 = sun8i_ss_probe,
+	.remove		 = sun8i_ss_remove,
+	.driver		 = {
+		.name		= "sun8i-ss",
+		.pm             = &sun8i_ss_pm_ops,
+		.of_match_table	= sun8i_ss_crypto_of_match_table,
+	},
+};
+
+module_platform_driver(sun8i_ss_driver);
+
+MODULE_DESCRIPTION("Allwinner SecuritySystem cryptographic offloader");
+MODULE_LICENSE("GPL");
+MODULE_AUTHOR("Corentin Labbe <clabbe.montjoie@gmail.com>");
diff --git a/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
new file mode 100644
index 000000000000..b5f855f3de10
--- /dev/null
+++ b/drivers/crypto/allwinner/sun8i-ss/sun8i-ss.h
@@ -0,0 +1,218 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * sun8i-ss.h - hardware cryptographic offloader for
+ * Allwinner A80/A83T SoC
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
+#define SS_ENCRYPTION		0
+#define SS_DECRYPTION		BIT(6)
+
+#define SS_ALG_AES		0
+#define SS_ALG_DES		(1 << 2)
+#define SS_ALG_3DES		(2 << 2)
+
+#define SS_CTL_REG		0x00
+#define SS_INT_CTL_REG		0x04
+#define SS_INT_STA_REG		0x08
+#define SS_KEY_ADR_REG		0x10
+#define SS_IV_ADR_REG		0x18
+#define SS_SRC_ADR_REG		0x20
+#define SS_DST_ADR_REG		0x28
+#define SS_LEN_ADR_REG		0x30
+
+#define SS_ID_NOTSUPP		0xFF
+
+#define SS_ID_CIPHER_AES	0
+#define SS_ID_CIPHER_DES	1
+#define SS_ID_CIPHER_DES3	2
+#define SS_ID_CIPHER_MAX	3
+
+#define SS_ID_OP_ECB	0
+#define SS_ID_OP_CBC	1
+#define SS_ID_OP_MAX	2
+
+#define SS_AES_128BITS 0
+#define SS_AES_192BITS 1
+#define SS_AES_256BITS 2
+
+#define SS_OP_ECB	0
+#define SS_OP_CBC	(1 << 13)
+
+#define SS_FLOW0	BIT(30)
+#define SS_FLOW1	BIT(31)
+
+#define MAX_SG 8
+
+#define MAXFLOW 2
+
+#define SS_MAX_CLOCKS 2
+
+#define SS_DIE_ID_SHIFT	20
+#define SS_DIE_ID_MASK	0x07
+
+/*
+ * struct ss_clock - Describe clocks used by sun8i-ss
+ * @name:       Name of clock needed by this variant
+ * @freq:       Frequency to set for each clock
+ * @max_freq:   Maximum frequency for each clock
+ */
+struct ss_clock {
+	const char *name;
+	unsigned long freq;
+	unsigned long max_freq;
+};
+
+/*
+ * struct ss_variant - Describe SS capability for each variant hardware
+ * @alg_cipher:	list of supported ciphers. for each SS_ID_ this will give the
+ *              coresponding SS_ALG_XXX value
+ * @op_mode:	list of supported block modes
+ * @ss_clks!	list of clock needed by this variant
+ */
+struct ss_variant {
+	char alg_cipher[SS_ID_CIPHER_MAX];
+	u32 op_mode[SS_ID_OP_MAX];
+	struct ss_clock ss_clks[SS_MAX_CLOCKS];
+};
+
+struct sginfo {
+	u32 addr;
+	u32 len;
+};
+
+/*
+ * struct sun8i_ss_flow - Information used by each flow
+ * @engine:	ptr to the crypto_engine for this flow
+ * @complete:	completion for the current task on this flow
+ * @status:	set to 1 by interrupt if task is done
+ * @stat_req:	number of request done by this flow
+ */
+struct sun8i_ss_flow {
+	struct crypto_engine *engine;
+	struct completion complete;
+	int status;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	unsigned long stat_req;
+#endif
+};
+
+/*
+ * struct sun8i_ss_dev - main container for all this driver information
+ * @base:	base address of SS
+ * @ssclks:	clocks used by SS
+ * @reset:	pointer to reset controller
+ * @dev:	the platform device
+ * @mlock:	Control access to device registers
+ * @flows:	array of all flow
+ * @flow:	flow to use in next request
+ * @variant:	pointer to variant specific data
+ * @dbgfs_dir:	Debugfs dentry for statistic directory
+ * @dbgfs_stats: Debugfs dentry for statistic counters
+ */
+struct sun8i_ss_dev {
+	void __iomem *base;
+	struct clk *ssclks[SS_MAX_CLOCKS];
+	struct reset_control *reset;
+	struct device *dev;
+	struct mutex mlock;
+	struct sun8i_ss_flow *flows;
+	atomic_t flow;
+	const struct ss_variant *variant;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	struct dentry *dbgfs_dir;
+	struct dentry *dbgfs_stats;
+#endif
+};
+
+/*
+ * struct sun8i_cipher_req_ctx - context for a skcipher request
+ * @t_src:	list of mapped SGs with their size
+ * @t_dst:	list of mapped SGs with their size
+ * @p_key:	DMA address of the key
+ * @p_iv:	DMA address of the IV
+ * @method:	current algorithm for this request
+ * @op_mode:	op_mode for this request
+ * @op_dir:	direction (encrypt vs decrypt) for this request
+ * @flow:	the flow to use for this request
+ * @ivlen:	size of biv
+ * @keylen:	keylen for this request
+ * @biv:	buffer which contain the IV
+ */
+struct sun8i_cipher_req_ctx {
+	struct sginfo t_src[MAX_SG];
+	struct sginfo t_dst[MAX_SG];
+	u32 p_key;
+	u32 p_iv;
+	u32 method;
+	u32 op_mode;
+	u32 op_dir;
+	int flow;
+	unsigned int ivlen;
+	unsigned int keylen;
+	void *biv;
+};
+
+/*
+ * struct sun8i_cipher_tfm_ctx - context for a skcipher TFM
+ * @enginectx:		crypto_engine used by this TFM
+ * @key:		pointer to key data
+ * @keylen:		len of the key
+ * @ss:			pointer to the private data of driver handling this TFM
+ * @fallback_tfm:	pointer to the fallback TFM
+ */
+struct sun8i_cipher_tfm_ctx {
+	struct crypto_engine_ctx enginectx;
+	u32 *key;
+	u32 keylen;
+	struct sun8i_ss_dev *ss;
+	struct crypto_sync_skcipher *fallback_tfm;
+};
+
+/*
+ * struct sun8i_ss_alg_template - crypto_alg template
+ * @type:		the CRYPTO_ALG_TYPE for this template
+ * @ss_algo_id:		the SS_ID for this template
+ * @ss_blockmode:	the type of block operation SS_ID
+ * @ss:			pointer to the sun8i_ss_dev structure associated with
+ *			this template
+ * @alg:		one of sub struct must be used
+ * @stat_req:		number of request done on this template
+ * @stat_fb:		total of all data len done on this template
+ */
+struct sun8i_ss_alg_template {
+	u32 type;
+	u32 ss_algo_id;
+	u32 ss_blockmode;
+	struct sun8i_ss_dev *ss;
+	union {
+		struct skcipher_alg skcipher;
+	} alg;
+#ifdef CONFIG_CRYPTO_DEV_SUN8I_SS_DEBUG
+	unsigned long stat_req;
+	unsigned long stat_fb;
+#endif
+};
+
+int sun8i_ss_enqueue(struct crypto_async_request *areq, u32 type);
+
+int sun8i_ss_aes_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			unsigned int keylen);
+int sun8i_ss_des3_setkey(struct crypto_skcipher *tfm, const u8 *key,
+			 unsigned int keylen);
+int sun8i_ss_cipher_init(struct crypto_tfm *tfm);
+void sun8i_ss_cipher_exit(struct crypto_tfm *tfm);
+int sun8i_ss_skdecrypt(struct skcipher_request *areq);
+int sun8i_ss_skencrypt(struct skcipher_request *areq);
+
+int sun8i_ss_get_engine_number(struct sun8i_ss_dev *ss);
+
+int sun8i_ss_run_task(struct sun8i_ss_dev *ss, struct sun8i_cipher_req_ctx *rctx, const char *name);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
