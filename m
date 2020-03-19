Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D7C18C35C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 23:54:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sKrTOtYsWj6aabm6fcbRx/1tZmQnsPYLLvWDO3FCsU=; b=eB6Z15DVlI+zeJ
	G/PBN/v8ciYW0cPgjImD+UJKt3mACNZ5LzL4xp7EYL+pKDYHyrU4MZcBDRaM1XeQyw37lh/sUO1Qg
	ZZycuJ3GUBGjE/YGYttL2koXDrSmBUevqN++WkiBkAheTnAxblz/7Mknr40UiTsFSApp1qG0Lyyqd
	UexG/TBOMSWdT5Co8iic5kCk1HbnrFTMEIzLqcpfi+WB7xvUjO1IT16trCx3R47nDV9ao6Cv/3wq4
	oxYS9+o2O5aMAsdJTeSrVdaWCZEiBCupPjrbOZidoSd1yUg+xX71o0eN6dAQgsRlLWpA8/EVHEuNe
	tK76UpfpmlHjaf4G238w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jF43u-0002oI-JZ; Thu, 19 Mar 2020 22:54:50 +0000
Received: from us-smtp-delivery-74.mimecast.com ([63.128.21.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jF43m-0002nY-OR
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 22:54:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584658476;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=EtqxGneWCOv3jEKTqnAVIbDtLGmkkbFunOEf/bp7LFw=;
 b=TP8NOogsdvU+omk1kSlcxkDXjbb6/ZZmgKfq7BXu1q8pE2pbDRJjXicK3hVrMldW3TpkKS
 cppktSY3Cv0NXyW9O5ffdUsQN0u53MGkBBOT6ms7rjRUFcF1/afoqPbl4P4YP8OGFRnOWF
 lR1TG3NOuio9XCDH6oLA3xTcjS2z/+Y=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-300-LigkGGDIMrKIoWwrzlzXJQ-1; Thu, 19 Mar 2020 18:54:29 -0400
X-MC-Unique: LigkGGDIMrKIoWwrzlzXJQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 30F838017CC;
 Thu, 19 Mar 2020 22:54:28 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-221.bne.redhat.com
 [10.64.54.221])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 46D9F5C1D8;
 Thu, 19 Mar 2020 22:54:24 +0000 (UTC)
Subject: Re: [PATCH v5 4/4] arm64: Remove CPU operations dereferencing array
To: Mark Rutland <mark.rutland@arm.com>
References: <20200318230145.72097-1-gshan@redhat.com>
 <20200318230145.72097-5-gshan@redhat.com>
 <20200319193801.GE4876@lakrids.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <ac6f3b7f-50c7-28c4-a70e-159fca53cfd5@redhat.com>
Date: Fri, 20 Mar 2020 09:54:22 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200319193801.GE4876@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_155442_872227_9863C110 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.128.21.74 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On 3/20/20 6:38 AM, Mark Rutland wrote:
> On Thu, Mar 19, 2020 at 10:01:45AM +1100, Gavin Shan wrote:
>> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
>> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
>> much memory has been used for this. Also, all secondary CPUs must use
>> same CPU operations and we shouldn't bring up the broken CPU as Lorenzo
>> Pieralisi and Mark Rutland pointed out.
>>
>> This introduces two variables (@{boot,secondary}_cpu_ops) to store the
>> CPU operations for boot CPU and secondary CPUs separately, which are
>> figured out from device tree or ACPI table. The secondary CPUs which
>> have inconsistent operations won't be brought up. With this, the CPU
>> operations dereferencing array is removed and 2KB memory is saved. Note
>> the logic of cpu_get_ops() is merged to get_cpu_method() since the logic
>> is simple enough and no need to have a separate function for it.
> 
> To be honest, I'm not too keen on this. We've generally tried to bucket
> things as either global or per-cpu, and it's odd to go against that.
> 
> Is 2K a problem because it forms part of the static Image size? If so,
> could we make this a percpu pointer instead, or is there a problem with
> that?
> 

Yes, I agree the usual option is global array or per-cpu. The global array
is increasing the image size, which isn't nice. I don't think the per-cpu
can be used in this case because the per-cpu offset (@__per_cpu_offset[])
isn't initialized yet at that point.

    start_kernel
       setup_arch
          init_bootcpu_ops      # unable to access per-cpu bucket yet
       setup_per_cpu_areas      # per-cpu is initialized

As mentioned early, there are two options if we really want to decrease
the image size (for 2KB): (1) Two CPU operation pointers for boot CPU
and the secondary CPUs separately, which is exactly this patch does.
(2) Use a 2-bits index to the global CPU operation array, 64-bytes are
needed if 256 CPUs are configured.

On the other hand, the cleanup still sounds something to have if we don't
care extra 2KB size introduced to the image:

    * Merge array @dt_supported_cpu_ops[] and @acpi_supported_cpu_ops[]
    * Merge the logic of cpu_get_ops() and cpu_read_enable_method()
    * Comments cleanup.

Please let me know your preference so that I can give it another respin
if needed.

Thanks,
Gavin

>>
>> Link: https://lore.kernel.org/linux-arm-kernel/20200211114553.GA21093@e121166-lin.cambridge.arm.com
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> ---
>>   arch/arm64/kernel/cpu_ops.c | 77 +++++++++++++++++++------------------
>>   1 file changed, 39 insertions(+), 38 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
>> index e133011f64b5..a0f647d22e36 100644
>> --- a/arch/arm64/kernel/cpu_ops.c
>> +++ b/arch/arm64/kernel/cpu_ops.c
>> @@ -20,41 +20,20 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
>>   #endif
>>   extern const struct cpu_operations cpu_psci_ops;
>>   
>> -static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
>> -
>> -static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
>> +static const struct cpu_operations *const available_cpu_ops[] __initconst = {
>>   	&smp_spin_table_ops,
>> -	&cpu_psci_ops,
>> -	NULL,
>> -};
>> -
>> -static const struct cpu_operations *const acpi_supported_cpu_ops[] __initconst = {
>>   #ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
>>   	&acpi_parking_protocol_ops,
>>   #endif
>>   	&cpu_psci_ops,
>> -	NULL,
>>   };
>> +static const struct cpu_operations *boot_cpu_ops __ro_after_init;
>> +static const struct cpu_operations *secondary_cpu_ops __ro_after_init;
>>   
>> -static const struct cpu_operations * __init cpu_get_ops(const char *name)
>> -{
>> -	const struct cpu_operations *const *ops;
>> -
>> -	ops = acpi_disabled ? dt_supported_cpu_ops : acpi_supported_cpu_ops;
>> -
>> -	while (*ops) {
>> -		if (!strcmp(name, (*ops)->name))
>> -			return *ops;
>> -
>> -		ops++;
>> -	}
>> -
>> -	return NULL;
>> -}
>> -
>> -static const char *__init cpu_read_enable_method(int cpu)
>> +static const struct cpu_operations * __init get_cpu_method(int cpu)
>>   {
>>   	const char *enable_method;
>> +	int i;
>>   
>>   	if (acpi_disabled) {
>>   		struct device_node *dn = of_get_cpu_node(cpu, NULL);
>> @@ -91,22 +70,44 @@ static const char *__init cpu_read_enable_method(int cpu)
>>   		}
>>   	}
>>   
>> -	return enable_method;
>> +	if (!enable_method) {
>> +		pr_warn("No enable-method found on CPU %d\n", cpu);
>> +		return NULL;
>> +	}
>> +
>> +	/* Search in the array with method */
>> +	for (i = 0; i < ARRAY_SIZE(available_cpu_ops); i++) {
>> +		if (!strcmp(available_cpu_ops[i]->name, enable_method))
>> +			return available_cpu_ops[i];
>> +	}
>> +
>> +	return NULL;
>>   }
>> -/*
>> - * Read a cpu's enable method and record it in cpu_ops.
>> - */
>> +
>>   int __init init_cpu_ops(int cpu)
>>   {
>> -	const char *enable_method = cpu_read_enable_method(cpu);
>> +	const struct cpu_operations *ops = get_cpu_method(cpu);
>>   
>> -	if (!enable_method)
>> -		return -ENODEV;
>> -
>> -	cpu_ops[cpu] = cpu_get_ops(enable_method);
>> -	if (!cpu_ops[cpu]) {
>> -		pr_warn("Unsupported enable-method: %s\n", enable_method);
>> +	if (!ops)
>>   		return -EOPNOTSUPP;
>> +
>> +	/* Update boot CPU operations */
>> +	if (!cpu) {
>> +		boot_cpu_ops = ops;
>> +		return 0;
>> +	}
>> +
>> +	/* Update secondary CPU operations if it's not initialized yet */
>> +	if (!secondary_cpu_ops) {
>> +		secondary_cpu_ops = ops;
>> +		return 0;
>> +	}
>> +
>> +	/* We should have unified secondary CPU operations */
>> +	if (ops != secondary_cpu_ops) {
>> +		pr_warn("Invalid CPU operations %s (%s) on secondary CPU %d\n",
>> +			ops->name, secondary_cpu_ops->name, cpu);
>> +		return -EINVAL;
>>   	}
>>   
>>   	return 0;
>> @@ -114,5 +115,5 @@ int __init init_cpu_ops(int cpu)
>>   
>>   const struct cpu_operations *get_cpu_ops(int cpu)
>>   {
>> -	return cpu_ops[cpu];
>> +	return cpu ? secondary_cpu_ops : boot_cpu_ops;
>>   }
>> -- 
>> 2.23.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
