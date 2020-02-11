Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BBD159D31
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 00:29:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jg74vTLEuqglCah89nbMEELuTP30pg4Xkq59XMOJ970=; b=kygLHz9anjBMmq
	Ho8A0740Q/DJw0BWxr/RhTawumdVv3gyG9nB/m1dblmLJhrb5NJ98ntXcKH2qmeRgSbSh1OOlyWtS
	bqSxViO1q3hpost4bI4ea/ZICmCBQq6e+NaiGkkzAO4gN3A0NKTlaYUV2c5B4uHcG4k4Cu+4ipEM6
	kf3kmfkcbU8q8F/nV8P2JiIlcqYBd7fDKUILHnz9dfCoD26oEs2rt7hlb+WePLLCyVl3oKQeOPaNh
	toK1esrn0ULTU5pKx6o/6QwvtP4QB6vo20Wlg1SVJpBBPYYmGuMeCjjW42PePULxrz+PDiHFcm/xZ
	X2hFIA9dp2GC15CQFLlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1eyL-00073e-2x; Tue, 11 Feb 2020 23:29:41 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1eyC-000732-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 23:29:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581463769;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=j4YkmJTRAUyMeJK/yfr1uuRnBSZG04dWcccaYbeyUe8=;
 b=XQhHgjvw6ol6ovBQ4yPoe7WZZwP7Q5fSuGfnIqver8zEFDcZRLkWO+BDtEtL0OiMLMBArU
 HaHpavtMPJePgCEoFFtWJr7EIEEgFcHfjax0QogBJxFEkrwmFy297lAbfVkkIl5n6PJuIt
 t85mjorFCOL1TeQgeVNDJnnqJMCcAuI=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-67-qhE0mJrRPSGaOsyMjnnFGA-1; Tue, 11 Feb 2020 18:29:24 -0500
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 305E51413;
 Tue, 11 Feb 2020 23:29:23 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-85.bne.redhat.com [10.64.54.85])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6C59F26E7E;
 Tue, 11 Feb 2020 23:29:20 +0000 (UTC)
Subject: Re: [PATCH v2 4/4] arm64: Dereference CPU operations indirectly
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200203235107.190609-5-gshan@redhat.com>
 <20200211114553.GA21093@e121166-lin.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <f125f6ef-c3c4-4867-e371-c62903f709e6@redhat.com>
