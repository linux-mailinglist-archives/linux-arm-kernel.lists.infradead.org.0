Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FAC51ADB90
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xsMGQfdDR6+5QniscTbXPjcQ0ci5fmEe+VF6UmWA9kg=; b=Eoow2445ESw9st
	q450FIbEXImG9VBN790eCn6NvyRevyzqZbWN1ZlgMVQ6Bgx2/UlOyMvLsbMkBBmn6+Gs5zOWBVM2F
	f24KQoXkeTRUvZWd86ywgO824ztA1TmQOKDG3UKU5xwhWg22lz48fq6dq0EfopCtrTzLrZBWLHPY6
	tVG7I1ILQF7oesHdNXC8DDaQUtuMFpoVV14w68blgvM6cMPOvG1a5f0laeZFcNrK0J5R4nBjE5ymJ
	JH5z3iXy13L3605Pk7vJxkUpMDtUVQVvXjUfDedx2yJ9jrhzX11kzW4thrENKnm3jTg5XjQxkUKQz
	S20U3z8V0623ksBffWoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOYl-0004ts-HV; Fri, 17 Apr 2020 10:49:23 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOV3-0000mm-6U
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:36 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id C35CE454E8585F57A342;
 Fri, 17 Apr 2020 18:45:26 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:18 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 00/13] perf pmu-events: Support event aliasing for
 system PMUs
Date: Fri, 17 Apr 2020 18:41:11 +0800
Message-ID: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034533_815352_8BDD55D5 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: irogers@google.com, ak@linux.intel.com, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>, qiangqing.zhang@nxp.com,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently event aliasing for only CPU and uncore PMUs is supported. In
fact, only uncore PMUs aliasing is supported for when the uncore PMUs are
fixed for a CPU, which may not always be the case for certain
architectures.

This series adds support for PMU event aliasing for system and other
uncore PMUs which are not tied to a specific CPU. Or, more specifically,
CPUs which not tied to those PMUs.

For this, we introduce system event tables in generated pmu-events.c,
which contain a per-SoC table of events of all its system PMUs. Each
per-PMU event is matched by a "COMPAT" property.

When creating aliases for PMUs, we treat core/uncore* and system PMUs
differently:

- For CPU PMU, we always match for the event mapfile based on the CPUID.
   This has not changed.

- For an uncore or system PMU, we iterate through all the events in all
   the system PMU tables.

   Matches are based on the "COMPAT" property matching the PMU sysfs
   identifier contents, in /sys/bus/event_source/devices/<PMU>/identifier

* uncore PMUs may also be matched by system PMUs event support.

Initial reference support is also added for ARM SMMUv3 PMCG (Performance
Monitor Event Group) PMU for HiSilicon hip08 platform with only a single
event so far - see driver in drivers/perf/arm_smmuv3_pmu.c for that driver.

Here is a sample output with this series on Huawei D06CS board:

root@ubuntu:/# ./perf list
   [...]

smmu v3 pmcg:
   smmuv3_pmcg.config_cache_miss
        [Configuration cache miss caused by transaction or(ATS or
        non-ATS)translation request. Unit: smmuv3_pmcg]
   smmuv3_pmcg.config_struct_access
        [Configuration structure access. Unit: smmuv3_pmcg]
   smmuv3_pmcg.cycles
        [Clock cycles. Unit: smmuv3_pmcg]
   smmuv3_pmcg.l1_tlb
        [SMMUv3 PMCG L1 TABLE transation. Unit: smmuv3_pmcg]
   smmuv3_pmcg.pcie_ats_trans_passed
        [PCIe ATS Translated Transaction passed through SMMU. Unit: 
smmuv3_pmcg]
   smmuv3_pmcg.pcie_ats_trans_rq
        [PCIe ATS Translation Request received. Unit: smmuv3_pmcg]
   smmuv3_pmcg.tlb_miss
        [TLB miss caused by incomingtransaction or (ATS or non-ATS) 
translation
         request. Unit: smmuv3_pmcg]
   smmuv3_pmcg.trans_table_walk_access
        [Translation table walk access. Unit: smmuv3_pmcg]
   smmuv3_pmcg.transaction
        [Transaction. Unit: smmuv3_pmcg]


