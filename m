Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E8FB2F0A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 09:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=B5ZbRVPpdIt9/hhk9rMlttfxoRoh/TpZuAAKfn8VPzM=; b=WARBskeDJ0CbMFrzuK5QFxP9x/
	6IQZwrDAR+3LMh27mZRbONshDAvh3xwMQ+N8iV1xtmv//QDIHyic+vXzRdkTq0WjICSRzGIoBJoFR
	R7kNXkeh0NUNVjg6UaM8KLuIumi4Lc5Y9wxroe31zoVM53NMbUpBxVlAOlmQNjhj1WdNpkAb7/wsl
	EB1EcVDq8+2nAbsNsti8eQaL44snnfgQXa7IbPA+mwTN+YIcP9Qeeo3cFSUFwxG96zwQ4I/BG9YQn
	mhE8hbTmGpWf9ozctm31yMNxZbE49EPKH6MhhuTWtMikQ44imtDKMW+EQYIj8Y3zhg2L57wHrLuPh
	yeh4GT2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9P06-0007nt-2q; Sun, 15 Sep 2019 07:31:14 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9Ozr-0007n5-LR; Sun, 15 Sep 2019 07:31:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id q5so20529827pfg.13;
 Sun, 15 Sep 2019 00:30:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GkvCW2yDGpRo3PSFTuRArziiou4pMe6vPX17Y8y6Dnc=;
 b=jH53rpPk8Uk1MSBhnWEhXTfoJMN+iJEQ7EKpauS+mO+CCAQ033B4UaLO04rOUTzP9Z
 PWJfnMr8F1cxat2FMQdXS2RJJ1iqxl+Ly5gMy7fE6XV6H3/Dvqci/SSY4YzCsumfD9VD
 0S0HaXx4zVtosSZZQ5Vt1m3HfctPhInLJAyRuKiMEPe3JR7UT/I4dFsaNYmNiAby8+d6
 mfaUBZP6heEKzHQR8jC+6grUVpMO7KekOvRcDWcq7hWfDtElp27rRwCOlRWJQ4u9PBVF
 6aLTQYOVDHUKwV0yJ6E7AuHoHSZLagv8Sqmmz+O4IupGz8GOqVKzxUnpkbDWF+JaO3q4
 245A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GkvCW2yDGpRo3PSFTuRArziiou4pMe6vPX17Y8y6Dnc=;
 b=pxdcXzaSMITRyq7Hl9QaP5lzfsn9kr6cfeAQtxUyfAVCofQVLM7hozrIRTlFYnyhqx
 blCzYxiGb81dgmYROBrCkYadGAEyAPutYL3NN+OTk2QQOypA23XwwHOtR0ML3cFxr4Hd
 U+R3sLQbUSbBcJccfOw4+nxEq+7k4LNYLp8M8YwtFq5l7o0IN68ev62StKmGiLvIs7tZ
 M/V49JuSfL4lL2cy0FhsAou0ZIpqg31HMVtaF/EBjIasjgA+MMb2+xKuGR1kirtTbTzd
 xe0R9u4kgrYBjMJ4419R9nRktsMXjo7tGjIdVjVQdsOdl+/AnbOjqSMcE4r+8L11qqsI
 qDoQ==
X-Gm-Message-State: APjAAAX3W7gaf0WJNX1CJ2Mi69TfajxvScHBJG8K93Chqfuw7pHXmHzq
 WlF5f5WRBBnfU3Q0J5g0U/Q=
X-Google-Smtp-Source: APXvYqxuah8yl/pvu9JVO+yv2YIraDJx3bTe6QtVyQFOYlpd+/GcXmhFtP4zDYlq6PIBRRZ/EtEAEQ==
X-Received: by 2002:a17:90a:65c9:: with SMTP id
 i9mr13948462pjs.54.1568532657679; 
 Sun, 15 Sep 2019 00:30:57 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.111])
 by smtp.gmail.com with ESMTPSA id c11sm65160088pfj.114.2019.09.15.00.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 00:30:56 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH 5/9] probe/dma/mtk-hs: removed redundant code from mediatek hs
 dma controller's probe function
