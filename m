Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DD5C5F18F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 04:42:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=RrF2jQeksUCa0qGE+qH9z6nK0D2ki/qL3f/SYdnb6O4=; b=Vpdz0ijyRVlQHvRzv94tVQFih
	ixCpHwV++MdAqgQ+PzwivW0BUH6/d2CdJcyS5obv0CYEUaES4JS+fjgodrP9lDuMYwB0VUL9qq2zM
	CBT665AWLI1oSe9FWYC1oK69bkCiTzeosFmkR0SCbNbXYmMScffXsVXw9o+7FKbdfVlgmbShtCXEe
	aJLea8JGhg7m7rQ59nxwvJ4YZqVkP8EtxCjkBPrdEEpcX6nuipGQ2enK7NJ5cgyKGWnmLBbCiHj5R
	2CimG3EyibQ//8nEMjeMdvYz2SB2K8n+fJ48+2/RODtZ5tIC1LVUHjyTPV7TCeA4oPBSrl7CBV1RW
	JLZkSZ79g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hirhM-0005Tg-2s; Thu, 04 Jul 2019 02:42:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hirh5-0005TL-WF
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 02:41:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C2A3A28;
 Wed,  3 Jul 2019 19:41:54 -0700 (PDT)
Received: from [192.168.122.164] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3D16C3F246;
 Wed,  3 Jul 2019 19:41:54 -0700 (PDT)
Subject: Re: [PATCH v3 1/2] ACPI/PPTT: Add support for ACPI 6.3 thread flag
To: "Rafael J. Wysocki" <rafael@kernel.org>
References: <20190628181457.6609-1-jeremy.linton@arm.com>
 <20190628181457.6609-2-jeremy.linton@arm.com>
 <CAJZ5v0jh0+WU5fpd9enq0UHrHzh+0Sgv-xoRiJM3jgu9dQFvdw@mail.gmail.com>
 <1745d9ee-a4e0-9a6f-138c-c0d5b42b5281@arm.com>
 <CAJZ5v0jM5VEuYuY7RdeXYs0S04uRYq5_01fKSBKOouS5DgBhww@mail.gmail.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <3882f986-54b6-ce7c-5e52-9ad6159b7e6f@arm.com>
Date: Wed, 3 Jul 2019 21:41:45 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAJZ5v0jM5VEuYuY7RdeXYs0S04uRYq5_01fKSBKOouS5DgBhww@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_194156_131176_866CA104 
X-CRM114-Status: GOOD (  20.04  )
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

On 7/3/19 4:57 PM, Rafael J. Wysocki wrote:
> On Wed, Jul 3, 2019 at 5:11 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
>>
>> Hi,
>>
>> Thanks for taking a look at this.
>>
>> On 7/3/19 4:24 AM, Rafael J. Wysocki wrote:
>>> On Fri, Jun 28, 2019 at 8:15 PM Jeremy Linton <jeremy.linton@arm.com> wrote:
>>>>
>>>> ACPI 6.3 adds a flag to the CPU node to indicate whether
>>>> the given PE is a thread. Add a function to return that
>>>> information for a given linux logical CPU.
>>>>
>>>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>>>> ---
>>>>    drivers/acpi/pptt.c  | 62 +++++++++++++++++++++++++++++++++++++++++++-
>>>>    include/linux/acpi.h |  5 ++++
>>>>    2 files changed, 66 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/drivers/acpi/pptt.c b/drivers/acpi/pptt.c
>>>> index b72e6afaa8fb..bb6196422fad 100644
>>>> --- a/drivers/acpi/pptt.c
>>>> +++ b/drivers/acpi/pptt.c
>>>> @@ -517,6 +517,52 @@ static int find_acpi_cpu_topology_tag(unsigned int cpu, int level, int flag)
>>>>           return retval;
>>>>    }
>>>>
>>>> +/**
>>>> + * check_acpi_cpu_flag() - Determine if CPU node has a flag set
>>>> + * @cpu: Kernel logical CPU number
>>>> + * @rev: The PPTT revision defining the flag
>>>> + * @flag: The flag itself
>>>> + *
>>>> + * Check the node representing a CPU for a given flag.
>>>> + *
>>>> + * Return: -ENOENT if the PPTT doesn't exist, the CPU cannot be found or
>>>> + *        the table revision isn't new enough.
>>>> + *        1, any passed flag set
>>>> + *        0, flag unset
>>>> + */
>>>> +static int check_acpi_cpu_flag(unsigned int cpu, int rev, u32 flag)
>>>
>>> Why not bool?
>>
>> At least for the thread flag we need the three states so that we can
>> fall back to the CPU's description of itself on machines without ACPI
>> 6.3 tables.
>>
>> The ThunderX2 is threaded and without a firmware update a change like
>> this will break it.
> 
> Fair enough.
> 
>>>
>>>> +{
>>>> +       struct acpi_table_header *table;
>>>> +       acpi_status status;
>>>> +       u32 acpi_cpu_id = get_acpi_id_for_cpu(cpu);
>>>> +       struct acpi_pptt_processor *cpu_node = NULL;
>>>> +       int ret = -ENOENT;
>>>> +       static int saved_pptt_rev = -1;
>>>> +
>>>> +       /* Cache the PPTT revision to avoid repeat table get/put on failure */
>>>
>>> This is a rather questionable optimization.
>>>
>>> Does the extra table get/put really matter?
>>
>> AFAIK, Probably not.
> 
> Then why to optimize it?

There was some discussion in the v2 review thread about all the get/put 
operations which only existed to return failure for each core in the 
machine.

https://www.spinics.net/lists/arm-kernel/msg735948.html

I guess I should drop it, until we have some proof that there is a problem.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
