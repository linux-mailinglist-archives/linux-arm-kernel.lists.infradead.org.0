Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 197B5DCBF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 09:22:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sply4LMth54iW/uh571y04w66qalxmnBF3iCwbC26Mg=; b=Y7iaCdTU55ggQP
	NjDPGIoGwFu5/tVqz1ln95Y6UxSGcXgNBU4/uabOjzxNTyU9UDEViAWPuCMaV1EfJ4xnUrfGIdjKF
	8w2AKnt3+0cbRb9ufi6phw/Z0Fgkn2WuvAAjZq1tQQBn3pW1AjPIKnz+8OyFM0Z+0J2e6mTWAXsGr
	tZdn2ONG11IaO0jQheFTmlkjN/Szk/Anlg7cy8JzyEKjCvAo/NSXJ2HmBVRVvO8kdqnsuo6Y4kbZc
	glKMs+UD+E/P1RZj1FhhENaRMkxhfIFlU86IvsdwzwseM4NUIm8/nKe6u7Sizy89yFnalKUxneXW1
	G4GgnT3SuMmw902/K4CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL0bp-0003o3-1I; Mon, 29 Apr 2019 07:21:53 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL0bh-0003nX-EY
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 07:21:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE615A78;
 Mon, 29 Apr 2019 00:21:41 -0700 (PDT)
Received: from [10.1.197.45] (e112298-lin.cambridge.arm.com [10.1.197.45])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 487A73F71A;
 Mon, 29 Apr 2019 00:21:39 -0700 (PDT)
Subject: Re: [PATCH 1/4] arm64: Do not enable IRQs for ct_user_exit
To: James Morse <james.morse@arm.com>
References: <1555424556-46023-1-git-send-email-julien.thierry@arm.com>
 <1555424556-46023-2-git-send-email-julien.thierry@arm.com>
 <9758221d-532e-e0b2-3292-be78c7618009@arm.com>
From: Julien Thierry <julien.thierry@arm.com>
Message-ID: <c2e05c08-0375-7f69-32a9-962c81ca573d@arm.com>
Date: Mon, 29 Apr 2019 08:21:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <9758221d-532e-e0b2-3292-be78c7618009@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_002145_499530_6491315E 
X-CRM114-Status: GOOD (  25.79  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, catalin.marinas@arm.com,
 will.deacon@arm.com, rostedt@goodmis.org, yuzenghui@huawei.com,
 wanghaibin.wang@huawei.com, liwei391@huawei.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On 25/04/2019 11:21, James Morse wrote:
> Hi Julien,
> 
> On 16/04/2019 15:22, Julien Thierry wrote:
>> For el0_dbg and el0_error, DAIF bits get explicitly cleared before
>> calling ct_user_exit.
>>
>> When context tracking is disabled, DAIF gets set (almost) immediately
>> after.
> 
> When we end up in kernel_exit,
> 
> 
>> When context tracking is enabled, among the first things done
>> is disabling IRQs.
> 
> Is this somewhere different?
> 
> 
>> What is actually needed is:
>> - PSR.D = 0 so the system can be debugged (should be already the case)
>> - PSR.A = 0 so async error can be handled during context tracking
>>
>> Do not clear PSR.I in those two locations.
> 
> Is the motivation here to avoid the time it takes to toggle the I bit, given we're going
> to shortly toggle it back? (I would have thought that would get lost in the noise of
> togging the other three bits)
> 
> Or is it because ct_user_exit should be called with interrupts masked?
> 

I must admit my main motivation was trying to get that user_exit in a
consistent state so I don't need to toggle PMR values too often once I
introduce the new values (in patch 3).

I don't expect performance improvement from this patch for not setting
the I bit while setting the other two. It just didn't make much sense to
me that the I bit would get cleared at those sites.

> 
> If its the later, this is a wider bug we've always had!
> 746647c75afb switches a fist full of enable_dbg_and_irq to enable_daif.
> All the other el0_* sites would need their enable_daif/ct_user_exit calls flipping.
> 
> 
> ...
> 
> It looks like ct_user_exit should be called before we unmask interrupts. It gives RCU a
> poke (so interrupts that occur before it may make suspicious use of RCU), and its
> modifying per-cpu variables. If we pre-empted and switched to another thread that entered
> user-space it would look like we'd entered user-space twice.
> 

If that is the case, I can add the fixes tag, but I might need to take a
deeper look into it.

Thanks for the pointers.

> 
>> diff --git a/arch/arm64/kernel/entry.S b/arch/arm64/kernel/entry.S
>> index c50a7a7..6a38903 100644
>> --- a/arch/arm64/kernel/entry.S
>> +++ b/arch/arm64/kernel/entry.S
>> @@ -855,7 +855,7 @@ el0_dbg:
>>  	mov	x1, x25
>>  	mov	x2, sp
>>  	bl	do_debug_exception
>> -	enable_daif
>> +	enable_da_f
>>  	ct_user_exit
>>  	b	ret_to_user
> 
> If ct_user_exit needs to be called with interrupts masked:
> Fixes: 746647c75afb (arm64: entry.S convert el0_sync"")
> 
> 
>> @@ -907,7 +907,7 @@ el0_error_naked:
>>  	enable_dbg
>>  	mov	x0, sp
>>  	bl	do_serror
>> -	enable_daif
>> +	enable_da_f
>>  	ct_user_exit
>>  	b	ret_to_user
>>  ENDPROC(el0_error)
> 
> If ct_user_exit needs to be called with interrupts masked:
> Fixes: a92d4d1454ab ("arm64: entry.S: move SError handling into a C function for future
> expansion")
> 
> 

Cheers,

-- 
Julien Thierry

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
