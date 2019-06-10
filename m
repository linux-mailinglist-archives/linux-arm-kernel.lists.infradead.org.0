Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAACA3B0C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 10:31:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FMEh7Y0/PnCfIx30LuXbRh3PJs4ov+or/zyhxbo+Enw=; b=dubE2DA8MCmBBA8mKJxugNV09
	tgBNJKD8B7Diii5QxdFrUVOXyZ860W0gzKp+wWN+5Db0jc634EkpNIHI4E8drhTJ5jwusAXaQp7JV
	24XJwBYcyAhlaRY2JlCPnBm8VemJddLE8Agp3wJTYMQa1Ivgu1EPgFeGO6VANgH4unlZ4fC+OHsgg
	g/+BedP/q0YTNoX4Chfum4ONUg1oyNFOEzEx88Kr9s31r+71vwk1RCtjaVBxCp09KxvudPitMdcio
	6YiRsFh94QRv6i9Zml4NJJvGO/WkLiDOIS4Px7sb3ssygfDLpaLmSKALPo9q1ZCLC8gaoDhxbQD6o
	wp2HmBT/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haFiD-0007Cq-OO; Mon, 10 Jun 2019 08:31:29 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haFhx-0007Bl-If
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Jun 2019 08:31:15 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id C42DAD8FAD9F6E5E5A51;
 Mon, 10 Jun 2019 16:31:04 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0;
 Mon, 10 Jun 2019 16:30:56 +0800
Subject: Re: [PATCH 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
To: Jeremy Linton <jeremy.linton@arm.com>,
 <linux-arm-kernel@lists.infradead.org>
References: <20190523224015.56270-1-jeremy.linton@arm.com>
 <20190523224015.56270-3-jeremy.linton@arm.com>
 <be03d428-b543-0233-a98b-233f367a6bd0@huawei.com>
 <24541261-f86d-0d19-6275-6e110144e761@arm.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <4c8db8fa-de8e-d9b8-2de3-eda13651f223@huawei.com>
Date: Mon, 10 Jun 2019 09:30:49 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <24541261-f86d-0d19-6275-6e110144e761@arm.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_013113_841332_2C24D640 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, "Guohanjun \(Hanjun
 Guo\)" <guohanjun@huawei.com>, rjw@rjwysocki.net,
 Linuxarm <linuxarm@huawei.com>, linux-acpi@vger.kernel.org,
 yaohongbo@huawei.com, sudeep.holla@arm.com,
 wanghuiqiang <wanghuiqiang@huawei.com>, lenb@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/06/2019 20:21, Jeremy Linton wrote:
> Hi,
>
> Thanks for testing and looking at this.
>
> On 6/6/19 3:49 AM, John Garry wrote:
>> On 23/05/2019 23:40, Jeremy Linton wrote:
>>> ACPI 6.3 adds a thread flag to represent if a CPU/PE is
>>> actually a thread. Given that the MPIDR_MT bit may not
>>> represent this information consistently on homogeneous machines
>>> we should prefer the PPTT flag if its available.
>>>
>>

Hi Jeremy,

>>
>> I was just wondering if we should look to get this support backported
>> (when merged)?
>
> I imagine that will happen..
>
>>
>> I worry about the case of a system with the CPU having MT bit in the
>> MPIDR (while not actually threaded), i.e. the system for which these
>> PPTT flags were added (as I understand).
>
> I have tested this patch on DAWN which happens to have the MT bit set,
> but isn't threaded, and it appears to work.

Can you describe your test?

>
>>
>>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>>> ---
>>>  arch/arm64/kernel/topology.c | 8 +++++---
>>>  1 file changed, 5 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
>>> index 0825c4a856e3..cbbedb53cf06 100644
>>> --- a/arch/arm64/kernel/topology.c
>>> +++ b/arch/arm64/kernel/topology.c
>>> @@ -346,11 +346,9 @@ void remove_cpu_topology(unsigned int cpu)
>>>   */
>>>  static int __init parse_acpi_topology(void)
>>>  {
>>> -    bool is_threaded;
>>> +    int is_threaded;
>>>      int cpu, topology_id;
>>>
>>> -    is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
>>> -
>>>      for_each_possible_cpu(cpu) {
>>>          int i, cache_id;
>>>
>>> @@ -358,6 +356,10 @@ static int __init parse_acpi_topology(void)
>>>          if (topology_id < 0)
>>>              return topology_id;
>>>
>>> +        is_threaded = acpi_pptt_cpu_is_thread(cpu);
>>> +        if (is_threaded < 0)
>>> +            is_threaded = read_cpuid_mpidr() & MPIDR_MT_BITMASK;
>>> +
>>>          if (is_threaded) {
>>>              cpu_topology[cpu].thread_id = topology_id;
>>
>> For described above scenario, this seems wrong.
>
> I'm not sure I understand the concern.

Maybe I wasn't clear enough previously. I am saying that without this 
patch, then this info would not be correct. Hence the request to 
backport to stable.

cheers,

>
> This is going to ignore the MPIDR_MT bit on any machine with a PPTT
> revision > 1. Are you worried about the topology_id assignment?
>
>
>>
>>>              topology_id = find_acpi_cpu_topology(cpu, 1);
>>>
>>
>> BTW, we did test an old kernel with 6.3 PPTT bios for this on D06
>> (some versions have MT bit set), and it looked ok. But I am still a
>> bit skeptical.
>>
>> Thanks,
>> John
>>
>>
>
>
> Thanks,
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
