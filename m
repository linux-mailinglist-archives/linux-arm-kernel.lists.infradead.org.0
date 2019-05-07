Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C8816259
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 12:56:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jsLruA8GFbm96FV8PMiIsVDYtxiqlU7Q/VK4S9GyMrc=; b=GDDmgMViuRZZvmsuw0C2WrF5so
	f0jzAOsOpestKDaALhYLHscmhDq4gZmH/mPINl8BEIw2ff3K6nYXbwa9IURyO3DnsqIxBPvezUyU+
	0ufFn5/7mWXeidBc6n0vtX+07o/WPM+rAo2PkPwRGqtKr7mhjg5j7yWY+Wh5vgtUlpwYm+q+uVSn3
	crmAlPw+iXnXFwYnydvYffvAR6/I3IUFR/nEblVBX8pGiYeaxDXnj+AmcdSE+0RjYt42l0ISIv5fP
	S6np8JQK9/f9BdrgZ7JdJM+jexIsdwSZAe+vzr+SZYXkOyvIJyQlpzn2aXNTOzXq/arBP3/y+8WWX
	2PXIjK4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNxlm-0000tU-UT; Tue, 07 May 2019 10:56:22 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNxjV-00059a-Pm
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 10:54:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 40603374;
 Tue,  7 May 2019 03:54:01 -0700 (PDT)
Received: from en101.cambridge.arm.com (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 0D0653F5AF; Tue,  7 May 2019 03:53:59 -0700 (PDT)
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3 14/30] coresight: platform: Make memory allocation helper
 generic
Date: Tue,  7 May 2019 11:52:41 +0100
Message-Id: <1557226378-10131-15-git-send-email-suzuki.poulose@arm.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
References: <1557226378-10131-1-git-send-email-suzuki.poulose@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_035402_445491_43242953 
X-CRM114-Status: GOOD (  12.83  )
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

Rename the of_coresight_alloc_memory() => coresight_alloc_conns()
as it is independent of the underlying firmware type. This is in
preparation for the ACPI support.

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 drivers/hwtracing/coresight/coresight-platform.c | 34 +++++++++++++-----------
 1 file changed, 19 insertions(+), 15 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
index 514cc2b..4c31299 100644
--- a/drivers/hwtracing/coresight/coresight-platform.c
+++ b/drivers/hwtracing/coresight/coresight-platform.c
@@ -17,6 +17,24 @@
 #include <linux/cpumask.h>
 #include <asm/smp_plat.h>
 
+/*
+ * coresight_alloc_conns: Allocate connections record for each output
+ * port from the device.
+ */
+static int coresight_alloc_conns(struct device *dev,
+				 struct coresight_platform_data *pdata)
+{
+	if (pdata->nr_outport) {
+		pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
+					    sizeof(*pdata->conns),
+					    GFP_KERNEL);
+		if (!pdata->conns)
+			return -ENOMEM;
+	}
+
+	return 0;
+}
+
 #ifdef CONFIG_OF
 static int of_dev_node_match(struct device *dev, void *data)
 {
@@ -133,20 +151,6 @@ static void of_coresight_get_ports(const struct device_node *node,
 	}
 }
 
-static int of_coresight_alloc_memory(struct device *dev,
-			struct coresight_platform_data *pdata)
-{
-	if (pdata->nr_outport) {
-		pdata->conns = devm_kzalloc(dev, pdata->nr_outport *
-					    sizeof(*pdata->conns),
-					    GFP_KERNEL);
-		if (!pdata->conns)
-			return -ENOMEM;
-	}
-
-	return 0;
-}
-
 int of_coresight_get_cpu(const struct device_node *node)
 {
 	int cpu;
@@ -252,7 +256,7 @@ of_get_coresight_platform_data(struct device *dev,
 	if (!pdata->nr_outport)
 		return pdata;
 
-	ret = of_coresight_alloc_memory(dev, pdata);
+	ret = coresight_alloc_conns(dev, pdata);
 	if (ret)
 		return ERR_PTR(ret);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
