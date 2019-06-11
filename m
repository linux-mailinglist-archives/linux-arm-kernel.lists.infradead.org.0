Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 673013D67D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 21:08:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nvG1Ee5PfgiD3m/aQGVgFVOYZhfc0b3r4XsqIdsdWA4=; b=YU+V1wazAvgshXAPJnMkCrFgb
	PohXHS5VbuxrKVhaj14YhVn31eqrhJhx91UK5M7CRCmcIKIYDnt+ecRmn0bFy506y1de+t6epREXz
	KOm/QMlSv++qCz5We//uGizEXxZH8G/dHb2ZCMP5/9NxvLZyphKWGsBxvGcBr+qAH+zlADOcfi/7b
	pCH4D+0cdJ1+oXlG7M3m0KQA+A+AqueZ2p1/jbFitymwMsPI7n4dVmJQbwv8+rvwULgQ8GDkCxEp3
	LEBiZl+/u9g8tD+sVIxLfzPL1MrzX65Y0tVJMl9J/pi3Yp9yWWrZnQGLSjU98+oWlDh+MFuxBhvVI
	8Gh24Tkfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ham8V-0003An-25; Tue, 11 Jun 2019 19:08:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1ham5p-0000xe-Vq
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 19:06:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EDCE0344;
 Tue, 11 Jun 2019 12:05:58 -0700 (PDT)
Received: from [192.168.100.221] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CA3D83F73C;
 Tue, 11 Jun 2019 12:05:57 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
To: John Garry <john.garry@huawei.com>, linux-arm-kernel@lists.infradead.org
References: <20190523224015.56270-1-jeremy.linton@arm.com>
 <20190523224015.56270-3-jeremy.linton@arm.com>
 <be03d428-b543-0233-a98b-233f367a6bd0@huawei.com>
 <24541261-f86d-0d19-6275-6e110144e761@arm.com>
 <4c8db8fa-de8e-d9b8-2de3-eda13651f223@huawei.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <cf0d9438-f2e9-493c-55e1-4a9ed27d1196@arm.com>
Date: Tue, 11 Jun 2019 14:02:59 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <4c8db8fa-de8e-d9b8-2de3-eda13651f223@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_120602_261525_057394F9 
X-CRM114-Status: GOOD (  24.50  )
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com,
 "Guohanjun \(Hanjun Guo\)" <guohanjun@huawei.com>, rjw@rjwysocki.net,
 Linuxarm <linuxarm@huawei.com>, linux-acpi@vger.kernel.org,
 yaohongbo@huawei.com, sudeep.holla@arm.com,
 wanghuiqiang <wanghuiqiang@huawei.com>, lenb@kernel.org
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="windows-1252"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 6/10/19 3:30 AM, John Garry wrote:
> On 07/06/2019 20:21, Jeremy Linton wrote:
>> Hi,
>>
>> Thanks for testing and looking at this.
>>
>> On 6/6/19 3:49 AM, John Garry wrote:
>>> On 23/05/2019 23:40, Jeremy Linton wrote:
>>>> ACPI 6.3 adds a thread flag to represent if a CPU/PE is
>>>> actually a thread. Given that the MPIDR_MT bit may not
>>>> represent this information consistently on homogeneous machines
>>>> we should prefer the PPTT flag if its available.
>>>>
>>>
> =

> Hi Jeremy,
> =

>>>
>>> I was just wondering if we should look to get this support backported
>>> (when merged)?
>>
>> I imagine that will happen..
>>
>>>
>>> I worry about the case of a system with the CPU having MT bit in the
>>> MPIDR (while not actually threaded), i.e. the system for which these
>>> PPTT flags were added (as I understand).
>>
>> I have tested this patch on DAWN which happens to have the MT bit set,
>> but isn't threaded, and it appears to work.
> =

> Can you describe your test?

The positive test:

Boot machine with/without patch, compare the output of lscpu & lstopo. =

Manually check/compare /sys/devices/system/cpu/cpuX/topology/* and =

/proc/schedstat domain masks. On DAWN we go from a system reporting 2 =

cores with 2 thread per core to 4 cores.

I've also built firmware or injected PPTT's with varying versions/etc to =

sanity check cases that aren't representative of the hardware.



> =

>>
>>>
>>>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>>>> ---
>>>> =A0arch/arm64/kernel/topology.c | 8 +++++---
>>>> =A01 file changed, 5 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/kernel/topology.c =

>>>> b/arch/arm64/kernel/topology.c
>>>> index 0825c4a856e3..cbbedb53cf06 100644
>>>> --- a/arch/arm64/kernel/topology.c
>>>> +++ b/arch/arm64/kernel/topology.c
>>>> @@ -346,11 +346,9 @@ void remove_cpu_topology(unsigned int cpu)
>>>> =A0 */
>>>> =A0static int __init parse_acpi_topology(void)
>>>> =A0{
>>>> -=A0=A0=A0 bool is_threaded;
>>>> +=A0=A0=A0 int is_threaded;
>>>> =A0=A0=A0=A0 int cpu, topology_id;
>>>>
>>>> -=A0=A0=A0 is_threaded =3D read_cpuid_mpidr() & MPIDR_MT_BITMASK;
>>>> -
>>>> =A0=A0=A0=A0 for_each_possible_cpu(cpu) {
>>>> =A0=A0=A0=A0=A0=A0=A0=A0 int i, cache_id;
>>>>
>>>> @@ -358,6 +356,10 @@ static int __init parse_acpi_topology(void)
>>>> =A0=A0=A0=A0=A0=A0=A0=A0 if (topology_id < 0)
>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return topology_id;
>>>>
>>>> +=A0=A0=A0=A0=A0=A0=A0 is_threaded =3D acpi_pptt_cpu_is_thread(cpu);
>>>> +=A0=A0=A0=A0=A0=A0=A0 if (is_threaded < 0)
>>>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 is_threaded =3D read_cpuid_mpidr() =
& MPIDR_MT_BITMASK;
>>>> +
>>>> =A0=A0=A0=A0=A0=A0=A0=A0 if (is_threaded) {
>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpu_topology[cpu].thread_id =3D t=
opology_id;
>>>
>>> For described above scenario, this seems wrong.
>>
>> I'm not sure I understand the concern.
> =

> Maybe I wasn't clear enough previously. I am saying that without this =

> patch, then this info would not be correct. Hence the request to =

> backport to stable.
> =

> cheers,
> =

>>
>> This is going to ignore the MPIDR_MT bit on any machine with a PPTT
>> revision > 1. Are you worried about the topology_id assignment?
>>
>>
>>>
>>>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 topology_id =3D find_acpi_cpu_top=
ology(cpu, 1);
>>>>
>>>
>>> BTW, we did test an old kernel with 6.3 PPTT bios for this on D06
>>> (some versions have MT bit set), and it looked ok. But I am still a
>>> bit skeptical.
>>>
>>> Thanks,
>>> John
>>>
>>>
>>
>>
>> Thanks,
>>
>> .
>>
> =

> =



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
