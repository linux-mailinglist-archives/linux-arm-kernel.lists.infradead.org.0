Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D13C1509AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 13:23:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sB1Y7T1hx3kAa/Wi8eIqypqkLptx3kk6JfoLkJpdvcg=; b=WPfau8m7A+5aYUlf9spop9/5l
	SqdQ7VL25sF6FRx8/rCxWMzgnf45ZLWFOShRqmMBF2Tj2f+HMAtY9iPlDtgS82FPFw68KfNvotsgP
	i/9gc0a3hVgZSHXkEmHEl2Tgpcj3T3V8aBBt3JcFQK3rR3ITluxnqVZLxStIvROSRamyD40HSME7P
	QSn0Kgu8EUinz969O2ZxcbiI+vl8YVPQaMAfkfTjAeRpi/MAoJtJrtLzQrG5UgMIpx1qCrE1hylpL
	EK4zdfZsZb45BIRN4CiK6pYm95NVL6AdRJms5wm7bDR14DYLsVwoYjLdpPM4rRO0Yz4HQCPy9ZSQY
	miVNsP1pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfN44-00030p-8K; Mon, 24 Jun 2019 11:23:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfN3v-0002zo-07
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 11:23:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 755622B;
 Mon, 24 Jun 2019 04:23:00 -0700 (PDT)
Received: from [192.168.1.27] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7BAB43F718;
 Mon, 24 Jun 2019 04:22:58 -0700 (PDT)
Subject: Re: [PATCH 0/4] arm64: wire up VM_FLUSH_RESET_PERMS
To: Will Deacon <will@kernel.org>, Will Deacon <will.deacon@arm.com>
References: <20190523102256.29168-1-ard.biesheuvel@arm.com>
 <20190528100413.GA20809@fuggles.cambridge.arm.com>
 <20190624111600.b7e5kkfvuszj6522@willie-the-truck>
From: Ard Biesheuvel <ard.biesheuvel@arm.com>
Message-ID: <07e3d9ea-b917-2adb-6f88-0f1a31692d04@arm.com>
Date: Mon, 24 Jun 2019 13:22:56 +0200
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624111600.b7e5kkfvuszj6522@willie-the-truck>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_042303_085725_19F7F907 
X-CRM114-Status: GOOD (  18.44  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: mark.rutland@arm.com, marc.zyngier@arm.com, linux-kernel@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Nadav Amit <namit@vmware.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, James Morse <james.morse@arm.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Rick Edgecombe <rick.p.edgecombe@intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 6/24/19 1:16 PM, Will Deacon wrote:
> On Tue, May 28, 2019 at 11:04:20AM +0100, Will Deacon wrote:
>> On Thu, May 23, 2019 at 11:22:52AM +0100, Ard Biesheuvel wrote:
>>> Wire up the code introduced in v5.2 to manage the permissions
>>> of executable vmalloc regions (and their linear aliases) more
>>> strictly.
>>>
>>> One of the things that came up in the internal discussion is
>>> whether non-x86 architectures have any benefit at all from the
>>> lazy vunmap feature, and whether it would perhaps be better to
>>> implement eager vunmap instead.
>>>
>>> Cc: Nadav Amit <namit@vmware.com>
>>> Cc: Rick Edgecombe <rick.p.edgecombe@intel.com>
>>> Cc: Peter Zijlstra <peterz@infradead.org>
>>> Cc: Andrew Morton <akpm@linux-foundation.org>
>>> Cc: Will Deacon <will.deacon@arm.com>
>>> Cc: Masami Hiramatsu <mhiramat@kernel.org>
>>> Cc: James Morse <james.morse@arm.com>
>>>
>>> Ard Biesheuvel (4):
>>>    arm64: module: create module allocations without exec permissions
>>>    arm64/mm: wire up CONFIG_ARCH_HAS_SET_DIRECT_MAP
>>>    arm64/kprobes: set VM_FLUSH_RESET_PERMS on kprobe instruction pages
>>>    arm64: bpf: do not allocate executable memory
>>>
>>>   arch/arm64/Kconfig                  |  1 +
>>>   arch/arm64/include/asm/cacheflush.h |  3 ++
>>>   arch/arm64/kernel/module.c          |  4 +-
>>>   arch/arm64/kernel/probes/kprobes.c  |  4 +-
>>>   arch/arm64/mm/pageattr.c            | 48 ++++++++++++++++----
>>>   arch/arm64/net/bpf_jit_comp.c       |  2 +-
>>>   mm/vmalloc.c                        | 11 -----
>>>   7 files changed, 50 insertions(+), 23 deletions(-)
>>
>> Thanks, this all looks good to me. I can get pick this up for 5.2 if
>> Rick's fixes [1] land soon enough.
> 
> Bah, I missed these landing in -rc5 and I think it's a bit too late for
> us to take this for 5.2. now particularly with our limited ability to
> fix any late regressions that might arise.
> 
> In which case, Catalin, please can you take these for 5.3? You might run
> into some testing failures with for-next/core due to the late of Rick's
> fixes, but linux-next should be alright and I don't think you'll get any
> conflicts.
> 
> Acked-by: Will Deacon <will@kernel.org>
> 
> Ard: are you ok with that?
> 

That is fine, although I won't be around to pick up the pieces by the 
time the merge window opens. Also, I'd like to follow up on the lazy 
vunmap thing for non-x86, but perhaps we can talk about this at plumbers?


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
