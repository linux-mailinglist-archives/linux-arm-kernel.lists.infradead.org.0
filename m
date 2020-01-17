Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27772140CCF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UkmdvZHSwRurNU6JywZX5lzFc9uuXYN3OFQUb3AGaDw=; b=J+07oow9SVZyWEZC4FoePDlZ0b
	Oe8896v9gLh+4EocgxNnXhauM/NN/KYtmfirnjZYZRC6PTHU2AllBq1cC4s3yDXbqd+46lpb2yH4k
	GppTBOeIhuWQY4S5Ky6CYGoe2Y81IxJUUR2bdBWlArrGYxl/XelU8t2o8nbuJdQ4X5cqTzjgRIJyg
	NulAF/JEV90m+YUVj8J1XA1DBAN27O8/8NEfz/Zu+BdU4XiHdS3NKj8XTtN0yiM1PpatWmlzI4xQJ
	LxYYhX0/H9o9jPrzjA8NcvgPM+IapQzMpOkAZ0CJ03eWBroBt9XEjYW9raI9PTtQUsfgtA3AgdwQM
	5ZuGeWtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSo4-0000r5-W0; Fri, 17 Jan 2020 14:41:04 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSmA-0006lJ-6p
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 14:39:08 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id B7C65AC7D;
 Fri, 17 Jan 2020 14:39:03 +0000 (UTC)
From: Mian Yousaf Kaukab <ykaukab@suse.de>
To: linux-arm-kernel@lists.infradead.org,
	mathieu.poirier@linaro.org
Subject: [PATCH RFC 06/15] coresight: combine bus and PMU init calls
Date: Fri, 17 Jan 2020 15:40:01 +0100
Message-Id: <20200117144010.11149-7-ykaukab@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20200117144010.11149-1-ykaukab@suse.de>
References: <20200117144010.11149-1-ykaukab@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_063906_392680_C271A8FF 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: alexander.shishkin@linux.intel.com, paul.gortmaker@windriver.com,
 Mian Yousaf Kaukab <ykaukab@suse.de>, linux-kernel@vger.kernel.org,
 suzuki.poulose@arm.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to initialize coresight bus at postcore level since
coresight API is private now. Moreover, call etm_perf_init() from
coresight_init() to combine bus and PMU into a single module. There
are circular dependencies between them.

Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
---
 drivers/hwtracing/coresight/coresight-bus.c      | 41 ++++++++++++++++++------
 drivers/hwtracing/coresight/coresight-etm-perf.c |  3 +-
 drivers/hwtracing/coresight/coresight-etm-perf.h |  2 ++
 3 files changed, 34 insertions(+), 12 deletions(-)

diff --git a/drivers/hwtracing/coresight/coresight-bus.c b/drivers/hwtracing/coresight/coresight-bus.c
index ef20f74c85fa..c2eaeeea98cd 100644
--- a/drivers/hwtracing/coresight/coresight-bus.c
+++ b/drivers/hwtracing/coresight/coresight-bus.c
@@ -1142,16 +1142,6 @@ int coresight_timeout(void __iomem *addr, u32 offset, int position, int value)
 	return -EAGAIN;
 }
 
-struct bus_type coresight_bustype = {
-	.name	= "coresight",
-};
-
-static int __init coresight_init(void)
-{
-	return bus_register(&coresight_bustype);
-}
-postcore_initcall(coresight_init);
-
 /*
  * coresight_release_platform_data: Release references to the devices connected
  * to the output port of this device.
@@ -1336,3 +1326,34 @@ char *coresight_alloc_device_name(struct coresight_dev_list *dict,
 	return name;
 }
 EXPORT_SYMBOL_GPL(coresight_alloc_device_name);
+
+struct bus_type coresight_bustype = {
+	.name	= "coresight",
+};
+
+static int __init coresight_init(void)
+{
+	int ret;
+
+	ret = bus_register(&coresight_bustype);
+	if (ret)
+		return ret;
+
+	ret = etm_perf_init();
+	if (ret)
+		bus_unregister(&coresight_bustype);
+
+	return ret;
+}
+
+static void __exit coresight_exit(void)
+{
+	/* TODO: perf_pmu_unregister() */
+	bus_unregister(&coresight_bustype);
+}
+
+module_init(coresight_init);
+module_exit(coresight_exit);
+
+MODULE_DESCRIPTION("Coresight bus and pmu driver");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.c b/drivers/hwtracing/coresight/coresight-etm-perf.c
index 84f1dcb69827..1bd71c2f6802 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.c
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.c
@@ -579,7 +579,7 @@ void etm_perf_del_symlink_sink(struct coresight_device *csdev)
 	csdev->ea = NULL;
 }
 
-static int __init etm_perf_init(void)
+int __init etm_perf_init(void)
 {
 	int ret;
 
@@ -606,4 +606,3 @@ static int __init etm_perf_init(void)
 
 	return ret;
 }
-device_initcall(etm_perf_init);
diff --git a/drivers/hwtracing/coresight/coresight-etm-perf.h b/drivers/hwtracing/coresight/coresight-etm-perf.h
index 015213abe00a..4b1c1f55fb46 100644
--- a/drivers/hwtracing/coresight/coresight-etm-perf.h
+++ b/drivers/hwtracing/coresight/coresight-etm-perf.h
@@ -82,4 +82,6 @@ static inline void *etm_perf_sink_config(struct perf_output_handle *handle)
 
 #endif /* CONFIG_CORESIGHT */
 
+int __init etm_perf_init(void);
+
 #endif
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
