Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D801B222
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:56:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9wxR/hV77Iw+Z/oScnPeexVPBt35X8aDcU1cu48i4QU=; b=aUSPp3kvCEVENe
	3C9Ym5nfJ5Qdelpv5IVviF3/hO9/ePtmJSt9Ckuw6ev6+3V6cc7XeiJudm3K6zHLcRgI7269C3zA6
	Kh99wp6U4mHM0SEDL5V8+5g21Z6411/1Bq9b/UIAAQhSZRaZ3JMesCG6KJ/lmRrKbPTZKt6sruZ/R
	6xjjRuQbEEw/GqE8327fdf4Y7t5Sb+P1OUuuYFxxi8VxXEfK+PeykDSWGLZrzKgTmyQs2YuCr7jEK
	7NbXQdZVt/5EEBIdDG2kgoPBXPuCouovX1/RDl6xrGL5KBIMVH0N5NqPzekdKKHDZII4GyGIUWO/S
	Z7At3QNybKgKd2nCdhIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6lG-0004bN-90; Mon, 13 May 2019 08:56:42 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6l8-0004az-7o
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:56:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2C089341;
 Mon, 13 May 2019 01:56:30 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1A0F83F720;
 Mon, 13 May 2019 01:56:28 -0700 (PDT)
Date: Mon, 13 May 2019 09:56:26 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Hillf Danton <hdanton@sina.com>
Subject: Re: [patch] arm64: assembler: Update the yield NEON comment
Message-ID: <20190513085624.GB28398@e103592.cambridge.arm.com>
References: <198595.152792649-sendEmail@laptop-0p1i5f25>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <198595.152792649-sendEmail@laptop-0p1i5f25>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_015634_291348_4DEAEABA 
X-CRM114-Status: GOOD (  32.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Peter Zijlstra <peterz@infradead.org>, Will Deacon <Will.Deacon@arm.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 11, 2019 at 09:48:40AM +0100, Hillf Danton wrote:
> > On Thu, May 09, 2019, Dave Martin wrote:
> > > On Thu, May 09, 2019 at 03:01:43PM +0000, Hillf Danton wrote:
> > 
> [...]
> 
> > >   *
> > > - * The yield itself consists of the following:
> > > - * - Check whether the preempt count is exactly 1, in which case disabling
> > > - *   preemption once will make the task preemptible. If this is not the case,
> > > - *   yielding is pointless.
> > > - * - Check whether TIF_NEED_RESCHED is set, and if so, disable and re-enable
> > > - *   kernel mode NEON (which will trigger a reschedule), and branch to the
> > > - *   yield fixup code.
> > > + * The yield itself decrements the preempt count and if count hits zero, disable
> > > + * and re-enable kernel mode NEON (which will trigger a reschedule), and branch
> > > + * to the yield fixup code.
> > 
> > Good spot -- the original comment is definitely wrong: disabling
> > preemption certainly shouldn't make the task preemptible!
> > 
> > So, I'm certainly in favour of fixing that.
> > 
> > Your new text doesn't look right, though: AFAICT commit 7faa313f05
> > didn't intentionally change the behaviour here.  It looks to me like
> > the preempt count (i.e., current_thread_info()->preempt) is not
> > decremented by this code: the value is read and the subtraction is done
> > for comparison purposes, but no value is stored back.
> > 
> Got it, thanks.
> 
> > This is intentional, because the the code needs to do some cleanup
> > before preemption can be enabled for real: the call to kernel_neon_end
> > does both of those jobs.
> > 
> > Or did I miss something?
> > 
> No, you didn't, Sir.
> 
> And I try again with log message updated and comment text corrected.
> 
> Hillf
> ----------------->8-----------------------------------------------------------
> From: Hillf Danton <hdanton@sina.com>
> Subject: [patch] arm64: assembler: Update the yield NEON comment
> 
> The comment for specifying preempt count check was incorrect in commit
> 24534b3511, and deserves a tiny tweak like the following for instance.
> 
> - * - Check whether the preempt count is exactly 1, in which case disabling
> - *   preemption once will make the task preemptible. If this is not the case,
> + * - Check whether the preempt count is exactly 1, in which case decrementing
> + *   preempt count once will make the task preemptible. If this is not the case,
> 
> Then checking of TIF_NEED_RESCHED was removed in commit 7faa313f05, with the
> comment left behind untouched.

Hmm, you're right here, I hadn't fully understood the context of that
commit.

Will, Ard, can you comment on the rationale for that?  The commit
message says nothing explicit about why the TIF_NEED_RESCHED check went
away: it's now checked as part of the preempt count, right?

> It no longer matches the code now, so update it.
> 
> Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>
> Cc: Dave Martin <Dave.Martin@arm.com>
> Cc: Will Deacon <will.deacon@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Signed-off-by: Hillf Danton <hdanton@sina.com>
> ---
>  arch/arm64/include/asm/assembler.h | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm64/include/asm/assembler.h b/arch/arm64/include/asm/assembler.h
> index c5308d0..9945ca4 100644
> --- a/arch/arm64/include/asm/assembler.h
> +++ b/arch/arm64/include/asm/assembler.h
> @@ -714,12 +714,10 @@ USER(\label, ic	ivau, \tmp2)			// invalidate I line PoU
>   * the output section, any use of such directives is undefined.
>   *
>   * The yield itself consists of the following:
> - * - Check whether the preempt count is exactly 1, in which case disabling
> - *   preemption once will make the task preemptible. If this is not the case,
> - *   yielding is pointless.
> - * - Check whether TIF_NEED_RESCHED is set, and if so, disable and re-enable
> - *   kernel mode NEON (which will trigger a reschedule), and branch to the
> - *   yield fixup code.
> + * - Check whether the preempt count is exactly 1, in which case the calling of
> + *   preempt_enable() in kernel_neon_end() will trigger a reschedule. If it is
> + *   not the case, yielding is pointless.

Looking at the code, this should probably say something like

	Check whether the preempt count is exactly 1 and a reschedule
	is also needed.  If so, calling [...]

It's the fact that the preempt count and the "needs reschedule" flag are
compared as a single number that confused me here.

> + * - Disable and re-enable kernel mode NEON, and branch to the yield fixup code.

Otherwise, looks good.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
