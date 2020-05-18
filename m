Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DE141D7CDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 17:32:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kincdKj3UylU1qgsLfuwg1e4rPl6fLzyIwd/uUcMyfA=; b=DuqS6873h9eKQF
	w4HjLTeRsW/yualI+Q6f3Q4vFxd099p1BetO6c528o5LUPN78RTfb6RSGKk/o0Nu8rK+/VcAvnpIG
	RXt8qTGC+K9/1+73JF7xznkC+1V8y7fE9Z22pVc3XcVYoRS3pbKeLkfVMI6m8u6rU72EK8yg2wzyN
	CzZ3F4lSf+QyYYEH0tjAd+az2lMqqUrbd8bwc/JEW6cPk8bkQ5a0BKh1nI0ynb3WyjOLaPE98p8uk
	ZaqFbpT16YbiVEjy0UG4D8YZQy0iYb/wzjH+NZaKbIghRkEQ/KWyTK9zbvDv2FLdiKaof8ulckl2T
	rYpA1DHyruB8qS7TgONg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jahkI-0000Oi-Ld; Mon, 18 May 2020 15:32:02 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jahk9-0000Nq-NV
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 15:31:55 +0000
Received: by mail-pl1-x641.google.com with SMTP id m7so4374066plt.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 08:31:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Vt6NlYY2CI3AuSavSjzTZo3H6JnPlwMwv93bVH8kMS4=;
 b=jK8LrBRe+nuSqozIPp9D8bxGdB1S2AEnxkVYmBB/ruivo5407owP6BuZwd9KZ6+/0T
 A4LSK+HUSzhJhFV6FDjlV/QPy9xPDY8upNVqz/dSqHcdaRQyXft4QWG3IWAgn8fJJER6
 fer1/DJkRjUPKP5Wp+q41Bg6ph0LojsE3Uz6M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Vt6NlYY2CI3AuSavSjzTZo3H6JnPlwMwv93bVH8kMS4=;
 b=KQI6af785ER4jt+fUN1ldACvE6by1O5SIbP8z0mhox3VKn3Qgx6G7d0Y4hkQj3R5UW
 Z2/x0HsvJp6inyU8mHuL8iNqdCRhVXmZuvWGX5OQ5eNsfaJQKCxTKuV/fWQEDfE838tc
 InIfHeUIoL9rnjuKn+oDX8WT4M2dDMQVxAry8LzDA/6yvSwvu7/4i7OXjzRVU7Wy6SRc
 +B7Wv2hhBkJPgHUPmvOjsKJYafKDL8Kw7xRysbyyKmzKMXCvmIXilf2Rc2nNlBtn34IG
 6ICPCAMhWTaQq1I8VOPJZ1uQlvfuTYjAXztEq3IIePAtYh8WUKDNB/yaqniktSpcxQfd
 McIw==
X-Gm-Message-State: AOAM531Z/KQ/Hu8fRt3ogU/lOB/HunUSj6fjVBgTZ7YTMMEylrJXCRc7
 BDwJ8VXE2zS0lt3RbGEf6JPSsw==
X-Google-Smtp-Source: ABdhPJyi6EM+DuXrM95AvxAsnwbQCYrk0IQRpwLwIQMBns8Xa+HIlZVEzLngehVn8YTM+7yFoFFjTw==
X-Received: by 2002:a17:902:a716:: with SMTP id
 w22mr16372481plq.225.1589815911748; 
 Mon, 18 May 2020 08:31:51 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id t64sm8200543pgd.24.2020.05.18.08.31.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 May 2020 08:31:50 -0700 (PDT)
Date: Mon, 18 May 2020 08:31:49 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 4/6] scs: Move scs_overflow_check() out of architecture
 code
Message-ID: <202005180823.A9C8925ED@keescook>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-5-will@kernel.org>
 <20200518121210.GD1957@C02TD0UTHF1T.local>
 <20200518132346.GD32394@willie-the-truck>
 <20200518133231.GC2787@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518133231.GC2787@C02TD0UTHF1T.local>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_083153_780471_6506043A 
