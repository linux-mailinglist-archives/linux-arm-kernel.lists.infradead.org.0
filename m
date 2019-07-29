Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DA478479
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 07:34:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=scvtyPOABFMOKozrRhRauq+rinGX5ZTUBFGnLXjza0Y=; b=RCDbBydCId/oqU
	UJOs0Xa/bbui4BwjQJ7s0YaIlMLAiBMu/H/nKzsfQ5A2ZYRT0/QfMskDxxJgg4zXvxlHgLxFd0KVQ
	kcGHQSRT+MEKOPVEh5RxIa+263bo6d8emKFRILcaZxv27+3r4AzdvyLFHBXw788d8eo8xn36MfgkL
	shjdzPzkMX0n6Yi+SxSFC9cjRbm5l1D6mjdaetTfp+J9GgHi9r7imN6hZtQMNIpTktOSIged9uIL9
	bZwZERwz23OxUIBKTQB3Lyh1SyYw7E5YDrybRStKBSnVxFyT5VqJeEPQY44L/6d/vcPoyX6fAhySA
	k7yu+nzQJkaPW+/fO8Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hryIs-0004ML-DV; Mon, 29 Jul 2019 05:34:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hryIL-00044P-E3
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 05:34:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id n9so21402293pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Jul 2019 22:33:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pIe2gKl7IS9bEEUigYBrn5UMc4ulaKfTb5ZjeayByNk=;
 b=JyPymr7EMJYfUCgqnJBNuymWkG668Al0+SCUrWpz/v5wCJZIOBsjRTa3gy0SrxcoKG
 Bhek67JgDhIS5UHC12lqf6Znlw4JRqGiw7KYcuVaYymDH0Nqfykb5RHltiCt+tD/IXk3
 FuUQETUxDxxj6fYlgN3LhukDLCa6qrcA3WsHU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pIe2gKl7IS9bEEUigYBrn5UMc4ulaKfTb5ZjeayByNk=;
 b=jcgiiK7KeVARpuevqBgi+yxb2AUpsnTeA44PkWslsApDrOvHS1/MAjRZ9WNsKEq6HI
 JEjsEwueFbULHOHYvQuRWqdtdcblhAthNrZAbgi1k8tqlWCtNgPcA9PZ1dunlroeFhMa
 Zbu6+x54fIj+F6kjlDFLXdrFFgYRjNFAx6EwZH2X16jtfDcaI5xpJDP+tqsA3IKsZgHp
 sgFlE2XGjNR2ZXlAshEnG9+hGRbPccCswTHLWQOmGDN6B16FTcFaLFOfptARbaT5EyHR
 7fLF7JeXqtBNT94uTr+fN3SLsAvB2YarbuaAOkOlACU2XoLtzpr8k8mpz3J/yyK5uSOK
 lsdw==
X-Gm-Message-State: APjAAAX3nYQdjAIR1THD90DxuI4+KQd7r7lMKvGA9pOU8vyJWYQ3KvgH
 n+9RwWRC8xTJnIPE7eQz11QKwwnKIDs=
X-Google-Smtp-Source: APXvYqx5JaT8+LjEPcm4XYg0mKRR4psCkXVJ2pN1v1DRnW7hKdBb53kqVkzPlXZkzj4x6gfpuX+l7w==
X-Received: by 2002:aa7:85d8:: with SMTP id z24mr26224715pfn.218.1564378436289; 
 Sun, 28 Jul 2019 22:33:56 -0700 (PDT)
Received: from acourbot.tok.corp.google.com
 ([2401:fa00:4:4:9712:8cf1:d0f:7d33])
 by smtp.gmail.com with ESMTPSA id z4sm93792810pfg.166.2019.07.28.22.33.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 28 Jul 2019 22:33:55 -0700 (PDT)
From: Alexandre Courbot <acourbot@chromium.org>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, Tomasz Figa <tfiga@chromium.org>
Subject: [PATCH v2 1/2] drm/mediatek: use correct device to import PRIME
 buffers
Date: Mon, 29 Jul 2019 14:33:34 +0900
Message-Id: <20190729053335.251379-2-acourbot@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190729053335.251379-1-acourbot@chromium.org>
References: <20190729053335.251379-1-acourbot@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190728_223401_578205_7C2BC9C3 
X-CRM114-Status: GOOD (  13.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Courbot <acourbot@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PRIME buffers should be imported using the DMA device. To this end, use
a custom import function that mimics drm_gem_prime_import_dev(), but
passes the correct device.

Fixes: 119f5173628aa ("drm/mediatek: Add DRM Driver for Mediatek SoC MT8173.")
Signed-off-by: Alexandre Courbot <acourbot@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 95fdbd0fbcac..8b18a00a58c7 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -320,6 +320,18 @@ static const struct file_operations mtk_drm_fops = {
 	.compat_ioctl = drm_compat_ioctl,
 };
 
+/*
+ * We need to override this because the device used to import the memory is
+ * not dev->dev, as drm_gem_prime_import() expects.
+ */
+struct drm_gem_object *mtk_drm_gem_prime_import(struct drm_device *dev,
+						struct dma_buf *dma_buf)
+{
+	struct mtk_drm_private *private = dev->dev_private;
+
+	return drm_gem_prime_import_dev(dev, dma_buf, private->dma_dev);
+}
+
 static struct drm_driver mtk_drm_driver = {
 	.driver_features = DRIVER_MODESET | DRIVER_GEM | DRIVER_PRIME |
 			   DRIVER_ATOMIC,
@@ -331,7 +343,7 @@ static struct drm_driver mtk_drm_driver = {
 	.prime_handle_to_fd = drm_gem_prime_handle_to_fd,
 	.prime_fd_to_handle = drm_gem_prime_fd_to_handle,
 	.gem_prime_export = drm_gem_prime_export,
-	.gem_prime_import = drm_gem_prime_import,
+	.gem_prime_import = mtk_drm_gem_prime_import,
 	.gem_prime_get_sg_table = mtk_gem_prime_get_sg_table,
 	.gem_prime_import_sg_table = mtk_gem_prime_import_sg_table,
 	.gem_prime_mmap = mtk_drm_gem_mmap_buf,
-- 
2.22.0.709.g102302147b-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
