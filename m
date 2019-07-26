Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 264DA76E9A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:09:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JJgdnJi5BReThBcj2xywHFDLQz7aYskATkMQWGIkexg=; b=LJnaw668FMXPLL
	2ypjtfU1gysfj/jxBDzXmPIS0zJUAY6b3LsqEdMQMitXV3PgjlAqSNUXwYa7rnuHPy0XCN0tiWz9Q
	b6HApal5YqAkHZDGcXMXaDVGyNJ958RcDlF8BirCL4aHE76AMwMWp9/uTEE6sQRjoGK+S+ortygMT
	2NvbEYCzUKb56r1IgRMtqT0mdSVIyAkqu8OAS/UjMU5dKNZzgpxfMG+kcqJlv3ix/Pyw0Jd4lfM+5
	CXLnOzD/5zbZwteWSaAedMNcLIMzXbo0HYNUTSRK/pC5T6SWMZ3PmBhlp3zYxQn+aeUJ0P1ZeDaUz
	eeyzbQDR3MaMg2J5Semg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr2mG-0002AB-2J; Fri, 26 Jul 2019 16:09:04 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hr2m6-00029G-0D
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:08:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5E897337;
 Fri, 26 Jul 2019 09:08:51 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 9055D3F71F;
 Fri, 26 Jul 2019 09:08:50 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH] coresight: acpi: Static funnel support
Date: Fri, 26 Jul 2019 17:08:39 +0100
Message-Id: <20190726160839.12478-1-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_090854_088628_259EA0AF 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
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
Cc: coresight@lists.linaro.org, linux-kernel@vger.kernel.org,
 mathieu.poirier@linaro.org, Suzuki K Poulose <suzuki.poulose@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The ACPI bindings for CoreSight has been updated to add the device
id for non-programmable CoreSight funnels (aka static funnels) as of
v1.1 [0]. Add the ACPI id for static funnels in the driver.

[0] https://static.docs.arm.com/den0067/a/DEN0067_CoreSight_ACPI_1.1.pdf

Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index fa97cb9ab4f9..0c99848a5d69 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -5,6 +5,7 @@
  * Description: CoreSight Funnel driver
  */
 
+#include <linux/acpi.h>
 #include <linux/kernel.h>
 #include <linux/init.h>
 #include <linux/types.h>
@@ -302,11 +303,19 @@ static const struct of_device_id static_funnel_match[] = {
 	{}
 };
 
+#ifdef CONFIG_ACPI
+static const struct acpi_device_id static_funnel_ids[] = {
+	{"ARMHC9FE", 0},
+	{},
+};
+#endif
+
 static struct platform_driver static_funnel_driver = {
 	.probe          = static_funnel_probe,
 	.driver         = {
 		.name   = "coresight-static-funnel",
 		.of_match_table = static_funnel_match,
+		.acpi_match_table = ACPI_PTR(static_funnel_ids),
 		.pm	= &funnel_dev_pm_ops,
 		.suppress_bind_attrs = true,
 	},
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
