Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7492C1D6F4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 05:19:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YmLmq/VbxrdNXBhGvzbuxi6Q0iwr0KrC8sYgsoiLBx8=; b=bHOlE2W47uSEiB
	beUT3NmcnYLtVyeoR2nFWpJA6Yob1nj41m34r79eaWRvvk+j1JIJyFIyXXIdIRaQcMeWz8oCaHM1a
	HZHeRsIl/8vO06jHvUHOfSSB+0MJxbIxml/7P/m2zulSI60oD+z6VDN1G/N6Ig+aPKgiAO5BGFb7I
	B39C4LhaWHvBCsrYU1ZfPGTEZKgWPr1HcO2imPVaCZWTKSE/JpMcBLh0uhRnRkmNRHt9sP5Nu6JNc
	j9YYmeccRhCYddTLYGe/UblUOfYPZm9s7dnT2AAUbc56GjUJVFck6cfvyMGDFCjZsX0Z83f8ObkJC
	MHIYLbnp8n/ptRQRIkqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaWJ8-0000SM-2t; Mon, 18 May 2020 03:19:14 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaWIz-0000Ro-UX
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 03:19:08 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id E119D93A7BDD3371CF9B;
 Mon, 18 May 2020 11:18:48 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.487.0; Mon, 18 May 2020
 11:18:46 +0800
