Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430F53B2AF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 12:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSuGf0ND3o3OswxZtyg9W18l9aLCaiyG8iKC3c1R2QU=; b=OU+DQn+2HjvfXf
	6DCmXX6Xc0X/d36zDKnm2xv86OYYhyUlxsn1Yw+77OapR9TSx/8+kfiG+fTPVLKStePQF7+veBfQU
	y/bzQOxKjLhDgbOkkuLWp/w8F7k4hJB3nQB5unnYHhvFsUqp13hzAn7nPWU5bgeQpjtvsoc6YXW6W
	qUy9Dojq3JKru0UaO4UHLzgKfD3SjOVunkdoQD0DkJ8/dEOQSSlqaX603hl/o/84qmAuzlIcanq8z
	xjo78im/HFJE0zeMe7+DPtvrNRo8twJbWebynhg+qGkEowJ+7tStpC6BBKPObo6pKrmm6XoTldI1r
	wR+ZGO2BSBm8YcJEzuPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haH8q-0002uo-KA; Mon, 10 Jun 2019 10:03:04 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haH7B-0001dW-7X
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 10:01:22 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7A1D1DF86D7B64D91357;
 Mon, 10 Jun 2019 18:01:11 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Mon, 10 Jun 2019 18:00:52 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <tmricht@linux.ibm.com>, <brueckner@linux.ibm.com>,
 <kan.liang@linux.intel.com>, <ben@decadent.org.uk>,
 <mathieu.poirier@linaro.org>, <mark.rutland@arm.com>, <will.deacon@arm.com>
Subject: [PATCH 5/5] perf jevents: Add support for Hisi hip08 L3C PMU aliasing
Date: Mon, 10 Jun 2019 17:59:32 +0800
Message-ID: <1560160772-210844-6-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1560160772-210844-1-git-send-email-john.garry@huawei.com>
References: <1560160772-210844-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_030121_518422_60C00699 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: ak@linux.intel.com, John Garry <john.garry@huawei.com>,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for Hisi hip08 L3C PMU event aliasing.

The kernel driver is in drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c

Signed-off-by: John Garry <john.garry@huawei.com>
---
 .../arm64/hisilicon/hip08/uncore-l3c.json     | 37 +++++++++++++++++++
 tools/perf/pmu-events/jevents.c               |  1 +
 2 files changed, 38 insertions(+)
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json

diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json
new file mode 100644
index 000000000000..5bdc1a533d5e
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json
@@ -0,0 +1,37 @@
+[
+   {
+	    "EventCode": "0x00",
+	    "EventName": "uncore_hisi_sccl_l3c.rd_cpipe",
+	    "BriefDescription": "Total read accesses",
+	    "PublicDescription": "Total read accesses",
+	    "Unit": "hisi_sccl,l3c",
+   },
+   {
+	    "EventCode": "0x01",
+	    "EventName": "uncore_hisi_sccl_l3c.wr_cpipe",
+	    "BriefDescription": "Total write accesses",
+	    "PublicDescription": "Total write accesses",
+	    "Unit": "hisi_sccl,l3c",
+   },
+   {
+	    "EventCode": "0x02",
+	    "EventName": "uncore_hisi_sccl_l3c.rd_hit_cpipe",
+	    "BriefDescription": "Total read hits",
+	    "PublicDescription": "Total read hits",
+	    "Unit": "hisi_sccl,l3c",
+   },
+   {
+	    "EventCode": "0x03",
+	    "EventName": "uncore_hisi_sccl_l3c.wr_hit_cpipe",
+	    "BriefDescription": "Total write hits",
+	    "PublicDescription": "Total write hits",
+	    "Unit": "hisi_sccl,l3c",
+   },
+   {
+	    "EventCode": "0x04",
+	    "EventName": "uncore_hisi_sccl_l3c.victim_num",
+	    "BriefDescription": "l3c precharge commands",
+	    "PublicDescription": "l3c precharge commands",
+	    "Unit": "hisi_sccl,l3c",
+   },
+]
diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
index 909e53e3b5bd..7d241efd03de 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -238,6 +238,7 @@ static struct map {
 	{ "UPI LL", "uncore_upi" },
 	{ "hisi_sccl,ddrc", "hisi_sccl,ddrc" },
 	{ "hisi_sccl,hha", "hisi_sccl,hha" },
+	{ "hisi_sccl,l3c", "hisi_sccl,l3c" },
 	{}
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
