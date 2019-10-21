Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3860DF8C8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 22 Oct 2019 01:50:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rlQUuOlzpmHlgm/3CwxTlRVH2JDhhyXqun3NJrAj0tA=; b=IMVKGOX6zoHJXZ
	zQ5nJ6ZffC2F3racYrnFZv3aNhNwX5sRYQLaVKlYfzNZquwneeQcnBgciTmLigxv07Mb2ipSmNuyH
	6jpUIeJOFpWz+FLjApoAC6hDoJ7uZ/ZQPrAgdqob3nebRAL2w4c2Hyf6TocgeYmhaP5jshSyecsr9
	LvJwAweBS4g8ojg6CjtjJ9dyl0l9WZ6YuKpOud5Cxo8UcNXC823X9j2u8XVJyKNZLC3yMOvMC/RkQ
	Sx9S1OMc9vfsY7yiXLVUg63ovlprff3UBDdom+3gFQsB2DnEwx4BaEatSV+z2iJG3KXPT1V3Vmzfi
	/vSBrUwPQ93o1waoreZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMhRJ-0000r6-KI; Mon, 21 Oct 2019 23:50:17 +0000
Received: from mail-il1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMhR8-0008R4-1i
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 23:50:08 +0000
Received: by mail-il1-x141.google.com with SMTP id d83so5233888ilk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 16:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=zPUo1XVWAywCr31L1MGbFZJLJCSfIVIJxFTYC9L2BdM=;
 b=TZ2LgbFLjIjAWm1kGDLg1IgpMauhujV5kdUAPmE0JTcwvq+Rjp1LBg7+M6xGrZZCo4
 WEwdCnKYnkDYXbn53d7NfDsWEUltwXo/KrXyvf5cjpXu3EbHlvZx1IKJQI+X7N+tAicc
 WPnyUoACckM7AlMck/B3UXwi+aW3BxQAFH5Rg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zPUo1XVWAywCr31L1MGbFZJLJCSfIVIJxFTYC9L2BdM=;
 b=oE/RIXnUxXyjgERc8eWGb1qBp70HNRZ6PLzd+zOTJTz+qf5QT8eXNOzbjcPx+Qz5J9
 4iKSRbUFutNZUjkN+IhohZHdov20rLuP1iI6ma7cdLZWNNds+bzLhff4MJRAjDPX2Ntm
 Gc+DsjoKF968i8gL1PK2pcDux60BiFP2GnP14HDdQy1c4HWhG3V+OCiCEHreyPsxSsaZ
 6peMRa0jnkxOgqiXQ7CtY8L5WR7IqdhZnL/TYfg6eWtpUkTxIkvuCBW/A05Do4A72KhM
 L4W4HqLOp6KBske+oKsNz8JOUEygJxp6OGnBewg8qlJu2Ac1Z6dXvxzOSQXPDcrW41iD
 k1hA==
X-Gm-Message-State: APjAAAUXctH8kmVsm4Gz7iButhkSBsbC/x5k77tvqfrNbl17ZnIbQy0v
 vV8vYsx5bZG56AfPaB9bHQhi1qYHECw=
X-Google-Smtp-Source: APXvYqwowHUj5gzpiKmJVhnRH6LIVjsbQ9NPqhC4DwYNM1DY9z3ZtogdyNZUmerqGm4R74pG8M8u2w==
X-Received: by 2002:a92:9adb:: with SMTP id c88mr14531324ill.193.1571701803088; 
 Mon, 21 Oct 2019 16:50:03 -0700 (PDT)
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com.
 [209.85.166.46])
 by smtp.gmail.com with ESMTPSA id q144sm1186345iod.64.2019.10.21.16.50.02
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 21 Oct 2019 16:50:02 -0700 (PDT)
Received: by mail-io1-f46.google.com with SMTP id z19so18216900ior.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 16:50:02 -0700 (PDT)
X-Received: by 2002:a6b:b714:: with SMTP id h20mr977545iof.168.1571701801703; 
 Mon, 21 Oct 2019 16:50:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191019111216.1.I82eae759ca6dc28a245b043f485ca490e3015321@changeid>
 <20191021184658.GE20212@google.com>
