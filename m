Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAE1BB2F04
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 09:30:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l5uKj+BJuTUcXRZx/Q9hDAr6a4bjCrZChOoutrW3khU=; b=enOeckSjUr1Xk07sZs23+uEtdv
	/qXa8u1338ZiDrHuZREHKRG85M9QbWC44jBVUxqX0PG8POuXHXLN/7zA2+pR+T2RonT/g0QAkrzDN
	Td2nOJu+MMH+qeV43t0+qui6ZjsTH4FrvYgnPMR7K/KJ0IJIBFHp2cL7DPiNqYwchkT42Ak/2qyAZ
	EHHpf7OyUmabZ/Y2dJGv+iM+606OdjuWXLyKmhNNL+6kIR4f0rZqvq8IF94MvjWwpaQrMbFUZyLR+
	AsQOVi+8WoUProFnYIiqOOVjVfLdfjsCYsjGdSfb2D1SFgwGosTZo1AXNN/BH9Oe6XXRXg2CuAtzw
	rDqwqPEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Oz2-0006IP-N3; Sun, 15 Sep 2019 07:30:08 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Oym-0006I4-1d
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 07:29:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id q21so20536016pfn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 00:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=3HnPNE6bny7nidosOapEAj+KRL90m9eSVpY97KZloEc=;
 b=SbdyYrUwmxpWw/IGnwApl9GNJByd+tJBzyW7ttbSD3kpB74BJhHDAenksQx1KOhzEi
 OSUIkFxuifbsT8JI2JiFEAcshvMAFP1vBazrnpR8emlPTE9npePVU1jAhcTGpYngvW/R
 iOd65Q7y6v4A5OrUTbGLcNThec0I+4zJkgcAVWYpQhPRU3+GRgMbmu4WwebcJKOFgZAJ
 ZcBloZ2hTvZRoTlMdi5eH+LTTnZnt2TkWQWV+hPdlGDRiYhtEkQxUhPChfvsVQSikYQc
 IzQ0pFYaVZ0mtdQg+X6OeUevfyYARVy+0aJyIGCET6iDZMPPxBK3+x6fQoYN6YdNxI0m
 g3Vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=3HnPNE6bny7nidosOapEAj+KRL90m9eSVpY97KZloEc=;
 b=sHDsMjCzNQmHX2FApNjdTG6Hco3Z8FEwIgPKupkZrb0tUISK583er8petXHVVKFAMN
 KP9nudqCM0yX1+ev2uLtSjikCGAmHL6rTKnqU7FO55FhZ5zCgrE+IbxiVVfhvf2umgce
 pynppNV27I9q8P9/myYFHOI4pr6/D8ydor9+qyMv3VpZqPSaaN7+oyJlTiEymkL8O5w9
 ysmLxHADgJmJoUcxZcmwaIq6C37mq6/MjnKawiADBAWwnDt+1Pb9UVtmTGkZUy3fUXTQ
 vmrIjb1a1Qo4dnZ0mWFaSENk219aIjwZ5GYkAMxOyKRCGVxawYxfC7rG5G8i0xjpiX/X
 94pg==
X-Gm-Message-State: APjAAAVbA21B1ZKvP2lPgVoTOgW3PfOJrISTg37Yaf2tflRsLRgtVl8n
 XYHLYbSEvX1atWRx1UW50Pc=
X-Google-Smtp-Source: APXvYqw5PxTdM1K9L0LNRfE6IZWWx5WTGGNbG/zb6i4AP/v8NpFmj9emb+i7ELsl/NB8c0v4ahPk2g==
X-Received: by 2002:a63:6fc9:: with SMTP id k192mr50346497pgc.20.1568532591347; 
 Sun, 15 Sep 2019 00:29:51 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.111])
 by smtp.gmail.com with ESMTPSA id 132sm10029355pgg.52.2019.09.15.00.29.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 00:29:50 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH 3/9] probe/dma/zx: removed redundant code from zx dma
 controller's probe function
