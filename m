Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121CF1893E1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 03:06:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:Reply-To:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7DHlI6fBkyk02YweiFopIu7O38UDkCq3/0WxOBt9OCs=; b=ovJrU8LqJZoJ7R
	d+fnOrYeugEpmCIlGfh8IkfFjP3bIwK3UPbfok2SF2tCI7coXS8WnjqopvW2duFTefeVOTON8ykX+
	o72LCUZAozB157tg0veXaChGWiuEnzBbOjtFaIiovxM75JDAbJ9snkpHUJmlldGWElkkCiFMUhC69
	OrjDEsgpxi/6WRTEl5dFZzv0qefBrLz2BPqQ3QBrF5cBrVJT16vdz0wNGt5nJldRxP0W5F0U4GXgg
	TDfMHuJzAaxwIn5osVCOIiBkWmoYYx2zQ6ymFVv7cc/iLrPwn34RmpzUAsug4evkB6zyS+MJFxEFR
	eBA6vDxbirEjpy+0LHBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEO6D-0008RS-EI; Wed, 18 Mar 2020 02:06:25 +0000
Received: from us-smtp-delivery-74.mimecast.com ([216.205.24.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEO65-0008R6-60
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 02:06:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1584497174;
 h=from:from:reply-to:reply-to:subject:subject:date:date:
 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
 content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=AfB2+OsH2xNIjMlk+OyEfGcC3Lpofr9Z0/PZVNtKG2k=;
 b=PwkM0UewZHq/Zfqj49CCwli7HwIbITWPGCw9wKlUT1IfX8B8ZsdhLmGPUHzIRpsvkObBDk
 mNwHvt/JDQGFW7jJJVbY3/GbWRc5xyVk3dKuZYhv7twEwuCdi/L9rML5TbBT0ioOS0nz5d
 8Z+wtrefKB3ULygqgF209sHs3S2SteE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-157-81nTikfJNrW7sWA7v0I08A-1; Tue, 17 Mar 2020 22:06:10 -0400
X-MC-Unique: 81nTikfJNrW7sWA7v0I08A-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EFE06107ACC7;
 Wed, 18 Mar 2020 02:06:08 +0000 (UTC)
Received: from localhost.localdomain (vpn2-54-221.bne.redhat.com
 [10.64.54.221])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2ABED73865;
 Wed, 18 Mar 2020 02:06:05 +0000 (UTC)
Subject: Re: [PATCH v4 1/5] arm64: Declare ACPI parking protocol CPU operation
 if needed
To: Mark Rutland <mark.rutland@arm.com>
References: <20200226002356.86986-1-gshan@redhat.com>
 <20200226002356.86986-2-gshan@redhat.com>
 <20200317102845.GD8831@lakrids.cambridge.arm.com>
From: Gavin Shan <gshan@redhat.com>
Message-ID: <f45fe55a-d716-103f-62c1-f56b3c91b6a0@redhat.com>
Date: Wed, 18 Mar 2020 13:06:02 +1100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.0
MIME-Version: 1.0
In-Reply-To: <20200317102845.GD8831@lakrids.cambridge.arm.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_190617_308473_83A9F292 
X-CRM114-Status: GOOD (  15.44  )
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

On 3/17/20 9:28 PM, Mark Rutland wrote:
> On Wed, Feb 26, 2020 at 11:23:52AM +1100, Gavin Shan wrote:
>> It's obvious we needn't declare the corresponding CPU operation when
>> CONFIG_ARM64_ACPI_PARKING_PROTOCOL is disabled.
>>
>> Signed-off-by: Gavin Shan <gshan@redhat.com>
> 
> Is there a problem leaving this as-is, e.g. a compiler warning? If so,
> it'd be nice to mention that in the commit message.
> 
> We don't always bother placing declartions under ifdefs where the use
> would result in a link-time error.
> 
> No strong feelings form me either way, so FWIW:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>
> 
> Mark.
> 

It doesn't cause a compiler warning because the corresponding CPU operations
is declared as "extern". I will have commit log in next revision as below:

It's obvious we needn't declare the corresponding CPU operation when
CONFIG_ARM64_ACPI_PARKING_PROTOCOL is disabled, even it doesn't cause
any compiling warnings.

Thanks,
Gavin

>> ---
>>   arch/arm64/kernel/cpu_ops.c | 2 ++
>>   1 file changed, 2 insertions(+)
>>
>> diff --git a/arch/arm64/kernel/cpu_ops.c b/arch/arm64/kernel/cpu_ops.c
>> index 7e07072757af..2082cfb1be86 100644
>> --- a/arch/arm64/kernel/cpu_ops.c
>> +++ b/arch/arm64/kernel/cpu_ops.c
>> @@ -15,7 +15,9 @@
>>   #include <asm/smp_plat.h>
>>   
>>   extern const struct cpu_operations smp_spin_table_ops;
>> +#ifdef CONFIG_ARM64_ACPI_PARKING_PROTOCOL
>>   extern const struct cpu_operations acpi_parking_protocol_ops;
>> +#endif
>>   extern const struct cpu_operations cpu_psci_ops;
>>   
>>   const struct cpu_operations *cpu_ops[NR_CPUS] __ro_after_init;
>> -- 
>> 2.23.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
