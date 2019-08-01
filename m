Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009377DFCB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 18:10:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CVdaPfEkWiZRiBguqA6PrVLiD+JoA7yf5WQUiHW0Nh8=; b=oDwhQZz/J1epW4o3/Qb1zR+Om
	1sX2ksYkAjj4SxkH5031+qJpsxHaL4J4PrPD6a5B+I7IPQlcP02qfi92FbuhIe+GofEjGRK2U8Eya
	6B7KffXA2z6Zvx5uizaTcjD/8r1qaw5IkiBtMU5+kjs7U3NyujKLOe2iITojLdIOf6fKp1neaa/Gd
	CwnuQXxmEKu5Q5pjoeqM8WKYF5+yFEmdfjg+AF1Q+jxdN8ymgsYmHc3CIDa1owGA3P+2cwmjBrwRv
	oABWdZNWILhu4JxOustrGA3jK9+vweERWH198MQrMYUll7MFUKAju3OJo/ezo8x2h4Hm1a40uCnbA
	KGN9xYZ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htDfB-0007tL-No; Thu, 01 Aug 2019 16:10:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1htDf3-0007t0-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 16:10:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6D029337;
 Thu,  1 Aug 2019 09:10:36 -0700 (PDT)
Received: from [192.168.122.164] (u201426.austin.arm.com [10.118.28.59])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 31E693F694;
 Thu,  1 Aug 2019 09:10:36 -0700 (PDT)
Subject: Re: [PATCH v4 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: Sudeep Holla <sudeep.holla@arm.com>
References: <20190801034634.26913-1-jeremy.linton@arm.com>
 <20190801034634.26913-2-jeremy.linton@arm.com>
 <20190801155736.GD23424@e107155-lin>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <959c5297-a563-21b6-c38b-0cc50ffbce8b@arm.com>
Date: Thu, 1 Aug 2019 11:10:35 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190801155736.GD23424@e107155-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_091037_290165_9EF222B1 
X-CRM114-Status: GOOD (  23.22  )
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, rjw@rjwysocki.net,
 linux-acpi@vger.kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,


Thanks for looking at this.

On 8/1/19 10:57 AM, Sudeep Holla wrote:
> 
> Hi Jeremy,
> 
> On Wed, Jul 31, 2019 at 10:46:33PM -0500, Jeremy Linton wrote:
>> ACPI 6.3 adds a flag to the CPU node to indicate whether
>> the given PE is a thread. Add a function to return that
>> information for a given linux logical CPU.
>>
> 
> Apart from few minor nits,
> 
> Reviewed-by: Sudeep Holla <sudeep.holla@arm.com>
> 
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>>   drivers/acpi/pptt.c  | 54 +++++++++++++++++++++++++++++++++++++++++++-
>>   include/linux/acpi.h |  5 ++++
>>   2 files changed, 58 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
>> index 1e7ac0bd0d3a..84718f6cb741 100644
>> --- a/drivers/acpi/pptt.c
>> +++ b/drivers/acpi/pptt.c
>> @@ -540,6 +540,44 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>>   	return retval;
>>   }
>>
>> +/**
>> + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
>> + * @cpu: Kernel logical CPU number
>> + * @rev: The PPTT revision defining the flag
> 
> [nit] I would rather put it as minimum PPTT revision that supports the
> flag. It aligns with the code too as we are not looking for exact match.

Ok, sure.


> 
>> + * @flag: The flag itself
>> + *
>> + * Check the node representing a CPU for a given flag.
>> + *
>> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
>> + *	   the table revision isn't new enough.
>> + *	   1, any passed flag set
>> + *	   0, flag unset
>> + */
>> +static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)
>> +{
>> +	struct acpi_table_header *table;
>> +	acpi_status status;
>> +	u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
>> +	struct acpi_pptt_processor *cpu_node = NULL;
>> +	int ret = -ENOENT;
>> +
>> +	status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
>> +	if (ACPI_FAILURE(status)) {
>> +		acpi_pptt_warn_missing();
>> +		return ret;
>> +	}
>> +
>> +	if (table->revision >= rev)
>> +		cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>> +
>> +	if (cpu_node)
>> +		ret = (cpu_node->flags & flag) != 0;
>> +
>> +	acpi_put_table(table);
>> +
>> +	return ret;
>> +}
>> +
>>   /**
>>    * acpi_find_last_cache_level() - Determines the number of cache levels for a PE
>>    * @cpu: Kernel logical CPU number
>> @@ -604,6 +642,21 @@ int cache_setup_acpi(unsigned int cpu)
>>   	return status;
>>   }
>>
>> +/**
>> + * acpi_pptt_cpu_is_thread() - Determine if CPU is a thread
>> + * @cpu: Kernel logical CPU number
>> + *
> 
> [nit] If you spin the patch again, you can drop extra line space here.

Sure..


> 
> --
> Regards,
> Sudeep
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
