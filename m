Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1D8949D82
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:36:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1nOHRbZsYR1GYAZ5DdHfj6WdjBLkCidC8Q4dGut+sAs=; b=i8LgWys6FM3uoQ
	03IYSASLI5mgtcp4+DdHMywH+mOPYY620NmzzD3qO8TVWSsdpwMDyidiXv2hhYQSiJU0pTsVnmL5n
	hBRJD1P5wQpj9GsyZrD+1f3cb2vOcU9VNbFuIYEns85UM4pkmr+3sSjt1nRWGD9K4c4gy5pYIA0hj
	jxsluVJmpSJp17ilVJTMJAatirAvxuKE4FexNna7H0OeUGQbrzpSDMfDuTpxILadPSXciluM0BNsb
	c7yyYqaolimeztyfT/S+irWe4ktHwo4cqInfP8U3/l1unzHeeXorMCu71uKrJoW/fCY389MeUjVUc
	TGefLYWdsXM3iZGlp6Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdAXY-0006NA-SJ; Tue, 18 Jun 2019 09:36:32 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAXL-0006Ln-TW
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:36:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60AE7344;
 Tue, 18 Jun 2019 02:36:19 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 633BA3F246;
 Tue, 18 Jun 2019 02:36:18 -0700 (PDT)
Subject: Re: [PATCH] arm64: smp: fix smp_send_stop() behaviour
To: Will Deacon <will.deacon@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>
References: <20190613122146.45459-1-cristian.marussi@arm.com>
 <20190617180913.GN30800@fuggles.cambridge.arm.com>
From: James Morse <james.morse@arm.com>
Message-ID: <e950e812-221f-237f-06ee-ac6bbd3765b3@arm.com>
Date: Tue, 18 Jun 2019 10:36:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190617180913.GN30800@fuggles.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_023619_994878_0D89AD7F 
X-CRM114-Status: GOOD (  18.22  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Christian, Will,

On 17/06/2019 19:09, Will Deacon wrote:
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

We should do the same in crash_smp_send_stop(), its possible a newly-online core triggers
kdump by calling panic() in the same way.

machine_kexec() is called on the last surviving cpu after migrate_to_reboot_cpu() has run.
At first glance it looks like this could never happen there, but kexec re-enables
cpu-hotplug (commit 011e4b02f1da), and we can reschedule before we start moving memory
around, so I'm not convinced its immune...



Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
