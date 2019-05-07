Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C32016A20
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 20:26:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=3wCIF2Bk2O13r9A4qLF7w+EdJTf6nYP7ggW9DrD5WEU=; b=dDIQyXL4rmHATgSxeQLeoeEiz
	/HFtPaeYJMkPUuZwh7Seu6lqaS0BHk8MvZxhnRpgRjFaAnMKghRa3jsc1TiTp+VlmABHyvLsYP02h
	bix9aqu0vNGGH2bn9cSLCmQFAFH9+JIbJVj3UYrKTANSQab2bpppzy0FO0zfaOp58rnNg69dCjP+t
	SOFiJNPO/Igbuf+iaM6qwo5e2fwTUAUGXVBrNfeHU3VkbKRZdAwzbfn2QTJPqU7AnrLBMaCQZhjQx
	9Q+vgevnaWt4o+BISek+EQ97dvLs0oX3s8m7iITuTIEJiWuK6nrkuexNsSLsb5oxW0y2nWAbapJdN
	lXAfCcIeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO4nn-0004wY-Ui; Tue, 07 May 2019 18:26:55 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO4nV-0004la-RQ
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 18:26:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E214915AB;
 Tue,  7 May 2019 11:26:36 -0700 (PDT)
Received: from [192.168.100.241] (usa-sjc-mx-foss1.foss.arm.com
 [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B5A013F5AF;
 Tue,  7 May 2019 11:26:35 -0700 (PDT)
Subject: Re: [PATCH v3 2/5] ACPI/PPTT: Add function to return ACPI 6.3
 Identical tokens
To: Kefeng Wang <wangkefeng.wang@huawei.com>,
 linux-arm-kernel@lists.infradead.org
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <20190503232407.37195-3-jeremy.linton@arm.com>
 <b52d15ab-de9c-8aa4-d2a4-dacdcb9d137e@huawei.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <bab9b259-1074-5424-2cea-786e211ad608@arm.com>
Date: Tue, 7 May 2019 13:26:28 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <b52d15ab-de9c-8aa4-d2a4-dacdcb9d137e@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_112637_892851_BA596CD3 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 linux-acpi@vger.kernel.org, sudeep.holla@arm.com, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 5/5/19 2:09 AM, Kefeng Wang wrote:
> 
> On 2019/5/4 7:24, Jeremy Linton wrote:
>> ACPI 6.3 adds a flag to indicate that child nodes are all
>> identical cores. This is useful to authoritatively determine
>> if a set of (possibly offline) cores are identical or not.
>>
>> Since the flag doesn't give us a unique id we can generate
>> one and use it to create bitmaps of sibling nodes, or simply
>> in a loop to determine if a subset of cores are identical.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>>   drivers/acpi/pptt.c  | 26 ++++++++++++++++++++++++++
>>   include/linux/acpi.h |  5 +++++
>>   2 files changed, 31 insertions(+)
>>
>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
>> index 83a026765faa..1865515297ca 100644
>> --- a/drivers/acpi/pptt.c
>> +++ b/drivers/acpi/pptt.c
>> @@ -660,3 +660,29 @@ int find_acpi_cpu_topology_package(unsigned int cpu)
>>   	return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
>>   					  ACPI_PPTT_PHYSICAL_PACKAGE);
>>   }
>> +
>> +/**
>> + * find_acpi_cpu_topology_hetero_id() - Get a core architecture tag
>> + * @cpu: Kernel logical CPU number
>> + *
>> + * Determine a unique heterogeneous tag for the given CPU. CPUs with the same
>> + * implementation should have matching tags.
>> + *
>> + * The returned tag can be used to group peers with identical implementation.
>> + *
>> + * The search terminates when a level is found with the identical implementation
>> + * flag set or we reach a root node.
>> + *
>> + * Due to limitations in the PPTT data structure, there may be rare situations
>> + * where two cores in a heterogeneous machine may be identical, but won't have
>> + * the same tag.
>> + *
>> + * Return: -ENOENT if the PPTT doesn't exist, or the CPU cannot be found.
>> + * Otherwise returns a value which represents a group of identical cores
>> + * similar to this CPU.
>> + */
>> +int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
>> +{
>> +	return find_acpi_cpu_topology_tag(cpu, PPTT_ABORT_PACKAGE,
>> +					  ACPI_PPTT_ACPI_IDENTICAL);
>> +}
>> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
>> index d5dcebd7aad3..1444fb042898 100644
>> --- a/include/linux/acpi.h
>> +++ b/include/linux/acpi.h
>> @@ -1309,6 +1309,7 @@ static inline int lpit_read_residency_count_address(u64 *address)
>>   #ifdef CONFIG_ACPI_PPTT
>>   int find_acpi_cpu_topology(unsigned int cpu, int level);
>>   int find_acpi_cpu_topology_package(unsigned int cpu);
>> +int find_acpi_cpu_topology_hetero_id(unsigned int cpu);
>>   int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
>>   #else
>>   static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
>> @@ -1319,6 +1320,10 @@ static inline int find_acpi_cpu_topology_package(unsigned int cpu)
>>   {
>>   	return -EINVAL;
>>   }
> static inline int find_acpi_cpu_topology_hetero_id(unsigned int cpu)

Yes, good catch, I just saw that warning.


>> +static int find_acpi_cpu_topology_hetero_id(unsigned int cpu)
>> +{
>> +	return -EINVAL;
>> +}
>>   static inline int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>>   {
>>   	return -EINVAL;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
