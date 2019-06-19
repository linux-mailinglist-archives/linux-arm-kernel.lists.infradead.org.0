Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B4E34BFAD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 19:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tuUCai124IWtJ236/9mmYo5SgCs+cmk1DeNChdDkTZc=; b=T3Y0Zz9MyZiLNicyH8rC54gLWw
	D6lkKUdAe4HYadnAlcweBD35UU7BzO9plTsqHHJoBnNT4rAvqr9GnR2Om0OTXFukIWr3X1uuCdXRC
	ZtRo9qgspD5ZsvsvFYaGCRCbsz4/VopoU+ZSgSGWXD+cOrrI0J9vpc7qrUavuZgGYv6Ktn9lX7qjP
	HfZqUQeETuOt/Dm0IORo0pY5ZnumAsL8q6Z+Odn/LxkQ0m+P2YNfPFf0KIPQMAadmJbB28FgrFwkn
	1fOljxXCtttfR9Xc58lRqzHQFiBYSfmMQ0ShlR7RQFLWln+bNLcRyzlgnLIkFGxlN0EU3Pqvx7FZn
	4CkQOQNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdeS7-0001jk-FP; Wed, 19 Jun 2019 17:32:55 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdePG-00075u-HR
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 17:30:00 +0000
Received: by mail-pl1-x644.google.com with SMTP id bi6so78480plb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 10:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DThV8U7/6lnQCq1brl48bQF0wGungTqjO3Krt6EpRiA=;
 b=RhyWi9l+o7wI5kCTCaRehz+yAK2h424fzerS8WhKkd5a7lQx5pqMqPNPInZVJuIfRe
 hBVoiJ9WgYmyeD0uW+dUUwugoWyPIRIw7e8zusF+PnQmz1e+6YUWtrcjvdz2e1Z3KX6L
 D9H6GLWmG2i3zmMl8amG3lvSEsEt3wi8sCJw6J3hQT0oN+IBsp4Hg22dLOwzJ9owTOIp
 imJ09vqJOTfxkjVgIAMTJZVcvJHHE6Bqdt6D9DPZZVOKDf5v7gYSDTNvpeDi+AatqBec
 TGBfKmscz/8UtOptSijJzti6dzWt6RB43u5+73KvzK3F0+R/5WgdqTlHjqHijliUIYzn
 rs9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DThV8U7/6lnQCq1brl48bQF0wGungTqjO3Krt6EpRiA=;
 b=oFo/zEOADLcWIUavNfN01ob1gnua5a2nM0wQev8EBZRNsLskn2MYH77CelDs+0K4f4
 HBxDihNdgIU/rky6BkV87En8lDoG6B2JH3+z7UY0MDY+L+h7TW9srR/uL7L553bmKYbm
 vasqu3HyUJV60Trehrvy2nAR++Hs81lhCVMr7QvG01k5wmsZi05tfeVOxS0MCZLoQmE9
 CiQK4Ao8bFkXIhEFNq3EvmbZzLP6NMxEYKRP3vHnnNnvUP3Xk6x0q4NHqgpADolQr1Pn
 dNIK2KGUkWtboKS4txBoFSyKuJIT9C87Qn5q4BjunnEK5OQvI54ZIRgVuV0QIHsjj6Km
 8sQA==
X-Gm-Message-State: APjAAAXlyCcfuO8D+jaZ7Iw6Pgc3oqplMvWtr4HXsADb6feOQHiVjqpQ
 D6KKGstHDyFK8GaKWcTIsPMFUg==
X-Google-Smtp-Source: APXvYqwtiLzdAwA7+IaOCZ5aYz0L7FZAypRW8ANASPO5Dbk3vF6DUcRCRXnVjYIJviprg3H1gQJwkQ==
X-Received: by 2002:a17:902:24c:: with SMTP id
 70mr119602547plc.2.1560965397883; 
 Wed, 19 Jun 2019 10:29:57 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id g2sm31348406pfb.95.2019.06.19.10.29.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 19 Jun 2019 10:29:57 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 07/45] coresight: replicator: Cleanup device tracking
Date: Wed, 19 Jun 2019 11:29:11 -0600
Message-Id: <20190619172949.4522-8-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190619172949.4522-1-mathieu.poirier@linaro.org>
References: <20190619172949.4522-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_102958_652637_6FE4DC1E 
X-CRM114-Status: GOOD (  15.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
clean up the device link tracking in replicator driver.
Use the "coresight" device instead of the "real" parent device
for all internal purposes. All other requests (e.g, power management,
DMA operations) must use the "real" device which is the parent device.

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-replicator.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index 8c9ce74498e1..ee6ad34061a5 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -26,13 +26,11 @@
  * struct replicator_drvdata - specifics associated to a replicator component
  * @base:	memory mapped base address for this component. Also indicates
  *		whether this one is programmable or not.
- * @dev:	the device entity associated with this component
  * @atclk:	optional clock for the core parts of the replicator.
  * @csdev:	component vitals needed by the framework
  */
 struct replicator_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 };
@@ -100,7 +98,7 @@ static int replicator_enable(struct coresight_device *csdev, int inport,
 	if (drvdata->base)
 		rc = dynamic_replicator_enable(drvdata, inport, outport);
 	if (!rc)
-		dev_dbg(drvdata->dev, "REPLICATOR enabled\n");
+		dev_dbg(&csdev->dev, "REPLICATOR enabled\n");
 	return rc;
 }
 
@@ -139,7 +137,7 @@ static void replicator_disable(struct coresight_device *csdev, int inport,
 
 	if (drvdata->base)
 		dynamic_replicator_disable(drvdata, inport, outport);
-	dev_dbg(drvdata->dev, "REPLICATOR disabled\n");
+	dev_dbg(&csdev->dev, "REPLICATOR disabled\n");
 }
 
 static const struct coresight_ops_link replicator_link_ops = {
@@ -196,7 +194,6 @@ static int replicator_probe(struct device *dev, struct resource *res)
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