Date: Sun, 15 Sep 2019 13:00:48 +0530
Message-Id: <20190915073048.23817-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190915072644.23329-1-sst2005@gmail.com>
References: <20190915072644.23329-1-sst2005@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_003059_702428_365DBA74 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (sst2005[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sst2005[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org,
 dmaengine@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 linux-mediatek@lists.infradead.org, satendrasingh.thakur@hcl.com,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Satendra Singh Thakur <sst2005@gmail.com>,
 linux-arm-kernel@lists.infradead.org
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
are replaced with a macro devm_platform_probe_helper.

2. Fixed a memory leak when devm_request_irq fails,
Called of_dma_controller_free in such case.

3. This patch depends on the file include/linux/probe-helper.h
which is pushed in previous patch [01/09].

Signed-off-by: Satendra Singh Thakur <satendrasingh.thakur@hcl.com>
Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
---
 drivers/dma/mediatek/mtk-hsdma.c | 38 ++++++++++----------------------
 1 file changed, 12 insertions(+), 26 deletions(-)

diff --git a/drivers/dma/mediatek/mtk-hsdma.c b/drivers/dma/mediatek/mtk-hsdma.c
index 1a2028e1c29e..6fc01093aeea 100644
--- a/drivers/dma/mediatek/mtk-hsdma.c
+++ b/drivers/dma/mediatek/mtk-hsdma.c
@@ -23,6 +23,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/refcount.h>
 #include <linux/slab.h>
+#include <linux/probe-helper.h>
 
 #include "../virt-dma.h"
 
@@ -896,41 +897,24 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 	struct mtk_hsdma_device *hsdma;
 	struct mtk_hsdma_vchan *vc;
 	struct dma_device *dd;
-	struct resource *res;
 	int i, err;
 
-	hsdma = devm_kzalloc(&pdev->dev, sizeof(*hsdma), GFP_KERNEL);
-	if (!hsdma)
-		return -ENOMEM;
-
+	/*
+	 * This macro internally combines following functions:
+	 * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+	 * devm_clk_get, platform_get_irq
+	 */
+	err = devm_platform_probe_helper(pdev, hsdma, "hsdma");
+	if (err < 0)
+		return err;
 	dd = &hsdma->ddev;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	hsdma->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(hsdma->base))
-		return PTR_ERR(hsdma->base);
-
 	hsdma->soc = of_device_get_match_data(&pdev->dev);
 	if (!hsdma->soc) {
 		dev_err(&pdev->dev, "No device match found\n");
 		return -ENODEV;
 	}
 
-	hsdma->clk = devm_clk_get(&pdev->dev, "hsdma");
-	if (IS_ERR(hsdma->clk)) {
-		dev_err(&pdev->dev, "No clock for %s\n",
-			dev_name(&pdev->dev));
-		return PTR_ERR(hsdma->clk);
-	}
-
-	res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
-	if (!res) {
-		dev_err(&pdev->dev, "No irq resource for %s\n",
-			dev_name(&pdev->dev));
-		return -EINVAL;
-	}
-	hsdma->irq = res->start;
-
 	refcount_set(&hsdma->pc_refcnt, 0);
 	spin_lock_init(&hsdma->lock);
 
@@ -997,7 +981,7 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 	if (err) {
 		dev_err(&pdev->dev,
 			"request_irq failed with err %d\n", err);
-		goto err_unregister;
+		goto err_free;
 	}
 
 	platform_set_drvdata(pdev, hsdma);
@@ -1006,6 +990,8 @@ static int mtk_hsdma_probe(struct platform_device *pdev)
 
 	return 0;
 
+err_free:
+	of_dma_controller_free(pdev->dev.of_node);
 err_unregister:
 	dma_async_device_unregister(dd);
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
