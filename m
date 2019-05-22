Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F23C1261E2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 12:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LQ6FuS6j+ggEkwyN4pW0uinTyX2sgqrx0KisoYALsSc=; b=iT2QacJiC2679HidGwClH/l0wl
	MBis1iK1+TU4nNEbEJk0mdFU2Eiz9muGrXCFDytyItzCchmUt8VPmU7356RYcq3TRkpZbQiYnD1Lm
	DfZe23AUoqM0fqX8ORZT6MKRdQMfkSTu3yTpKwPyZwmfWJAKalzRrJwkdbRaOtngkW43RFfc5ZF6U
	l6GALQ13J6o39uEDpbK076zbO3qmDddlKPKhaP0ULRAYViIlGKzF/1gP3KSpzkWuIBbHpDJWAVXyS
	A1VlSKj7EJv75B2qRCPa95m/PU/9bTTbxqki78yGJeL7vPhRPugDeyiD72nk+zkEkpQGIXmexOst9
	z+9bBbMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTObT-0005dv-GR; Wed, 22 May 2019 10:36:11 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTOai-0004k6-Qk
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 10:35:28 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8B62A15BF;
 Wed, 22 May 2019 03:35:24 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 7BFCF3F575; Wed, 22 May 2019 03:35:23 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 05/30] coresight: tpiu: Clean up device specific data
Date: Wed, 22 May 2019 11:34:38 +0100
Message-Id: <1558521304-27469-6-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
References: <1558521304-27469-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_033525_330376_2A1AD9CA 
X-CRM114-Status: GOOD (  13.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Switch to using the coresight device instead of the parent
amba device.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-tpiu.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-tpiu.c b/drivers/hwtracing/coresight/coresight-tpiu.c
index 63d9af3..4dd3e7f 100644
--- a/drivers/hwtracing/coresight/coresight-tpiu.c
+++ b/drivers/hwtracing/coresight/coresight-tpiu.c
@@ -49,13 +49,11 @@
 
 /**
  * @base:	memory mapped base address for this component.
- * @dev:	the device entity associated to this component.
  * @atclk:	optional clock for the core parts of the TPIU.
  * @csdev:	component vitals needed by the framework.
  */
 struct tpiu_drvdata {
 	void __iomem		*base;
-	struct device		*dev;
 	struct clk		*atclk;
 	struct coresight_device	*csdev;
 };
@@ -75,7 +73,7 @@ static int tpiu_enable(struct coresight_device *csdev, u32 mode, void *__unused)
 
 	tpiu_enable_hw(drvdata);
 	atomic_inc(csdev->refcnt);
-	dev_dbg(drvdata->dev, "TPIU enabled\n");
+	dev_dbg(&csdev->dev, "TPIU enabled\n");
 	return 0;
 }
 
@@ -104,7 +102,7 @@ static int tpiu_disable(struct coresight_device *csdev)
 
 	tpiu_disable_hw(drvdata);
 
-	dev_dbg(drvdata->dev, "TPIU disabled\n");
+	dev_dbg(&csdev->dev, "TPIU disabled\n");
 	return 0;
 }
 
@@ -139,7 +137,6 @@ static int tpiu_probe(struct amba_device *adev, const struct amba_id *id)
 	if (!drvdata)
 		return -ENOMEM;
 
-	drvdata->dev = &adev->dev;
 	drvdata->atclk = devm_clk_get(&adev->dev, "atclk"); /* optional */
 	if (!IS_ERR(drvdata->atclk)) {
 		ret = clk_prepare_enable(drvdata->atclk);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
