Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE15EB2F0F
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 09:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uTan1Fs2eCk8Qyb1LLGeaot/pCswbcXwh17al2xNpc4=; b=BeXW7AOeYZKUE7N45wzjRX88lt
	Xx1lpZegLYjIKEbmcv4VWsEJ+0KSHv7k7LpfK0SFFi5UzMALyAF0B4U195cJs4NayTH7wzLWYDCOB
	dxi8zyRT8QZLVX/ECBtH6MtuRmNIFOQyQ6OyBTq6UIP0qbBS3ePduR1mjFrAsbOEFrWnK1lJweyW9
	HEBozNW80AuQ9HKjub2YoDW4eFn1bANO1OXXHR6LZWIz41lrPTyg/d4mwT6iANfhMAsHw0/ly3tXj
	E7ah+0yCAkGoO47vnXRBhlbs2L2jo7tzi+Q+zWHIi6bmLkMTBk3t4/YJmx4zWvqVYZLHMetkEfJXO
	nFFf/jww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9P0y-0008A9-RW; Sun, 15 Sep 2019 07:32:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9P0k-00089V-Iw
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 07:31:55 +0000
Received: by mail-pf1-x442.google.com with SMTP id h195so20554335pfe.5
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 00:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0DZe/s2/vHEDWjkZMS1zmvi4NsZEIq/1qP/znK935TQ=;
 b=ZfZ5uJOkXcijb1z+GqXDBCpSk0K10rTW5epVfdMwpJ0sQtC4xP+TyVfe2nF8YAgxsU
 qJS0C73jzw7UM6QUQ579KcOuDXGKpkGfzPV/tp7gb+7ecsj4JJQ6plI3JtPmtvr9Fmax
 uFXQsiFTe5us54At0SivWKJ1tTzeZeqL2DVs/rvaXaQm23avCPCG97VL5oxD/KAgMfyg
 zVa/RFNlCn3kwXddw87Gfa818o6mmG1BpAmEHykzM5kESMLk+OW1ijdy5ZBCoDkU0dYc
 71wMeNwdotk6vTtXfJryYveNv4V+sV9qW972v8PlpEATz8RYb/rKb7NevuQGFwflVz8f
 R9cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0DZe/s2/vHEDWjkZMS1zmvi4NsZEIq/1qP/znK935TQ=;
 b=OKNfmzCp7eVGFeFk62XkkYjRtHL8PNIlGmkwaoLK/xYgrwssQffVcb5PgfeYivvVsU
 gWb9CrXlBK/o7yrw/f31BsR2kviZubIwRuWPSRr8fh/MNv8/OqtFEcNa0vBHalAfWjxn
 yVxEtq+pv0hEasWgsnu/SClVdsmCkqRv1mILMBAp70q+Oog1r5aG0zmgfUPV/PLN4n5L
 VGbuftZDRMiTmTNyvh324k+ReS391CVAendEyxIBYP/SBjVZlOWSRiDXt3y7jAELgs+t
 vnRX2DzNpqkvqkY58eqruLydkRr5XgjDJKs57j4W0ZW9Naw4nj2qOor8kPB7CuXqXJ4M
 mjfg==
X-Gm-Message-State: APjAAAUxaTHO+9q0SloEYCNWOphN8AGmrz6Ne/VODBIOaEDalHw5TD2L
 Z30/PUwptxUs2JYOghleSfY=
X-Google-Smtp-Source: APXvYqycv60YtanN5Vu0TRpL2U5mtB8FDs+f7JRrqV4nnVE9qEcmwM7IZJEy/v83woF+LAH77BTX/Q==
X-Received: by 2002:a62:cf82:: with SMTP id
 b124mr64368927pfg.159.1568532714069; 
 Sun, 15 Sep 2019 00:31:54 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.111])
 by smtp.gmail.com with ESMTPSA id e192sm45142269pfh.83.2019.09.15.00.31.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 00:31:53 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH 6/9] probe/dma/sun6i: removed redundant code from sun6i dma
 controller's probe function
Date: Sun, 15 Sep 2019 13:01:44 +0530
Message-Id: <20190915073144.23965-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190915072644.23329-1-sst2005@gmail.com>
References: <20190915072644.23329-1-sst2005@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_003154_621009_6AE43609 
X-CRM114-Status: GOOD (  14.45  )
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, Vinod Koul <vkoul@kernel.org>,
 satendrasingh.thakur@hcl.com, dmaengine@vger.kernel.org,
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

2. This patch depends on the file include/linux/probe-helper.h
which is pushed in previous patch [01/09].

Signed-off-by: Satendra Singh Thakur <satendrasingh.thakur@hcl.com>
Signed-off-by: Satendra Singh Thakur <sst2005@gmail.com>
---
 drivers/dma/sun6i-dma.c | 30 +++++++++---------------------
 1 file changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/dma/sun6i-dma.c b/drivers/dma/sun6i-dma.c
index ed5b68dcfe50..41ee054bbeeb 100644
--- a/drivers/dma/sun6i-dma.c
+++ b/drivers/dma/sun6i-dma.c
@@ -19,6 +19,7 @@
 #include <linux/reset.h>
 #include <linux/slab.h>
 #include <linux/types.h>
+#include <linux/probe-helper.h>
 
 #include "virt-dma.h"
 
@@ -1234,34 +1235,21 @@ static int sun6i_dma_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct sun6i_dma_dev *sdc;
-	struct resource *res;
 	int ret, i;
 
-	sdc = devm_kzalloc(&pdev->dev, sizeof(*sdc), GFP_KERNEL);
-	if (!sdc)
-		return -ENOMEM;
+	/*
+	 * This macro internally combines following functions:
+	 * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+	 * devm_clk_get, platform_get_irq
+	 */
+	ret = devm_platform_probe_helper(pdev, sdc, NULL);
+	if (ret < 0)
+		return ret;
 
 	sdc->cfg = of_device_get_match_data(&pdev->dev);
 	if (!sdc->cfg)
 		return -ENODEV;
 
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	sdc->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(sdc->base))
-		return PTR_ERR(sdc->base);
-
-	sdc->irq = platform_get_irq(pdev, 0);
-	if (sdc->irq < 0) {
-		dev_err(&pdev->dev, "Cannot claim IRQ\n");
-		return sdc->irq;
-	}
-
-	sdc->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(sdc->clk)) {
-		dev_err(&pdev->dev, "No clock specified\n");
-		return PTR_ERR(sdc->clk);
-	}
-
 	if (sdc->cfg->has_mbus_clk) {
 		sdc->clk_mbus = devm_clk_get(&pdev->dev, "mbus");
 		if (IS_ERR(sdc->clk_mbus)) {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