Subject: Re: [PATCH v2 1/3] arm64: perf: Add support caps in sysfs
To: <linux-arm-kernel@lists.infradead.org>
References: <1588652200-12341-1-git-send-email-zhangshaokun@hisilicon.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <2ae520f2-ea77-5400-38f0-ae8d73f99a4b@hisilicon.com>
Date: Mon, 18 May 2020 11:18:45 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <1588652200-12341-1-git-send-email-zhangshaokun@hisilicon.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_201906_319775_874C7F4E 
X-CRM114-Status: GOOD (  20.42  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will/Mark,

Any comments on v2?

Thanks,
Shaokun

On 2020/5/5 12:16, Shaokun Zhang wrote:
> ARMv8.4-PMU introduces the PMMIR_EL1 registers and some new PMU events,
> like STALL_SLOT etc, are related to it. Let's add a caps directory to
> /sys/bus/event_source/devices/armv8_pmuv3_0/ and support slots from
> PMMIR_EL1 registers in this entry. The user programs can get the slots
> from sysfs directly.
> 
> Cc: Catalin Marinas <catalin.marinas@arm.com> 
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
> ---
> Hi Will,
> 
> I send another patch[3/3] arm64: perf: Correct the event index in sysfs
> meanwhile because it is dependent on patch2.
> 
> ChangeLog in v2:
>     * Add caps entry in sysfs
>     * Fix the PMU events typos
>     * Add one new patch to correct event ID in sysfs
> 
>  arch/arm64/include/asm/sysreg.h |  2 +
>  arch/arm64/kernel/perf_event.c  | 87 +++++++++++++++++++++++++++++++----------
>  include/linux/perf/arm_pmu.h    |  1 +
>  3 files changed, 69 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/sysreg.h b/arch/arm64/include/asm/sysreg.h
> index c4ac0ac25a00..aa14083de466 100644
> --- a/arch/arm64/include/asm/sysreg.h
> +++ b/arch/arm64/include/asm/sysreg.h
> @@ -314,6 +314,8 @@
>  #define SYS_PMINTENSET_EL1		sys_reg(3, 0, 9, 14, 1)
>  #define SYS_PMINTENCLR_EL1		sys_reg(3, 0, 9, 14, 2)
>  
> +#define SYS_PMMIR_EL1			sys_reg(3, 0, 9, 14, 6)
> +
>  #define SYS_MAIR_EL1			sys_reg(3, 0, 10, 2, 0)
>  #define SYS_AMAIR_EL1			sys_reg(3, 0, 10, 3, 0)
>  
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index 4d7879484cec..5f2ac87e4b91 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -277,6 +277,51 @@ static struct attribute_group armv8_pmuv3_format_attr_group = {
>  	.attrs = armv8_pmuv3_format_attrs,
>  };
>  
> +static inline int armv8pmu_get_pmu_version(void)
> +{
> +	int pmuver;
> +	u64 dfr0;
> +
> +	dfr0 = read_sysreg(id_aa64dfr0_el1);
> +	pmuver = cpuid_feature_extract_unsigned_field(dfr0,
> +			ID_AA64DFR0_PMUVER_SHIFT);
> +
> +	return pmuver;
> +}
> +
> +static umode_t
> +armv8pmu_caps_attr_is_visible(struct kobject *kobj, struct attribute *attr,
> +			      int unused)
> +{
> +	int pmuver = armv8pmu_get_pmu_version();
> +
> +	if (pmuver >= ID_AA64DFR0_PMUVER_8_4)
> +		return attr->mode;
> +
> +	return 0;
> +}
> +
> +static ssize_t slots_show(struct device *dev, struct device_attribute *attr,
> +			  char *buf)
> +{
> +	int slots = read_sysreg_s(SYS_PMMIR_EL1) & 0xFF;
> +
> +	return snprintf(buf, PAGE_SIZE, "%d\n", slots);
> +}
> +
> +static DEVICE_ATTR_RO(slots);
> +
> +static struct attribute *armv8_pmuv3_caps_attrs[] = {
> +	&dev_attr_slots.attr,
> +	NULL,
> +};
> +
> +static struct attribute_group armv8_pmuv3_caps_attr_group = {
> +	.name = "caps",
> +	.attrs = armv8_pmuv3_caps_attrs,
> +	.is_visible = armv8pmu_caps_attr_is_visible,
> +};
> +
>  /*
>   * Perf Events' indices
>   */
> @@ -940,14 +985,11 @@ static void __armv8pmu_probe_pmu(void *info)
>  {
>  	struct armv8pmu_probe_info *probe = info;
>  	struct arm_pmu *cpu_pmu = probe->pmu;
> -	u64 dfr0;
>  	u64 pmceid_raw[2];
>  	u32 pmceid[2];
>  	int pmuver;
>  
> -	dfr0 = read_sysreg(id_aa64dfr0_el1);
> -	pmuver = cpuid_feature_extract_unsigned_field(dfr0,
> -			ID_AA64DFR0_PMUVER_SHIFT);
> +	pmuver = armv8pmu_get_pmu_version();
>  	if (pmuver == 0xf || pmuver == 0)
>  		return;
>  
> @@ -994,7 +1036,8 @@ static int armv8pmu_probe_pmu(struct arm_pmu *cpu_pmu)
>  static int armv8_pmu_init(struct arm_pmu *cpu_pmu, char *name,
>  			  int (*map_event)(struct perf_event *event),
>  			  const struct attribute_group *events,
> -			  const struct attribute_group *format)
> +			  const struct attribute_group *format,
> +			  const struct attribute_group *caps)
>  {
>  	int ret = armv8pmu_probe_pmu(cpu_pmu);
>  	if (ret)
> @@ -1019,6 +1062,8 @@ static int armv8_pmu_init(struct arm_pmu *cpu_pmu, char *name,
>  			events : &armv8_pmuv3_events_attr_group;
>  	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_FORMATS] = format ?
>  			format : &armv8_pmuv3_format_attr_group;
> +	cpu_pmu->attr_groups[ARMPMU_ATTR_GROUP_CAPS] = caps ?
> +			caps : &armv8_pmuv3_caps_attr_group;
>  
>  	return 0;
>  }
> @@ -1026,97 +1071,97 @@ static int armv8_pmu_init(struct arm_pmu *cpu_pmu, char *name,
>  static int armv8_pmuv3_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_pmuv3",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a34_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a34",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a35_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a35",
> -			      armv8_a53_map_event, NULL, NULL);
> +			      armv8_a53_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a53_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a53",
> -			      armv8_a53_map_event, NULL, NULL);
> +			      armv8_a53_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a55_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a55",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a57_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a57",
> -			      armv8_a57_map_event, NULL, NULL);
> +			      armv8_a57_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a65_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a65",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a72_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a72",
> -			      armv8_a57_map_event, NULL, NULL);
> +			      armv8_a57_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a73_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a73",
> -			      armv8_a73_map_event, NULL, NULL);
> +			      armv8_a73_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a75_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a75",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a76_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a76",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_a77_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a77",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_e1_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_neoverse_e1",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_n1_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_neoverse_n1",
> -			      armv8_pmuv3_map_event, NULL, NULL);
> +			      armv8_pmuv3_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_thunder_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_cavium_thunder",
> -			      armv8_thunder_map_event, NULL, NULL);
> +			      armv8_thunder_map_event, NULL, NULL, NULL);
>  }
>  
>  static int armv8_vulcan_pmu_init(struct arm_pmu *cpu_pmu)
>  {
>  	return armv8_pmu_init(cpu_pmu, "armv8_brcm_vulcan",
> -			      armv8_vulcan_map_event, NULL, NULL);
> +			      armv8_vulcan_map_event, NULL, NULL, NULL);
>  }
>  
>  static const struct of_device_id armv8_pmu_of_device_ids[] = {
> diff --git a/include/linux/perf/arm_pmu.h b/include/linux/perf/arm_pmu.h
> index 5b616dde9a4c..1e129b57d51a 100644
> --- a/include/linux/perf/arm_pmu.h
> +++ b/include/linux/perf/arm_pmu.h
> @@ -73,6 +73,7 @@ enum armpmu_attr_groups {
>  	ARMPMU_ATTR_GROUP_COMMON,
>  	ARMPMU_ATTR_GROUP_EVENTS,
>  	ARMPMU_ATTR_GROUP_FORMATS,
> +	ARMPMU_ATTR_GROUP_CAPS,
>  	ARMPMU_NR_ATTR_GROUPS
>  };
>  
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
