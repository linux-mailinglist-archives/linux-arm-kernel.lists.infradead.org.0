Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DC311B72F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 13:21:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m2ceG7CECVS7wHMi0AoADyJZ5JnnN13W13+P2+g8xJk=; b=MW53WX+tYC5Ky0
	XDeQmdNSTjwzT37Cd2YmdjMM2g8RCdTMUhxuAxdm0tE6w20VU77d2KKoQkNyc4Zlu5QLR0ALXN3y+
	++9JZveNqNeFtrbtlHkd9rpDDATSTRYzl8gUdwXTdymrtu+4rk8H0d4yaGIjkxN6YUTTYdpQKc/Kw
	DxWQDvqhuwAB5zSb/LjC3sXIIJNZgt1MacaE1C7jfQg6ODnY2X51UDBdVK8rGJhMLDtWoHJvFhXNq
	vjffKRZyVK+/f4LXkyn9RPnG+NMgoZCAK3WpigqJ9lHtdP5uqtscyG1uFxYk6psAiZUTmvdsVOqgT
	10aQrnQqaMpEXv68SAmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRwOg-0004K4-W3; Fri, 24 Apr 2020 11:21:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRwOX-0004IY-Ss
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 11:21:23 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9BA5F206D4;
 Fri, 24 Apr 2020 11:21:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587727281;
 bh=9j66fxXI2jcsWYFYcG/USAvpeLheI4USds77+Y4mP1c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=y/dWUU1q4sC+WdKi/8sEc/Rgu2id2EVdo9H7mjZK1I7FNZDUkWmXdv7bwDYDS3ilK
 gyXfL6Zt+o29RLdzyk2xUpxQ67SHoiceUd1MKcOwgXYYwgp2jZIhj3PzN1/zM9abnU
 JSv0jddj1P9Xq7tPBDOLvHb6Pwq+4+ySiruoNKYs=
Date: Fri, 24 Apr 2020 12:21:14 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v11 01/12] add support for Clang's Shadow Call Stack (SCS)
Message-ID: <20200424112113.GC21141@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200416161245.148813-1-samitolvanen@google.com>
 <20200416161245.148813-2-samitolvanen@google.com>
 <20200420171727.GB24386@willie-the-truck>
 <20200420211830.GA5081@google.com>
 <20200422173938.GA3069@willie-the-truck>
 <20200422235134.GA211149@google.com>
 <202004231121.A13FDA100@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202004231121.A13FDA100@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_042121_973256_28F75C0D 
X-CRM114-Status: GOOD (  33.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Juri Lelli <juri.lelli@redhat.com>,
 kernel-hardening@lists.openwall.com, Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Marc Zyngier <maz@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, clang-built-linux@googlegroups.com,
 Ingo Molnar <mingo@redhat.com>, Sami Tolvanen <samitolvanen@google.com>,
 Laura Abbott <labbott@redhat.com>, Dave Martin <Dave.Martin@arm.com>,
 Jann Horn <jannh@google.com>, Steven Rostedt <rostedt@goodmis.org>,
 linux-arm-kernel@lists.infradead.org, Michal Marek <michal.lkml@markovi.net>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 James Morse <james.morse@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 11:28:40AM -0700, Kees Cook wrote:
> On Wed, Apr 22, 2020 at 04:51:34PM -0700, Sami Tolvanen wrote:
> > On Wed, Apr 22, 2020 at 06:39:47PM +0100, Will Deacon wrote:
> > > On Mon, Apr 20, 2020 at 02:18:30PM -0700, Sami Tolvanen wrote:
> > > > On Mon, Apr 20, 2020 at 06:17:28PM +0100, Will Deacon wrote:
> > > > > > +	 * The shadow call stack is aligned to SCS_SIZE, and grows
> > > > > > +	 * upwards, so we can mask out the low bits to extract the base
> > > > > > +	 * when the task is not running.
> > > > > > +	 */
> > > > > > +	return (void *)((unsigned long)task_scs(tsk) & ~(SCS_SIZE - 1));
> > > > > 
> > > > > Could we avoid forcing this alignment it we stored the SCS pointer as a
> > > > > (base,offset) pair instead? That might be friendlier on the allocations
> > > > > later on.
> > > > 
> > > > The idea is to avoid storing the current task's shadow stack address in
> > > > memory, which is why I would rather not store the base address either.
> > > 
> > > What I mean is that, instead of storing the current shadow stack pointer,
> > > we instead store a base and an offset. We can still clear the base, as you
> > > do with the pointer today, and I don't see that the offset is useful to
> > > an attacker on its own.
> > 
> > I see what you mean. However, even if we store the base address +
> > the offset, we still need aligned allocation if we want to clear
> > the address. This would basically just move __scs_base() logic to
> > cpu_switch_to() / scs_save().
> 
> Okay, so, I feel like this has gotten off into the weeds, or I'm really
> dense (or both). :) Going back to the original comment:
> 
> > > > > Could we avoid forcing this alignment it we stored the SCS
> > > > > pointer as a (base,offset) pair instead? That might be friendlier
> > > > > on the allocations later on.
> 
> I think there was some confusion about mixing the "we want to be able to
> wipe the value" combined with the masking in __scs_base(). These are
> unrelated, as was correctly observed with "We can still clear the base".

Having just tried to implement this, it turns out they *are* related
and we can't still clear the base, I was wrong about that :( See below.

> What I don't understand here is the suggestion to store two values:
> 
> Why is two better than storing one? With one, we only need a single access.
> 
> Why would storing the base be "friendlier on the allocations later on"?
> This is coming out of a single kmem cache, in 1K chunks. They will be
> naturally aligned to 1K (unless redzoing has been turned on for some
> slab debugging reason). The base masking is a way to avoid needing to
> store two values, and only happens at task death.

Fair enough about the kmem_cache, although I'm still worried about these
things getting bigger in future and the alignment having to increase at
the same time. We also have a bunch of static/percpu allocations that don't
use this cache.

Also, since you mentioned the lack of redzoning, isn't it a bit dodgy
allocating blindly out of the kmem_cache? It means we don't have a redzone
or a guard page, so if you can trigger something like a recursion bug then
could you scribble past the SCS before the main stack overflows? Would this
clobber somebody else's SCS? The vmap version that I asked Sami to drop
is at least better in this regard, although the guard page is at the wrong
end of the stack and we just hope that the allocation below us didn't pass
VM_NO_GUARD. Looks like the same story for vmap stack :/

> Storing two values eats memory for all tasks for seemingly no meaningful
> common benefit. What am I missing here?

I would like to remove the alignment requirements for the static and percpu
allocations. AFAICT, the only reason the alignment is needed is because you
want to convert an SCS pointer into the base pointer. The only reason *that*
is needed is because of the questionable wiping of the pointer in the
thread_info, but I really don't see the benefit of this. Unlike a crypto
secret (which was your analogy), the SCS pointer is stored in memory in
at least the following situations:

  * The task isn't running
  * The task is running in userspace
  * The task is running a vCPU in KVM
  * We're calling into EFI
  * On exception entry from EL1, as part of stacking x18
  * During CPU suspend

If we split the pointer in two (base, offset) then we could leave the
base live in the thread_info, not require alignment of the stacks (which
may allow for unconditional redzoning?) and then just update the offset
value on context switch, which could be trivially checked as part of the
existing stack overflow checking on kernel entry.

The base and offset can live in the same cacheline and be loaded with ldp,
so I don't see there being an access cost compared to a single variable.

Am I missing something (modulo us not agreeing on the utility of wiping
the pointer)?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
