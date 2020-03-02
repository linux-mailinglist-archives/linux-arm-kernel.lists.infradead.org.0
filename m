Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A751175BDD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 14:39:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mv5kR+uggeSpE7NH5MsrUWMZVnzwAq8iPCx3uhR5IJ0=; b=QyXG0qLdNs2d4u
	TZsm36FmJG3B74AvrHH8SLbv8gXuc9EHTaPGZNX9pJOomClM8nfftnayzLjVN7c5YlaVRzmt1t9xi
	esXt7Ro2HpwEDXbtzL3eWMPOm1eW3Zcbkiqex48U/f1DL0gpy6mgWkbt2BSlyxdQdzWJGzpMe/YU8
	64xoZIm+bFD/hyseDJUBRjA085omIRKtt/YRVyYW92c2HqgtJ5mHqo1o8zqdeork0CfcDL2SWrpEW
	WEnCRV9gM82E8XUptbJ1y7aREMWbPZ4a3o5D7CvPcglnIHZoVqMG5JrQ9UcPJi/kY3TL4DiDSUEwu
	hNKLqTI4r7nINrcxUiwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8lHl-0002Ay-PQ; Mon, 02 Mar 2020 13:39:05 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8lHe-0002A0-Mz
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 13:39:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583156336;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WcFb67oME/Nc+9ZCd/PtTGStB5FdqgJ2/9cOxFkulHA=;
 b=EKnzGmTcg58P9Bx1dS9Nmw67tf+DaZLmqwFYMPWa+awgUaPquVfLJLoVGiIN+dMdVUX/G1
 osCSuHcpNjFUe/XARth20UfTn3ggDUkuASqV1GnfLzQifmtUdtKoK0P78RGCTgsFPe8ol7
 AiDZh5TyMPl0jIpaljrDlfvR5dQet6s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-354-F6dJcXFcOz2fv8P7oQrtFA-1; Mon, 02 Mar 2020 08:38:54 -0500
X-MC-Unique: F6dJcXFcOz2fv8P7oQrtFA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6878C8AB9E0;
 Mon,  2 Mar 2020 13:38:53 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-46.bne.redhat.com [10.64.54.46])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 208449CA3;
 Mon,  2 Mar 2020 13:38:50 +0000 (UTC)
Subject: Re: [PATCH] arm64/kernel: Simplify __cpu_up() by bailing out early
To: Mark Rutland <mark.rutland@arm.com>
References: <20200302020340.119588-1-gshan@redhat.com>
 <20200302122135.GB56497@lakrids.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <ddbb5cb2-e8b6-ab1c-d283-fb0f402d2a4f@redhat.com>
