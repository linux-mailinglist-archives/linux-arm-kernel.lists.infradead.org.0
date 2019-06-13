Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09FE43500
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Jun 2019 11:54:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chYpXZp0x7NH0adA/yMAnkTUBu1en0cNyXdJSd3Y6Uc=; b=IoWj98+G7Zwkyg
	I1WT+5yzpDMYqdvrdf+WksZbLTkZ1d3Wl0I7+T5Iy25uwxOUvGqEcv4V0DPgwAlheQNm+YojFHyuH
	gm25Z+P1oAjJQpZQn7djlAvcJSDKuuBQHsdLwn3ulSYzUDyyQvRTQqe+FYsTmzjLQ9NFHb/MTRVa/
	QNBiFay6bTiTmkSPJAs0QjojWPFEFqNHAkO4BgHqfa53xvz9HnGp0U6NkQRMp/IYBf2fS0gYpbxwW
	z128TPIwi9Ht/7JNIb/XvdEb9sTM4UTdjjkvz1H2sZnLVqaO5DrKeY+lRF4O1zlFfCr7u1qMcSkho
	ZC9vr541Nae+zmVUsq6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbMRE-0006nP-QR; Thu, 13 Jun 2019 09:54:33 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbMQu-0006c9-BK
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Jun 2019 09:54:14 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 7EFC4A9D614285E00CBB;
 Thu, 13 Jun 2019 17:54:01 +0800 (CST)
Received: from [127.0.0.1] (10.177.223.23) by DGGEMS409-HUB.china.huawei.com
 (10.3.19.209) with Microsoft SMTP Server id 14.3.439.0; Thu, 13 Jun 2019
 17:53:57 +0800
Subject: Re: [RFC] Disable lockref on arm64
To: Jayachandran Chandrasekharan Nair <jnair@marvell.com>, Will Deacon
 <will.deacon@arm.com>
References: <CAHk-=wjPqcPYkiWKFc=R3+18DXqEhV+Nfbo=JWa32Xp8Nze67g@mail.gmail.com>
 <20190502082741.GE13955@hc>
 <CAHk-=wjmtMrxC1nSEHarBn8bW+hNXGv=2YeAWmTw1o54V8GKWA@mail.gmail.com>
 <20190502231858.GB13168@dc5-eodlnx05.marvell.com>
 <CAHk-=wiEahkwDXpoy=-SzJHNMRXKVSjPa870+eKKenufhO_Hgw@mail.gmail.com>
 <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
From: Hanjun Guo <guohanjun@huawei.com>
Message-ID: <4210fcce-7ed1-8f93-a0f0-0fc588792fee@huawei.com>
Date: Thu, 13 Jun 2019 17:53:39 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
Content-Language: en-US
X-Originating-IP: [10.177.223.23]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190613_025412_943620_0E160D75 
X-CRM114-Status: GOOD (  19.67  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/6/12 12:10, Jayachandran Chandrasekharan Nair wrote:
> On Wed, May 22, 2019 at 05:04:17PM +0100, Will Deacon wrote:
>> On Sat, May 18, 2019 at 12:00:34PM +0200, Ard Biesheuvel wrote:
>>> On Sat, 18 May 2019 at 06:25, Jayachandran Chandrasekharan Nair
>>> <jnair@marvell.com> wrote:
>>>>
>>>> On Mon, May 06, 2019 at 07:10:40PM +0100, Will Deacon wrote:
>>>>> On Mon, May 06, 2019 at 06:13:12AM +0000, Jayachandran Chandrasekharan Nair wrote:
>>>>>> Perhaps someone from ARM can chime in here how the cas/yield combo
>>>>>> is expected to work when there is contention. ThunderX2 does not
>>>>>> do much with the yield, but I don't expect any ARM implementation
>>>>>> to treat YIELD as a hint not to yield, but to get/keep exclusive
>>>>>> access to the last failed CAS location.
>>>>>
>>>>> Just picking up on this as "someone from ARM".
>>>>>
>>>>> The yield instruction in our implementation of cpu_relax() is *only* there
>>>>> as a scheduling hint to QEMU so that it can treat it as an internal
>>>>> scheduling hint and run some other thread; see 1baa82f48030 ("arm64:
>>>>> Implement cpu_relax as yield"). We can't use WFE or WFI blindly here, as it
>>>>> could be a long time before we see a wake-up event such as an interrupt. Our
>>>>> implementation of smp_cond_load_acquire() is much better for that kind of
>>>>> thing, but doesn't help at all for a contended CAS loop where the variable
>>>>> is actually changing constantly.
>>>>
>>>> Looking thru the perf output of this case (open/close of a file from
>>>> multiple CPUs), I see that refcount is a significant factor in most
>>>> kernel configurations - and that too uses cmpxchg (without yield).
>>>> x86 has an optimized inline version of refcount that helps
>>>> significantly. Do you think this is worth looking at for arm64?
>>>>
>>>
>>> I looked into this a while ago [0], but at the time, we decided to
>>> stick with the generic implementation until we encountered a use case
>>> that benefits from it. Worth a try, I suppose ...
>>>
>>> [0] https://lore.kernel.org/linux-arm-kernel/20170903101622.12093-1-ard.biesheuvel@linaro.org/
>>
>> If JC can show that we benefit from this, it would be interesting to see if
>> we can implement the refcount-full saturating arithmetic using the
>> LDMIN/LDMAX instructions instead of the current cmpxchg() loops.
> 
> Now that the lockref change is mainline, I think we need to take another
> look at this patch.
> 
> Using a fixed up version of Ard's patch above along with Jan's lockref
> change upstream, I get significant improvement in scaling for my file
> open/read/close testcase[1]. Like I wrote earlier, if I take a
> standard Ubuntu arm64 kernel configuration, most of the time for my
> test[1] is spent in refcount operations.
> 
> With Ard's changes applied[2], I see that the lockref CAS code becomes
> the top function and then the retry limit will kick in as expected. In
> my testcase, I see that the queued spinlock case is about 2.5 times
> faster than the unbound CAS loop when 224 CPUs are enabled (SMT 4,
> 28core, 2socket).
> 
> JC
> 
> [1] https://github.com/jchandra-cavm/refcount-test
> [2] https://github.com/jchandra-cavm/linux/commits/refcount-fixes

FWIW, with the patch (Ard's patch plus fixes) above, running the
same testcase on ARM64 Kunpeng920 96 CPU core system, I can see about 50%
performance boost.

I also tested Jan's lockref change without Ard's patch, performance
is almost the same.

Thanks
Hanjun


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
