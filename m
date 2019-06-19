Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE2F4B9FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 15:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dx59W3Wpa0fOyDO3aXfwT16iB91N96Drg2lAb/8svKI=; b=Th2E2GzAa38xmj
	u9xfrNKfkKYqn8aF2BlVmKFabJ79bhjzGk/oDc5fLWWJ2KZ1X8QXZmf21TNlPiMYlaXGuhOnOhVtU
	nT1XC7IYppylsXNEERuZeSqMQAfzm2+MzStOesF1/jjv8KVn99SNsgOy8j7pfmWEZWb+TRJG/0SFm
	PBrJbeMCTxTf2SiQqXEhmiCWQfTX7VYfihPqBQ78wGvZrJmzwwCxe1IQvg3LXe6G6bsojU5Foc4n1
	CsqWuPTNiFxgmprGwk1p4O1DtmAtrn0lbNYVguYWlsw3QJ3o/GJRz1usBls5MBJTLeKwl4kVQ1gtA
	s3pMAJr3dA623c6bgQnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdagd-0004uZ-2s; Wed, 19 Jun 2019 13:31:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdagR-0004u7-JS
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 13:31:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3B60344;
 Wed, 19 Jun 2019 06:31:26 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D7953F738;
 Wed, 19 Jun 2019 06:31:24 -0700 (PDT)
Subject: Re: [RFC PATCH 2/2] ACPI / PPTT: cacheinfo: Label caches based on
 fw_token
To: Shameerali Kolothum Thodi <shameerali.kolothum.thodi@huawei.com>
References: <20181005150235.13846-1-james.morse@arm.com>
 <20181005150235.13846-3-james.morse@arm.com>
 <5FC3163CFD30C246ABAA99954A238FA83F295ABF@lhreml524-mbb.china.huawei.com>
From: James Morse <james.morse@arm.com>
Message-ID: <4a8a2576-5a17-3897-ba5b-b81a172f1c82@arm.com>
Date: Wed, 19 Jun 2019 14:31:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <5FC3163CFD30C246ABAA99954A238FA83F295ABF@lhreml524-mbb.china.huawei.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_063127_734700_C0E7CFBF 
X-CRM114-Status: GOOD (  19.48  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vijaya Kumar K <vkilari@codeaurora.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Tomasz Nowicki <Tomasz.Nowicki@cavium.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>,
 Linuxarm <linuxarm@huawei.com>, Jeremy Linton <jeremy.linton@arm.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Sudeep Holla <sudeep.holla@arm.com>,
 "wangxiongfeng \(C\)" <wangxiongfeng2@huawei.com>,
 Richard Ruigrok <rruigrok@qti.qualcomm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Shameer,

On 17/06/2019 09:28, Shameerali Kolothum Thodi wrote:
>> -----Original Message-----

>> The resctrl ABI requires caches to have a unique id. This number must be
>> unique across all caches at this level, but doesn't need to be contiguous. (there
>> may be gaps, it may not start at 0).
>> See Documentation/x86/intel_rdt_ui.txt::Cache IDs
>>
>> We want a value that is the same over reboots, and should be the same on
>> identical hardware, even if the PPTT is generated in a different order. The
>> hardware doesn't give us any indication of which caches are shared, so this
>> information must come from firmware tables.
>>
>> Starting with a cacheinfo's fw_token, we walk the table to find all CPUs that
>> share this cpu_node (and thus cache), and take the lowest physical id to use as
>> the id for the cache. On arm64 this value corresponds to the MPIDR.
>>
>> This is only done for unified caches, as instruction/data caches would generate
>> the same id using this scheme.


>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c index
>> d1e26cb599bf..9478f8c28158 100644
>> --- a/drivers/acpi/pptt.c
>> +++ b/drivers/acpi/pptt.c
>> @@ -341,6 +341,84 @@ static struct acpi_pptt_cache
>> +/**
>> + * acpi_pptt_min_physid_from_cpu_node() - Recursivly find @min_physid
>> +for all
>> + * leaf CPUs below @cpu_node.
>> + * @table_hdr:	Pointer to the head of the PPTT table
>> + * @cpu_node:	The point in the toplogy to start the walk
>> + * @min_physid:	The min_physid to update with leaf CPUs.
>> + */
>> +void acpi_pptt_min_physid_from_cpu_node(struct acpi_table_header
>> *table_hdr,
>> +					struct acpi_pptt_processor *cpu_node,
>> +					phys_cpuid_t *min_physid)
>> +{
>> +	bool leaf = true;
>> +	u32 acpi_processor_id;
>> +	phys_cpuid_t cpu_node_phys_id;
>> +	struct acpi_subtable_header *iter;
>> +	struct acpi_pptt_processor *iter_node;
>> +	u32 target_node = ACPI_PTR_DIFF(cpu_node, table_hdr);
>> +	u32 proc_sz = sizeof(struct acpi_pptt_processor *);
>> +	unsigned long table_end = (unsigned long)table_hdr +
>> +table_hdr->length;
>> +
>> +	/*
>> +	 * Walk the PPTT, looking for nodes that reference cpu_node
>> +	 * as parent.
>> +	 */
>> +	iter = ACPI_ADD_PTR(struct acpi_subtable_header, table_hdr,
>> +			     sizeof(struct acpi_table_pptt));
>> +
>> +	while ((unsigned long)iter + proc_sz < table_end) {
>> +		iter_node = (struct acpi_pptt_processor *)iter;
>> +
>> +		if (iter->type == ACPI_PPTT_TYPE_PROCESSOR &&
>> +		    iter_node->parent == target_node) {
>> +			leaf = false;
>> +			acpi_pptt_min_physid_from_cpu_node(table_hdr, iter_node,
>> +							   min_physid);
>> +		}
>> +
>> +		if (iter->length == 0)
>> +			return;
>> +		iter = ACPI_ADD_PTR(struct acpi_subtable_header, iter,
>> +				    iter->length);
>> +	}
>> +
>> +	if (leaf && cpu_node->flags & ACPI_PPTT_ACPI_PROCESSOR_ID_VALID) {
>> +		acpi_processor_id = cpu_node->acpi_processor_id;
>> +		cpu_node_phys_id = acpi_id_to_phys_cpuid(acpi_processor_id);
>> +		*min_physid = min(*min_physid, cpu_node_phys_id);
>> +	}
>> +}

> I was just trying out the latest public MPAM branch available here[1]

Great!


> and noted that
> on our HiSilicon platform all the L3 cache were labeled with the same Id. Debugging> revealed that the above leaf node check was removed in this branch[2] which makes
> the min_physid calculation going wrong.

Thanks for debugging this,

> Just wondering is there any particular reason
> for removing the check or the branch is not carrying the latest patch?

Nope, that's a bug.

Jeremy Linton's review feedback[0] was that that PROCESSOR_ID_VALID flag can't be relied
on. It looks like I over-zealously removed the whole if(), and this doesn't cause a
problem with my pptt so I didn't notice.

I've fixed it locally, I've also pushed a fix to those branches, but it will get folded in
next time I push a branch.


Thanks!

James

[0] lore.kernel.org/r/a68abfd2-1e28-d9e7-919a-8b3133db4d20@arm.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
