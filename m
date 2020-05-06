Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE041C6E97
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 12:39:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5cWW8MZYJ7JkDFkCo81WaAt3//zZQNscWV+W5sLYLk=; b=Fv47g1ML2AGoPX
	Eg0PiYwMPbJYXlxiPuWtI5SQCcjheXfAxdcyZiQpR0qRHlRbM6XG+3VgQfE58FBfpHN4qnR91jSMG
	NaVdz550QpECt4frxFBUVdPjUsS6fuOTvUZGPoK6630MVml54CtUsx2Hi439YOAUBCaBUrKb7Owm2
	KRwElDikpmrwJ8h53UL6zs0tH83lUjz27fHvwGGYd1dQg7KlLAfgcC//azeDLlmmoy3WfvGoCHtFt
	7XXFNVF8eCJ9YOusGvGZlyNv8uZ8S94m8thYirkhuoGfFHSR2oTBbLZzV4vL/3W9LfXYq6mctXA8V
	V1hSz77jbcMFwHKNsfBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWHSo-00087O-Ao; Wed, 06 May 2020 10:39:42 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWHSe-00086f-HV
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 10:39:34 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 5387FFE136B34EFEE684;
 Wed,  6 May 2020 18:39:25 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Wed, 6 May 2020
 18:39:17 +0800
Subject: Re: [PATCH] arm64: atomics: Fix the issue on xchg when switch to
 atomic instruction
To: Will Deacon <will@kernel.org>
References: <1588669355-38741-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200505091503.GC16980@willie-the-truck>
 <a48b7408-adb4-08f2-129b-f71e1c79db5a@hisilicon.com>
 <20200506075352.GE7021@willie-the-truck>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <90dde2e8-ea11-fa7b-1a44-4d357a61cd66@hisilicon.com>
Date: Wed, 6 May 2020 18:39:16 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <20200506075352.GE7021@willie-the-truck>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_033932_745880_B922347B 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Yuqi Jin <jinyuqi@huawei.com>, Andrew Murray <amurray@thegoodpenguin.co.uk>,
 linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

Apologies for my noise, you are right and it's my mistake.

On 2020/5/6 15:53, Will Deacon wrote:
> On Wed, May 06, 2020 at 03:00:39PM +0800, Shaokun Zhang wrote:
>> On 2020/5/5 17:15, Will Deacon wrote:
>>> On Tue, May 05, 2020 at 05:02:35PM +0800, Shaokun Zhang wrote:
>>>> From: Yuqi Jin <jinyuqi@huawei.com>
>>>>
>>>> Since commit addfc38672c7 ("arm64: atomics: avoid out-of-line ll/sc atomics"),
>>>> it has provided inline implementations of both LSE and ll/sc and used a static
>>>> key to select between them, which allows the compiler to generate better
>>>> atomics code.
>>>> However, xchg still uses the original method which would fail to switch to
>>>> the atomic instruction correctly, Let's fix this issue.
>>>
>>> Please can you elaborate on the failure mode? The current code looks alright
>>
>> When enable CONFIG_ARM64_LSE_ATOMICS, xchg is failed to switch to swp instruction
>> or dynamic replacement instructions are not seen.
>>
>> We do some tests on the copy of xchg_tail,:
>> u32 xchg_tail_my(struct qspinlock *lock, u32 tail)
>> {
>>         return (u32)xchg_relaxed(&lock->tail,
>>                                  tail >> _Q_TAIL_OFFSET) << _Q_TAIL_OFFSET;
>> }
>> and the asm code is as follows:
>>
>> ffff80001015b050 <xchg_tail_my>:
>> ffff80001015b050:       a9be7bfd        stp     x29, x30, [sp, #-32]!
>> ffff80001015b054:       910003fd        mov     x29, sp
>> ffff80001015b058:       a90153f3        stp     x19, x20, [sp, #16]
>> ffff80001015b05c:       2a0103f3        mov     w19, w1
>> ffff80001015b060:       aa0003f4        mov     x20, x0
>> ffff80001015b064:       aa1e03e0        mov     x0, x30
>> ffff80001015b068:       97fd07ee        bl      ffff80001009d020 <_mcount>
>> ffff80001015b06c:       53107e61        lsr     w1, w19, #16
>> ffff80001015b070:       91000a83        add     x3, x20, #0x2
>> ffff80001015b074:       f9800071        prfm    pstl1strm, [x3]
>> ffff80001015b078:       485f7c60        ldxrh   w0, [x3]
>> ffff80001015b07c:       48027c61        stxrh   w2, w1, [x3]
>> ffff80001015b080:       35ffffc2        cbnz    w2, ffff80001015b078 <xchg_tail_my+0x28>
>> ffff80001015b084:       53103c00        lsl     w0, w0, #16
>> ffff80001015b088:       a94153f3        ldp     x19, x20, [sp, #16]
>> ffff80001015b08c:       a8c27bfd        ldp     x29, x30, [sp], #32
>> ffff80001015b090:       d65f03c0        ret
> 
> This should get patched at runtime, but you're saying that's not happening?
> 

My mistake, I didn't check the runtime carefully.

>>> to me, so I'm clearly missing something. What's broken?
>>>
>>
>> I'm not sure whether the ARM64_LSE_ATOMIC_INSN could works correctly after the
>> commit addfc38672c7. If we implement xchg using __lse_ll_sc_body like cmpxchg_case,
>> xchg works ok.
>>
>> What's more, I am wondering why xchg still uses the dynamic replacement mode,
>> but cmpxchg uses another mode. ;-)
> 
> There's a trade-off involving the number of clobbered registers and the
> number of instructions, which made a bit more sense when we used to branch
> out-of-line. We also do the direct patching for the pcpu atomics.
> 

Thanks your explanation, got it and I did check pcpu atomics before.

Thanks,
Shaokun

> Will
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