root@ubuntu:/# ./perf stat -v -e smmuv3_pmcg.l1_tlb sleep 1
Using CPUID 0x00000000480fd010
Using SYSID HIP08
-> smmuv3_pmcg_200100020/event=0x8a/
-> smmuv3_pmcg_200140020/event=0x8a/
-> smmuv3_pmcg_100020/event=0x8a/
-> smmuv3_pmcg_140020/event=0x8a/
-> smmuv3_pmcg_200148020/event=0x8a/
-> smmuv3_pmcg_148020/event=0x8a/
smmuv3_pmcg.l1_tlb: 0 1001221690 1001221690
smmuv3_pmcg.l1_tlb: 0 1001220090 1001220090
smmuv3_pmcg.l1_tlb: 101 1001219660 1001219660
smmuv3_pmcg.l1_tlb: 0 1001219010 1001219010
smmuv3_pmcg.l1_tlb: 0 1001218360 1001218360
smmuv3_pmcg.l1_tlb: 134 1001217850 1001217850

Performance counter stats for 'system wide':

                235      smmuv3_pmcg.l1_tlb 


        1.001263128 seconds time elapsed

root@ubuntu:/#

Support is also added for imx8mm DDR PMU.

Series is here:
https://github.com/hisilicon/kernel-dev/commits/private-topic-perf-5.6-sys-pmu-events-v2-upstream

Differences to v1:
- Stop using SoC id and use a per-PMU identifier instead
- Add metric group sys events support
   - This is a bit hacky
- Add imx8mm DDR Perf support
- Add fix for parse events sel
	- without it, I get this spewed for metric event:

	assertion failed at util/parse-events.c:1637

Patches still need to be sent to support per-PMU identifer sysfs file
in the kernel.

Thanks,
John

Joakim Zhang (1):
  perf vendor events: Add JSON metrics for imx8mm DDR Perf

John Garry (12):
  perf parse-events: Fix comparison of evsel and leader pmu name
  perf jevents: Add support for an extra directory level
  perf jevents: Add support for system events tables
  perf vendor events arm64: Relocate hip08 events
  perf vendor events arm64: Add Architected events smmuv3-pmcg.json
  perf vendor events arm64: Add hip08 SMMUv3 PMCG events
  perf pmu: Add pmu_id()
  perf pmu: Add pmu_add_sys_aliases()
  perf metricgroup: Split up metricgroup__add_metric()
  perf metricgroup: Split up metricgroup__print()
  perf metricgroup: Support printing metric groups for system PMUs
  perf metricgroup: Support adding metrics for system PMUs

 .../arch/arm64/freescale/imx8mm/sys/ddrc.json      |  39 +++
 .../arch/arm64/freescale/imx8mm/sys/metrics.json   |  18 ++
 .../hisilicon/hip08/{ => cpu}/core-imp-def.json    |   0
 .../hisilicon/hip08/{ => cpu}/uncore-ddrc.json     |   0
 .../hisilicon/hip08/{ => cpu}/uncore-hha.json      |   0
 .../hisilicon/hip08/{ => cpu}/uncore-l3c.json      |   0
 .../arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json    |  42 +++
 tools/perf/pmu-events/arch/arm64/mapfile.csv       |   2 +-
 tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json  |  58 ++++
 tools/perf/pmu-events/jevents.c                    | 152 ++++++++---
 tools/perf/pmu-events/jevents.h                    |  11 +-
 tools/perf/pmu-events/pmu-events.h                 |   6 +
 tools/perf/util/metricgroup.c                      | 291 ++++++++++++++-------
 tools/perf/util/parse-events.c                     |   2 +-
 tools/perf/util/pmu.c                              | 115 ++++++++
 tools/perf/util/pmu.h                              |   6 +
 16 files changed, 612 insertions(+), 130 deletions(-)
 create mode 100644 tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/ddrc.json
 create mode 100644 tools/perf/pmu-events/arch/arm64/freescale/imx8mm/sys/metrics.json
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/core-imp-def.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-ddrc.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-hha.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/uncore-l3c.json (100%)
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json
 create mode 100644 tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
