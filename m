Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4513C159361
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 16:41:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=aPsgvqPP78/7gsz0GMv1Q3NW/+afoSfuPp+RF4fSw4g=; b=AEeGUzos2ubY2Jw5NEHBwKumB
	QVBX4xeMyf6Lma0e8fPr+09eSow3EUbEXor8S0U0iFbbTsrAoLKbfTGAisOBRcdPGc5nA9/zAgHNV
	jiEe/StTOBmeWyAMjpUZOtwOORWA9OOnMv62qehX1iXtUxZiQmyYgBiVny8O+wHFROeTuBBvpF0uM
	5oKJTsEB+f65UmzEKPLjWicRi1xzWxlobeHKd7adqUQvybgec5dXOnriVbPHIok+Ogg5E0ycHNj32
	F5R5Da81ekSBenXF3Rj9uQilDlmwyhoPWKbx7CbIGSHCWq0MKd+lx+1IzCYvoFYbZiE8Ll00ayW1E
	RvsZHqRLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Xf8-00007j-U3; Tue, 11 Feb 2020 15:41:22 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Xev-00006m-AE
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 15:41:16 +0000
Received: from LHREML713-CAH.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id 1D215EEB05FA2CFF9063;
 Tue, 11 Feb 2020 15:41:08 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 LHREML713-CAH.china.huawei.com (10.201.108.36) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 11 Feb 2020 15:41:07 +0000
Received: from [127.0.0.1] (10.202.226.45) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 11 Feb
 2020 15:41:07 +0000
Subject: Re: [PATCH RFC 0/7] perf pmu-events: Support event aliasing for
 system PMUs
To: James Clark <james.clark@arm.com>, "peterz@infradead.org"
 <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "acme@kernel.org" <acme@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>, "will@kernel.org"
 <will@kernel.org>, "ak@linux.intel.com" <ak@linux.intel.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <91a62136-219a-766a-12e4-be2b2cc8ae54@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <9275c0a1-3257-494b-f777-8d0f85da5726@huawei.com>
