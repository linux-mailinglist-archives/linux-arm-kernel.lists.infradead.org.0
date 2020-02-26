Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5720716F431
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 01:21:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57bA5tLrWmFjYca9DX3HU8HXlR+mFd41qmeZT+qUf74=; b=ZwjABxJPz4ph9M
	yzAgeeufO2TD1TrRlnjxz4QZmAGilF3J/xiszQWiOM4pxp8z/5nM8i4dcZjf1XvjgMy9meaNJa7cC
	KD0zGKMWI6jnh+eDbdH38JY7NgBqzablmywqP1xaVvYuSioB8kKbuxSyvBmGFw3bwL2D4IqF0xeAt
	iQ7DD5zoDn65HbmKyfh2sYkgdW/kns0SUXOj+SHcr3U4pKyvNBaIP1dtraBThLUpJqLcGQ+c1Ky9L
	q3AkDq18Qba6cmndcM7RLV0W247KfxLAGfecoowby1emk1HUm5VcLo0NgvWTYhPBFnZqlpy4dbXRH
	IDT2nzbwCWshwSKVv2Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6kRw-0000jt-6e; Wed, 26 Feb 2020 00:21:16 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6kRl-0000hr-Cj
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 00:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582676461;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=pSsIHb+FQ5bR2RwqTYedz8LKeVIKU3YlSxw2AS2/Rzw=;
 b=SmowENn+cUEwPeCoDn7sA04wEDiYaIieHrUmQW+yGDs7i//ohCweepadvJ31hYVvqsuH/q
 aAU52Racy71h/F+Nhfk6qWDxtiEhPVzrxsBYx61DZnL+8FLl8HymCrTTkkyDTsxDqCUqbY
 PySbfW2zZmtDv0IN9iENjN9ySjbJRtQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-Y418QsCCOCqWKczCOrW4HQ-1; Tue, 25 Feb 2020 19:20:59 -0500
X-MC-Unique: Y418QsCCOCqWKczCOrW4HQ-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id A294F1857365;
 Wed, 26 Feb 2020 00:20:57 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-83.bne.redhat.com [10.64.54.83])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 122158AC42;
 Wed, 26 Feb 2020 00:20:54 +0000 (UTC)
Subject: Re: [PATCH v3 4/5] arm64: Remove CPU operations dereferencing array
To: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
References: <20200212004351.66576-1-gshan@redhat.com>
 <20200212004351.66576-5-gshan@redhat.com>
 <20200225141307.GA8970@e121166-lin.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <a1aafd8e-533e-e542-d4fe-5d33e5a30cba@redhat.com>
Date: Wed, 26 Feb 2020 11:20:51 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200225141307.GA8970@e121166-lin.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_162105_654937_86ECD6ED 
X-CRM114-Status: GOOD (  24.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, robin.murphy@arm.com,
 sudeep.holla@arm.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2/26/20 1:13 AM, Lorenzo Pieralisi wrote:
> On Wed, Feb 12, 2020 at 11:43:50AM +1100, Gavin Shan wrote:
>> One CPU operations is maintained through array @cpu_ops[NR_CPUS]. 2KB
>> memory is consumed when CONFIG_NR_CPUS is set to 256. It seems too
>> much memory has been used for this. Also, all CPUs must use same CPU
>> operations and we shouldn't bring up the broken CPU, as Lorenzo Pieralisi
>> pointed out.
> 
> That's not appropriate for a commit log. If you want to refer
> to a mailing list discussion add a Link: tag with a lore archive
> pointer.
> 

Yep, a link tag is absolutely needed here. I will have one in next
respin.

>> This introduces variable (@cpu_ops_index) to store the unified CPU
>> operations index. The CPU, which has different index, won't be brought
>> up. With this, the CPU operations dereferencing array is removed and
>> 2KB memory is saved.
> 
> I think it is enough fiddling with indexes, if you need to save
> memory reduce the cpu_ops array to a pointer and be done with that.
> 

Yes, the code will be simplified with a pointer, index works either. I
will have a pointer in v4.

>> Signed-off-by: Gavin Shan <gshan@redhat.com>
>> ---
>>   arch/arm64/kernel/cpu_ops.c | 62 ++++++++++++++++++++-----------------
>>   1 file changed, 34 insertions(+), 28 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
>> index e133011f64b5..f59c087d6284 100644
>> --- a/arch/arm64/kernel/cpu_ops.c
>> +++ b/arch/arm64/kernel/cpu_ops.c
>> @@ -4,7 +4,6 @@
>>    *
>>    * Copyright (C) 2013 ARM Ltd.
>>    */
>> -

The unnecessary change will be dropped in v4.

>>   #include <linux/acpi.h>
>>   #include <linux/cache.h>
>>   #include <linux/errno.h>
>> @@ -20,39 +19,32 @@ extern const struct cpu_operations acpi_parking_protocol_ops;
>>   #endif
>>   extern const struct cpu_operations cpu_psci_ops;
>>   
>> -static const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
> 
> +static const struct cpu_operations *cpu_ops __ro_after_init;
> 

Ok.

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
>> +static int cpu_ops_index __ro_after_init = INT_MAX;
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

cpu_get_ops()'s logic will be merged into get_cpu_method() since we're here.
It's too simple to have a separate function. And it's only called by get_cpu_method().

>>   
>> -static const char *__init cpu_read_enable_method(int cpu)
>> +static const char *__init get_cpu_method(int cpu)
>>   {
>>   	const char *enable_method;
>>   
>> @@ -93,26 +85,40 @@ static const char *__init cpu_read_enable_method(int cpu)
>>   
>>   	return enable_method;
>>   }
>> -/*
>> - * Read a cpu's enable method and record it in cpu_ops.
>> - */
>> +
>>   int __init init_cpu_ops(int cpu)
>>   {
>> -	const char *enable_method = cpu_read_enable_method(cpu);
>> +	const char *enable_method = get_cpu_method(cpu);
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
>> +	/* Update the index directly if it's invalid */
>> +	if (cpu_ops_index == INT_MAX) {
>> +		cpu_ops_index = index;
>> +		return 0;
>> +	}
>> +
>> +	if (index != cpu_ops_index) {
>> +		pr_warn("Invalid CPU operations index %d (%d) on CPU %d\n",
>> +			index, cpu_ops_index, cpu);
>> +		return -EINVAL;
>> +	}
> 
> There isn't really a need for this index song and dance, a pointer
> will do to achieve what you are doing above.
> 

Sure, the index stuff will be replaced by a pointer in v4 :)

Thanks,
Gavin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
