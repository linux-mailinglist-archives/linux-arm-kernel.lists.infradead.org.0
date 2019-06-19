Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA2C4BFAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JhAIHCKrVwKM4w+kXIcBVGW4S9qkgnkT9fsppXed1V4=; b=ry4EtQPnzmJmgHV89NyGq8Gx80
	UrdUj0UiDMgwPmUgrditfv4X7gguJx84CsZwPzmxp3sUhIqhZQxaIt/O3nSPC7QLXXSbHCRpixMVV
	coHlABWvoxOJIqxWTkMa/NpJDfci3ZbdWzLisCeAiAJMUqN2CdVI6NNMvwfaXI0mt+kuotnxvyrrT
	a9dy+C/ao3XJymRKZWkiI4bVcL3T+VzavRvH4I1MXC2EwbZ/A8eBjH8W99n4ATjLpcAXym+VBf5Hv
	SVvFoAO8NpG30UV/xY0wgPzyP9B1IqTDB97O25JPIsBii4FnHPR5ftgkgw2WJAaXI0gVuQqVvyYDM
	FccBBXIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeRl-0001SX-0k; Wed, 19 Jun 2019 17:32:33 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePF-00074w-Lp
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:29:59 +0000
Received: by mail-pl1-x643.google.com with SMTP id t7so80567plr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=AgYewqbl8iSJQRrA3NRCvtvG59aXYoMecD7NpQO4c4M=;
 b=Mnb5DfKw9t5I4GT8GQd8zyP2p/jZpeYyEMsPLL++qR3PoJptYomk0tePj3MaEPXFn2
 rPi+pDsoqORrp4Vyj5vI8uWkABh62YmGcQ9wBn9Bs//B3cmsajbvTa5rcsUBwuUm3ulv
 vV91hUiOwYla/M2Gmgpu9dIE7whTWQ6u9nKyxglpvySyosD1L4UO8+wNqnezcSuVPtnZ
 UrjfLYohn+60nlZiEx/ugixfPs00nlROTk93eBZcrPbUk/9peDQl2m4sQpGjyPPmHlkd
 WC83E//J1zVfd2aSEFXGSqs1RKHnIS+5m1ec0JHHJBZLBA+BNyusneibeCbqysCpohGn
 rlag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=AgYewqbl8iSJQRrA3NRCvtvG59aXYoMecD7NpQO4c4M=;
 b=AWJ4LrfvAdsqtcNm+6i+5O24r2Sy1Xx8uQAKCQcroIFUEmVgwqPsgEMgYy/Sz1Ehzv
 xJZ3VuROT4kf6jvQQT+r2TZLvidNJ2Pa2GlQlkkLOFeyGvth5esi7r6NU/Bu+q4xP2ZG
 NCkpQzxM5ozr3xCjQ8zwJar+8HZaA5s6d/KiWIN6yHwI2l4cJO2ISdIwj9VM2j1QWFXC
 OBqbp47grW89F7Aj0DaEZIqof2cGfX8xT8sqFdMBNTU7byXk1HGBQLeLuxjeo60q1BKe
 2KMPzzG6S6wrcTfEDxHerCDFTUoVH5LHHg3v3/3oRsd9T78nt7B6suEg3QS5gDsS7e7S
 VIgA==
X-Gm-Message-State: APjAAAUyXEvuhK9fBZa8DdzexxfFAKO9I+gQMdAUuPV/ydHHoSWAMgxG
 7UvcKAAtKffX9rZjXmjMvXW4NgMuqIuOdA==
X-Google-Smtp-Source: APXvYqx6VKCXT6TVD/0dK/+sgOUkYHjS5u79v5XhW/RfgZPyDElf185Pf4OdVcLUpon7X/gzI5HV4A==
X-Received: by 2002:a17:902:7687:: with SMTP id
 m7mr38585711pll.310.1560965396915; 
 Wed, 19 Jun 2019 10:29:56 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:56 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 06/45] coresight: funnel: Clean up device book keeping
Date: Wed, 19 Jun 2019 11:29:10 -0600
Message-Id: <20190619172949.4522-7-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102957_720928_1435E53A 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Suzuki K Poulose <suzuki.poulose@arm.com>

In preparation to use a consistent device naming scheme,
clean up the device link tracking in funnel driver.
Use the "coresight" device instead of the "real" parent device
for all internal purposes. All other requests (e.g, power management,
DMA operations) must use the "real" device which is the parent device.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 16b0c0e1e43a..6236a847bb0b 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -32,14 +32,12 @@
 /**
  * struct funnel_drvdata - specifics associated to a funnel component
  * @base:	memory mapped base address for this component.
- * @dev:	the device entity associated to this component.
  * @atclk:	optional clock for the core parts of the funnel.
  * @csdev:	component vitals needed by the framework.
  * @priority:	port selection order.
  */
 struct funnel_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 	unsigned long		priority;
@@ -80,7 +78,7 @@ static int funnel_enable(struct coresight_device *csdev, int inport,
 		rc = dynamic_funnel_enable_hw(drvdata, inport);
 
 	if (!rc)
-		dev_dbg(drvdata->dev, "FUNNEL inport %d enabled\n", inport);
+		dev_dbg(&csdev->dev, "FUNNEL inport %d enabled\n", inport);
 	return rc;
 }
 
@@ -110,7 +108,7 @@ static void funnel_disable(struct coresight_device *csdev, int inport,
 	if (drvdata->base)
 		dynamic_funnel_disable_hw(drvdata, inport);
 
-	dev_dbg(drvdata->dev, "FUNNEL inport %d disabled\n", inport);
+	dev_dbg(&csdev->dev, "FUNNEL inport %d disabled\n", inport);
 }
 
 static const struct coresight_ops_link funnel_link_ops = {
@@ -165,11 +163,11 @@ static ssize_t funnel_ctrl_show(struct device *dev,
 	u32 val;
 	struct funnel_drvdata *drvdata = dev_get_drvdata(dev->parent);
 
-	pm_runtime_get_sync(drvdata->dev);
+	pm_runtime_get_sync(dev->parent);
 
 	val = get_funnel_ctrl_hw(drvdata);
 
-	pm_runtime_put(drvdata->dev);
+	pm_runtime_put(dev->parent);
 
 	return sprintf(buf, "%#x\n", val);
 }
@@ -205,7 +203,6 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = dev;
 	drvdata->atclk = devm_clk_get(dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
