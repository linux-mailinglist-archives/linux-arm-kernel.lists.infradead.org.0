Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67625E786
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 17:12:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xlcUtErqnesOvbjCYa6nwBVFPrAKvCFVqV5cK6OEcTo=; b=dJE8Oi66UbQw6+dd80ialdWwW
	4shVgLamrkYbbTI3o1QcWvNAO90gX/hcL7LODNrcb43219f4afyvp8bZi9eKmwidfX/T/cpjqt0S4
	3FBUbKfXNp3uENtXZbHjmjziI+OB5+6Sdd8xLa3drygo9BVG01jE/zmzXjlUSu2gS0nxCv3hi00g9
	TcCCW4JSHfQGYp8AlNkNCYMiap94hhbAbA70061XOV7GrdLANsAJ3mxS4Ec6DhUdVbj/bezdOqWXd
	Da9uK1WfrW9iLOrnJTxmHDYa7dgh/hYnUJ0EfDhrzmV8Iz/do2eg7zhGLqv+GaEHC0l57OsnihZR5
	dC7yz9mIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1higvY-0003Cd-EF; Wed, 03 Jul 2019 15:12:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1higvL-0003CD-IS
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 15:11:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 61CFE2B;
 Wed,  3 Jul 2019 08:11:52 -0700 (PDT)
Received: from [192.168.122.164] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DDA253F718;
 Wed,  3 Jul 2019 08:11:51 -0700 (PDT)
Subject: Re: [PATCH v3 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190628181457.6609-1-jeremy.linton@arm.com>
 <20190628181457.6609-2-jeremy.linton@arm.com>
 <CAJZ5v0jh0+WU5fpd9enq0UHrHzh+0Sgv-xoRiJM3jgu9dQFvdw@mail.gmail.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <1745d9ee-a4e0-9a6f-138c-c0d5b42b5281@arm.com>
Date: Wed, 3 Jul 2019 10:11:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0jh0+WU5fpd9enq0UHrHzh+0Sgv-xoRiJM3jgu9dQFvdw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_081155_697274_682405FD 
X-CRM114-Status: GOOD (  25.18  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Will Deacon <will.deacon@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Len Brown <lenb@kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Thanks for taking a look at this.

On 7/3/19 4:24 AM, Rafael J. Wysocki wrote:
> On Fri, Jun 28, 2019 at 8:15 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
>>
>> ACPI 6.3 adds a flag to the CPU node to indicate whether
>> the given PE is a thread. Add a function to return that
>> information for a given linux logical CPU.
>>
>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>>   drivers/acpi/pptt.c  | 62 +++++++++++++++++++++++++++++++++++++++++++-
>>   include/linux/acpi.h |  5 ++++
>>   2 files changed, 66 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
>> index b72e6afaa8fb..bb6196422fad 100644
>> --- a/drivers/acpi/pptt.c
>> +++ b/drivers/acpi/pptt.c
>> @@ -517,6 +517,52 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>>          return retval;
>>   }
>>
>> +/**
>> + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
>> + * @cpu: Kernel logical CPU number
>> + * @rev: The PPTT revision defining the flag
>> + * @flag: The flag itself
>> + *
>> + * Check the node representing a CPU for a given flag.
>> + *
>> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
>> + *        the table revision isn't new enough.
>> + *        1, any passed flag set
>> + *        0, flag unset
>> + */
>> +static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)
> 
> Why not bool?

At least for the thread flag we need the three states so that we can 
fall back to the CPU's description of itself on machines without ACPI 
6.3 tables.

The ThunderX2 is threaded and without a firmware update a change like 
this will break it.

> 
>> +{
>> +       struct acpi_table_header *table;
>> +       acpi_status status;
>> +       u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
>> +       struct acpi_pptt_processor *cpu_node = NULL;
>> +       int ret = -ENOENT;
>> +       static int saved_pptt_rev = -1;
>> +
>> +       /* Cache the PPTT revision to avoid repeat table get/put on failure */
> 
> This is a rather questionable optimization.
> 
> Does the extra table get/put really matter?

AFAIK, Probably not.

> 
>> +       if (saved_pptt_rev > -1 && saved_pptt_rev < rev)
>> +               return -ENOENT;
> 
> It should be fine to return 'false' here, shouldn't it?

See bool, The alternative of course is a dedicated function to export 
this "error" but I think we want to avoid exporting what is effectively 
a version check into the reset of the kernel.

> 
>> +
>> +       status = acpi_get_table(ACPI_SIG_PPTT, 0, &table);
>> +       if (ACPI_FAILURE(status)) {
>> +               saved_pptt_rev = 0;
>> +               acpi_pptt_warn_missing();
>> +               return ret;
> 
> And here?
> 
>> +       }
>> +
>> +       saved_pptt_rev = table->revision;
>> +
>> +       if (saved_pptt_rev >= rev)
>> +               cpu_node = acpi_find_processor_node(table, acpi_cpu_id);
>> +
>> +       if (cpu_node)
>> +               ret = (cpu_node->flags & flag) != 0;
> 
> And this can be
> 
> ret = !!(cpu_node->flags & flag);

Ok, sure.


> 
>> +
>> +       acpi_put_table(table);
>> +
>> +       return ret;
>> +}
>> +
>>   /**
>>    * acpi_find_last_cache_level() - Determines the number of cache levels for a PE
>>    * @cpu: Kernel logical CPU number
>> @@ -581,6 +627,21 @@ int cache_setup_acpi(unsigned int cpu)
>>          return status;
>>   }
>>
>> +/**
>> + * acpi_pptt_cpu_is_thread() - Determine if CPU is a thread
>> + * @cpu: Kernel logical CPU number
>> + *
>> + *
>> + * Return: 1, a thread
>> + *         0, not a thread
>> + *         -ENOENT ,if the PPTT doesn't exist, the CPU cannot be found or
>> + *         the table revision isn't new enough.
>> + */
>> +int acpi_pptt_cpu_is_thread(unsigned int cpu)
>> +{
>> +       return check_acpi_cpu_flag(cpu, 2, ACPI_PPTT_ACPI_PROCESSOR_IS_THREAD);
>> +}
>> +
>>   /**
>>    * find_acpi_cpu_topology() - Determine a unique topology value for a given CPU
>>    * @cpu: Kernel logical CPU number
>> @@ -641,7 +702,6 @@ int find_acpi_cpu_cache_topology(unsigned int cpu, int level)
>>          return ret;
>>   }
>>
>> -
>>   /**
>>    * find_acpi_cpu_topology_package() - Determine a unique CPU package value
>>    * @cpu: Kernel logical CPU number
>> diff --git a/include/linux/acpi.h b/include/linux/acpi.h
>> index d315d86844e4..3e339375e213 100644
>> --- a/include/linux/acpi.h
>> +++ b/include/linux/acpi.h
>> @@ -1301,10 +1301,15 @@ static inline int lpit_read_residency_count_address(u64 *address)
>>   #endif
>>
>>   #ifdef CONFIG_ACPI_PPTT
>> +int acpi_pptt_cpu_is_thread(unsigned int cpu);
>>   int find_acpi_cpu_topology(unsigned int cpu, int level);
>>   int find_acpi_cpu_topology_package(unsigned int cpu);
>>   int find_acpi_cpu_cache_topology(unsigned int cpu, int level);
>>   #else
>> +static inline int acpi_pptt_cpu_is_thread(unsigned int cpu)
>> +{
>> +       return -EINVAL;
>> +}
>>   static inline int find_acpi_cpu_topology(unsigned int cpu, int level)
>>   {
>>          return -EINVAL;
>> --
>> 2.21.0
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
