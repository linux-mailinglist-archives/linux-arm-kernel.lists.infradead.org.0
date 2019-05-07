Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3522D16249
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:55:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=43OUlW88swv1QyYrCDIKeMrLU5s5L6bHvnJ/ykMA7lU=; b=agr/5iCLH8y4conMbJwnXbT8QV
	Iy2pq0LnrCa33uivJH72WbVTaBWRZn1vFL/pXKvnZrqBbL8RAp3GYI+qgcqksF2bZB0c6xX/EqnvU
	dojAjhS4DPLzuZFV4Ora++VFfT3QtOy3oEXNBcWWd+eJvuDtBVJ503z9bTf3tvF9P2eKU3n4J4RQd
	uFvqjkK0qYI4ylNIttBLvQhTwpLxJI8RxLciu2NIVUeh2w4d9ka+kD70g4TsFs6L8Xp42H8i4sZ/J
	f54u2/lRMOcLF0kiJ8uB8WVwnn0e8TePqB+aKm5B0hLQ9BreqTNZKmS1r7Oh4bgvytzt5VRnH4/3Y
	B9BD1Gog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxl9-0008Rh-7Q; Tue, 07 May 2019 10:55:43 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjP-0005JP-Tu
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5F1EF15AD;
 Tue,  7 May 2019 03:53:55 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 2C1EF3F5AF; Tue,  7 May 2019 03:53:54 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 10/30] coresight: Rename of_coresight to coresight-platform
Date: Tue,  7 May 2019 11:52:37 +0100
Message-Id: <1557226378-10131-11-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035356_823430_0F2E1CC5 
X-CRM114-Status: GOOD (  11.29  )
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

Rename the firmware handling file to a more generic
name, in preparation for adding ACPI support. Right now
we only support DT and we have all the platform handling
code in of_coresight.c. Let us rename the file to
coresight-platform.c in order to keep the platform handling
in a single place for DT and the upcoming ACPI support.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/Makefile                                 | 3 +--
 drivers/hwtracing/coresight/{of_coresight.c => coresight-platform.c} | 3 ++-
 2 files changed, 3 insertions(+), 3 deletions(-)
 rename drivers/hwtracing/coresight/{of_coresight.c => coresight-platform.c} (99%)

diff --git a/drivers/hwtracing/coresight/Makefile b/drivers/hwtracing/coresight/Makefile
index 3b435aa..3c0ac42 100644
--- a/drivers/hwtracing/coresight/Makefile
+++ b/drivers/hwtracing/coresight/Makefile
@@ -2,8 +2,7 @@
 #
 # Makefile for CoreSight drivers.
 #
-obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o
-obj-$(CONFIG_OF) += of_coresight.o
+obj-$(CONFIG_CORESIGHT) += coresight.o coresight-etm-perf.o coresight-platform.o
 obj-$(CONFIG_CORESIGHT_LINK_AND_SINK_TMC) += coresight-tmc.o \
 					     coresight-tmc-etf.o \
 					     coresight-tmc-etr.o
diff --git a/drivers/hwtracing/coresight/of_coresight.c b/drivers/hwtracing/coresight/coresight-platform.c
similarity index 99%
rename from drivers/hwtracing/coresight/of_coresight.c
rename to drivers/hwtracing/coresight/coresight-platform.c
index 7045930..514cc2b 100644
--- a/drivers/hwtracing/coresight/of_coresight.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -17,7 +17,7 @@
 #include <linux/cpumask.h>
 #include <asm/smp_plat.h>
 
-
+#ifdef CONFIG_OF
 static int of_dev_node_match(struct device *dev, void *data)
 {
 	return dev->of_node == data;
@@ -295,3 +295,4 @@ of_get_coresight_platform_data(struct device *dev,
 	return pdata;
 }
 EXPORT_SYMBOL_GPL(of_get_coresight_platform_data);
+#endif
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