X-CRM114-Status: GOOD (  32.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kernel-team@android.com, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 02:32:31PM +0100, Mark Rutland wrote:
> On Mon, May 18, 2020 at 02:23:47PM +0100, Will Deacon wrote:
> > On Mon, May 18, 2020 at 01:12:10PM +0100, Mark Rutland wrote:
> > > On Fri, May 15, 2020 at 06:27:54PM +0100, Will Deacon wrote:
> > > > There is nothing architecture-specific about scs_overflow_check() as
> > > > it's just a trivial wrapper around scs_corrupted().
> > > > 
> > > > For parity with task_stack_end_corrupted(), rename scs_corrupted() to
> > > > task_scs_end_corrupted() and call it from schedule_debug() when
> > > > CONFIG_SCHED_STACK_END_CHECK_is enabled. Finally, remove the unused
> > > > scs_overflow_check() function entirely.
> > > > 
> > > > This has absolutely no impact on architectures that do not support SCS
> > > > (currently arm64 only).
> > > > 
> > > > Signed-off-by: Will Deacon <will@kernel.org>
> > > 
> > > Pulling this out of arch code seems sane to me, and the arch-specific
> > > chanes look sound. However, I have a concern with the changes within the
> > > scheduler context-switch.
> > > 
> > > > diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
> > > > index a35d3318492c..56be4cbf771f 100644
> > > > --- a/arch/arm64/kernel/process.c
> > > > +++ b/arch/arm64/kernel/process.c
> > > > @@ -52,7 +52,6 @@
> > > >  #include <asm/mmu_context.h>
> > > >  #include <asm/processor.h>
> > > >  #include <asm/pointer_auth.h>
> > > > -#include <asm/scs.h>
> > > >  #include <asm/stacktrace.h>
> > > >  
> > > >  #if defined(CONFIG_STACKPROTECTOR) && !defined(CONFIG_STACKPROTECTOR_PER_TASK)
> > > > @@ -516,7 +515,6 @@ __notrace_funcgraph struct task_struct *__switch_to(struct task_struct *prev,
> > > >  	entry_task_switch(next);
> > > >  	uao_thread_switch(next);
> > > >  	ssbs_thread_switch(next);
> > > > -	scs_overflow_check(next);
> > > 
> > > Prior to this patch, we'd never switch to a task whose SCS had already
> > > been corrupted.
> > > 
> > > With this patch, we only check that when switching away from a task, and
> > > only when CONFIG_SCHED_STACK_END_CHECK is selected, which at first
> > > glance seems to weaken that.
> > 
> > Yes, ignoring vmap'd stacks, this patch brings the SCS checking in-line with
> > the main stack checking when CONFIG_SCHED_STACK_END_CHECK=y.
> > 
> > > Arguably:
> > > 
> > > * If the next task's SCS was corrupted by that task while it was
> > >   running, we had already lost at that point.
> > 
> > With this change, we'll at least catch this one sooner, and that might be
> > useful if a bug has caused us to overflow the SCS but not the main stack.
> 
> Sure, but only if CONFIG_SCHED_STACK_END_CHECK is selected.
> 
> > > * If the next task's SCS was corrupted by another task, then that could
> > >   also happen immediately after the check (though timing to avoid the
> > >   check but affect the process could be harder).
> > 
> > We're only checking the magic end value, so the cross-task case is basically
> > if you overrun your own SCS as above, but then continue to overrun entire
> > SCSs for other tasks as well. It's probably not very useful in that case.
> > 
> > > ... and a VMAP'd SCS would be much nicer in this regard.
> > > 
> > > Do we think this is weakening the check, or do we think it wasn't all
> > > that helpful to begin with?
> > 
> > I see it as a debug check to catch SCS overflow, rather than a hardening
> > feature, and I agree that using something like vmap stack for the SCS would
> > be better because we could have a guard page instead.
> 
> Fair enough. Could we put something into the commit message that more
> explicitly calls out debug-not-hardening? I agree that under that model
> this patch looks fine, and with something to that effect:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> 
> Mark.
> 
> > This is something I would like to revisit, but we need more
> > information from Sami about why Android rejected the larger allocation
> > size, since I don't think there's an awful lot of point merging this
> > series if Android doesn't pick it up.
> 
> Indeed. I'd certainly prefer the robustness of a VMAP'd SCS if we can do
> that.

For smaller devices, the memory overhead was too high. (i.e. 4x more
memory allocated to kernel stacks -- 4k vs 1k per thread.) The series
is much more than just a stack exhaustion defense, so I don't think that
detail needs to block the entire series. FWIW, I'd like to have both modes
(contiguous and vmap) available so that system builders can choose their
trade-off. Both will gain return address corruption defense, but the
vmap case will protect against neighboring SCS corruption in the face
of very-unlikely-but-technically-possible stack exhaustion (remember
that with the elimination of VLAs, the stack depth compile time
checking, and the regular stack VMAP guard page, it will be quite
difficult to exhaust the SCS -- either because there is no code path to
accomplish it, or because it would trip the regular stack guard page
first).

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
