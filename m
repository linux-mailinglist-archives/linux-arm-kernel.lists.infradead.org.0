Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57FE1E0AA8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 25 May 2020 11:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LVK4rdm4DDAy0BZjfI+mB4rAWhPk6HsKOXAVX/TydfI=; b=puiNZAPLUonkwy
	xCKI0+4XiYcZj154T6sOtlRKPjx5Gc8l6ZJ1mGVtjtVgdXqfMukyMEblbTuFChhSSOAw+8S5Ru/RC
	tdOmcnUhd2ePHgeQauARlYMVyqcEWGqJRx2D2Zpt/a63/Tzdtp1BLz5L2D5EMMJx2lsHd09a/WzMg
	WozS5T4SpFulOTjZsSTq9wocR/gkxzjHLjxupZcRfr1jWJ+sUpPY9wVuLI20Ysg/1p35goCeF9qsJ
	mi8WLOEIpbJpmqWHIVIzCk1q6C8icGX2SrWEihYds9Xa/XJrTJi4emUfkzLQqym5UUyuOrvjT8y29
	HxUVE88ioE6KkVURlpyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jd9Tf-0002Nn-09; Mon, 25 May 2020 09:32:59 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd9Og-0003yT-O6
 for linux-arm-kernel@lists.infradead.org; Mon, 25 May 2020 09:27:53 +0000
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DB1A7B5E4D3AD0027496;
 Mon, 25 May 2020 17:27:40 +0800 (CST)
Received: from [127.0.0.1] (10.74.221.148) by DGGEMS412-HUB.china.huawei.com
 (10.3.19.212) with Microsoft SMTP Server id 14.3.487.0; Mon, 25 May 2020
 17:27:31 +0800
Subject: Re: [PATCH] arm64: atomics: Fix the issue on xchg when switch to
 atomic instruction
