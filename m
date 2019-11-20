Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A42A4103EF1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 16:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Jb+e0M4xWZNjxX+tJ/48VD/zaXUMhzGdYiXvxLhBtxU=; b=Yo3Tbi/l8CNegFw2aMWNvzzpo
	ABDuSuAnmxHmQFAtrgCP3xNvYGFlikC6g2zWGaMAc2PyJFgPC3kGuGjxwKdsQnPVxWkF903U98544
	9dxoz/P7Hv5rsEv0AA3PuEoHwiXfBs/yrRYo1qROpa9XER2UXkLURHYtTAdy47nlxXIdHe5ns7Kkv
	9+6RCgk4znpf/sgKSu76hWlTBtwwoS7y4RzF49TGNz9t/oBHok19BOScrI4CU4bMVU3tMPxsKVsWX
	CQf1MNewh8B4iPY4uDINmYLyf+MVl8JaXPbm87aOQ1dUrddgkA99JaF8gDqvVV5CrmG1hzohLA9sw
	7u8Lkm4iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXS4Z-0007Sm-TM; Wed, 20 Nov 2019 15:39:15 +0000
Received: from inca-roads.misterjones.org ([213.251.177.50])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXS4Q-0007SH-Gx
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 15:39:08 +0000
Received: from www-data by cheepnis.misterjones.org with local (Exim 4.80)
 (envelope-from <maz@kernel.org>)
 id 1iXS4N-0006OH-9s; Wed, 20 Nov 2019 16:39:03 +0100
To: Leonid Movshovich <event.riga@gmail.com>
Subject: Re: [PATCH] irq-gic: select all CPU's selected in interrupt affinity
 settings
X-PHP-Originating-Script: 0:main.inc
MIME-Version: 1.0
Date: Wed, 20 Nov 2019 15:39:03 +0000
From: Marc Zyngier <maz@kernel.org>
In-Reply-To: <CAPaFbavWjCJKjUN6nA8Gc4urAMzLt-YVB4ED5DVarenrvMgnvQ@mail.gmail.com>
References: <CAPaFbat4MM0=iVB-VazTK9=2qRebAgEN4euYCTESRo3yfx75Kw@mail.gmail.com>
 <20191119233633.GG25745@shell.armlinux.org.uk>
 <CAPaFbatG+ePwjCnBva1tfmzmvpHZv9xW3nM4gj2DTpFn=D+9Vg@mail.gmail.com>
 <2cd3e872-57d5-5cbb-78d7-98da6447dc59@arm.com>
 <392e74d78b48e04040cedfc26ed8ce81@www.loen.fr>
 <CAPaFbavWjCJKjUN6nA8Gc4urAMzLt-YVB4ED5DVarenrvMgnvQ@mail.gmail.com>
Message-ID: <5b230ce5eb43fc014a9c7224d980e79a@www.loen.fr>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/0.7.2
X-SA-Exim-Connect-IP: <locally generated>
X-SA-Exim-Rcpt-To: event.riga@gmail.com, robin.murphy@arm.com,
 linux@armlinux.org.uk, linux-arm-kernel@lists.infradead.org
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on cheepnis.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_073906_708072_5249603D 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Robin Murphy <robin.murphy@arm.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-11-20 15:28, Leonid Movshovich wrote:
> On Wed, 20 Nov 2019 at 15:04, Marc Zyngier <maz@kernel.org> wrote:
>>
>> On 2019-11-20 01:15, Robin Murphy wrote:
>> > On 2019-11-20 12:24 am, Leonid Movshovich wrote:
>> >> On Tue, 19 Nov 2019 at 23:36, Russell King - ARM Linux admin
>> >> <linux@armlinux.org.uk> wrote:
>> >>>
>> >>> On Tue, Nov 19, 2019 at 11:12:26PM +0000, event wrote:
>> >>>> So far only a CPU selected with top affinity bit was selected.
>> >>>> This
>> >>>> resulted in all interrupts
>> >>>> being processed by CPU0 by default despite "FF" default 
>> affinity
>> >>>> setting for all interrupts
>> >>>
>> >>> Have you checked whether this causes _ALL_ CPUs in the mask to 
>> be
>> >>> delivered a single interrupt, thereby causing _ALL_ CPUs to be
>> >>> slowed down and hit the same locks at the same time.
>> >>>
>> >> Yes, I've checked this. No, interrupt is delivered to only one 
>> CPU.
>> >> Also ARM GIC architecture specification specifically states in
>> >> chapter
>> >> 3.1.1 that hardware interrupts are delivered to a single CPU in
>> >> multiprocessor system ("1-N model").
>> >
>> > But see also section 3.2.3 - just because only one CPU actually 
>> runs
>> > the given ISR doesn't necessarily guarantee that the others 
>> *weren't*
>> > interrupted. I'd also hesitate to make any assumptions that all 
>> GIC
>> > implementations behave exactly the same way.
>>
>> What happens is that *all* CPUs are being sent the interrupt, and 
>> there
>> is some logic in the GIC that ensures that only one sees it (the 
>> first
>> one to read the IAR register). All the other see a spurious (1023)
>> interrupt, and have wasted some precious cycles in doing so.
>
> Cycles are only precious when system is under high load. Under high
> load, to achieve fair spread of interrupts between CPUs one would 
> need
> a userspace app (irqbalance) to sit there and constantly rebalance
> smp_affinity based on /proc/interrupts. Hard to believe such an
> approach wastes less cycles.

You'd be surprised. As always when looking at these things, do come up
with actual figures with a wide range of workloads that show benefits
for the approach you're suggesting.

Also, if your system isn't under high load, why would you even care
about this kind of distribution?

>> I get this patch, more or less well written, every other year.
>> My answer is that it may help a very small minority of use cases, 
>> and
>> suck for everyone else. So thank you, but no, thank you.
>
> I was wondering, why such an obvious change was never made. Now I 
> know
> whom to blame :).

The MAINTAINERS file (and a basic git log) would have told you that.
And yes, I'm proudly taking the blame of having resisted this all 
along.

> Anyway, I don't suggest "happiness for everyone". I suggest to change
> the behaviour AND default affinity. So existing setups are not
> affected AND "small minority" gets the benefit.

As I said above, show me the numbers on a wide range of HW, with a wide
range of workloads.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
