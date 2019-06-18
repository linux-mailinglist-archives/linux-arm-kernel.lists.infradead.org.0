Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76FD349D9E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HgG7g7ySGHxo+3RZgUzz/5KT1kWIWF8e0dYkPCWdjPA=; b=GgHdvEPvZMZUEY
	bJlM3NtUMCAxZ0pEBQOA58W4K5SDjU+ta9c6/gEk2QA/cmmu1oalTF4fhtHTiYVf5u7zE90Wr8Cz1
	BzgKu0NUmXyR4/l6NHyn1rjqpAJenNZrgkWXLIbiZSbiAKpqkrPfOAIFqPbja36KTcPVKamF+XhAY
	ItpNNyKowt5IHlXkhvKNjRVRYJZlCzrQi0chmh3KKYAjR0N9VmXSBtiahSFhcCKRYZN/bzLe9z7TE
	Aiex03nm/EEyeIZQk2jCOgAU+CFmlntFF3VLM40rUA67EyKkaEQ21XItnmJmT11eqPAuLwHgGEoqS
	PkN5VdzAS14oO9N8EgKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAcd-0001A4-3p; Tue, 18 Jun 2019 09:41:47 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAcS-00019D-DJ
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:41:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 186B0344;
 Tue, 18 Jun 2019 02:41:34 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 10AEE3F246;
 Tue, 18 Jun 2019 02:43:18 -0700 (PDT)
Subject: Re: [PATCH] arm64: smp: fix smp_send_stop() behaviour
To: Will Deacon <will.deacon@arm.com>
References: <20190613122146.45459-1-cristian.marussi@arm.com>
 <20190617180913.GN30800@fuggles.cambridge.arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <aeaeffac-b8de-3c99-0ca9-e1f55ba3e29d@arm.com>
Date: Tue, 18 Jun 2019 10:41:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617180913.GN30800@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_024136_546988_BDEE6234 
X-CRM114-Status: GOOD (  21.07  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, james.morse@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will

Thanks for the review.

On 17/06/2019 19:09, Will Deacon wrote:
> [+James M]
> 
> On Thu, Jun 13, 2019 at 01:21:46PM +0100, Cristian Marussi wrote:
>> On a 2-CPUs system, when one CPU is already online if the other
>> panics while starting-up, smp_send_stop() will fail to send any
>> STOP message to the other already online core, resulting in a
>> system still responsive and alive at the end of the panic procedure.
>> This patch makes smp_send_stop() account also for the online status
>> of the calling CPU while evaluating how many CPUs are effectively
>> online: this way, an adequate number of STOPs is sent, so enforcing
>> a proper freeze of the system at the end of panic even under the
>> above conditions.
>>
>> Reported-by: Dave Martin <Dave.Martin@arm.com>
>> Signed-off-by: Cristian Marussi <cristian.marussi@arm.com>
>> ---
>>
>> This peculiar panic-procedure behaviour was exposed hitting a BUG()
>> while running a KSFT cpu-hotplug test on a 2-core ARMv8 model.
>> Such trigger-BUG() was fixed by a distinct commit already included
>> in Linux 5.2-rc4 [0]
>>
>> [0] https://lore.kernel.org/linux-arm-kernel/1559576102-12156-1-git-send-email-Dave.Martin@arm.com/
>> ---
>>  arch/arm64/kernel/smp.c | 12 +++++++++---
>>  1 file changed, 9 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/smp.c b/arch/arm64/kernel/smp.c
>> index bb4b3f07761a..c7d604427883 100644
>> --- a/arch/arm64/kernel/smp.c
>> +++ b/arch/arm64/kernel/smp.c
>> @@ -971,8 +971,14 @@ void tick_broadcast(const struct cpumask *mask)
>>  void smp_send_stop(void)
>>  {
>>  	unsigned long timeout;
>> +	unsigned int this_cpu_online = cpu_online(smp_processor_id());
>>  
>> -	if (num_online_cpus() > 1) {
>> +	/*
>> +	 * If this CPU isn't fully online, it will not be counted in
>> +	 * num_online_cpus(): on a 2-CPU system this situation will
>> +	 * result in no message being sent to the other already online CPU.
>> +	 */
>> +	if (num_online_cpus() > this_cpu_online) {
>>  		cpumask_t mask;
>>  
>>  		cpumask_copy(&mask, cpu_online_mask);
>> @@ -985,10 +991,10 @@ void smp_send_stop(void)
>>  
>>  	/* Wait up to one second for other CPUs to stop */
>>  	timeout = USEC_PER_SEC;
>> -	while (num_online_cpus() > 1 && timeout--)
>> +	while (num_online_cpus() > this_cpu_online && timeout--)
>>  		udelay(1);
>>  
>> -	if (num_online_cpus() > 1)
>> +	if (num_online_cpus() > this_cpu_online)
>>  		pr_warning("SMP: failed to stop secondary CPUs %*pbl\n",
>>  			   cpumask_pr_args(cpu_online_mask));
> 
> Whilst this looks ok to me, I'm worried about whether or not we have this
> sort of logic elsewhere. For example, do we need to fix
> crash_smp_send_stop() (and possibly machine_kexec()) too?

I think we certainly have such logic in crash_smp_send_stop() too at least,
maybe it is just less easily exposed given the different use case of the function.

This wanted to be just a fix only against the observed troubled panic, but I
could extend it to cover similar issues spotted by code analysis, if deemed worth.

Thanks

Cristian


> 
> Will
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
