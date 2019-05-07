Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A76AA16269
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:57:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NT3Lzm+IJ+TSv7N5u6PG50k9q0uGpnzCTW/ZTflZvDw=; b=IJYubQ6h1+giJyIp+wA0wEfviZ
	/IhO+cAyJDgbl9Y2ufRVyPFQ4pr9VI28+5tndDeP0GaKa4CcM3AYNa8u/vkag7ZKfAXDh9fb0H93K
	kSGE216ulZN9n6q6mkcmQCOGuxdvRvIpOHkGOutAKLM4yahUZZ2Zyo5pa3lMC2UddeZNWjI8ncz7R
	mqulO2vvPBtywF3l3r/ibXPgWV2UqtkV04mKPuZSemJ2OXIStVwNmncs5kpv5Q4dRIonX4Og+BAqF
	MS/KQeB7H9e5D1klYfU4YU2NzOsi/83Lsq3EjOLpui/FBX5FOVxufgC6ST4PSkhYB+ojwhE+5JGXd
	ppUfKpcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxmb-0001yv-Ix; Tue, 07 May 2019 10:57:13 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjb-000581-E6
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3DB9B1682;
 Tue,  7 May 2019 03:54:07 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 0AE423F5AF; Tue,  7 May 2019 03:54:05 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 18/30] coresight: Remove cpu field from platform data
Date: Tue,  7 May 2019 11:52:45 +0100
Message-Id: <1557226378-10131-19-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035407_740562_34632FCA 
X-CRM114-Status: GOOD (  15.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: coresight@lists.linaro.org, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CPU field is only used by ETMs and there is a separate API
for fetching the same. So, let us use that instead of using
the common platform probing helper. Also, remove it from the
platform_data.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm3x.c    | 2 +-
 drivers/hwtracing/coresight/coresight-etm4x.c    | 2 +-
 drivers/hwtracing/coresight/coresight-platform.c | 1 -
 include/linux/coresight.h                        | 2 --
 4 files changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm3x.c b/drivers/hwtracing/coresight/coresight-etm3x.c
index fa2164f..722fab96 100644
--- a/drivers/hwtracing/coresight/coresight-etm3x.c
+++ b/drivers/hwtracing/coresight/coresight-etm3x.c
@@ -819,7 +819,7 @@ static int etm_probe(struct amba_device *adev, const struct amba_id *id)
 			return ret;
 	}
 
-	drvdata->cpu = pdata ? pdata->cpu : 0;
+	drvdata->cpu = coresight_get_cpu(dev);
 
 	cpus_read_lock();
 	etmdrvdata[drvdata->cpu] = drvdata;
diff --git a/drivers/hwtracing/coresight/coresight-etm4x.c b/drivers/hwtracing/coresight/coresight-etm4x.c
index 4355b2e..03576f3 100644
--- a/drivers/hwtracing/coresight/coresight-etm4x.c
+++ b/drivers/hwtracing/coresight/coresight-etm4x.c
@@ -1105,7 +1105,7 @@ static int etm4_probe(struct amba_device *adev, const struct amba_id *id)
 
 	spin_lock_init(&drvdata->spinlock);
 
-	drvdata->cpu = pdata ? pdata->cpu : 0;
+	drvdata->cpu = coresight_get_cpu(dev);
 
 	cpus_read_lock();
 	etmdrvdata[drvdata->cpu] = drvdata;
diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index ba8c146..541e500 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -325,7 +325,6 @@ coresight_get_platform_data(struct device *dev)
 
 	/* Use device name as sysfs handle */
 	pdata->name = dev_name(dev);
-	pdata->cpu = coresight_get_cpu(dev);
 
 	if (is_of_node(fwnode))
 		ret = of_get_coresight_platform_data(dev, pdata);
diff --git a/include/linux/coresight.h b/include/linux/coresight.h
index 98a4440..bf241db 100644
--- a/include/linux/coresight.h
+++ b/include/linux/coresight.h
@@ -91,14 +91,12 @@ union coresight_dev_subtype {
 
 /**
  * struct coresight_platform_data - data harvested from the DT specification
- * @cpu:	the CPU a source belongs to. Only applicable for ETM/PTMs.
  * @name:	name of the component as shown under sysfs.
  * @nr_inport:	number of input ports for this component.
  * @nr_outport:	number of output ports for this component.
  * @conns:	Array of nr_outport connections from this component
  */
 struct coresight_platform_data {
-	int cpu;
 	const char *name;
 	int nr_inport;
 	int nr_outport;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
