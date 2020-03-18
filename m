Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF581893FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 03:22:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i2q+jIEfXYbuy8rsFpQQWVtHvU3/YR83r5iYOtz0AUs=; b=MHtwDwfcYPlEOP
	1jm5g4OLbmmyvLgA3j3VCPfhN+SO/KHoLpCSzNszSuuGM65tzZ2I4wJIQby7OIWM1VeI+zRZXYsnd
	WqBOMtiwtOGcipjMDpHslUcpgMmiQH5eZQ3wEQjkv/VjkksaAjIipcbofdi76EW2hEv/H2Rkva+sM
	W2eIy2qDt2X9Cx6uguHD3u3QuuuuT0EA5Iy0LF9AcxJjMKAa+XzYkNR+c/PuEEuqXMXEjsdSuW0Kl
	yNOGt69QfE0P945IbGpf+gRxix1bOuaQuKWMS2E2jV4mAPykvQbZbOY7mkhbYhhjtG9Sl9QbC1S7Y
	KuWE3Qtcxoda4vsKndiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEOLy-0005cT-PD; Wed, 18 Mar 2020 02:22:42 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEOLm-0005c5-Q6
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 02:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584498149;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AUmv2YEfoHD+q8aQTrCLSw5R3+//nnX5y8O23/nUlqk=;
 b=aFo9DYAC9gOKUaecbVUoey6s0uWxbSrfh1U7Za/5k7sZhMDPcelpaCy8nYZWIFTBCutRwY
 u2mWnWsX3Oi/gJxTMv6ioPiRnyONuvwSZKzl8ggbNO8W0oaIUSW9HNfIDHidO3wwzLRybD
 /vp5YpR6PIjBd/3GDHI2YsjmzOvqbP4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-271-lGYieJSRMQOz_pFWrZQy2Q-1; Tue, 17 Mar 2020 22:22:27 -0400
X-MC-Unique: lGYieJSRMQOz_pFWrZQy2Q-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id F26E713E2;
 Wed, 18 Mar 2020 02:22:25 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-221.bne.redhat.com
 [10.64.54.221])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2B5895D9E2;
 Wed, 18 Mar 2020 02:22:22 +0000 (UTC)
Subject: Re: [PATCH v4 3/5] arm64: Introduce get_cpu_ops() helper function
To: Mark Rutland <mark.rutland@arm.com>
References: <20200226002356.86986-1-gshan@redhat.com>
 <20200226002356.86986-4-gshan@redhat.com>
 <20200317104833.GE8831@lakrids.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <b3f944f0-d595-eb73-6b16-06f6c0c79b95@redhat.com>
Date: Wed, 18 Mar 2020 13:22:20 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200317104833.GE8831@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_192230_976035_B923B006 
X-CRM114-Status: GOOD (  18.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.205.24.74 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lorenzo.pieralisi@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 shan.gavin@gmail.com, sudeep.holla@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/17/20 9:48 PM, Mark Rutland wrote:
> On Wed, Feb 26, 2020 at 11:23:54AM +1100, Gavin Shan wrote:
>> This introduces get_cpu_ops() to return the CPU operations according to
>> the given CPU index. For now, it simply returns the @cpu_ops[cpu] as
>> before. So it shouldn't introduce any functional changes.
>>
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
> 
> Generally this looks good to me; I like that it simplifies the cases
> where we get the ops repeatedly today.
> 
> I have one comment below.
> 
>> @@ -383,6 +392,7 @@ void cpu_die(void)
>>   void cpu_die_early(void)
>>   {
>>   	int cpu = smp_processor_id();
>> +	const struct cpu_operations *ops = get_cpu_ops(cpu);
>>   
>>   	pr_crit("CPU%d: will not boot\n", cpu);
>>   
>> @@ -392,8 +402,8 @@ void cpu_die_early(void)
>>   #ifdef CONFIG_HOTPLUG_CPU
>>   	update_cpu_boot_status(CPU_KILL_ME);
>>   	/* Check if we can park ourselves */
>> -	if (cpu_ops[cpu] && cpu_ops[cpu]->cpu_die)
>> -		cpu_ops[cpu]->cpu_die(cpu);
>> +	if (ops && ops->cpu_die)
>> +		ops->cpu_die(cpu);
>>   #endif
> 
> Can we factor this out the die logic into a helper:
> 
> | static void __cpu_try_die(int cpu)
> | {
> | #ifdef CONFIG_HOTPLUG_CPU
> | 	const struct cpu_operations *ops = get_cpu_ops(cpu);
> | 	if (ops && ops->cpu_die)
> | 		ops->cpu_die(cpu);
> | #endif
> | }
> 
> ... with cpu_die_early() having:
> 
> | if (IS_ENABLED(CONFIG_HOTPLUG_CPU)) {
> | 	update_cpu_boot_status(CPU_KILL_ME);
> |	__cpu_try_die(cpu);
> | }
> 
> ... and likewise in ipi_cpu_crash_stop(), without the
> update_cpu_boot_status() ...
> 
>> @@ -855,6 +870,10 @@ static atomic_t waiting_for_crash_ipi = ATOMIC_INIT(0);
>>   
>>   static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
>>   {
>> +#ifdef CONFIG_HOTPLUG_CPU
>> +	const struct cpu_operations *ops;
>> +#endif
> 
> ... where this can go ...
> 
>> +
>>   #ifdef CONFIG_KEXEC_CORE
>>   	crash_save_cpu(regs, cpu);
>>   
>> @@ -864,8 +883,9 @@ static void ipi_cpu_crash_stop(unsigned int cpu, struct pt_regs *regs)
>>   	sdei_mask_local_cpu();
>>   
>>   #ifdef CONFIG_HOTPLUG_CPU
>> -	if (cpu_ops[cpu]->cpu_die)
>> -		cpu_ops[cpu]->cpu_die(cpu);
>> +	ops = get_cpu_ops(cpu);
>> +	if (ops->cpu_die)
>> +		ops->cpu_die(cpu);
>>   #endif
> 
> ... and this can be:
> 
> | if (IS_ENABLED(CONFIG_HOTPLUG_CPU))
> | 	__cpu_try_die(cpu);
> 
> Thanks,
> Mark.
> 

Thanks for the detailed comments. With it, the code looks cleaner. I'll
have this in next revision (v5).

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
