Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90EDD39576
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 21:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zHcEIzuCBkfYFv0TaUhl5WShHppYsUU54zV/VlWe2aI=; b=JtNo6nJP9zkDYKB+bdOosbyNK
	GB9A5WYxhQpc/moqQd5DBmY/T9gg7UAG1XBT/50qgBJSh1EQ63Ytpi3w2gIZwLA8ZANFu58saNfag
	vhQqyuR6kDWwFY//95DuNqTAAf2JZgbauL0Si/q4+LhYersyTJkav+C/srb4C+4PduJ9tKogVq1An
	LkvWtUH+Vbpgik4vHE/6XVAzqAUEoehXwl7q5bx80+gfFQMGW+19nB3crWPApjveLTrdD2YQ+pcpc
	f+BdON9WKqH8K5slASauk/vsRAmUqVwCjCsjETMkaYg4WV6YDWrapoCJ4iClKv0NAN3uyabPiHyNd
	DVf15vt8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKQv-0000zj-2X; Fri, 07 Jun 2019 19:21:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKQk-0000zF-I9
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 19:21:39 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C42DC2B;
 Fri,  7 Jun 2019 12:21:35 -0700 (PDT)
Received: from [192.168.100.221] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F99A3F718;
 Fri,  7 Jun 2019 12:21:35 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm64: topology: Use PPTT to determine if PE is a
 thread
To: John Garry <john.garry@huawei.com>, linux-arm-kernel@lists.infradead.org
References: <20190523224015.56270-1-jeremy.linton@arm.com>
 <20190523224015.56270-3-jeremy.linton@arm.com>
 <be03d428-b543-0233-a98b-233f367a6bd0@huawei.com>
From: Jeremy Linton <jeremy.linton@arm.com>
Message-ID: <24541261-f86d-0d19-6275-6e110144e761@arm.com>
Date: Fri, 7 Jun 2019 14:21:34 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <be03d428-b543-0233-a98b-233f367a6bd0@huawei.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_122138_646459_A382E890 
X-CRM114-Status: GOOD (  24.29  )
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

Thanks for testing and looking at this.

On 6/6/19 3:49 AM, John Garry wrote:
> On 23/05/2019 23:40, Jeremy Linton wrote:
>> ACPI 6.3 adds a thread flag to represent if a CPU/PE is
>> actually a thread. Given that the MPIDR_MT bit may not
>> represent this information consistently on homogeneous machines
>> we should prefer the PPTT flag if its available.
>>
> =

> Hi Jeremy,
> =

> I was just wondering if we should look to get this support backported =

> (when merged)?

I imagine that will happen..

> =

> I worry about the case of a system with the CPU having MT bit in the =

> MPIDR (while not actually threaded), i.e. the system for which these =

> PPTT flags were added (as I understand).

I have tested this patch on DAWN which happens to have the MT bit set, =

but isn't threaded, and it appears to work.

> =

>> Signed-off-by: Jeremy Linton <jeremy.linton@arm.com>
>> ---
>> =A0arch/arm64/kernel/topology.c | 8 +++++---
>> =A01 file changed, 5 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/topology.c b/arch/arm64/kernel/topology.c
>> index 0825c4a856e3..cbbedb53cf06 100644
>> --- a/arch/arm64/kernel/topology.c
>> +++ b/arch/arm64/kernel/topology.c
>> @@ -346,11 +346,9 @@ void remove_cpu_topology(unsigned int cpu)
>> =A0 */
>> =A0static int __init parse_acpi_topology(void)
>> =A0{
>> -=A0=A0=A0 bool is_threaded;
>> +=A0=A0=A0 int is_threaded;
>> =A0=A0=A0=A0 int cpu, topology_id;
>>
>> -=A0=A0=A0 is_threaded =3D read_cpuid_mpidr() & MPIDR_MT_BITMASK;
>> -
>> =A0=A0=A0=A0 for_each_possible_cpu(cpu) {
>> =A0=A0=A0=A0=A0=A0=A0=A0 int i, cache_id;
>>
>> @@ -358,6 +356,10 @@ static int __init parse_acpi_topology(void)
>> =A0=A0=A0=A0=A0=A0=A0=A0 if (topology_id < 0)
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 return topology_id;
>>
>> +=A0=A0=A0=A0=A0=A0=A0 is_threaded =3D acpi_pptt_cpu_is_thread(cpu);
>> +=A0=A0=A0=A0=A0=A0=A0 if (is_threaded < 0)
>> +=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 is_threaded =3D read_cpuid_mpidr() & =
MPIDR_MT_BITMASK;
>> +
>> =A0=A0=A0=A0=A0=A0=A0=A0 if (is_threaded) {
>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 cpu_topology[cpu].thread_id =3D top=
ology_id;
> =

> For described above scenario, this seems wrong.

I'm not sure I understand the concern.

This is going to ignore the MPIDR_MT bit on any machine with a PPTT =

revision > 1. Are you worried about the topology_id assignment?


> =

>> =A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 topology_id =3D find_acpi_cpu_topol=
ogy(cpu, 1);
>>
> =

> BTW, we did test an old kernel with 6.3 PPTT bios for this on D06 (some =

> versions have MT bit set), and it looked ok. But I am still a bit =

> skeptical.
> =

> Thanks,
> John
> =

> =



Thanks,

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
