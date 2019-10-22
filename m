Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BDCE094B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 18:40:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z/l1gutQdBmbudKoripjQMJ5bs90j61Ke0GQqgBpDy4=; b=K64UhebPcTQVzH
	Endk/jorG69RrbuO9UNVTsSfBsTeJX0bKsqjMzh6T9Leluhed5CxUX1czFxQlBFRAtbAzddc+Zq81
	GOXRaIzL40BSCewkaAI1zvvqoVDDNY5JYb1cHOGu/tl6YLYT2Jq0mU0qW1Buf16O/zv6zwdKd02ER
	Y/3Ex52tCaokAhfYBleM6roQYn4QTTz+N7jGqgHxnwc3MLtDck0mbqEfp0W2W7yxDFhmoOwl1xxjC
	nP9p2M/rxbWeqre5rAmO2lDXxR3MHYbQQzNg+YtGmlo4uMKinRwVVB/KSYTHLsPhIjAxigHK2tn6E
	e5+Ns5WFaq3bSaVWrnCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMxCp-0008IG-0f; Tue, 22 Oct 2019 16:40:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMxBt-0007jR-9f
 for linux-arm-kernel@lists.infradead.org; Tue, 22 Oct 2019 16:39:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id c16so4870423plz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 22 Oct 2019 09:39:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Rt0ZUiQy4HJFZdAMIydjbNbQsbdDguJvjqd8YKWeDnE=;
 b=ogksljDxKRgfGBroGm7xBIf8C0sBOIpQwLV1eW62WKPEKAK8BcMde+1edLcN/XwnJf
 WFQlP5+GLdbmsThLx1XChGduK8OV+E5iIxcdzshKs6Y91RY/3aidGiG9xi0/oT9mjtg9
 TfAgr0n6YirPMOYB2nUNX2k6BdXGKVDDMw83k=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Rt0ZUiQy4HJFZdAMIydjbNbQsbdDguJvjqd8YKWeDnE=;
 b=i0xbig4XrY3oBI1rZrzU15vaYj4WyR6lM6oEyb3Ke8ocwt9R0gUGOGNKwIT8dRMVQX
 9aT+MJ8x5kipjYO3p8ExpSiv4m78XevTbEpjWlESctpsxQhHWk1GNTgC1CXaFhZNi9Ho
 FjrmveKZbpGg6SQlEfCy67bRpzDSZju8od8/+TG+C9HzsKvRQkCHXB6RNK1qGnbY6E7j
 iqcqAVx8BDksdER0xLYQQmrnJfOm5oIk2Y4NcQ9/169zBuHmgo94AjGtRoqspySgJyz8
 3vWG1kd1bKjeBMZaoNW27tvn2wAP5GciWMjCwThtPsBUz7d+3rpQVLFRGOS0ro6FQK2c
 aoHg==
X-Gm-Message-State: APjAAAWQLIHdNsH7skoEZ6zoMYHFWUt05XfDg82OcjVfo8vwlMUjeqUz
 i5DlVGQ53e18t0Ax07Ay1AZg8w==
X-Google-Smtp-Source: APXvYqwwu0R1G/NDdC9x+HS+sX059+iR2lo12TC4PzSSYhH+YczsJy50iQ9Smhjh+kbbLz8dkrf5Cw==
X-Received: by 2002:a17:902:b611:: with SMTP id
 b17mr4724943pls.23.1571762364393; 
 Tue, 22 Oct 2019 09:39:24 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:4fff:7a6b:a335:8fde])
 by smtp.gmail.com with ESMTPSA id 62sm19190371pfg.164.2019.10.22.09.39.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Oct 2019 09:39:23 -0700 (PDT)
Date: Tue, 22 Oct 2019 09:39:21 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Doug Anderson <dianders@chromium.org>
Subject: Re: [PATCH] ARM: hw_breakpoint: Handle inexact watchpoint addresses
Message-ID: <20191022163921.GJ20212@google.com>
References: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
 <20191021184658.GE20212@google.com>
 <CAD=FV=X6AzjET0ZRz-faUM0uqqQpfjt-g=0nX=L0LJg-+cjZtw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD=FV=X6AzjET0ZRz-faUM0uqqQpfjt-g=0nX=L0LJg-+cjZtw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191022_093925_466968_A934D98E 