Date: Wed, 12 Feb 2020 10:29:16 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200211114553.GA21093@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-MC-Unique: qhE0mJrRPSGaOsyMjnnFGA-1
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_152933_015141_1F01E767 
X-CRM114-Status: GOOD (  25.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 sudeep.holla@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/11/20 10:46 PM, Lorenzo Pieralisi wrote:
> On Tue, Feb 04, 2020 at 10:51:07AM +1100, Gavin Shan wrote:
>> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
>> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
>> much memory has been used for this.
>>
>> This introduces another array (@cpu_ops_index[NR_CPUS/4]), of which the
>> index to CPU operations array is stored. With this, we just need one byte
>> to be shared by 4 CPUs, 64 bytes for 256 CPUs, to dereference the CPU
>> operations indirectly. Note this optimization has the assumption: these
>> CPU operations aren't dereferenced in hot path.
> 
> Actually the enable method must be the same across cpus, which brings
> your optimization down to 1 byte for whatever number of cpus (aka,
> you need an index to the one and only CPU ops entry).
> 
> If a cpu has an enable method != from the first that has been detected
> we should let the cpu ops read fail, that index must not/can not be
> different on != cpus, really, if it is firmware is broken and it is
> probably better to avoid booting a cpu rather than trying, I hardly
> see how we can introduce a regression by adding this logic, TBC.
> 
> Please let me know if anyone spots something I have missed.
> 

Lorenzo, thank you for the comments. Yes, we just need only one byte
if there is only one valid set of CPU operations. It seems it's ok
for cpu_read_ops() to return error if the selected CPU operation isn't
the one that have been previously choosen. In the error path, the CPU
won't be marked in the possible cpumask and it won't be tried to be
brought up.

I'll change the code in v3 based on your comments.

Thanks,
Gavin


> 
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> ---
>>   arch/arm64/kernel/cpu_ops.c | 49 ++++++++++++++++++-------------------
>>   1 file changed, 24 insertions(+), 25 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
>> index e133011f64b5..d9103d5c9c6f 100644
>> --- a/arch/arm64/kernel/cpu_ops.c
>> +++ b/arch/arm64/kernel/cpu_ops.c
>> @@ -4,7 +4,6 @@
>>    *
>>    * Copyright (C) 2013 ARM Ltd.
>>    */
>> -
>>   #include <linux/acpi.h>
>>   #include <linux/cache.h>
>>   #include <linux/errno.h>
>> @@ -20,39 +19,32 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
>>   #endif
>>   extern const struct cpu_operations cpu_psci_ops;
>>   
>> -static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
>> -
>> -static const struct cpu_operations *const dt_supported_cpu_ops[] __initconst = {
>> +/*
>> + * Each element of the index array is shared by 4 CPUs. It means each
>> + * CPU index uses 2 bits.
>> + */
>> +static const struct cpu_operations *const cpu_ops[] = {
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
>> +static unsigned char cpu_ops_indexes[DIV_ROUND_UP(NR_CPUS, 4)] __ro_after_init;
>>   
>> -static const struct cpu_operations * __init cpu_get_ops(const char *name)
>> +static int __init get_cpu_ops_index(const char *name)
>>   {
>> -	const struct cpu_operations *const *ops;
>> -
>> -	ops = acpi_disabled ? dt_supported_cpu_ops : acpi_supported_cpu_ops;
>> -
>> -	while (*ops) {
>> -		if (!strcmp(name, (*ops)->name))
>> -			return *ops;
>> +	int index;
>>   
>> -		ops++;
>> +	for (index = 0; index < ARRAY_SIZE(cpu_ops); index++) {
>> +		if (!strcmp(cpu_ops[index]->name, name))
>> +			return index;
>>   	}
>>   
>> -	return NULL;
>> +	return -ERANGE;
>>   }
>>   
>> -static const char *__init cpu_read_enable_method(int cpu)
>> +static const char *__init get_cpu_method(int cpu)
>>   {
>>   	const char *enable_method;
>>   
>> @@ -98,21 +90,28 @@ static const char *__init cpu_read_enable_method(int cpu)
>>    */
>>   int __init init_cpu_ops(int cpu)
>>   {
>> -	const char *enable_method = cpu_read_enable_method(cpu);
>> +	const char *enable_method = get_cpu_method(cpu);
>> +	unsigned char *pindex = &cpu_ops_indexes[cpu / 4];
>> +	int index;
>>   
>>   	if (!enable_method)
>>   		return -ENODEV;
>>   
>> -	cpu_ops[cpu] = cpu_get_ops(enable_method);
>> -	if (!cpu_ops[cpu]) {
>> +	index = get_cpu_ops_index(enable_method);
>> +	if (index < 0) {
>>   		pr_warn("Unsupported enable-method: %s\n", enable_method);
>>   		return -EOPNOTSUPP;
>>   	}
>>   
>> +	*pindex &= ~(0x3 << (2 * (cpu % 4)));
>> +	*pindex |= ((index & 0x3) << (2 * (cpu % 4)));
>> +
>>   	return 0;
>>   }
>>   
>>   const struct cpu_operations *get_cpu_ops(int cpu)
>>   {
>> -	return cpu_ops[cpu];
>> +	int index = ((cpu_ops_indexes[cpu / 4] >> (2 * (cpu % 4))) & 0x3);
>> +
>> +	return cpu_ops[index];
>>   }
>> -- 
>> 2.23.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
