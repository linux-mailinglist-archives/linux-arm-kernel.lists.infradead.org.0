Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0452A1C89FB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:03:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qI8nEss6nDUuzcx53wGyqJY8Fvb6XzePDcKx1NbBCps=; b=YwEGWjtB81TKb2
	jjv+BXv0VzpVBFi8EhoqdN8sUZ5ob7yP704OZrX5EC/TgpyTtVTqdG7rUfQH1LLQJ0NZPcnuu0ik1
	aKNfhu7u3vP4WyRfIbWZO6fWDw4m2yIeEzzB+tJkHGSNlca0BFaVaQST+vG5AnGMSxg5fVwxoBhGS
	Ry0JyQAtftRPWHMWNtrog4FEeBF/okbEJD3ucGcauBaG8L3/ngVXnfwg9f60aUTZfJvqzCxLRuiNR
	PrGFLrl0/HM6I3MmbyN/ARDsA4ES1OgsoZduQc80zC26kw4rQVbal8M7BOAhXg+iWE+yEnc+YG5FY
	XxsmsOb97e0RpTgMC8cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfEY-0007et-Dn; Thu, 07 May 2020 12:02:34 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfEG-0007c1-Va
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:02:18 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8C7057ECDD0B832C1529;
 Thu,  7 May 2020 20:02:04 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:01:58 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH RFC v3 08/12] perf vendor events: Add JSON metrics for imx8mm
 DDR Perf
Date: Thu, 7 May 2020 19:57:47 +0800
Message-ID: <1588852671-61996-9-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_050217_186527_996E479E 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: irogers@google.com, ak@linux.intel.com, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>, qiangqing.zhang@nxp.com,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Joakim Zhang <qiangqing.zhang@nxp.com>

Add JSON metrics for imx8mm DDR Perf.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
Signed-off-by: John Garry <john.garry@huawei.com>
---
 .../arch/arm64/freescale/imx8mm/sys/ddrc.json      | 39 ++++++++++++++++++++++
 .../arch/arm64/freescale/imx8mm/sys/metrics.json   | 18 ++++++++++
 tools/perf/pmu-events/jevents.c                    |  1 +
 3 files changed, 58 insertions(+)
 create mode 100644 tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/ddrc.json
 create mode 100644 tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/metrics.json

diff --git a/tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/ddrc.json b/tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/ddrc.json
new file mode 100644
index 000000000000..8a3dae61a48f
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/ddrc.json
@@ -0,0 +1,39 @@
+[
+   {
+           "BriefDescription": "ddr cycles event",
+           "EventCode": "0x00",
+           "EventName": "imx8mm_ddr.cycles",
+           "Unit": "imx8_ddr",
+           "Compat": "i.mx8mm"
+   },
+   {
+           "BriefDescription": "ddr read-cycles event",
+           "EventCode": "0x2a",
+           "EventName": "imx8mm_ddr.read_cycles",
+           "Unit": "imx8_ddr",
+           "Compat": "i.mx8mm"
+   },
+   {
+           "BriefDescription": "ddr write-cycles event",
+           "EventCode": "0x2b",
+           "EventName": "imx8mm_ddr.write_cycles",
+           "Unit": "imx8_ddr",
+           "Compat": "i.mx8mm"
+   },
+   {
+           "BriefDescription": "ddr read event",
+           "EventCode": "0x35",
+           "EventName": "imx8mm_ddr.read",
+           "Unit": "imx8_ddr",
+           "Compat": "i.mx8mm"
+   },
+   {
+           "BriefDescription": "ddr write event",
+           "EventCode": "0x38",
+           "EventName": "imx8mm_ddr.write",
+           "Unit": "imx8_ddr",
+           "Compat": "i.mx8mm"
+   }
+]
+
+
diff --git a/tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/metrics.json b/tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/metrics.json
new file mode 100644
index 000000000000..eb891ac896ad
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/metrics.json
@@ -0,0 +1,18 @@
+[
+   {
+	    "BriefDescription": "bytes all masters read from ddr based on read-cycles event",
+	    "MetricName": "imx8mm_ddr_read.all",
+	    "MetricExpr": "imx8mm_ddr.read_cycles * 4 * 4",
+	    "ScaleUnit": "9.765625e-4KB",
+	    "Unit": "imx8_ddr",
+	    "Compat": "i.mx8mm"
+    },
+   {
+	    "BriefDescription": "bytes all masters write to ddr based on write-cycles event",
+	    "MetricName": "imx8mm_ddr_write.all",
+	    "MetricExpr": "imx8mm_ddr.write_cycles * 4 * 4",
+	    "ScaleUnit": "9.765625e-4KB",
+	    "Unit": "imx8_ddr",
+	    "Compat": "i.mx8mm"
+    }
+]
diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
index 76a84ec2ffc8..efdade0194af 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -257,6 +257,7 @@ static struct map {
 	{ "hisi_sccl,hha", "hisi_sccl,hha" },
 	{ "hisi_sccl,l3c", "hisi_sccl,l3c" },
 	/* it's not realistic to keep adding these, we need something more scalable ... */
+	{ "imx8_ddr", "imx8_ddr" },
 	{ "smmuv3_pmcg", "smmuv3_pmcg" },
 	{ "L3PMC", "amd_l3" },
 	{}
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
