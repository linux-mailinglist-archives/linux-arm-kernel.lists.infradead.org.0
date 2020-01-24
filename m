Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB9C1489F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:39:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ojimWgeAAp0UT5A63Tm8OgWH0hDw7TsOao2JHRlc1pc=; b=mjdCqKJtvwHr8+
	dEt7wraiznIMB+RPTuy8JLFBgWJj6GriEFjd/ce2GUqtODV8QZwqx99IrgQqi8UUiF41gmuGedgCp
	SXUZ5+s2GPvZjuZNla6he4dKG9KtGRfm3/NlvRX3NrJEcCZG8i/0aj+ef/yutzTAAKdN7SLlJj3N/
	FjW5ihWRnKI1yP3qbLKBolOYOW7kvnrBssD0uhqpQoAS/YHK3YUaVHeuhMnpOWIVvUA8SIHzWnN1w
	5/tn2RGdkmdDxOd4ztnP9wV6f5quoM47rbK10xryRhPMRwyar/sODijUv6SnQUbXWauYQgboptRed
	rrjgrosO/hJWNybr8kig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv07D-0002EE-Tt; Fri, 24 Jan 2020 14:39:19 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv072-00028X-Id
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:39:10 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 388E5CE5092B4A3F2C15;
 Fri, 24 Jan 2020 22:38:58 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 24 Jan 2020 22:38:50 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>,
 <ak@linux.intel.com>
Subject: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for system
 PMUs
Date: Fri, 24 Jan 2020 22:34:58 +0800
Message-ID: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_063908_784359_D618E53A 
X-CRM114-Status: GOOD (  20.28  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: suzuki.poulose@arm.com, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 james.clark@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently event aliasing for only CPU and uncore PMUs is supported. In
fact, only uncore PMUs aliasing for when the uncore PMUs are fixed for a
CPU is supported, which may not always be the case for certain
architectures.

This series adds support for PMU event aliasing for system and other
uncore PMUs which are not fixed to a specific CPU.

For this, we introduce support for another per-arch mapfile, which maps a
particular system identifier to a set of system PMU events for that
system. This is much the same as what we do for CPU event aliasing.

To support this, we need to change how we match a PMU to a mapfile,
whether it should use a CPU or system mapfile. For this we do the
following:

- For CPU PMU, we always match for the event mapfile based on the CPUID.
  This has not changed.

- For an uncore or system PMU, we match first based on the SYSID (if set).
  If this fails, then we match on the CPUID.

  This works for x86, as x86 would not have any system mapfiles for uncore
  PMUs (and match on the CPUID).

Initial reference support is also added for ARM SMMUv3 PMCG (Performance
Monitor Event Group) PMU for HiSilicon hip08 platform with only a single
event so far - see driver in drivers/perf/arm_smmuv3_pmu.c for that driver.

Here is a sample output with this series:

root@ubuntu:/# ./perf list
  [...]

  smmuv3_pmcg_100020/config_cache_miss/              [Kernel PMU event]
  smmuv3_pmcg_100020/config_struct_access/           [Kernel PMU event]
  smmuv3_pmcg_100020/cycles/                         [Kernel PMU event]
  smmuv3_pmcg_100020/pcie_ats_trans_passed/          [Kernel PMU event]
  smmuv3_pmcg_100020/pcie_ats_trans_rq/              [Kernel PMU event]
  smmuv3_pmcg_100020/tlb_miss/                       [Kernel PMU event]
  smmuv3_pmcg_100020/trans_table_walk_access/        [Kernel PMU event]
  smmuv3_pmcg_100020/transaction/                    [Kernel PMU event]

  [...]

smmu v3 pmcg:
  smmuv3_pmcg.l1_tlb                                
       [SMMUv3 PMCG l1_tlb. Unit: smmuv3_pmcg]

  [...]

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

Issues with this series which need to be addressed (aware to me):

- It would be good to have a universal method to identify the system from
  sysfs. Nothing exists which I know about. There is DMI, but this is not
  always available (or has correct info). Maybe systems which want to
  support this feature will need a "soc" driver, and a
  /sys/devices/socX/machine file (which I used for testing this series -
  this driver is out of tree currently).

- Maybe it is ok, but for systems which match on the system identifier,
  uncore PMUs should be in the system mapfile, and, as such, match on the
  system identifier and not CPU identifier.

- We need a better way in jevents.c to give a direct mapping of PMU name
  aliases, i.e. for any PMU name not prefixed with "uncore_", we need to
  add this to table unit_to_pmu[]. Not scalable.

  Having said that, maybe the kernel can introduce some future PMU naming
  convention in future.

John Garry (7):
  perf jevents: Add support for an extra directory level
  perf vendor events arm64: Relocate hip08 core events
  perf jevents: Add support for a system events PMU
  perf pmu: Rename uncore symbols to include system pmus
  perf pmu: Support matching by sysid
  perf vendor events arm64: Relocate uncore events for hip08
  perf vendor events arm64: Add hip08 SMMUv3 PMCG IMP DEF events

 tools/perf/arch/arm64/util/arm-spe.c          |   2 +-
 tools/perf/pmu-events/README                  |  47 ++++++--
 .../hip08/{ => cpu}/core-imp-def.json         |   0
 .../hisilicon/hip08/sys/smmu-v3-pmcg.json     |   9 ++
 .../hip08/{ => sys}/uncore-ddrc.json          |   0
 .../hisilicon/hip08/{ => sys}/uncore-hha.json |   0
 .../hisilicon/hip08/{ => sys}/uncore-l3c.json |   0
 tools/perf/pmu-events/arch/arm64/mapfile.csv  |   2 +-
 .../pmu-events/arch/arm64/mapfile_sys.csv     |  14 +++
 tools/perf/pmu-events/jevents.c               |  65 ++++++++--
 tools/perf/pmu-events/pmu-events.h            |   1 +
 tools/perf/util/evsel.h                       |   2 +-
 tools/perf/util/parse-events.c                |  12 +-
 tools/perf/util/pmu.c                         | 111 +++++++++++++++---
 tools/perf/util/pmu.h                         |   2 +-
 15 files changed, 221 insertions(+), 46 deletions(-)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/core-imp-def.json (100%)
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-ddrc.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-hha.json (100%)
 rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-l3c.json (100%)
 create mode 100644 tools/perf/pmu-events/arch/arm64/mapfile_sys.csv

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
