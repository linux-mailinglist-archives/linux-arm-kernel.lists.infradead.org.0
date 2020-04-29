Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D63B1BD76A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 10:39:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=FVeMyvLYwERHDA/9pbcLfWDwAPNDZgGYX2Lrwn1/wx8=; b=KQk5KWBziRo4TYHXgFOx7w69+
	YW/5cI3RUhbHCMQD2vAcCuUXbQuclTIujZacTA23Rn9Cu48aVgnJl6ze4zDNpS+56aaAkXFrnDUH+
	Z+EUjXLuj0pbjucaeyB8tgDtZdhA7MS+8Try0UdeZ7OmpMfWdb8UKz/s+WF5mVkNpdCAGX1QVZVwG
	Nx4FmvE2HKfXxx1PBrSbd9n4bW7R7H/2j1kD/DHiLM/wI78DEhSfIqnqfZyGjJSJ1UrUeXRTK1756
	7dt09VwW1akU3p2uCW/2MvU4fUVGLn/lToB9qhhxPBwPF+5q7e49FNy4jh8koEJHJPv9luKaIiqp0
	m8iaOnMeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTiFL-0004jy-LJ; Wed, 29 Apr 2020 08:39:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTiF7-0004iy-Se
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 08:38:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 100F6C14;
 Wed, 29 Apr 2020 01:38:57 -0700 (PDT)
Received: from [10.57.22.235] (unknown [10.57.22.235])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BCC33F305;
 Wed, 29 Apr 2020 01:38:54 -0700 (PDT)
Subject: Re: [PATCH] arm64: Optimize ptrauth by enabling it for non-leaf
 functions
To: Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
References: <1586856741-26839-1-git-send-email-amit.kachhap@arm.com>
 <20200414100033.GA26395@willie-the-truck>
 <20200414101649.GC1278@C02TD0UTHF1T.local>
 <20200414110056.GB26395@willie-the-truck>
 <20200414110922.GC2486@C02TD0UTHF1T.local>
 <20200414131005.GA28750@willie-the-truck>
 <20200414140749.GI2486@C02TD0UTHF1T.local>
From: Amit Kachhap <amit.kachhap@arm.com>
Message-ID: <617b2851-7a59-37cb-a0f5-e6ef4995bb66@arm.com>
Date: Wed, 29 Apr 2020 14:08:30 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20200414140749.GI2486@C02TD0UTHF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_013857_967294_E390F47E 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>,
 James Morse <james.morse@arm.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org, Daniel Kiss <daniel.kiss@arm.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will/Mark,

On 4/14/20 7:37 PM, Mark Rutland wrote:
> On Tue, Apr 14, 2020 at 02:10:06PM +0100, Will Deacon wrote:
>> On Tue, Apr 14, 2020 at 12:09:22PM +0100, Mark Rutland wrote:
>>> On Tue, Apr 14, 2020 at 12:00:56PM +0100, Will Deacon wrote:
>>>> On Tue, Apr 14, 2020 at 11:16:49AM +0100, Mark Rutland wrote:
>>>>> I believe this is because leaf functions don't store the LR to the stack
>>>>> (as they don't create a frame record), so it cannot be modified by a
>>>>> stray memory write.
>>>>
>>>> That makes some sense, but doesn't it also mean you can jump into the middle
>>>> of a leaf function and it will happily return to whatever sits in LR?
>>>
>>> If you can do that, you've already subverted control flow, and can
>>> probably do the same for a regular function, since for:
>>>
>>> | AUTIASP
>>> | RET
>>>
>>> ... you can just jump to the RET instead.
>>
>> Perhaps, but it's not at all clear to me that being able to jump over the
>> AUT instruction is just as easy or useful as being able to jump into the
>> middle of a leaf function, which might act as a form of gadget. The commit
>> message is quite bold in saying "[this] is not useful from security point
>> of view".

I re-worded the commit log and posted the V2 version.

Cheers,
Amit
> 
> Ah, I see.
> 
> You're right that this would give some number of potentially useful
> gadgets.
> 
>> How would this interact with BTI? Would we need to have different landing
>> pads for leaf functions?
> 
> IIRC the compiler would emit a BTI instruction where the PACIASP would
> have been, unless the function were only ever called directly in which
> case the BTI can also be omitted.
> 
> For functions that can only be called directly, this prevents the whole
> function (which might not be AAPCS compliant) from being a gadget. For
> functions that can be called indirectly, the only saving is the omission
> of AUTIASP, which I suspect is not a significant saving.
> 
> The tradeoff isn't clear to me.
> 
> Thanks,
> Mark.
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