Date: Tue, 11 Feb 2020 15:41:06 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <91a62136-219a-766a-12e4-be2b2cc8ae54@arm.com>
Content-Language: en-US
X-Originating-IP: [10.202.226.45]
X-ClientProxiedBy: lhreml720-chm.china.huawei.com (10.201.108.71) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_074110_865300_0D313BA5 
X-CRM114-Status: GOOD (  29.15  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: "suzuki.poulose@arm.com" <suzuki.poulose@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linuxarm <linuxarm@huawei.com>, Zhangshaokun <zhangshaokun@hisilicon.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/02/2020 15:24, James Clark wrote:
> Hi John,

Hi James,

> 
> I tested this on an Arm N1 board and see the same list of CPU events from the JSONs
> picked up so it looks ok from that point of view.

ok, good.

So does this platform have other PMUs (with a kernel driver) which we 
may want to add aliases for, like uncore PMUs, SMMUv3 PMCG, etc?

Thanks,
John

> 
> James
> 
> On 1/24/20 2:34 PM, John Garry wrote:
>> Currently event aliasing for only CPU and uncore PMUs is supported. In
>> fact, only uncore PMUs aliasing for when the uncore PMUs are fixed for a
>> CPU is supported, which may not always be the case for certain
>> architectures.
>>
>> This series adds support for PMU event aliasing for system and other
>> uncore PMUs which are not fixed to a specific CPU.
>>
>> For this, we introduce support for another per-arch mapfile, which maps a
>> particular system identifier to a set of system PMU events for that
>> system. This is much the same as what we do for CPU event aliasing.
>>
>> To support this, we need to change how we match a PMU to a mapfile,
>> whether it should use a CPU or system mapfile. For this we do the
>> following:
>>
>> - For CPU PMU, we always match for the event mapfile based on the CPUID.
>>    This has not changed.
>>
>> - For an uncore or system PMU, we match first based on the SYSID (if set).
>>    If this fails, then we match on the CPUID.
>>
>>    This works for x86, as x86 would not have any system mapfiles for uncore
>>    PMUs (and match on the CPUID).
>>
>> Initial reference support is also added for ARM SMMUv3 PMCG (Performance
>> Monitor Event Group) PMU for HiSilicon hip08 platform with only a single
>> event so far - see driver in drivers/perf/arm_smmuv3_pmu.c for that driver.
>>
>> Here is a sample output with this series:
>>
>> root@ubuntu:/# ./perf list
>>    [...]
>>
>>    smmuv3_pmcg_100020/config_cache_miss/              [Kernel PMU event]
>>    smmuv3_pmcg_100020/config_struct_access/           [Kernel PMU event]
>>    smmuv3_pmcg_100020/cycles/                         [Kernel PMU event]
>>    smmuv3_pmcg_100020/pcie_ats_trans_passed/          [Kernel PMU event]
>>    smmuv3_pmcg_100020/pcie_ats_trans_rq/              [Kernel PMU event]
>>    smmuv3_pmcg_100020/tlb_miss/                       [Kernel PMU event]
>>    smmuv3_pmcg_100020/trans_table_walk_access/        [Kernel PMU event]
>>    smmuv3_pmcg_100020/transaction/                    [Kernel PMU event]
>>
>>    [...]
>>
>> smmu v3 pmcg:
>>    smmuv3_pmcg.l1_tlb
>>         [SMMUv3 PMCG l1_tlb. Unit: smmuv3_pmcg]
>>
>>    [...]
>>
>> root@ubuntu:/# ./perf stat -v -e smmuv3_pmcg.l1_tlb sleep 1
>> Using CPUID 0x00000000480fd010
>> Using SYSID HIP08
>>   -> smmuv3_pmcg_200100020/event=0x8a/
>>   -> smmuv3_pmcg_200140020/event=0x8a/
>>   -> smmuv3_pmcg_100020/event=0x8a/
>>   -> smmuv3_pmcg_140020/event=0x8a/
>>   -> smmuv3_pmcg_200148020/event=0x8a/
>>   -> smmuv3_pmcg_148020/event=0x8a/
>> smmuv3_pmcg.l1_tlb: 0 1001221690 1001221690
>> smmuv3_pmcg.l1_tlb: 0 1001220090 1001220090
>> smmuv3_pmcg.l1_tlb: 101 1001219660 1001219660
>> smmuv3_pmcg.l1_tlb: 0 1001219010 1001219010
>> smmuv3_pmcg.l1_tlb: 0 1001218360 1001218360
>> smmuv3_pmcg.l1_tlb: 134 1001217850 1001217850
>>
>>   Performance counter stats for 'system wide':
>>
>>                 235      smmuv3_pmcg.l1_tlb
>>
>>         1.001263128 seconds time elapsed
>>
>> root@ubuntu:/#
>>
>> Issues with this series which need to be addressed (aware to me):
>>
>> - It would be good to have a universal method to identify the system from
>>    sysfs. Nothing exists which I know about. There is DMI, but this is not
>>    always available (or has correct info). Maybe systems which want to
>>    support this feature will need a "soc" driver, and a
>>    /sys/devices/socX/machine file (which I used for testing this series -
>>    this driver is out of tree currently).
>>
>> - Maybe it is ok, but for systems which match on the system identifier,
>>    uncore PMUs should be in the system mapfile, and, as such, match on the
>>    system identifier and not CPU identifier.
>>
>> - We need a better way in jevents.c to give a direct mapping of PMU name
>>    aliases, i.e. for any PMU name not prefixed with "uncore_", we need to
>>    add this to table unit_to_pmu[]. Not scalable.
>>
>>    Having said that, maybe the kernel can introduce some future PMU naming
>>    convention in future.
>>
>> John Garry (7):
>>    perf jevents: Add support for an extra directory level
>>    perf vendor events arm64: Relocate hip08 core events
>>    perf jevents: Add support for a system events PMU
>>    perf pmu: Rename uncore symbols to include system pmus
>>    perf pmu: Support matching by sysid
>>    perf vendor events arm64: Relocate uncore events for hip08
>>    perf vendor events arm64: Add hip08 SMMUv3 PMCG IMP DEF events
>>
>>   tools/perf/arch/arm64/util/arm-spe.c          |   2 +-
>>   tools/perf/pmu-events/README                  |  47 ++++++--
>>   .../hip08/{ => cpu}/core-imp-def.json         |   0
>>   .../hisilicon/hip08/sys/smmu-v3-pmcg.json     |   9 ++
>>   .../hip08/{ => sys}/uncore-ddrc.json          |   0
>>   .../hisilicon/hip08/{ => sys}/uncore-hha.json |   0
>>   .../hisilicon/hip08/{ => sys}/uncore-l3c.json |   0
>>   tools/perf/pmu-events/arch/arm64/mapfile.csv  |   2 +-
>>   .../pmu-events/arch/arm64/mapfile_sys.csv     |  14 +++
>>   tools/perf/pmu-events/jevents.c               |  65 ++++++++--
>>   tools/perf/pmu-events/pmu-events.h            |   1 +
>>   tools/perf/util/evsel.h                       |   2 +-
>>   tools/perf/util/parse-events.c                |  12 +-
>>   tools/perf/util/pmu.c                         | 111 +++++++++++++++---
>>   tools/perf/util/pmu.h                         |   2 +-
>>   15 files changed, 221 insertions(+), 46 deletions(-)
>>   rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => cpu}/core-imp-def.json (100%)
>>   create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json
>>   rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-ddrc.json (100%)
>>   rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-hha.json (100%)
>>   rename tools/perf/pmu-events/arch/arm64/hisilicon/hip08/{ => sys}/uncore-l3c.json (100%)
>>   create mode 100644 tools/perf/pmu-events/arch/arm64/mapfile_sys.csv
>>
> IMPORTANT NOTICE: The contents of this email and any attachments are confidential and may also be privileged. If you are not the intended recipient, please notify the sender immediately and do not disclose the contents to any other person, use it for any purpose, or store or copy the information in any medium. Thank you.
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
