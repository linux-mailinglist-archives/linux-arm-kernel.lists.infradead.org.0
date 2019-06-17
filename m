Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 395AA47D0E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:29:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FWUBqxczUkgpVpmuH+SlucNizvqbJVZsEGLYMb4Jy50=; b=PIWJ+T1JYrS8ch
	5lxUZatDbqHQ44Ec6hjNbbJtJU3LFC2dRs4jrpTb3qusx4rT6Ua/iNTND6uOhahZ1r/THqQzSLWRl
	IDNW0bWyoeRQM7uUcjQ1PfZ6WXGZJlWLV+1+AudoLeexIBbTuEHErZKfz9QfsGRnsvL4HDpJ4fcly
	hMJcTODondQrqpMbhZtEc4ZRrAtMeSFFVOCsVlxY+rcrPT/yqUS7A1nHFPtFbNhTBQpHLgNGKW0WO
	rjf3piuKCj6YOwJcXZEog0xicMuvIhmBgN9tCX4n2MzdqbTLklGCsogwE2gPLQXf+qfOYNbFfN/ls
	WJ3SdEyYFtk/EDl8TKwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcn1G-000801-Hj; Mon, 17 Jun 2019 08:29:38 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcn0v-0007wV-TG
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:29:20 +0000
Received: from lhreml708-cah.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id DBE85C73107882647390;
 Mon, 17 Jun 2019 09:29:07 +0100 (IST)
Received: from LHREML524-MBB.china.huawei.com ([169.254.3.166]) by
 lhreml708-cah.china.huawei.com ([10.201.108.49]) with mapi id 14.03.0415.000; 
 Mon, 17 Jun 2019 09:28:59 +0100
From: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
To: James Morse <james.morse@arm.com>, "linux-acpi@vger.kernel.org"
 <linux-acpi@vger.kernel.org>
Subject: RE: [RFC PATCH 2/2] ACPI / PPTT: cacheinfo: Label caches based on
 fw_token
Thread-Topic: [RFC PATCH 2/2] ACPI / PPTT: cacheinfo: Label caches based on
 fw_token
Thread-Index: AQHUXLybbAwU5PYcZUeq+QuSzGcj/KahEABQ
Date: Mon, 17 Jun 2019 08:28:59 +0000
Message-ID: <5FC3163CFD30C246ABAA99954A238FA83F295ABF@lhreml524-mbb.china.huawei.com>
References: <20181005150235.13846-1-james.morse@arm.com>
 <20181005150235.13846-3-james.morse@arm.com>
