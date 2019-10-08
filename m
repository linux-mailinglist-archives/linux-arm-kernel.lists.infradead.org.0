Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2385CFB6E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 15:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24wGQCWwYrOAsDx2KESDT9OhpyDk+HlM70ImL4NavzE=; b=aQROboLY9Bdbdf
	tCutSs2oidGGLZKKgr5VHSBBf6mHjOSv9+oZ4IcKHxy0uWg7lG46o/qKQ07fHFX+PxrpqeAGcuzgC
	yjWOqU5gW7l+UrSMWct6NZKgnodvvX7k+/VKXHn/GuGOr154XrOA3wTngZVtPx/q5T8eZ9zBaAbMH
	qNxjxCKl0Wcco/cxoFSnHz7O35ku0hk6PVPSvhC73HZ/lejct0UJ+NgpabZ+XBxby892tymtzgTmr
	7/pSnFwFu691VW/ll/PFhDmZzsZSDN9t5xoZf5KP2PExMzeoRLNijkoA1BNOqrt/hk1s1oQakENZv
	lnIPAjIJtD87/BjV1AKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHpfl-0006pv-G7; Tue, 08 Oct 2019 13:37:05 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHpfd-0006p4-K1
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 13:36:59 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 94B46307C820;
 Tue,  8 Oct 2019 13:36:56 +0000 (UTC)
Received: from llong.remote.csb (dhcp-17-160.bos.redhat.com [10.18.17.160])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 9495F5C21F;
 Tue,  8 Oct 2019 13:36:55 +0000 (UTC)
Subject: Re: [RFC PATCH 0/3] Queued spinlocks/RW-locks for ARM
To: Arnd Bergmann <arnd@arndb.de>,
 Sebastian Andrzej Siewior <sebastian@breakpoint.cc>
References: <20191007214439.27891-1-sebastian@breakpoint.cc>
 <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
From: Waiman Long <longman@redhat.com>
Organization: Red Hat
Message-ID: <56004687-af3e-3b8b-c9b5-21cd653db12b@redhat.com>
Date: Tue, 8 Oct 2019 09:36:55 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAK8P3a13AOKm1epqAtP9329Ai2Bh+H18fOfsqO+deCLTHoYRwA@mail.gmail.com>
Content-Language: en-US
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 08 Oct 2019 13:36:56 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_063657_682845_B8629765 
X-CRM114-Status: GOOD (  22.64  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/8/19 7:42 AM, Arnd Bergmann wrote:
> On Mon, Oct 7, 2019 at 11:45 PM Sebastian Andrzej Siewior
> <sebastian@breakpoint.cc> wrote:
>> I added support for queued-RW and -spinlocks for ARM. I wanted to
>> remove the current implementation but this does not work. The CPU_V6
>> kernel config does not have support for xchg() on 2 byte memory address.
>> This is required by q-lock' slowpath. It is possible to create a
>> multi-kernel (with v6+v7+SMP) which then lack the function.
>>
>> I tested the q-lock implementation with
>>         hackbench -g40 -s 500 -l 500
>>
>> The numbers in the table below represent the average runtime of 10
>> invocations. I tested with HZ_100,HZ_250 and the different preemption
>> levels on a IMX6q-board (quad Cortex-A9) and an AM572x board (dual
>> Cortex-A15).
>> "Ticket" means the current implementation on v5.4-rc1, Q-Locks is the
>> switch to queued RW and spinlocks and in Q-locksI the locking
>> instruction is additionally inlined.
> This looks nice, and I don't see anything wrong with the implementation,
> but I am slightly worried about switching everything over to a generic
> spinlock while keeping the custom ARM version for an exceptionally
> rare corner case:
>
> The ARM spinlock is now only used when you build an SMP-enabled
> kernel for an ARM1136r0 that is used in OMAP2, i.MX3 and some
> of the least common Integrator/Realview variants. I'm not aware
> of any binary distros with ARMv6+ kernels, so these would run custom
> kernels that are almost always non-SMP as well as no longer getting
> kernel upgrades (almost all have been discontinued years ago, the i.MX35
> chip itself was the last to get EOLd in 2018).
> Raspbian builds an ARMv6K SMP kernel that is not affected by this.
>
> I wonder if we can do something better here and make the
> asm-generic/qspinlock.h implementation always degrade into an
> equivalent of include/linux/spinlock_up.h when running on uniprocessor
> systems, avoiding both the atomic cmpxchg and the slowpath.

In x86, the lock instruction prefix is patched out when running on UP
system. This downgrades the atomic cmpxchg to non-atomic one. We may do
something similar in other architectures.

Cheers,
Longman


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
