Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E0072150E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 10:04:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R057umuNiJNsFstb10+erxefSQfoV9tFAOLhsVAVQCI=; b=iMOTU5AO0Y9ml0
	26XF4XuRi2mLnzhNwQwguhDaNR9X+JvIiH2a4zcwKJCKDiDiHj6JE4jarFMIJ8tSrqSh1IgWKGTPZ
	2sSol7bf3BHz9w9d+PXrB95SKtYsej66pjQUoW4l5rpBbRZRK8RLT+6uFfunZBbslqME2Xd1fu4Pl
	77nR61ZpxQCe2stTDnCUJlxwbHsXJUCNiuMP8mh4ut2n+AQLDwxH7IKMtbKutrnjyGWRr9USYyZLg
	qyLiGW2haSfriPADaP0sRPAJuvNnoAHRELksb89OJunSF3T0tPfC9QTmGZVsVD7EP6tngk3nj2vvQ
	Uwpsq0oLnwgGud6E0L+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRXr2-0000EV-6D; Fri, 17 May 2019 08:04:36 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRXqv-0000Dz-Mk
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 08:04:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B0B4C80D;
 Fri, 17 May 2019 01:04:28 -0700 (PDT)
Received: from blommer (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 96FA63F575;
 Fri, 17 May 2019 01:04:26 -0700 (PDT)
Date: Fri, 17 May 2019 09:04:20 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH 4/6] arm64: pmu: Add hook to handle pmu-related undefined
 instructions
Message-ID: <20190517080419.dziz4iqc7t4mpoej@blommer>
References: <20190516132148.10085-1-raphael.gault@arm.com>
 <20190516132148.10085-5-raphael.gault@arm.com>
 <20190517071018.GH2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190517071018.GH2623@hirez.programming.kicks-ass.net>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_010429_749110_2F5D525C 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 acme@kernel.org, Raphael Gault <raphael.gault@arm.com>, mingo@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 09:10:18AM +0200, Peter Zijlstra wrote:
> On Thu, May 16, 2019 at 02:21:46PM +0100, Raphael Gault wrote:
> > In order to prevent the userspace processes which are trying to access
> > the registers from the pmu registers on a big.LITTLE environment we
> > introduce a hook to handle undefined instructions.
> > 
> > The goal here is to prevent the process to be interrupted by a signal
> > when the error is caused by the task being scheduled while accessing
> > a counter, causing the counter access to be invalid. As we are not able
> > to know efficiently the number of counters available physically on both
> > pmu in that context we consider that any faulting access to a counter
> > which is architecturally correct should not cause a SIGILL signal if
> > the permissions are set accordingly.
> 
> The other approach is using rseq for this; with that you can guarantee
> it will never issue the instruction on a wrong CPU.
> 
> That said; emulating the thing isn't horrible either.

Yup. Attempting to use rseq is on the todo list.

> > +	/*
> > +	 * We put 0 in the target register if we
> > +	 * are reading from pmu register. If we are
> > +	 * writing, we do nothing.
> > +	 */
> 
> Wait _what_ ?!? userspace can _WRITE_ to these registers?

Remember that this is in an undefined (trap) handler.

If userspace _attempts_ to write to the registers, the CPU will trap to the
kernel. The comment is perhaps misleading; when we "do nothing", the common
trap handling code will send a SIGILL to userspace.

It would probably be better to say something like:

	/*
	 * If userspace is tries to read a counter that doesn't exist on this
	 * CPU, we emulate it as reading as zero. This happens if userspace is
	 * preempted between reading the idx and actually reading the counter,
	 * and the seqlock and idx have already changed, so it's as-if the
	 * counter has been reprogrammed with a different event.
	 *
	 * We don't permit userspace to write to these registers, and will
	 * inject a SIGILL.
	 */

There is one caveat: userspace can write to PMSELR without trapping, so we will
have to context-switch with the task. That only affects indirect addressing of
PMU registers, and doesn't have a functional effect on the behaviour of the
PMU, so that's benign from the PoV of perf.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