In-Reply-To: <20181005150235.13846-3-james.morse@arm.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.202.227.237]
MIME-Version: 1.0
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_012918_246643_53B7BEC1 
X-CRM114-Status: GOOD (  23.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
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
Cc: Vijaya Kumar K <vkilari@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, Jeremy Linton <jeremy.linton@arm.com>,
 Tomasz Nowicki <Tomasz.Nowicki@cavium.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep
 Holla <sudeep.holla@arm.com>, "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 Richard Ruigrok <rruigrok@qti.qualcomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

> -----Original Message-----
> From: linux-arm-kernel [mailto:linux-arm-kernel-bounces@lists.infradead.org]
> On Behalf Of James Morse
> Sent: 05 October 2018 16:03
> To: linux-acpi@vger.kernel.org
> Cc: Vijaya Kumar K <vkilari@codeaurora.org>; Lorenzo Pieralisi
> <lorenzo.pieralisi@arm.com>; Jeffrey Hugo <jhugo@codeaurora.org>; Sudeep
> Holla <sudeep.holla@arm.com>; Jeremy Linton <jeremy.linton@arm.com>;
> Tomasz Nowicki <Tomasz.Nowicki@cavium.com>; James Morse
> <james.morse@arm.com>; Richard Ruigrok <rruigrok@qti.qualcomm.com>;
> Guohanjun (Hanjun Guo) <guohanjun@huawei.com>; wangxiongfeng (C)
> <wangxiongfeng2@huawei.com>; linux-arm-kernel@lists.infradead.org
> Subject: [RFC PATCH 2/2] ACPI / PPTT: cacheinfo: Label caches based on
> fw_token
> 
> The resctrl ABI requires caches to have a unique id. This number must be
> unique across all caches at this level, but doesn't need to be contiguous. (there
> may be gaps, it may not start at 0).
> See Documentation/x86/intel_rdt_ui.txt::Cache IDs
> 
> We want a value that is the same over reboots, and should be the same on
> identical hardware, even if the PPTT is generated in a different order. The
> hardware doesn't give us any indication of which caches are shared, so this
> information must come from firmware tables.
> 
> Starting with a cacheinfo's fw_token, we walk the table to find all CPUs that
> share this cpu_node (and thus cache), and take the lowest physical id to use as
> the id for the cache. On arm64 this value corresponds to the MPIDR.
> 
> This is only done for unified caches, as instruction/data caches would generate
> the same id using this scheme.
> 
> Signed-off-by: James Morse <james.morse@arm.com>
> ---
>  arch/arm64/include/asm/acpi.h |  6 +++
>  drivers/acpi/pptt.c           | 81
> +++++++++++++++++++++++++++++++++++
>  2 files changed, 87 insertions(+)
> 
> diff --git a/arch/arm64/include/asm/acpi.h b/arch/arm64/include/asm/acpi.h
> index 709208dfdc8b..16b9b3d771a8 100644
> --- a/arch/arm64/include/asm/acpi.h
> +++ b/arch/arm64/include/asm/acpi.h
> @@ -53,6 +53,12 @@ static inline void __iomem
> *acpi_os_ioremap(acpi_physical_address phys,  typedef u64 phys_cpuid_t;
> #define PHYS_CPUID_INVALID INVALID_HWID
> 
> +/* Shift the relevant bits out of u64 phys_cpuid_t into a u32 */
> +#define ARCH_PHYSID_TO_U32(x) (u32)(MPIDR_AFFINITY_LEVEL(x, 0)
> 	|\
> +			MPIDR_AFFINITY_LEVEL(x, 1) << MPIDR_LEVEL_BITS  |\
> +			MPIDR_AFFINITY_LEVEL(x, 2) << 2*MPIDR_LEVEL_BITS|\
> +			MPIDR_AFFINITY_LEVEL(x, 3) << 3*MPIDR_LEVEL_BITS)
> +
>  #define acpi_strict 1	/* No out-of-spec workarounds on ARM64 */
>  extern int acpi_disabled;
>  extern int acpi_noirq;
> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c index
> d1e26cb599bf..9478f8c28158 100644
> --- a/drivers/acpi/pptt.c
> +++ b/drivers/acpi/pptt.c
> @@ -341,6 +341,84 @@ static struct acpi_pptt_cache
> *acpi_find_cache_node(struct acpi_table_header *ta
>  /* total number of attributes checked by the properties code */  #define
> PPTT_CHECKED_ATTRIBUTES 4
> 
> +/**
> + * acpi_pptt_min_physid_from_cpu_node() - Recursivly find @min_physid
> +for all
> + * leaf CPUs below @cpu_node.
> + * @table_hdr:	Pointer to the head of the PPTT table
> + * @cpu_node:	The point in the toplogy to start the walk
> + * @min_physid:	The min_physid to update with leaf CPUs.
> + */
> +void acpi_pptt_min_physid_from_cpu_node(struct acpi_table_header
> *table_hdr,
> +					struct acpi_pptt_processor *cpu_node,
> +					phys_cpuid_t *min_physid)
> +{
> +	bool leaf = true;
> +	u32 acpi_processor_id;
> +	phys_cpuid_t cpu_node_phys_id;
> +	struct acpi_subtable_header *iter;
> +	struct acpi_pptt_processor *iter_node;
> +	u32 target_node = ACPI_PTR_DIFF(cpu_node, table_hdr);
> +	u32 proc_sz = sizeof(struct acpi_pptt_processor *);
> +	unsigned long table_end = (unsigned long)table_hdr +
> +table_hdr->length;
> +
> +	/*
> +	 * Walk the PPTT, looking for nodes that reference cpu_node
> +	 * as parent.
> +	 */
> +	iter = ACPI_ADD_PTR(struct acpi_subtable_header, table_hdr,
> +			     sizeof(struct acpi_table_pptt));
> +
> +	while ((unsigned long)iter + proc_sz < table_end) {
> +		iter_node = (struct acpi_pptt_processor *)iter;
> +
> +		if (iter->type == ACPI_PPTT_TYPE_PROCESSOR &&
> +		    iter_node->parent == target_node) {
> +			leaf = false;
> +			acpi_pptt_min_physid_from_cpu_node(table_hdr, iter_node,
> +							   min_physid);
> +		}
> +
> +		if (iter->length == 0)
> +			return;
> +		iter = ACPI_ADD_PTR(struct acpi_subtable_header, iter,
> +				    iter->length);
> +	}
> +
> +	if (leaf && cpu_node->flags & ACPI_PPTT_ACPI_PROCESSOR_ID_VALID) {
> +		acpi_processor_id = cpu_node->acpi_processor_id;
> +		cpu_node_phys_id = acpi_id_to_phys_cpuid(acpi_processor_id);
> +		*min_physid = min(*min_physid, cpu_node_phys_id);
> +	}
> +}

I was just trying out the latest public MPAM branch available here[1] and noted that
on our HiSilicon platform all the L3 cache were labeled with the same Id. Debugging
revealed that the above leaf node check was removed in this branch[2] which makes
the min_physid calculation going wrong. Just wondering is there any particular reason
for removing the check or the branch is not carrying the latest patch?

Please let me know.

Thanks,
Shameer

1. http://www.linux-arm.org/git?p=linux-jm.git;a=shortlog;h=refs/heads/mpam/snapshot/may
2. http://www.linux-arm.org/git?p=linux-jm.git;a=commitdiff;h=413eb4281b072e1ee60f88b814f2a418358f2155;hp=44f0d62a6e00f8da7f04ab9e0673340e6c67ae65


> +static void acpi_pptt_label_cache(struct cacheinfo *this_leaf) {
> +	acpi_status status;
> +	struct acpi_table_header *table;
> +	struct acpi_pptt_processor *cpu_node;
> +	phys_cpuid_t min_physid = PHYS_CPUID_INVALID;
> +
> +	/* Affinity based IDs for non-unified caches would not be unique */
> +	if (this_leaf->type != CACHE_TYPE_UNIFIED)
> +		return;
> +
> +	if (!this_leaf->fw_token)
> +		return;
> +	cpu_node = this_leaf->fw_token;
> +
> +	status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
> +	if (ACPI_FAILURE(status))
> +		return;
> +
> +	acpi_pptt_min_physid_from_cpu_node(table, cpu_node, &min_physid);
> +	acpi_put_table(table);
> +
> +	WARN_ON_ONCE(min_physid == PHYS_CPUID_INVALID);
> +
> +	this_leaf->id = ARCH_PHYSID_TO_U32(min_physid);
> +	this_leaf->attributes |= CACHE_ID;
> +}
> +
>  /**
>   * update_cache_properties() - Update cacheinfo for the given processor
>   * @this_leaf: Kernel cache info structure being updated @@ -408,6 +486,9
> @@ static void update_cache_properties(struct cacheinfo *this_leaf,
>  	if (this_leaf->type == CACHE_TYPE_NOCACHE &&
>  	    valid_flags == PPTT_CHECKED_ATTRIBUTES)
>  		this_leaf->type = CACHE_TYPE_UNIFIED;
> +
> +	/* Now that the type is known, try and generate an id. */
> +	acpi_pptt_label_cache(this_leaf);
>  }
> 
>  static void cache_setup_acpi_cpu(struct acpi_table_header *table,
> --
> 2.18.0
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
