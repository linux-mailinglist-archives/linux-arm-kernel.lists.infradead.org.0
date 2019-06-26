Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99405573C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 23:39:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rGkmpxL6mG3989bdY3kIFk9eJKUOztcBv1P1EfgQl94=; b=tWvx6s3WU6ebE2
	P+iOaFQ6lmxmeR3WVsCL6BMTaw0VRhYz+LpLeF54KMbT8b13OAtdiAKANwZ1gxtro+BbV1OFfxuDQ
	h7SBeYh8ANbcnQXna0yO3dS+fi7VUZfmYf1hNJlRGqaYuBhFYKaPzIU7zMEwOfjN54/BPlALgMgVp
	GOfJKOk8fu2UdOPI7m4RoXo5l3L0lLcoWwgh1d492q2+E2K8Fmu7069mBlznZGVLA2/ihPmNpDpqu
	sTqlyiLbx8XigOEDxx477qssQOu+cV0fFJ+24eP3eDO7Szd7itmymFNHRDBI+018OE/SbZXn9fXGE
	vReW+8QAy8R8MkpsM27g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgFdH-0007RA-SH; Wed, 26 Jun 2019 21:39:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hgFbl-0006Sr-4U
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 21:37:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E853142F;
 Wed, 26 Jun 2019 14:37:35 -0700 (PDT)
Received: from mammon-tx2.austin.arm.com (mammon-tx2.austin.arm.com
 [10.118.30.49])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 563073F246;
 Wed, 26 Jun 2019 14:37:35 -0700 (PDT)
From: Jeremy Linton <jeremy.linton@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 4/4] perf: arm_spe: Enable ACPI/Platform automatic module
 loading
Date: Wed, 26 Jun 2019 16:37:18 -0500
Message-Id: <20190626213718.39423-5-jeremy.linton@arm.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626213718.39423-1-jeremy.linton@arm.com>
References: <20190626213718.39423-1-jeremy.linton@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_143737_235215_C0E10FB2 
X-CRM114-Status: GOOD (  11.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 sudeep.holla@arm.com, rjw@rjwysocki.net, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, linux-acpi@vger.kernel.org,
 catalin.marinas@arm.com, Hanjun Gou <gouhanjun@huawei.com>, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Lets add the MODULE_TABLE and platform id_table entries so that
the SPE driver can attach to the ACPI platform device created by
the core pmu code.

Tested-by: Hanjun Gou <gouhanjun@huawei.com>
Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
---
 drivers/perf/arm_spe_pmu.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/perf/arm_spe_pmu.c b/drivers/perf/arm_spe_pmu.c
index 49b490925255..4e4984a55cd1 100644
--- a/drivers/perf/arm_spe_pmu.c
+++ b/drivers/perf/arm_spe_pmu.c
@@ -27,6 +27,7 @@
 #include <linux/of_address.h>
 #include <linux/of_device.h>
 #include <linux/perf_event.h>
+#include <linux/perf/arm_pmu.h>
 #include <linux/platform_device.h>
 #include <linux/printk.h>
 #include <linux/slab.h>
@@ -1157,7 +1158,13 @@ static const struct of_device_id arm_spe_pmu_of_match[] = {
 };
 MODULE_DEVICE_TABLE(of, arm_spe_pmu_of_match);
 
-static int arm_spe_pmu_device_dt_probe(struct platform_device *pdev)
+static const struct platform_device_id arm_spe_match[] = {
+	{ ARMV8_SPE_PDEV_NAME, 0},
+	{ }
+};
+MODULE_DEVICE_TABLE(platform, arm_spe_match);
+
+static int arm_spe_pmu_device_probe(struct platform_device *pdev)
 {
 	int ret;
 	struct arm_spe_pmu *spe_pmu;
@@ -1217,11 +1224,12 @@ static int arm_spe_pmu_device_remove(struct platform_device *pdev)
 }
 
 static struct platform_driver arm_spe_pmu_driver = {
+	.id_table = arm_spe_match,
 	.driver	= {
 		.name		= DRVNAME,
 		.of_match_table	= of_match_ptr(arm_spe_pmu_of_match),
 	},
-	.probe	= arm_spe_pmu_device_dt_probe,
+	.probe	= arm_spe_pmu_device_probe,
 	.remove	= arm_spe_pmu_device_remove,
 };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
