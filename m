Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C178EB2F13
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 15 Sep 2019 09:32:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PN/nnd6NmZiVG9sRf9i68vMfihNMtSlo7mJROP1I3EY=; b=V8hDQYsIdz1Jjin6CXiht+hcfC
	l53qOAW4VzOs2zTmE/6VvwrpTIxVx6NZaNpHGMUtSo1v3FC54otBb5H6pHeIRpefW5kgw1PZhbKsO
	5bKd7zpx8Sek+aRgNw0SufSCbsOQSzJEfDHNrcuxqyodnRYNjMDq7BynbQ/+F+p3KJp8zrPmhVCIU
	e/A3Bl2qFi3KiD6o/Y32o/YMpfdpuoo4HeH4btV7mUNIlgF4guX//8hd+LlpPnfReq/szRV8H9quk
	HzDFUZRPWimOdHKhSKx4JnUIw8JMGuasPtCVUetdISlVjP6DmatIxJF/q6UFQeMH2C2LaJHAakgIE
	ghLmKTvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9P1J-0008Of-VA; Sun, 15 Sep 2019 07:32:30 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9P13-0008Mi-9r
 for linux-arm-kernel@lists.infradead.org; Sun, 15 Sep 2019 07:32:17 +0000
Received: by mail-pf1-x444.google.com with SMTP id y5so17793692pfo.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Sep 2019 00:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=S4PgIGQ3wJQUQthoZj1zqeVCz9S7XcbHvEQ97PV6+tM=;
 b=eK5araplelxFt5qbQ2yVZnHo79vn6Wv45m52C1zwcLZlVgsLls4QF3DE+Jz8oX6muB
 w1OTTbKsAzjUfTYwmTzpWqpUNkVoK1py5YfJa5hfOf4pZ0Zhf9KFPDdknI5BhN6pCITT
 g9qN+ZZPP1vjXH3aBQW4C0UsQTLkb7EsQx6U4xNRW7HaHvb6qW0YA8eUrDOzQ0bq3/D/
 JrdoCpbL23u9b0yJ31RxMmeG3JChQ5TtY17t8zp5yUJVu5B1KQtTeykS/MUCDK/jsupe
 fIS7nh+bP+w+fsHJKAEtnt3a+dtP2KoyzEu0g6Z7Huc78nKCTDW6h6xl+Tus5O6lttjn
 1O2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=S4PgIGQ3wJQUQthoZj1zqeVCz9S7XcbHvEQ97PV6+tM=;
 b=doAuYbknFeKNOiF4DBjR6Ejt8lD6YvyIRNoeMdZwMJLLztFOtfRQI6yXAfxXUE/iMv
 yx6m2Hh0wyK9UyWPfr+pcMbZGyh+Yiskr9NWNOW8KSCz45MqPJZR3xdVGd0n7HZh6LE/
 2e6EWhyR/l8Fuyzu8iCgQQxKvcvSEsMSh7xZyVsXYFydGkuGlCSp/gLiu4WOT9afnlzD
 4XB2wN84pmDNo07YR9EtFP2Pz/PjFPLpvIcdbBrBE6vMXhN+T7nGHLfA6Pcb/aRqG81o
 id8QFepbJLVV6elPzq40V/eI4VQrdMqqGSsqm8gnaAB0O1f9n3wGe0SnUSoKgTQ+Tf+u
 H1Sg==
X-Gm-Message-State: APjAAAWUagKQAffR+U4c6XYrjvA1Fe/aUYla/fp0x7BoysOWCuaHC38p
 LGPehJws5akNk+KXTUSEOPU=
X-Google-Smtp-Source: APXvYqw4GNHiM/JotTPC37vIr0f7HSYy4qPrwREclNq9g2KRIxRE6+gg2fLKcFMNvrV/T8jwjBTuFg==
X-Received: by 2002:a17:90a:ba16:: with SMTP id
 s22mr13936707pjr.84.1568532732350; 
 Sun, 15 Sep 2019 00:32:12 -0700 (PDT)
Received: from satendra-MM061.ib-wrb304n.setup.in ([103.82.150.111])
 by smtp.gmail.com with ESMTPSA id 30sm7567118pjk.25.2019.09.15.00.32.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Sep 2019 00:32:11 -0700 (PDT)
From: Satendra Singh Thakur <sst2005@gmail.com>
To: 
Subject: [PATCH 7/9] probe/dma/sun4i: removed redundant code from sun4i dma
 controller's probe function
Date: Sun, 15 Sep 2019 13:02:00 +0530
Message-Id: <20190915073201.24032-1-sst2005@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190915072644.23329-1-sst2005@gmail.com>
References: <20190915072644.23329-1-sst2005@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190915_003213_342942_CF2DFF67 
X-CRM114-Status: GOOD (  14.57  )
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
 drivers/dma/sun4i-dma.c | 30 +++++++++---------------------
 1 file changed, 9 insertions(+), 21 deletions(-)

diff --git a/drivers/dma/sun4i-dma.c b/drivers/dma/sun4i-dma.c
index 1f80568b2613..5db139ff43ac 100644
--- a/drivers/dma/sun4i-dma.c
+++ b/drivers/dma/sun4i-dma.c
@@ -15,6 +15,7 @@
 #include <linux/platform_device.h>
 #include <linux/slab.h>
 #include <linux/spinlock.h>
+#include <linux/probe-helper.h>
 
 #include "virt-dma.h"
 
@@ -1119,29 +1120,16 @@ static irqreturn_t sun4i_dma_interrupt(int irq, void *dev_id)
 static int sun4i_dma_probe(struct platform_device *pdev)
 {
 	struct sun4i_dma_dev *priv;
-	struct resource *res;
 	int i, j, ret;
 
-	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
-	if (!priv)
-		return -ENOMEM;
-
-	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	priv->base = devm_ioremap_resource(&pdev->dev, res);
-	if (IS_ERR(priv->base))
-		return PTR_ERR(priv->base);
-
-	priv->irq = platform_get_irq(pdev, 0);
-	if (priv->irq < 0) {
-		dev_err(&pdev->dev, "Cannot claim IRQ\n");
-		return priv->irq;
-	}
-
-	priv->clk = devm_clk_get(&pdev->dev, NULL);
-	if (IS_ERR(priv->clk)) {
-		dev_err(&pdev->dev, "No clock specified\n");
-		return PTR_ERR(priv->clk);
-	}
+	/*
+	 * This macro internally combines following functions:
+	 * devm_kzalloc, platform_get_resource, devm_ioremap_resource,
+	 * devm_clk_get, platform_get_irq
+	 */
+	ret = devm_platform_probe_helper(pdev, priv, NULL);
+	if (ret < 0)
+		return ret;
 
 	platform_set_drvdata(pdev, priv);
 	spin_lock_init(&priv->lock);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
