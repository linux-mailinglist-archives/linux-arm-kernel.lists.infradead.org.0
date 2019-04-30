Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2F99EEBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 04:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4E7OVbMWi3E3l2n6gRNDoueoLaaNzTj7bThLF1nybI=; b=HjsJbSMPS9Z5ny
	L2qLflv8t2Y8Kq94q7nW88klqY3DFRlyxy9AWgSYzeHea6zGtt8blcPu2gP4BlTGOwlYMd2haMsD8
	QscrMaw0D7WC0/N70dqovbuAtHYSigvJs/3UNUpbjJc1Pbg2luGnh3+lUoPMgLHvz4LEhq87k/gh2
	//1kiDZ/nZ3rTRQR5B3NLhQujV2wsGl8DLesmheQehqKCccYcPlSy9O/GNEcVAOd/35NwOBW2L7fO
	cj+R+3UFhoQlemwc2kzy/YojPjRh4YMA6Ihx+fUQhUfUoBslMbbSGmZXtIzw2WfIQNBcvG14L6LRF
	dhec0U1PPnWHsWkPggaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLIPA-0005kQ-Jv; Tue, 30 Apr 2019 02:22:00 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLIOu-0005ep-RS
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 02:21:47 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 9C6F115CFBEC3FDD884A;
 Tue, 30 Apr 2019 10:19:21 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Tue, 30 Apr 2019
 10:19:13 +0800
Subject: Re: [PATCH 1/2] ACPI/PPTT: Add variable to record max cache line size
To: Sudeep Holla <sudeep.holla@arm.com>, Jeremy Linton <jeremy.linton@arm.com>
References: <1556242821-5080-1-git-send-email-zhangshaokun@hisilicon.com>
 <ec06edc0-f1ec-ef8e-78ad-7bef7ae79931@arm.com>
 <20190429112645.GC23929@e107155-lin>
From: Zhangshaokun <zhangshaokun@hisilicon.com>
Message-ID: <3dfbd691-1e8a-7574-787b-689f96a9e8fb@hisilicon.com>
Date: Tue, 30 Apr 2019 10:19:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20190429112645.GC23929@e107155-lin>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_192145_065425_D8398326 
X-CRM114-Status: GOOD (  18.95  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, john.garry@huawei.com,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, qiuzhenfa@hisilicon.com,
 guohanjun@huawei.com, linux-arm-kernel@lists.infradead.org, Len
 Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sudeep,

On 2019/4/29 19:26, Sudeep Holla wrote:
> On Fri, Apr 26, 2019 at 12:02:45PM -0500, Jeremy Linton wrote:
>> Hi,
>>
>>
>> On 4/25/19 8:40 PM, Shaokun Zhang wrote:
>>> Add coherency_max_size variable to record the maximum cache line size
>>> detected from PPTT information for different cache levels. We will
>>> synchronize it with CTR_EL0.CWG reporting in cache_line_size() for arm64.
>>
>> Is the expectation that the largest cache line size will differ from the LLC
>> line size?
>>
> 
> It's always better to assume so. If we are sure that LLC has max cache line
> size, then we can simplify, but I don't think we can assure that :)
> 
>> Also, will it remain consistent across all PE's? I believe this is required,
>> Yes?
>>
> 
> It would be same as heterogeneous systems, we just choose max value for
> the system.
> 

Yes, right.

>>
>>>
>>> Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>
>>> Cc: Len Brown <lenb@kernel.org>
>>> Cc: Jeremy Linton <jeremy.linton@arm.com>
>>> Cc: Catalin Marinas <catalin.marinas@arm.com>
>>> To: linux-acpi@vger.kernel.org
>>> Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
>>> ---
>>>   drivers/acpi/pptt.c  | 7 ++++++-
>>>   include/linux/acpi.h | 1 +
>>>   2 files changed, 7 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
>>> index 065c4fc245d1..3998621e00ce 100644
>>> --- a/drivers/acpi/pptt.c
>>> +++ b/drivers/acpi/pptt.c
>>> @@ -341,6 +341,8 @@ static struct acpi_pptt_cache *acpi_find_cache_node(struct acpi_table_header *ta
>>>   	return found;
>>>   }
>>> +unsigned int coherency_max_size;
>>> +
>>>   /**
>>>    * update_cache_properties() - Update cacheinfo for the given processor
>>>    * @this_leaf: Kernel cache info structure being updated
>>> @@ -360,8 +362,11 @@ static void update_cache_properties(struct cacheinfo *this_leaf,
>>>   	this_leaf->fw_token = cpu_node;
>>>   	if (found_cache->flags & ACPI_PPTT_SIZE_PROPERTY_VALID)
>>>   		this_leaf->size = found_cache->size;
>>> -	if (found_cache->flags & ACPI_PPTT_LINE_SIZE_VALID)
>>> +	if (found_cache->flags & ACPI_PPTT_LINE_SIZE_VALID) {
>>>   		this_leaf->coherency_line_size = found_cache->line_size;
>>> +		coherency_max_size = this_leaf->coherency_line_size > coherency_max_size ?
>>> +			this_leaf->coherency_line_size : coherency_max_size;
>>> +	}
>>>   	if (found_cache->flags & ACPI_PPTT_NUMBER_OF_SETS_VALID)
>>>   		this_leaf->number_of_sets = found_cache->number_of_sets;
>>>   	if (found_cache->flags & ACPI_PPTT_ASSOCIATIVITY_VALID)
>>> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
>>> index d5dcebd7aad3..199cde875d5b 100644
>>> --- a/include/linux/acpi.h
>>> +++ b/include/linux/acpi.h
>>> @@ -315,6 +315,7 @@ static inline bool acpi_sci_irq_valid(void)
>>>   extern int sbf_port;
>>>   extern unsigned long acpi_realmode_flags;
>>> +extern unsigned int coherency_max_size;
>>
>> Assuming that the LLC doesn't reflect the max cache line size, and it can't
>> be pulled directly from the cpu_cacheinfo, I don't think this is the ideal
>> place for this code. Given that DT has a cache line property as well, I
>> suspect cache_shared_cpu_map_setup() may be a better place. Although, that
>> isn't ideal either, as both these pieces of code have the pretense of being
>> architecture neutral. Maybe a new call into arch/arm64/cacheinfo.c?
>>
> 
> Indeed, we need to consider DT systems too. We can just solve the issue
> for ACPI based systems.
> 

Agree, I missed it before because our platform only supports ACPI mode.

> Or drivers/base/cacheinfo.c if other architectures are also interested or
> doesn't affect them if we add one :), but I don't count too much on this
> though as it may end up breaking some other archs.
> 

As Jeremy suggestion, arch/arm64/kernel/cacheinfo.c may be a good place and I
need to check it.

Thanks,
Shaokun

> --
> Regards,
> Sudeep
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
