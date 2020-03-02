Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE2A9175D51
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 15:36:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wsnb9Vku4RmLETRBy/qVuIjgIvu5JuJTMYLDO9+FBFY=; b=kalbMk1wR2zsFP
	Sk0F1wvh1rIoJBxFEaqbpM0S0wtH2DUzcAi0L4r9Rs8UFJMackuXwYxAe8X5QckTDxnpGOxvZPUu1
	argEHbhq4owLiSK3rx4IFQQKRHu/LMOYSdlmOr3RvsSLdOmTXaAtUaAujui5SHvXfmcGvDDjRk+Qk
	DqIVT2DVfClYAtS8y7SAhJAFsXtVg2BS2tmP27WrPWMarDnEyBUYwTZ1SFBYau8KhmS0xEF7jWRLL
	Gps6QV+QXHC3tzOWu869KBzHs/Y56HqsJG6+V8W3ANxNQ+MrlD3l52T6by6uSJCZIMsPORr9V5Kzh
	kkrv+jGd1UX068Hvy/eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8mB5-0008QF-3C; Mon, 02 Mar 2020 14:36:15 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8mAw-0008P5-4C
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 14:36:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583159763;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pwEel4uE0Cdd4JHfFWuutC2fbn5lHLwoc+9Xeu/u7ZY=;
 b=D2/DL3zxjwbAiywQV8oBjoxlV+ONFqh/zxwFBu96+toD+G6wPatJHnDUeQejf3fe+u/JdY
 dzD8vIbTKLZHbE1hLnpZ5PB/7ocacWAFRqxRqKNTLUXYftbD2H3SyyLxRMAa0KzQObjLQa
 5knT9KzRi9ZZ+6C4yuAAuT4EM38lhFU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-417-iNJD-8apO3Ojb5Dgy2NStw-1; Mon, 02 Mar 2020 09:36:00 -0500
X-MC-Unique: iNJD-8apO3Ojb5Dgy2NStw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B02DD85EE6D;
 Mon,  2 Mar 2020 14:35:58 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-46.bne.redhat.com [10.64.54.46])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 34A5E619DB;
 Mon,  2 Mar 2020 14:35:55 +0000 (UTC)
Subject: Re: [PATCH] arm64/kernel: Simplify __cpu_up() by bailing out early
To: Mark Rutland <mark.rutland@arm.com>
References: <20200302020340.119588-1-gshan@redhat.com>
 <20200302122135.GB56497@lakrids.cambridge.arm.com>
 <ddbb5cb2-e8b6-ab1c-d283-fb0f402d2a4f@redhat.com>
 <20200302140640.GC56497@lakrids.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <803b09ec-233d-8994-3dad-5a4a4ad85412@redhat.com>
