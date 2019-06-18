Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C832A49DDB
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 11:56:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drjhf+z29+c77VhoT8l0AgqY6lKRmP6AeyIeeJc9kKE=; b=A2nrIDE9BEOavy
	FFH/tKxYzTO+pyDmPOZPaXfM6xdngcOsgI5xJ+QCoA6rdXfK8w+LtDmaV/qn8L/72gu0vwvU1ke7r
	Z/lRBTvCwboCsiZPiISwuSF1DwGS62aPP7rpM7QqUZe01HFGPyiGhsPGAa3SB9FAJ8ZPVurbhNx1b
	l5tOJhb+KLnZiCOUwIm1GRVwFvfshEMtVHfWRo1M0D2IaEmOH81dbzPKDPR+viFvV3uqa9CZYZxCN
	a05HqBggAbvHhLMtUb8jxOK3EdPnv9OnnPJ/zzEaJA21xylIw5C9yBfjuY+GhWKYBWxFLJYslNe24
	eNt/mEj1slOWKy/A8hdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdArG-0001Ze-JO; Tue, 18 Jun 2019 09:56:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAr3-0001YR-54
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 09:56:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA5B0344;
 Tue, 18 Jun 2019 02:56:40 -0700 (PDT)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BC9FE3F246;
 Tue, 18 Jun 2019 02:58:25 -0700 (PDT)
Subject: Re: [PATCH] arm64: smp: fix smp_send_stop() behaviour
To: Itaru Kitayama <itaru.kitayama@gmail.com>
References: <20190613122146.45459-1-cristian.marussi@arm.com>
 <CANW9uyt1_Jt=Lk_Y7OQOEnSx7rZg5J5gQYcZcxU8TeZRYYHLCQ@mail.gmail.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <639232f2-61f7-1b9c-2db7-4901dec7ca05@arm.com>
Date: Tue, 18 Jun 2019 10:56:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CANW9uyt1_Jt=Lk_Y7OQOEnSx7rZg5J5gQYcZcxU8TeZRYYHLCQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_025641_495167_0D1E8641 
X-CRM114-Status: GOOD (  20.03  )
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, will.deacon@arm.com,
 dave.martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Itaru

thanks for the review.

On 17/06/2019 20:58, Itaru Kitayama wrote:
> Could you avoid using the magic number like in udelay()?
> 

If you mean udelay(1) it is just that I avoided modifying anything which was not
strictly related to the fix addressed by this patch.

Thanks

Cristian

> On Thu, Jun 13, 2019 at 21:22 Cristian Marussi <cristian.marussi@arm.com>
> wrote:
> 
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
>> [0]
>> https://lore.kernel.org/linux-arm-kernel/1559576102-12156-1-git-send-email-Dave.Martin@arm.com/
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
>>         unsigned long timeout;
>> +       unsigned int this_cpu_online = cpu_online(smp_processor_id());
>>
>> -       if (num_online_cpus() > 1) {
>> +       /*
>> +        * If this CPU isn't fully online, it will not be counted in
>> +        * num_online_cpus(): on a 2-CPU system this situation will
>> +        * result in no message being sent to the other already online CPU.
>> +        */
>> +       if (num_online_cpus() > this_cpu_online) {
>>                 cpumask_t mask;
>>
>>                 cpumask_copy(&mask, cpu_online_mask);
>> @@ -985,10 +991,10 @@ void smp_send_stop(void)
>>
>>         /* Wait up to one second for other CPUs to stop */
>>         timeout = USEC_PER_SEC;
>> -       while (num_online_cpus() > 1 && timeout--)
>> +       while (num_online_cpus() > this_cpu_online && timeout--)
>>                 udelay(1);
>>
>> -       if (num_online_cpus() > 1)
>> +       if (num_online_cpus() > this_cpu_online)
>>                 pr_warning("SMP: failed to stop secondary CPUs %*pbl\n",
>>                            cpumask_pr_args(cpu_online_mask));
>>
>> --
>> 2.17.1
>>
>>
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