In-Reply-To: <20191021184658.GE20212@google.com>
From: Doug Anderson <dianders@chromium.org>
Date: Mon, 21 Oct 2019 16:49:48 -0700
X-Gmail-Original-Message-ID: <CAD=FV=X6AzjET0ZRz-faUM0uqqQpfjt-g=0nX=L0LJg-+cjZtw@mail.gmail.com>
Message-ID: <CAD=FV=X6AzjET0ZRz-faUM0uqqQpfjt-g=0nX=L0LJg-+cjZtw@mail.gmail.com>
Subject: Re: [PATCH] ARM: hw_breakpoint: Handle inexact watchpoint addresses
To: Matthias Kaehlcke <mka@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_165006_122774_73F95199 
X-CRM114-Status: GOOD (  37.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi,

On Mon, Oct 21, 2019 at 11:47 AM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> On Sat, Oct 19, 2019 at 11:12:26AM -0700, Douglas Anderson wrote:
> > This is commit fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact
> > watchpoint addresses") but ported to arm32, which has the same
> > problem.
> >
> > This problem was found by Android CTS tests, notably the
> > "watchpoint_imprecise" test [1].  I tested locally against a copycat
> > (simplified) version of the test though.
> >
> > [1] https://android.googlesource.com/platform/bionic/+/master/tests/sys_ptrace_test.cpp
> >
> > Signed-off-by: Douglas Anderson <dianders@chromium.org>
> > ---
> >
> >  arch/arm/kernel/hw_breakpoint.c | 96 ++++++++++++++++++++++++---------
> >  1 file changed, 70 insertions(+), 26 deletions(-)
> >
> > diff --git a/arch/arm/kernel/hw_breakpoint.c b/arch/arm/kernel/hw_breakpoint.c
> > index b0c195e3a06d..d394878409db 100644
> > --- a/arch/arm/kernel/hw_breakpoint.c
> > +++ b/arch/arm/kernel/hw_breakpoint.c
> > @@ -680,26 +680,62 @@ static void disable_single_step(struct perf_event *bp)
> >       arch_install_hw_breakpoint(bp);
> >  }
> >
> > +/*
> > + * Arm32 hardware does not always report a watchpoint hit address that matches
> > + * one of the watchpoints set. It can also report an address "near" the
> > + * watchpoint if a single instruction access both watched and unwatched
> > + * addresses. There is no straight-forward way, short of disassembling the
> > + * offending instruction, to map that address back to the watchpoint. This
> > + * function computes the distance of the memory access from the watchpoint as a
> > + * heuristic for the likelyhood that a given access triggered the watchpoint.
> > + *
> > + * See this same function in the arm64 platform code, which has the same
> > + * problem.
> > + *
> > + * The function returns the distance of the address from the bytes watched by
> > + * the watchpoint. In case of an exact match, it returns 0.
> > + */
> > +static u32 get_distance_from_watchpoint(unsigned long addr, u32 val,
> > +                                     struct arch_hw_breakpoint_ctrl *ctrl)
> > +{
> > +     u32 wp_low, wp_high;
> > +     u32 lens, lene;
> > +
> > +     lens = __ffs(ctrl->len);
>
> Doesn't this always end up with 'lens == 0'? IIUC ctrl->len can have
> the values ARM_BREAKPOINT_LEN_{1,2,4,8}:
>
> #define ARM_BREAKPOINT_LEN_1    0x1
> #define ARM_BREAKPOINT_LEN_2    0x3
> #define ARM_BREAKPOINT_LEN_4    0xf
> #define ARM_BREAKPOINT_LEN_8    0xff

Yes, but my best guess without digging into the ARM ARM is that the
underlying hardware is more flexible.  I don't think it hurts to
support the flexibility here even if the code creating the breakpoint
never creates one line that.  ...especially since it makes the arm32
and arm64 code match in this way.


> > +     lene = __fls(ctrl->len);
> > +
> > +     wp_low = val + lens;
> > +     wp_high = val + lene;
>
> First I thought these values are off by one, but in difference to
> ffs() from glibc the kernel functions start with index 0, instead
> of using zero as 'no bit set'.

Yes, this took me a while.  If you look at the original commit
fdfeff0f9e3d ("arm64: hw_breakpoint: Handle inexact watchpoint
addresses") this was clearly done on purpose though.  Specifically
note the part of the commit message:

[will: use __ffs instead of ffs - 1]


> > +     if (addr < wp_low)
> > +             return wp_low - addr;
> > +     else if (addr > wp_high)
> > +             return addr - wp_high;
> > +     else
> > +             return 0;
> > +}
> > +
> >  static void watchpoint_handler(unsigned long addr, unsigned int fsr,
> >                              struct pt_regs *regs)
> >  {
> > -     int i, access;
> > -     u32 val, ctrl_reg, alignment_mask;
> > +     int i, access, closest_match = 0;
> > +     u32 min_dist = -1, dist;
> > +     u32 val, ctrl_reg;
> >       struct perf_event *wp, **slots;
> >       struct arch_hw_breakpoint *info;
> >       struct arch_hw_breakpoint_ctrl ctrl;
> >
> >       slots = this_cpu_ptr(wp_on_reg);
> >
> > +     /*
> > +      * Find all watchpoints that match the reported address. If no exact
> > +      * match is found. Attribute the hit to the closest watchpoint.
> > +      */
> > +     rcu_read_lock();
> >       for (i = 0; i < core_num_wrps; ++i) {
> > -             rcu_read_lock();
> > -
> >               wp = slots[i];
> > -
> >               if (wp == NULL)
> > -                     goto unlock;
> > +                     continue;
> >
> > -             info = counter_arch_bp(wp);
> >               /*
> >                * The DFAR is an unknown value on debug architectures prior
> >                * to 7.1. Since we only allow a single watchpoint on these
> > @@ -708,33 +744,31 @@ static void watchpoint_handler(unsigned long addr, unsigned int fsr,
> >                */
> >               if (debug_arch < ARM_DEBUG_ARCH_V7_1) {
> >                       BUG_ON(i > 0);
> > +                     info = counter_arch_bp(wp);
> >                       info->trigger = wp->attr.bp_addr;
> >               } else {
> > -                     if (info->ctrl.len == ARM_BREAKPOINT_LEN_8)
> > -                             alignment_mask = 0x7;
> > -                     else
> > -                             alignment_mask = 0x3;
> > -
> > -                     /* Check if the watchpoint value matches. */
> > -                     val = read_wb_reg(ARM_BASE_WVR + i);
> > -                     if (val != (addr & ~alignment_mask))
> > -                             goto unlock;
> > -
> > -                     /* Possible match, check the byte address select. */
> > -                     ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
> > -                     decode_ctrl_reg(ctrl_reg, &ctrl);
> > -                     if (!((1 << (addr & alignment_mask)) & ctrl.len))
> > -                             goto unlock;
> > -
> >                       /* Check that the access type matches. */
> >                       if (debug_exception_updates_fsr()) {
> >                               access = (fsr & ARM_FSR_ACCESS_MASK) ?
> >                                         HW_BREAKPOINT_W : HW_BREAKPOINT_R;
> >                               if (!(access & hw_breakpoint_type(wp)))
> > -                                     goto unlock;
> > +                                     continue;
> >                       }
> >
> > +                     val = read_wb_reg(ARM_BASE_WVR + i);
> > +                     ctrl_reg = read_wb_reg(ARM_BASE_WCR + i);
> > +                     decode_ctrl_reg(ctrl_reg, &ctrl);
> > +                     dist = get_distance_from_watchpoint(addr, val, &ctrl);
> > +                     if (dist < min_dist) {
> > +                             min_dist = dist;
> > +                             closest_match = i;
> > +                     }
> > +                     /* Is this an exact match? */
> > +                     if (dist != 0)
> > +                             continue;
> > +
> >                       /* We have a winner. */
> > +                     info = counter_arch_bp(wp);
> >                       info->trigger = addr;
>
> Unless we care about using the 'last' watchpoint in case multiple WPs have
> the same address I think it would be clearer to change the above to:
>
>                         if (dist == 0) {
>                                 /* We have a winner. */
>                                 info = counter_arch_bp(wp);
>                                 info->trigger = addr;
>                                 break;
>                         }

Without being an expert on the Hardware Breakpoint API, my
understanding (based on how the old arm32 code worked and how the
existing arm64 code works) is that the API accounts for the fact that
more than one watchpoint can trigger and that we should report on all
of them.

Specifically if you do:

watch 1 byte at 0x1000
watch 1 byte at 0x1003

...and then someone does a single 4-byte write at 0x1000 then both
watchpoints should trigger.  If we do a "break" here then they won't
both trigger.  Also note that the triggering happens below in the
"perf_bp_event(wp, regs)" so with your break I think you'll miss it,
no?

That being said, with my patch we still won't do exactly the right
thing that for an "imprecise" watchpoint.  Specifically if you do:

watch 1 byte at 0x1008
watch 1 byte at 0x100b
write 16 bytes at 0x1000

...then we will _only_ trigger the 0x1008 watchpoint.  ...but that's
the limitation in how the breakpoints work.  You can see this is what
happens because the imprecise stuff is outside the for loop and only
triggers when nothing else did.


-Doug

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
