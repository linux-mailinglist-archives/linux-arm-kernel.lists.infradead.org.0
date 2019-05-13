Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA561BB19
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:38:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C9tW3w08sF7yRj4efieVMoLKSNoIPh5bmcG3zc4Hqyo=; b=kdoQdlVevUFYFx
	7j7De49LJ3zUf08YNkTxywSEbAnpIAbQkfUG6Pjcnx/AouTrgM15kQXA0rFPuw9YDyf/XbXnOfhsR
	GoqbJFUiMIROtvR1X9yXYcveWgPauIOVwOlTVH1OZ33fUitZmVGvO5+vyeQt73pumduR3o3xVny8I
	o+fv4xyST97ejfUonh5SlASp2n+KN1QvTRZEyMZ4ITIVe+Buai+1nOtAV6omS4/d+m8TxHZB7yG54
	Xe0vFWgiBw/grZ7H1kYR4t5OmOcUreFZkAhMe7JamT8HQ+NFNQXBI/BhMbUOd66Ui8keUBHG+RMnW
	fE5tYUezpFv4zt0HCGwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDy5-0001Wz-VW; Mon, 13 May 2019 16:38:25 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDxy-0001Wa-AW
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 16:38:19 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B8E80341;
 Mon, 13 May 2019 09:38:16 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A893E3F71E;
 Mon, 13 May 2019 09:38:15 -0700 (PDT)
Date: Mon, 13 May 2019 17:38:13 +0100
From: Will Deacon <will.deacon@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [patch] arm64: assembler: Update the yield NEON comment
Message-ID: <20190513163813.GC10754@fuggles.cambridge.arm.com>
References: <198595.152792649-sendEmail@laptop-0p1i5f25>
 <20190513085624.GB28398@e103592.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513085624.GB28398@e103592.cambridge.arm.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_093818_374693_35E35D74 
X-CRM114-Status: GOOD (  26.00  )
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
Cc: Peter Zijlstra <peterz@infradead.org>, Hillf Danton <hdanton@sina.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 09:56:26AM +0100, Dave Martin wrote:
> On Sat, May 11, 2019 at 09:48:40AM +0100, Hillf Danton wrote:
> > > On Thu, May 09, 2019, Dave Martin wrote:
> > > > On Thu, May 09, 2019 at 03:01:43PM +0000, Hillf Danton wrote:
> > > 
> > [...]
> > 
> > > >   *
> > > > - * The yield itself consists of the following:
> > > > - * - Check whether the preempt count is exactly 1, in which case disabling
> > > > - *   preemption once will make the task preemptible. If this is not the case,
> > > > - *   yielding is pointless.
> > > > - * - Check whether TIF_NEED_RESCHED is set, and if so, disable and re-enable
> > > > - *   kernel mode NEON (which will trigger a reschedule), and branch to the
> > > > - *   yield fixup code.
> > > > + * The yield itself decrements the preempt count and if count hits zero, disable
> > > > + * and re-enable kernel mode NEON (which will trigger a reschedule), and branch
> > > > + * to the yield fixup code.
> > > 
> > > Good spot -- the original comment is definitely wrong: disabling
> > > preemption certainly shouldn't make the task preemptible!
> > > 
> > > So, I'm certainly in favour of fixing that.
> > > 
> > > Your new text doesn't look right, though: AFAICT commit 7faa313f05
> > > didn't intentionally change the behaviour here.  It looks to me like
> > > the preempt count (i.e., current_thread_info()->preempt) is not
> > > decremented by this code: the value is read and the subtraction is done
> > > for comparison purposes, but no value is stored back.
> > > 
> > Got it, thanks.
> > 
> > > This is intentional, because the the code needs to do some cleanup
> > > before preemption can be enabled for real: the call to kernel_neon_end
> > > does both of those jobs.
> > > 
> > > Or did I miss something?
> > > 
> > No, you didn't, Sir.
> > 
> > And I try again with log message updated and comment text corrected.
> > 
> > Hillf
> > ----------------->8-----------------------------------------------------------
> > From: Hillf Danton <hdanton@sina.com>
> > Subject: [patch] arm64: assembler: Update the yield NEON comment
> > 
> > The comment for specifying preempt count check was incorrect in commit
> > 24534b3511, and deserves a tiny tweak like the following for instance.
> > 
> > - * - Check whether the preempt count is exactly 1, in which case disabling
> > - *   preemption once will make the task preemptible. If this is not the case,
> > + * - Check whether the preempt count is exactly 1, in which case decrementing
> > + *   preempt count once will make the task preemptible. If this is not the case,
> > 
> > Then checking of TIF_NEED_RESCHED was removed in commit 7faa313f05, with the
> > comment left behind untouched.
> 
> Hmm, you're right here, I hadn't fully understood the context of that
> commit.
> 
> Will, Ard, can you comment on the rationale for that?  The commit
> message says nothing explicit about why the TIF_NEED_RESCHED check went
> away: it's now checked as part of the preempt count, right?

Yes. The value of !need_resched is stored adjacent to the preempt count,
which is why 7faa313f05ca ("arm64: preempt: Fix big-endian when checking
preempt count in assembly") can load both of the variables using a single
64-bit LDR instruction.

So we continue to check both the preempt count and the need_resched flag,
as before.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