Date: Tue, 3 Mar 2020 01:35:54 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200302140640.GC56497@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_063606_257327_568E4598 
X-CRM114-Status: GOOD (  31.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Reply-To: Gavin Shan <gshan@redhat.com>
Cc: catalin.marinas@arm.com, linux-kernel@vger.kernel.org, shan.gavin@gmail.com,
 maz@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/3/20 1:06 AM, Mark Rutland wrote:
> On Tue, Mar 03, 2020 at 12:38:48AM +1100, Gavin Shan wrote:
>> On 3/2/20 11:21 PM, Mark Rutland wrote:
>>> On Mon, Mar 02, 2020 at 01:03:40PM +1100, Gavin Shan wrote:
>>>> The function __cpu_up() is invoked to bring up the target CPU through
>>>> the backend, PSCI for example. The nested if statements won't be needed
>>>> if we bail out early on the following two conditions where the status
>>>> won't be checked. The code looks simplified in that case.
>>>>
>>>>      * Error returned from the backend (e.g. PSCI)
>>>>      * The target CPU has been marked as onlined
>>>>
>>>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>>>
>>> FWIW, this looks like a nice cleanup to me:
>>>
>>> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
>>>
>>> While this patch leaves secondary_data.{task,stack} stale on a
>>> successful onlining, that was already the case for a timeout, and should
>>> be fine (since the next attempt at onlining will configure those before
>>> poking the CPU).
>>>
>>> Thanks,
>>> Mark.
>>>
>>
>> Thanks, Mark. Yeah, it should be fine as you said. There are something else,
>> which might be not relevant. @secondary_data could be accessed by multiple CPUs
>> in parallel. For example, the master CPU boots CPU#1 and timeouts to wait it
>> to be online in 5 seconds. CPU#1 isn't necessarily stuck in somewhere. After
>> that, CPU#2 is brought up and might be accessing @secondary_data. At this point,
>> CPU#1 can come back to access it either. However, @secondary_data isn't valid
>> for CPU#1 anymore.
> 
> Sure; I'm aware of improvements that could be made here, but I don't
> think they need to block this patch.
> 

Yep, I think this patch is ready to go in if nobody else objects.

>> I was thinking of something to improve the situation, but not sure if it makes
>> any sense to do so. There are several options: (1) Make @secondary_data per-cpu
>> variable, which looks a nature way to go. (2) To shutdown the CPU on timeout.
>> The shutdown request can be failed to be served in theory, but it seems still
>> an improvement.
> 
> I think #2 is a bad idea, since if the CPU gets into the kernel at all,
> it may have done stuff (e.g. acquiring locks), and ripping it out is
> liable to cause more problems.
> 
> I think doing #1 might be nice, but some caveats apply.
> 
> I'd like to clean up the secondary stack/task hand-over to use an atomic
> cmpxchg pair, so that we can detect when the secondary has possibly
> tried to use the stack/task. That requires splitting that from the
> MMU-off bits from the MMU-on bits, and I'm not sure how well that
> interacts with #1. It might mean that the per-cpu part isn't that
> worthwhile.
> 

Right, #2 isn't good if the acquired resource (e.g. lock) can't be released.

It's something like to introduce a lock to the shared @secondary_data with
atomic cmpxchg pair. With that, I don't think per-cpu part is needed, not
so useful at least.

Thanks,
Gavin

>>
>>>> ---
>>>>    arch/arm64/kernel/smp.c | 79 +++++++++++++++++++----------------------
>>>>    1 file changed, 37 insertions(+), 42 deletions(-)
>>>>
>>>> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
>>>> index d4ed9a19d8fe..2a9d8f39dc58 100644
>>>> --- a/arch/arm64/kernel/smp.c
>>>> +++ b/arch/arm64/kernel/smp.c
>>>> @@ -115,60 +115,55 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
>>>>    	update_cpu_boot_status(CPU_MMU_OFF);
>>>>    	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
>>>> -	/*
>>>> -	 * Now bring the CPU into our world.
>>>> -	 */
>>>> +	/* Now bring the CPU into our world */
>>>>    	ret = boot_secondary(cpu, idle);
>>>> -	if (ret == 0) {
>>>> -		/*
>>>> -		 * CPU was successfully started, wait for it to come online or
>>>> -		 * time out.
>>>> -		 */
>>>> -		wait_for_completion_timeout(&cpu_running,
>>>> -					    msecs_to_jiffies(5000));
>>>> -
>>>> -		if (!cpu_online(cpu)) {
>>>> -			pr_crit("CPU%u: failed to come online\n", cpu);
>>>> -			ret = -EIO;
>>>> -		}
>>>> -	} else {
>>>> +	if (ret) {
>>>>    		pr_err("CPU%u: failed to boot: %d\n", cpu, ret);
>>>>    		return ret;
>>>>    	}
>>>> +	/*
>>>> +	 * CPU was successfully started, wait for it to come online or
>>>> +	 * time out.
>>>> +	 */
>>>> +	wait_for_completion_timeout(&cpu_running,
>>>> +				    msecs_to_jiffies(5000));
>>>> +	if (cpu_online(cpu))
>>>> +		return 0;
>>>> +
>>>> +	pr_crit("CPU%u: failed to come online\n", cpu);
>>>>    	secondary_data.task = NULL;
>>>>    	secondary_data.stack = NULL;
>>>>    	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
>>>>    	status = READ_ONCE(secondary_data.status);
>>>> -	if (ret && status) {
>>>> -
>>>> -		if (status == CPU_MMU_OFF)
>>>> -			status = READ_ONCE(__early_cpu_boot_status);
>>>> +	if (status == CPU_MMU_OFF)
>>>> +		status = READ_ONCE(__early_cpu_boot_status);
>>>> -		switch (status & CPU_BOOT_STATUS_MASK) {
>>>> -		default:
>>>> -			pr_err("CPU%u: failed in unknown state : 0x%lx\n",
>>>> -					cpu, status);
>>>> -			cpus_stuck_in_kernel++;
>>>> -			break;
>>>> -		case CPU_KILL_ME:
>>>> -			if (!op_cpu_kill(cpu)) {
>>>> -				pr_crit("CPU%u: died during early boot\n", cpu);
>>>> -				break;
>>>> -			}
>>>> -			pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
>>>> -			/* Fall through */
>>>> -		case CPU_STUCK_IN_KERNEL:
>>>> -			pr_crit("CPU%u: is stuck in kernel\n", cpu);
>>>> -			if (status & CPU_STUCK_REASON_52_BIT_VA)
>>>> -				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
>>>> -			if (status & CPU_STUCK_REASON_NO_GRAN)
>>>> -				pr_crit("CPU%u: does not support %luK granule \n", cpu, PAGE_SIZE / SZ_1K);
>>>> -			cpus_stuck_in_kernel++;
>>>> +	switch (status & CPU_BOOT_STATUS_MASK) {
>>>> +	default:
>>>> +		pr_err("CPU%u: failed in unknown state : 0x%lx\n",
>>>> +		       cpu, status);
>>>> +		cpus_stuck_in_kernel++;
>>>> +		break;
>>>> +	case CPU_KILL_ME:
>>>> +		if (!op_cpu_kill(cpu)) {
>>>> +			pr_crit("CPU%u: died during early boot\n", cpu);
>>>>    			break;
>>>> -		case CPU_PANIC_KERNEL:
>>>> -			panic("CPU%u detected unsupported configuration\n", cpu);
>>>>    		}
>>>> +		pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
>>>> +		/* Fall through */
>>>> +	case CPU_STUCK_IN_KERNEL:
>>>> +		pr_crit("CPU%u: is stuck in kernel\n", cpu);
>>>> +		if (status & CPU_STUCK_REASON_52_BIT_VA)
>>>> +			pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
>>>> +		if (status & CPU_STUCK_REASON_NO_GRAN) {
>>>> +			pr_crit("CPU%u: does not support %luK granule\n",
>>>> +				cpu, PAGE_SIZE / SZ_1K);
>>>> +		}
>>>> +		cpus_stuck_in_kernel++;
>>>> +		break;
>>>> +	case CPU_PANIC_KERNEL:
>>>> +		panic("CPU%u detected unsupported configuration\n", cpu);
>>>>    	}
>>>>    	return ret;
>>>> -- 
>>>> 2.23.0
>>>>
>>>
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