Date: Tue, 3 Mar 2020 00:38:48 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200302122135.GB56497@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_053858_827218_97BA602D 
X-CRM114-Status: GOOD (  27.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

On 3/2/20 11:21 PM, Mark Rutland wrote:
> On Mon, Mar 02, 2020 at 01:03:40PM +1100, Gavin Shan wrote:
>> The function __cpu_up() is invoked to bring up the target CPU through
>> the backend, PSCI for example. The nested if statements won't be needed
>> if we bail out early on the following two conditions where the status
>> won't be checked. The code looks simplified in that case.
>>
>>     * Error returned from the backend (e.g. PSCI)
>>     * The target CPU has been marked as onlined
>>
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
> 
> FWIW, this looks like a nice cleanup to me:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> 
> While this patch leaves secondary_data.{task,stack} stale on a
> successful onlining, that was already the case for a timeout, and should
> be fine (since the next attempt at onlining will configure those before
> poking the CPU).
> 
> Thanks,
> Mark.
> 

Thanks, Mark. Yeah, it should be fine as you said. There are something else,
which might be not relevant. @secondary_data could be accessed by multiple CPUs
in parallel. For example, the master CPU boots CPU#1 and timeouts to wait it
to be online in 5 seconds. CPU#1 isn't necessarily stuck in somewhere. After
that, CPU#2 is brought up and might be accessing @secondary_data. At this point,
CPU#1 can come back to access it either. However, @secondary_data isn't valid
for CPU#1 anymore.

I was thinking of something to improve the situation, but not sure if it makes
any sense to do so. There are several options: (1) Make @secondary_data per-cpu
variable, which looks a nature way to go. (2) To shutdown the CPU on timeout.
The shutdown request can be failed to be served in theory, but it seems still
an improvement.

Thanks,
Gavin

>> ---
>>   arch/arm64/kernel/smp.c | 79 +++++++++++++++++++----------------------
>>   1 file changed, 37 insertions(+), 42 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
>> index d4ed9a19d8fe..2a9d8f39dc58 100644
>> --- a/arch/arm64/kernel/smp.c
>> +++ b/arch/arm64/kernel/smp.c
>> @@ -115,60 +115,55 @@ int __cpu_up(unsigned int cpu, struct task_struct *idle)
>>   	update_cpu_boot_status(CPU_MMU_OFF);
>>   	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
>>   
>> -	/*
>> -	 * Now bring the CPU into our world.
>> -	 */
>> +	/* Now bring the CPU into our world */
>>   	ret = boot_secondary(cpu, idle);
>> -	if (ret == 0) {
>> -		/*
>> -		 * CPU was successfully started, wait for it to come online or
>> -		 * time out.
>> -		 */
>> -		wait_for_completion_timeout(&cpu_running,
>> -					    msecs_to_jiffies(5000));
>> -
>> -		if (!cpu_online(cpu)) {
>> -			pr_crit("CPU%u: failed to come online\n", cpu);
>> -			ret = -EIO;
>> -		}
>> -	} else {
>> +	if (ret) {
>>   		pr_err("CPU%u: failed to boot: %d\n", cpu, ret);
>>   		return ret;
>>   	}
>>   
>> +	/*
>> +	 * CPU was successfully started, wait for it to come online or
>> +	 * time out.
>> +	 */
>> +	wait_for_completion_timeout(&cpu_running,
>> +				    msecs_to_jiffies(5000));
>> +	if (cpu_online(cpu))
>> +		return 0;
>> +
>> +	pr_crit("CPU%u: failed to come online\n", cpu);
>>   	secondary_data.task = NULL;
>>   	secondary_data.stack = NULL;
>>   	__flush_dcache_area(&secondary_data, sizeof(secondary_data));
>>   	status = READ_ONCE(secondary_data.status);
>> -	if (ret && status) {
>> -
>> -		if (status == CPU_MMU_OFF)
>> -			status = READ_ONCE(__early_cpu_boot_status);
>> +	if (status == CPU_MMU_OFF)
>> +		status = READ_ONCE(__early_cpu_boot_status);
>>   
>> -		switch (status & CPU_BOOT_STATUS_MASK) {
>> -		default:
>> -			pr_err("CPU%u: failed in unknown state : 0x%lx\n",
>> -					cpu, status);
>> -			cpus_stuck_in_kernel++;
>> -			break;
>> -		case CPU_KILL_ME:
>> -			if (!op_cpu_kill(cpu)) {
>> -				pr_crit("CPU%u: died during early boot\n", cpu);
>> -				break;
>> -			}
>> -			pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
>> -			/* Fall through */
>> -		case CPU_STUCK_IN_KERNEL:
>> -			pr_crit("CPU%u: is stuck in kernel\n", cpu);
>> -			if (status & CPU_STUCK_REASON_52_BIT_VA)
>> -				pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
>> -			if (status & CPU_STUCK_REASON_NO_GRAN)
>> -				pr_crit("CPU%u: does not support %luK granule \n", cpu, PAGE_SIZE / SZ_1K);
>> -			cpus_stuck_in_kernel++;
>> +	switch (status & CPU_BOOT_STATUS_MASK) {
>> +	default:
>> +		pr_err("CPU%u: failed in unknown state : 0x%lx\n",
>> +		       cpu, status);
>> +		cpus_stuck_in_kernel++;
>> +		break;
>> +	case CPU_KILL_ME:
>> +		if (!op_cpu_kill(cpu)) {
>> +			pr_crit("CPU%u: died during early boot\n", cpu);
>>   			break;
>> -		case CPU_PANIC_KERNEL:
>> -			panic("CPU%u detected unsupported configuration\n", cpu);
>>   		}
>> +		pr_crit("CPU%u: may not have shut down cleanly\n", cpu);
>> +		/* Fall through */
>> +	case CPU_STUCK_IN_KERNEL:
>> +		pr_crit("CPU%u: is stuck in kernel\n", cpu);
>> +		if (status & CPU_STUCK_REASON_52_BIT_VA)
>> +			pr_crit("CPU%u: does not support 52-bit VAs\n", cpu);
>> +		if (status & CPU_STUCK_REASON_NO_GRAN) {
>> +			pr_crit("CPU%u: does not support %luK granule\n",
>> +				cpu, PAGE_SIZE / SZ_1K);
>> +		}
>> +		cpus_stuck_in_kernel++;
>> +		break;
>> +	case CPU_PANIC_KERNEL:
>> +		panic("CPU%u detected unsupported configuration\n", cpu);
>>   	}
>>   
>>   	return ret;
>> -- 
>> 2.23.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