Date: Sun, 15 Sep 2019 12:59:38 +0530
Message-Id: <20190915072938.23610-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190915072644.23329-1-sst2005@gmail.com>
References: <20190915072644.23329-1-sst2005@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_002952_097708_AC8A86EA 
X-CRM114-Status: GOOD (  15.17  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 satendrasingh.thakur@hcl.com, dmaengine@vger.kernel.org,
 Dan Williams <dan.j.williams@intel.com>,
 Satendra Singh Thakur <sst2005@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Jun Nie <jun.nie@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. In order to remove duplicate code, following functions:
platform_get_resource
devm_kzalloc
devm_ioremap_resource
devm_clk_get
platform_get_irq
devm_request_irq
are replaced with a macro devm_platform_probe_helper_irq.

2. Removed dmam_pool_destroy from remove method as dmam_pool_create
is already used in probe function.

3. This patch depends on the file include/linux/probe-helper.h
which is pushed in previous patch [01/09].

Signed-off-by: Satendra Singh Thakur <satendrasingh.thakur@hcl.com>
Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
---
 drivers/dma/zx_dma.c | 35 ++++++++++-------------------------
 1 file changed, 10 insertions(+), 25 deletions(-)

diff --git a/drivers/dma/zx_dma.c b/drivers/dma/zx_dma.c
index 9f4436f7c914..d8c2fbe9766c 100644
--- a/drivers/dma/zx_dma.c
+++ b/drivers/dma/zx_dma.c
@@ -18,6 +18,7 @@
 #include <linux/of.h>
 #include <linux/clk.h>
 #include <linux/of_dma.h>
+#include <linux/probe-helper.h>
 
 #include "virt-dma.h"
 
@@ -754,20 +755,17 @@ static struct dma_chan *zx_of_dma_simple_xlate(struct of_phandle_args *dma_spec,
 static int zx_dma_probe(struct platform_device *op)
 {
 	struct zx_dma_dev *d;
-	struct resource *iores;
 	int i, ret = 0;
 
-	iores = platform_get_resource(op, IORESOURCE_MEM, 0);
-	if (!iores)
-		return -EINVAL;
-
-	d = devm_kzalloc(&op->dev, sizeof(*d), GFP_KERNEL);
-	if (!d)
-		return -ENOMEM;
-
-	d->base = devm_ioremap_resource(&op->dev, iores);
-	if (IS_ERR(d->base))
-		return PTR_ERR(d->base);
+	/*
+	 * This macro internally combines following functions:
+	 * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+	 * devm_clk_get, platform_get_irq, devm_request_irq,
+	 */
+	ret = devm_platform_probe_helper_irq(op, d, NULL,
+		zx_dma_int_handler, 0, DRIVER_NAME, d);
+	if (ret < 0)
+		return ret;
 
 	of_property_read_u32((&op->dev)->of_node,
 			     "dma-channels", &d->dma_channels);
@@ -776,18 +774,6 @@ static int zx_dma_probe(struct platform_device *op)
 	if (!d->dma_requests || !d->dma_channels)
 		return -EINVAL;
 
-	d->clk = devm_clk_get(&op->dev, NULL);
-	if (IS_ERR(d->clk)) {
-		dev_err(&op->dev, "no dma clk\n");
-		return PTR_ERR(d->clk);
-	}
-
-	d->irq = platform_get_irq(op, 0);
-	ret = devm_request_irq(&op->dev, d->irq, zx_dma_int_handler,
-			       0, DRIVER_NAME, d);
-	if (ret)
-		return ret;
-
 	/* A DMA memory pool for LLIs, align on 32-byte boundary */
 	d->pool = dmam_pool_create(DRIVER_NAME, &op->dev,
 			LLI_BLOCK_SIZE, 32, 0);
@@ -894,7 +880,6 @@ static int zx_dma_remove(struct platform_device *op)
 		list_del(&c->vc.chan.device_node);
 	}
 	clk_disable_unprepare(d->clk);
-	dmam_pool_destroy(d->pool);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
