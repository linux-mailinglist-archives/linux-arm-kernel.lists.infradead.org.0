Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3782416267
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:56:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lOhMhQI4/LtPaVTzGwE6hgKKucKfZs181Z+L1+TtwMk=; b=t8VmqhBhdYu4499XuulGyQuhV5
	quJ9GL1lUA0pZndqSXY1zEsK4xEaN3k2PUM6OfPw1d8g7w4ToVejyCX53Lp3W4kVpE6NlMIH3+TMB
	sid4KezfxTOluYfzAuheOijSDD878w1cllXmADm3lSNs/oum68EpFGQdqQ33rjqZELeTHIQsBf/f/
	pnGZKbEugDJMG4F4p78O6X4R1WMUOeQ/D5a5pVlRPUR1LJeXUmeWmbe9F6mENmdLdHlu4bTHebGPq
	Rjsa06JnhJx7VwyLwikRjDQR0YzGj5xHjwJabQGdDVPzpkjGlkiXndZ/T6RAB3v36WldcGzciXNdc
	mpixPVPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxmH-0001aE-FV; Tue, 07 May 2019 10:56:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjO-0005Gk-7h
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E39141688;
 Tue,  7 May 2019 03:53:53 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 B098B3F5AF; Tue,  7 May 2019 03:53:52 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 09/30] coresight: Use coresight device names for sinks in
 PMU attribute
Date: Tue,  7 May 2019 11:52:36 +0100
Message-Id: <1557226378-10131-10-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035354_888492_E0B3AD4D 
X-CRM114-Status: GOOD (  11.38  )
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

From: Mathieu Poirier <mathieu.poirier@linaro.org>

Move to using the coresight device name instead of the parent
device name for SINK attribute for PMU.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-etm-perf.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
index 3c62944..5c1ca0d 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.c
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
@@ -523,7 +523,7 @@ int etm_perf_add_symlink_sink(struct coresight_device *csdev)
 	unsigned long hash;
 	const char *name;
 	struct device *pmu_dev = etm_pmu.dev;
-	struct device *pdev = csdev->dev.parent;
+	struct device *dev = &csdev->dev;
 	struct dev_ext_attribute *ea;
 
 	if (csdev->type != CORESIGHT_DEV_TYPE_SINK &&
@@ -536,15 +536,15 @@ int etm_perf_add_symlink_sink(struct coresight_device *csdev)
 	if (!etm_perf_up)
 		return -EPROBE_DEFER;
 
-	ea = devm_kzalloc(pdev, sizeof(*ea), GFP_KERNEL);
+	ea = devm_kzalloc(dev, sizeof(*ea), GFP_KERNEL);
 	if (!ea)
 		return -ENOMEM;
 
-	name = dev_name(pdev);
+	name = dev_name(dev);
 	/* See function coresight_get_sink_by_id() to know where this is used */
 	hash = hashlen_hash(hashlen_string(NULL, name));
 
-	ea->attr.attr.name = devm_kstrdup(pdev, name, GFP_KERNEL);
+	ea->attr.attr.name = devm_kstrdup(dev, name, GFP_KERNEL);
 	if (!ea->attr.attr.name)
 		return -ENOMEM;
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
