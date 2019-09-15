Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59413B2F16
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 09:33:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=a690hcS672OrADbxAawfoj1EtNTZ30SciEBFs+F4tTk=; b=sFhPdpnA706Xec/8h9XL3tIRNt
	tF+AluOccvEw9V7Tqb11xykjRwRY6VtBaqozXYeZO+lKp2QLL0gfjfe/WHvXgvtfl/6z7lXIARm35
	mlcTOk4pSTQulvDUptdI2SX/w1U8pbVeFvJ8bmjVtAgFndLdvyOrZGZ7d0hUbb9HoSHgWRy1Fo7rs
	odZRkG3q0effmX19nLtazQ6dFMhEeRV7vQhef4o4UWqd7MqhKIyhIFGRuiK0SFZ31equX9fB+sUJB
	X3nFp/sCfpy040JnVuVOlQUhgbltGQ9OuYmg9B0789GUk5a9hPl5BDa5vB2CWKK9DiKWVK2MB4M7V
	w16qodUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9P1q-0000Co-C1; Sun, 15 Sep 2019 07:33:02 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9P1a-0000CD-HI
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 07:32:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so17794008pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 00:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=epiWAfrrjHwKJt0b7IMtr8i9SbnEcdcq2Ym8PuAYz04=;
 b=QtyDwWHemh4cRk7EU4ZwvpL1HMwqx2nSdOePw1BNvFwHm0++GYgWCO69MOU5SAKKDm
 bKw7HlAcNKeeEef1wKUPYaoqxyyGhnUEnrX76doUT1E9IVXloFaZ5hCd8yamr+EFN5sm
 Qzlmxo7+hTrXuKITqoZuvRdpEeZn1nzaypHV7OdEL5a1O1G1pVVS8cErf1GaFIZinCFt
 qHt1+Hfyw3JpHB28dugHsdi6DRiIFHED+53aUfUVtD7k35ST9XD6p9FxKcc3djaGw4VK
 kVPj0oGNypP+oTC1Ps0drCM284c1u6ZwNTvUe/F2F7aWLOvfL5VR5LWWXjKdgbbMF+Ue
 W3aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=epiWAfrrjHwKJt0b7IMtr8i9SbnEcdcq2Ym8PuAYz04=;
 b=OjpXSlKhb3S0Te3knLTRfx26394/u6H5NYGYnqpvUbIeH/bH2XsKe+DKO37ef1JQbj
 WTH6NcMGBASxXJK9sF1t+G+Uu30Gg0fCsPGYJ3jrRsVRXLheGwDRJWTCMqhk4ZcgBPEr
 6BaX4VWlVwW/WbmztYJL7uD4MW28sKiD5+JhPFpvA6QG/875U6N82UGQPV3hTQRPNkl0
 66vlyoFKX7ytnUmIphZSTfxspeBDQ7EbP+/+VaP4G9P4NtFUCUg12J3s+AaV/otPsT+7
 Qf1o8r869lw6LqXivelPm5Ly01kXIcx3XwT17NWuKM6Zg8BD0VqQXxADZaKukOjNx87U
 f1+w==
X-Gm-Message-State: APjAAAXVRHipNe5q8Umwxl/ciNOB3gDOqwrZwBigEawTiHvUO5d6ypuy
 1Bs/Z5P+Q5GUyae0O/mZFJw=
X-Google-Smtp-Source: APXvYqxKE6UOnyayAFP+Ed+EdafQY4inmPdkuc4MpFTdLnndQPUnn3o556ROa4qcANt3ls98+BqUww==
X-Received: by 2002:a63:5652:: with SMTP id g18mr19651857pgm.393.1568532765954; 
 Sun, 15 Sep 2019 00:32:45 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.111])
 by smtp.gmail.com with ESMTPSA id b6sm27961404pgq.26.2019.09.15.00.32.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 00:32:45 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH 9/9] probe/dma/owl: removed redundant code from owl dma
 controller's probe function
Date: Sun, 15 Sep 2019 13:02:36 +0530
Message-Id: <20190915073237.24176-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190915072644.23329-1-sst2005@gmail.com>
References: <20190915072644.23329-1-sst2005@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_003246_568761_6D1DE80E 
X-CRM114-Status: GOOD (  14.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 satendrasingh.thakur@hcl.com,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 dmaengine@vger.kernel.org, Dan Williams <dan.j.williams@intel.com>,
 Satendra Singh Thakur <sst2005@gmail.com>,
 =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
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

2. This patch depends on the file include/linux/probe-helper.h
which is pushed in previous patch [01/09].

Signed-off-by: Satendra Singh Thakur <satendrasingh.thakur@hcl.com>
Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
---
 drivers/dma/owl-dma.c | 29 +++++++++--------------------
 1 file changed, 9 insertions(+), 20 deletions(-)

diff --git a/drivers/dma/owl-dma.c b/drivers/dma/owl-dma.c
index 90bbcef99ef8..03e692fc25a1 100644
--- a/drivers/dma/owl-dma.c
+++ b/drivers/dma/owl-dma.c
@@ -23,6 +23,7 @@
 #include <linux/of_device.h>
 #include <linux/of_dma.h>
 #include <linux/slab.h>
+#include <linux/probe-helper.h>
 #include "virt-dma.h"
 
 #define OWL_DMA_FRAME_MAX_LENGTH		0xfffff
@@ -1045,20 +1046,15 @@ static int owl_dma_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct owl_dma *od;
-	struct resource *res;
 	int ret, i, nr_channels, nr_requests;
-
-	od = devm_kzalloc(&pdev->dev, sizeof(*od), GFP_KERNEL);
-	if (!od)
-		return -ENOMEM;
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!res)
-		return -EINVAL;
-
-	od->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(od->base))
-		return PTR_ERR(od->base);
+	/*
+	 * This macro internally combines following functions:
+	 * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+	 * devm_clk_get, platform_get_irq
+	 */
+	ret = devm_platform_probe_helper(pdev, od, NULL);
+	if (ret < 0)
+		return ret;
 
 	ret = of_property_read_u32(np, "dma-channels", &nr_channels);
 	if (ret) {
@@ -1105,18 +1101,11 @@ static int owl_dma_probe(struct platform_device *pdev)
 
 	INIT_LIST_HEAD(&od->dma.channels);
 
-	od->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(od->clk)) {
-		dev_err(&pdev->dev, "unable to get clock\n");
-		return PTR_ERR(od->clk);
-	}
-
 	/*
 	 * Eventhough the DMA controller is capable of generating 4
 	 * IRQ's for DMA priority feature, we only use 1 IRQ for
 	 * simplification.
 	 */
-	od->irq = platform_get_irq(pdev, 0);
 	ret = devm_request_irq(&pdev->dev, od->irq, owl_dma_interrupt, 0,
 			       dev_name(&pdev->dev), od);
 	if (ret) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
