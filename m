Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77AA4602D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:10:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pSudk2G6SCB5dWlnlt6K2twMqeFmyXhOQOiUI50Mys0=; b=kekoFakcxYznNN
	AMBiiYkWn8VtudVP+5p8IK1dhnRIoTIpEgBL54ffIWfEHSahH0mGOOMev3jlgNJxt/8eKJmxAiQg7
	PpCWtO7o/QWdN5FmVok3Iw2w1jH0YDIJZui9xe2gKBjBB96Nu8rOYgz8Jz6RlhhTObf+gLbRXOBuM
	dNxtZ5Ox4QZ9W/Uz0+8Yck9yPcPffSnxqvNagrkEzsxFeXAYxa2Elohy+ia1qEShDsOLvFZYHfgvt
	aKhwSnFaqVi8R7pcgm5KuRBjx7O25x/jf260BSrwUOC75FrM4ShlecwUXH6UONRWDjSL7EwVTE62F
	D9k2bXXgUF+PSI/FW8qA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbmui-0005k0-LV; Fri, 14 Jun 2019 14:10:44 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbmte-0003hz-0o
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 14:09:41 +0000
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id CF56D180660588AC652B;
 Fri, 14 Jun 2019 22:09:29 +0800 (CST)
Received: from localhost.localdomain (10.67.212.75) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.439.0; Fri, 14 Jun 2019 22:09:23 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <alexander.shishkin@linux.intel.com>, <jolsa@redhat.com>,
 <namhyung@kernel.org>, <tmricht@linux.ibm.com>, <brueckner@linux.ibm.com>,
 <kan.liang@linux.intel.com>, <ben@decadent.org.uk>,
 <mathieu.poirier@linaro.org>, <mark.rutland@arm.com>, <will.deacon@arm.com>
Subject: [PATCH v2 3/5] perf jevents: Add support for Hisi hip08 DDRC PMU
 aliasing
Date: Fri, 14 Jun 2019 22:08:01 +0800
Message-ID: <1560521283-73314-4-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.67.212.75]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_070938_322300_F10AB136 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: zhangshaokun@hisilicon.com, John
 Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linuxarm@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for Hisi hip08 DDRC PMU event aliasing. We can now do
something like this:

$perf list

[snip]

uncore ddrc:
  uncore_hisi_ddrc.act_cmd
       [DDRC active commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.flux_rcmd
       [DDRC read commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.flux_wcmd
       [DDRC write commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.flux_wr
       [DDRC precharge commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.rnk_chg
       [DDRC rank commands. Unit: hisi_sccl,ddrc]
  uncore_hisi_ddrc.rw_chg
       [DDRC read and write changes. Unit: hisi_sccl,ddrc]

$sudo ./perf stat -e uncore_hisi_ddrc.flux_rcmd --no-merge sleep 1

Performance counter stats for 'system wide':

                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl1_ddrc0]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl3_ddrc1]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl5_ddrc2]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl7_ddrc3]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl5_ddrc0]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl7_ddrc1]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl1_ddrc3]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl1_ddrc1]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl3_ddrc2]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl5_ddrc3]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl3_ddrc0]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl5_ddrc1]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl7_ddrc2]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl7_ddrc0]
            20,421      uncore_hisi_ddrc.flux_rcmd [hisi_sccl1_ddrc2]
                 0      uncore_hisi_ddrc.flux_rcmd [hisi_sccl3_ddrc3]

       1.001559011 seconds time elapsed


The kernel driver is in drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c

Signed-off-by: John Garry <john.garry@huawei.com>
---
 .../arm64/hisilicon/hip08/uncore-ddrc.json    | 44 +++++++++++++++++++
 tools/perf/pmu-events/jevents.c               |  1 +
 2 files changed, 45 insertions(+)
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json

diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json
new file mode 100644
index 000000000000..0d1556fcdffe
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json
@@ -0,0 +1,44 @@
+[
+   {
+	    "EventCode": "0x02",
+	    "EventName": "uncore_hisi_ddrc.flux_wcmd",
+	    "BriefDescription": "DDRC write commands",
+	    "PublicDescription": "DDRC write commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x03",
+	    "EventName": "uncore_hisi_ddrc.flux_rcmd",
+	    "BriefDescription": "DDRC read commands",
+	    "PublicDescription": "DDRC read commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x04",
+	    "EventName": "uncore_hisi_ddrc.flux_wr",
+	    "BriefDescription": "DDRC precharge commands",
+	    "PublicDescription": "DDRC precharge commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x05",
+	    "EventName": "uncore_hisi_ddrc.act_cmd",
+	    "BriefDescription": "DDRC active commands",
+	    "PublicDescription": "DDRC active commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x06",
+	    "EventName": "uncore_hisi_ddrc.rnk_chg",
+	    "BriefDescription": "DDRC rank commands",
+	    "PublicDescription": "DDRC rank commands",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+   {
+	    "EventCode": "0x07",
+	    "EventName": "uncore_hisi_ddrc.rw_chg",
+	    "BriefDescription": "DDRC read and write changes",
+	    "PublicDescription": "DDRC read and write changes",
+	    "Unit": "hisi_sccl,ddrc",
+   },
+]
diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
index 58f77fd0f59f..cf9a60333554 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -236,6 +236,7 @@ static struct map {
 	{ "CPU-M-CF", "cpum_cf" },
 	{ "CPU-M-SF", "cpum_sf" },
 	{ "UPI LL", "uncore_upi" },
+	{ "hisi_sccl,ddrc", "hisi_sccl,ddrc" },
 	{}
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