X-CRM114-Status: GOOD (  41.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Pratyush Anand <panand@redhat.com>,
 Pavel Labath <labath@google.com>, Russell King <linux@armlinux.org.uk>,
 LKML <linux-kernel@vger.kernel.org>, Kazuhiro Inaba <kinaba@google.com>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 21, 2019 at 04:49:48PM -0700, Doug Anderson wrote:
> Hi,
> 
> On Mon, Oct 21, 2019 at 11:47 AM Matthias Kaehlcke <mka@chromium.org> wrote:
> >
> > On Sat, Oct 19, 2019 at 11:12:26AM -0700, Douglas Anderson wrote:
> > > This is commit fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact
> > > watchpoint addresses") but ported to arm32, which has the same
> > > problem.
> > >
> > > This problem was found by Android CTS tests, notably the
> > > "watchpoint_imprecise" test [1].  I tested locally against a copycat
> > > (simplified) version of the test though.
> > >
> > > [1] https://android.googlesource.com/platform/bionic/+/master/tests/sys_ptrace_test.cpp
> > >
> > > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > > ---
> > >
> > >  arch/arm/kernel/hw_breakpoint.c | 96 ++++++++++++++++++++++++---------
> > >  1 file changed, 70 insertions(+), 26 deletions(-)
> > >
> > > diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
> > > index b0c195e3a06d..d394878409db 100644
> > > --- a/arch/arm/kernel/hw_breakpoint.c
> > > +++ b/arch/arm/kernel/hw_breakpoint.c
> > > @@ -680,26 +680,62 @@ static void disable_single_step(struct perf_event *bp)
> > >       arch_install_hw_breakpoint(bp);
> > >  }
> > >
> > > +/*
> > > + * Arm32 hardware does not always report a watchpoint hit address that matches
> > > + * one of the watchpoints set. It can also report an address "near" the
> > > + * watchpoint if a single instruction access both watched and unwatched
> > > + * addresses. There is no straight-forward way, short of disassembling the
> > > + * offending instruction, to map that address back to the watchpoint. This
> > > + * function computes the distance of the memory access from the watchpoint as a
> > > + * heuristic for the likelyhood that a given access triggered the watchpoint.
> > > + *
> > > + * See this same function in the arm64 platform code, which has the same
> > > + * problem.
> > > + *
> > > + * The function returns the distance of the address from the bytes watched by
> > > + * the watchpoint. In case of an exact match, it returns 0.
> > > + */
> > > +static u32 get_distance_from_watchpoint(unsigned long addr, u32 val,
> > > +                                     struct arch_hw_breakpoint_ctrl *ctrl)
> > > +{
> > > +     u32 wp_low, wp_high;
> > > +     u32 lens, lene;
> > > +
> > > +     lens = __ffs(ctrl->len);
> >
> > Doesn't this always end up with 'lens == 0'? IIUC ctrl->len can have
> > the values ARM_BREAKPOINT_LEN_{1,2,4,8}:
> >
> > #define ARM_BREAKPOINT_LEN_1    0x1
> > #define ARM_BREAKPOINT_LEN_2    0x3
> > #define ARM_BREAKPOINT_LEN_4    0xf
> > #define ARM_BREAKPOINT_LEN_8    0xff
> 
> Yes, but my best guess without digging into the ARM ARM is that the
> underlying hardware is more flexible.  I don't think it hurts to
> support the flexibility here even if the code creating the breakpoint
> never creates one line that.  ...especially since it makes the arm32
> and arm64 code match in this way.

ok

> > > +     lene = __fls(ctrl->len);
> > > +
> > > +     wp_low = val + lens;
> > > +     wp_high = val + lene;
> >
> > First I thought these values are off by one, but in difference to
> > ffs() from glibc the kernel functions start with index 0, instead
> > of using zero as 'no bit set'.
> 
> Yes, this took me a while.  If you look at the original commit
> fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact watchpoint
> addresses") this was clearly done on purpose though.  Specifically
> note the part of the commit message:
> 
> [will: use __ffs instead of ffs - 1]
> 
> 
> > > +     if (addr < wp_low)
> > > +             return wp_low - addr;
> > > +     else if (addr > wp_high)
> > > +             return addr - wp_high;
> > > +     else
> > > +             return 0;
> > > +}
> > > +
> > >  static void watchpoint_handler(unsigned long addr, unsigned int fsr,
> > >                              struct pt_regs *regs)
> > >  {
> > > -     int i, access;
> > > -     u32 val, ctrl_reg, alignment_mask;
> > > +     int i, access, closest_match = 0;
> > > +     u32 min_dist = -1, dist;
> > > +     u32 val, ctrl_reg;
> > >       struct perf_event *wp, **slots;
> > >       struct arch_hw_breakpoint *info;
> > >       struct arch_hw_breakpoint_ctrl ctrl;
> > >
> > >       slots = this_cpu_ptr(wp_on_reg);
> > >
> > > +     /*
> > > +      * Find all watchpoints that match the reported address. If no exact
> > > +      * match is found. Attribute the hit to the closest watchpoint.
> > > +      */
> > > +     rcu_read_lock();
> > >       for (i = 0; i < core_num_wrps; ++i) {
> > > -             rcu_read_lock();
> > > -
> > >               wp = slots[i];
> > > -
> > >               if (wp == NULL)
> > > -                     goto unlock;
> > > +                     continue;
> > >
> > > -             info = counter_arch_bp(wp);
> > >               /*
> > >                * The DFAR is an unknown value on debug architectures prior
> > >                * to 7.1. Since we only allow a single watchpoint on these
> > > @@ -708,33 +744,31 @@ static void watchpoint_handler(unsigned long addr, unsigned int fsr,
> > >                */
> > >               if (debug_arch < ARM_DEBUG_ARCH_V7_1) {
> > >                       BUG_ON(i > 0);
> > > +                     info = counter_arch_bp(wp);
> > >                       info->trigger = wp->attr.bp_addr;
> > >               } else {
> > > -                     if (info->ctrl.len == ARM_BREAKPOINT_LEN_8)
> > > -                             alignment_mask = 0x7;
> > > -                     else
> > > -                             alignment_mask = 0x3;
> > > -
> > > -                     /* Check if the watchpoint value matches. */
> > > -                     val = read_wb_reg(ARM_BASE_WVR + i);
> > > -                     if (val != (addr & ~alignment_mask))
> > > -                             goto unlock;
> > > -
> > > -                     /* Possible match, check the byte address select. */
> > > -                     ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
> > > -                     decode_ctrl_reg(ctrl_reg, &ctrl);
> > > -                     if (!((1 << (addr & alignment_mask)) & ctrl.len))
> > > -                             goto unlock;
> > > -
> > >                       /* Check that the access type matches. */
> > >                       if (debug_exception_updates_fsr()) {
> > >                               access = (fsr & ARM_FSR_ACCESS_MASK) ?
> > >                                         HW_BREAKPOINT_W : HW_BREAKPOINT_R;
> > >                               if (!(access & hw_breakpoint_type(wp)))
> > > -                                     goto unlock;
> > > +                                     continue;
> > >                       }
> > >
> > > +                     val = read_wb_reg(ARM_BASE_WVR + i);
> > > +                     ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
> > > +                     decode_ctrl_reg(ctrl_reg, &ctrl);
> > > +                     dist = get_distance_from_watchpoint(addr, val, &ctrl);
> > > +                     if (dist < min_dist) {
> > > +                             min_dist = dist;
> > > +                             closest_match = i;
> > > +                     }
> > > +                     /* Is this an exact match? */
> > > +                     if (dist != 0)
> > > +                             continue;
> > > +
> > >                       /* We have a winner. */
> > > +                     info = counter_arch_bp(wp);
> > >                       info->trigger = addr;
> >
> > Unless we care about using the 'last' watchpoint in case multiple WPs have
> > the same address I think it would be clearer to change the above to:
> >
> >                         if (dist == 0) {
> >                                 /* We have a winner. */
> >                                 info = counter_arch_bp(wp);
> >                                 info->trigger = addr;
> >                                 break;
> >                         }
> 
> Without being an expert on the Hardware Breakpoint API, my
> understanding (based on how the old arm32 code worked and how the
> existing arm64 code works) is that the API accounts for the fact that
> more than one watchpoint can trigger and that we should report on all
> of them.
> 
> Specifically if you do:
> 
> watch 1 byte at 0x1000
> watch 1 byte at 0x1003
> 
> ...and then someone does a single 4-byte write at 0x1000 then both
> watchpoints should trigger.  If we do a "break" here then they won't
> both trigger.

Makes sense, thanks for the example!

> Also note that the triggering happens below in the "perf_bp_event(wp, regs)"
> so with your break I think you'll miss it, no?

You are right, I put that mentally after the loop, we definitely don't
want to skip it :)

> That being said, with my patch we still won't do exactly the right
> thing that for an "imprecise" watchpoint.  Specifically if you do:
> 
> watch 1 byte at 0x1008
> watch 1 byte at 0x100b
> write 16 bytes at 0x1000
> 
> ...then we will _only_ trigger the 0x1008 watchpoint.  ...but that's
> the limitation in how the breakpoints work.  You can see this is what
> happens because the imprecise stuff is outside the for loop and only
> triggers when nothing else did.

It's still an improvement from not triggering at all :)

Not that I'm an expert in this area, but the change looks good to me, so:

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
