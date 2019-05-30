Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3A752FCB7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 15:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2Yb9omR0nODc+ZCy5S1zBC3NdDj3USQE458307/r2yY=; b=kt/VIPU5GrRVqkPxQctFC26rv
	enCp0YtsL8D5e55/JfWPkfsbCHHnMYvVqB33ToixtcRDoIjAdtFuC7UrwQUNe/ami3MwSWAH50CqK
	pcBRpK0id6YXPcEwYH0+sPxRXRlGtWWTCT8fBRbXpOQUuC7dQZ7KRmGl7BjzGEHW3Hg18yLT6NZVg
	XdCqt1HFFUr4bce5tGVRfGwlVi9Ph1GUmHytYp1VkhMWuoba4RuWwwAto4wCcCLcBLBQ/eIH62Cxr
	d6zY4/4SeVV+NRyiw8MIGvxOZHqCQu5ihSDBALlQDxYolUU/OWyEW7uJX6Cyrl13ZUBwUl6cGV3n7
	NfvhBE7Bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWLWX-0000th-5m; Thu, 30 May 2019 13:55:17 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWLWQ-0000tH-10
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 13:55:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8600DA78;
 Thu, 30 May 2019 06:55:09 -0700 (PDT)
Received: from [10.37.12.213] (unknown [10.37.12.213])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A6073F59C;
 Thu, 30 May 2019 06:55:07 -0700 (PDT)
Subject: Re: [PATCH] arm64/cpufeature: Convert hook_lock to raw_spin_lock_t in
 cpu_enable_ssbs()
To: Will Deacon <will.deacon@arm.com>
References: <20190530113058.1988-1-julien.grall@arm.com>
 <20190530120129.GD13751@fuggles.cambridge.arm.com>
From: Julien Grall <julien.grall@arm.com>
Message-ID: <13c15c54-c17f-78bc-ccf7-791e9e901b7b@arm.com>
Date: Thu, 30 May 2019 14:55:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190530120129.GD13751@fuggles.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_065510_073518_289AFB13 
X-CRM114-Status: GOOD (  22.47  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-rt-users@vger.kernel.org, suzuki.poulose@arm.com,
 catalin.marinas@arm.com, bigeasy@linutronix.de, linux-kernel@vger.kernel.org,
 rostedt@goodmis.org, tglx@linutronix.de, dave.martin@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 5/30/19 1:01 PM, Will Deacon wrote:
> On Thu, May 30, 2019 at 12:30:58PM +0100, Julien Grall wrote:
>> cpu_enable_ssbs() is called via stop_machine() as part of the cpu_enable
>> callback. A spin lock is used to ensure the hook is registered before
>> the rest of the callback is executed.
>>
>> On -RT spin_lock() may sleep. However, all the callees in stop_machine()
>> are expected to not sleep. Therefore a raw_spin_lock() is required here.
>>
>> Given this is already done under stop_machine() and the work done under
>> the lock is quite small, the latency should not increase too much.
>>
>> Signed-off-by: Julien Grall <julien.grall@arm.com>
>>
>> ---
>>
>> It was noticed when looking at the current use of spin_lock in
>> arch/arm64. I don't have a platform calling that callback, so I have
>> hacked the code to reproduce the error and check it is now fixed.
>> ---
>>   arch/arm64/kernel/cpufeature.c | 6 +++---
>>   1 file changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/arch/arm64/kernel/cpufeature.c b/arch/arm64/kernel/cpufeature.c
>> index ca27e08e3d8a..2a7159fda3ce 100644
>> --- a/arch/arm64/kernel/cpufeature.c
>> +++ b/arch/arm64/kernel/cpufeature.c
>> @@ -1194,14 +1194,14 @@ static struct undef_hook ssbs_emulation_hook = {
>>   static void cpu_enable_ssbs(const struct arm64_cpu_capabilities *__unused)
>>   {
>>   	static bool undef_hook_registered = false;
>> -	static DEFINE_SPINLOCK(hook_lock);
>> +	static DEFINE_RAW_SPINLOCK(hook_lock);
>>   
>> -	spin_lock(&hook_lock);
>> +	raw_spin_lock(&hook_lock);
>>   	if (!undef_hook_registered) {
>>   		register_undef_hook(&ssbs_emulation_hook);
>>   		undef_hook_registered = true;
>>   	}
>> -	spin_unlock(&hook_lock);
>> +	raw_spin_unlock(&hook_lock);
> 
> Makes sense to me. We could probably avoid the lock entirely if we wanted
> to (via atomic_dec_if_positive), but I'm not sure it's really worth it.

I would prefer to remove the lock if it is possible. However, I was 
under the impression the lock is necessary so the hook is registered 
before any CPU attempt to configure the PSTATE.

Cheers,

-- 
Julien Grall

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