To: Will Deacon <will@kernel.org>
References: <1588669355-38741-1-git-send-email-zhangshaokun@hisilicon.com>
 <20200505091503.GC16980@willie-the-truck>
 <a48b7408-adb4-08f2-129b-f71e1c79db5a@hisilicon.com>
 <20200506075352.GE7021@willie-the-truck>
 <90dde2e8-ea11-fa7b-1a44-4d357a61cd66@hisilicon.com>
 <20200506104435.GB8043@willie-the-truck>
 <295b5b2c-ae8d-3db2-3621-5d5ba15481fd@hisilicon.com>
 <a44c1318-bace-36ec-457e-c2856ad3e191@hisilicon.com>
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
Message-ID: <d1e62e64-9cda-eb70-42f8-f65e43632add@hisilicon.com>
Date: Mon, 25 May 2020 17:27:30 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <a44c1318-bace-36ec-457e-c2856ad3e191@hisilicon.com>
X-Originating-IP: [10.74.221.148]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_022750_994889_7E9D6123 
X-CRM114-Status: GOOD (  18.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.32 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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

On 2020/5/7 15:54, Shaokun Zhang wrote:
> Hi Will,
> 
> On 2020/5/6 19:30, Shaokun Zhang wrote:
>> Hi Will,
>>
>> On 2020/5/6 18:44, Will Deacon wrote:
>>> On Wed, May 06, 2020 at 06:39:16PM +0800, Shaokun Zhang wrote:
>>>> Apologies for my noise, you are right and it's my mistake.
>>>
>>> No need to apologise, but thanks for letting me know.
>>>
>>>> On 2020/5/6 15:53, Will Deacon wrote:
>>>>> On Wed, May 06, 2020 at 03:00:39PM +0800, Shaokun Zhang wrote:
>>>>>> On 2020/5/5 17:15, Will Deacon wrote:
>>>>>>> On Tue, May 05, 2020 at 05:02:35PM +0800, Shaokun Zhang wrote:
>>>>>>>> From: Yuqi Jin <jinyuqi@huawei.com>
>>>>>>>>
>>>>>>>> Since commit addfc38672c7 ("arm64: atomics: avoid out-of-line ll/sc atomics"),
>>>>>>>> it has provided inline implementations of both LSE and ll/sc and used a static
>>>>>>>> key to select between them, which allows the compiler to generate better
>>>>>>>> atomics code.
>>>>>>>> However, xchg still uses the original method which would fail to switch to
>>>>>>>> the atomic instruction correctly, Let's fix this issue.
>>>>>>>
>>>>>>> Please can you elaborate on the failure mode? The current code looks alright
>>>>>>
>>>>>> When enable CONFIG_ARM64_LSE_ATOMICS, xchg is failed to switch to swp instruction
>>>>>> or dynamic replacement instructions are not seen.
>>>>>>
>>>>>> We do some tests on the copy of xchg_tail,:
>>>>>> u32 xchg_tail_my(struct qspinlock *lock, u32 tail)
>>>>>> {
>>>>>>         return (u32)xchg_relaxed(&lock->tail,
>>>>>>                                  tail >> _Q_TAIL_OFFSET) << _Q_TAIL_OFFSET;
>>>>>> }
>>>>>> and the asm code is as follows:
>>>>>>
>>>>>> ffff80001015b050 <xchg_tail_my>:
>>>>>> ffff80001015b050:       a9be7bfd        stp     x29, x30, [sp, #-32]!
>>>>>> ffff80001015b054:       910003fd        mov     x29, sp
>>>>>> ffff80001015b058:       a90153f3        stp     x19, x20, [sp, #16]
>>>>>> ffff80001015b05c:       2a0103f3        mov     w19, w1
>>>>>> ffff80001015b060:       aa0003f4        mov     x20, x0
>>>>>> ffff80001015b064:       aa1e03e0        mov     x0, x30
>>>>>> ffff80001015b068:       97fd07ee        bl      ffff80001009d020 <_mcount>
>>>>>> ffff80001015b06c:       53107e61        lsr     w1, w19, #16
>>>>>> ffff80001015b070:       91000a83        add     x3, x20, #0x2
>>>>>> ffff80001015b074:       f9800071        prfm    pstl1strm, [x3]
>>>>>> ffff80001015b078:       485f7c60        ldxrh   w0, [x3]
>>>>>> ffff80001015b07c:       48027c61        stxrh   w2, w1, [x3]
>>>>>> ffff80001015b080:       35ffffc2        cbnz    w2, ffff80001015b078 <xchg_tail_my+0x28>
>>>>>> ffff80001015b084:       53103c00        lsl     w0, w0, #16
>>>>>> ffff80001015b088:       a94153f3        ldp     x19, x20, [sp, #16]
>>>>>> ffff80001015b08c:       a8c27bfd        ldp     x29, x30, [sp], #32
>>>>>> ffff80001015b090:       d65f03c0        ret
>>>>>
>>>>> This should get patched at runtime, but you're saying that's not happening?
>>>>>
>>>>
>>>> My mistake, I didn't check the runtime carefully.
>>>
>>> Good to hear there's not a bug, but if you see a performance benefit from
>>> using the static-key for xchg() then I'd obviously be open to changing it
>>
>> Thanks your reply, if I follow the two methods correctly, static-key will
>> not consume '__nops(3)', others are the same.
>>
>> I will run some tests to check the performance  ;-)
>>
> 
> We compare the two methods on Huawei Kunpeng920 and the throughput per second
> as follows:
> 
> one core  |without delay| 200ns delay|
> --------------------------------------
> static-key| 55294942    | 3937156    |
> --------------------------------------
> runtime   | 54706282    | 3918188    |
> --------------------------------------
> 

Are you happy to pick up this patch since it has some benefits for single core?  ;-)

Thanks,
Shaokun

> If we run this test using 32-cores, the result is almost the same.
> Test code is followed:
> if(delay_o) {
> 	while (get_cycles() <= (time_temp + t_cnt)) {
> 		(void)atomic64_xchg(&wk_in->num, 1);
> 		myndelay(delay_o);
> 		(void)atomic64_xchg(&wk_in->num, 2);
> 		myndelay(delay_o);
> 		w_cnt+=2;
> 	}
> } else {
> 	while (get_cycles() <= (time_temp + t_cnt)){
> 		(void)atomic64_xchg(&wk_in->num, 1);
> 		(void)atomic64_xchg(&wk_in->num, 2);
> 		w_cnt+=2;
> 	}
> }
> 
> Thanks,
> Shaokun
> 
>> Thanks,
>> Shaokun
>>
>>
>>> over as well.
>>>
>>> Thanks,
>>>
>>> Will
>>>
>>> .
>>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
