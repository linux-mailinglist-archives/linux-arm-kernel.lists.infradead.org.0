Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B99C1A7811
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 12:06:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MhXOnMGugvhfY0IHia/TC1zUdW0LCfsJ/rBCAmmKIOM=; b=VJPoQ7NoehA/B8
	zxCdTIOj4Nxy2HnvdVKGm4ZyS2vqEJTJnoXMBkWy9Lwo+GQkUD3pLTvEnOaBgvpdd4xwcLrcu+m+D
	TrcmIHE+6EefJb+g6y6pBQcESQxplj/pQ9osDfo5gc51wNg4WG39xqeqHQe4C4qpWoxJnOjpy24p3
	oLhC2v9nnG5bYHXGhI/oMZdQcbd9rBzTXtWcEclxmGXbKG/tnqYRoI13ixlQQtnqXQK5Fou+AJqdO
	mJUcA8BYCrPCCskBoUU6xzbjxDd8ByI7E8vJjPFcLFLkDOEnbrWqeRlSW4GCDlNABGT80dIEXgGyo
	ig2dlwbikzzVbRMpv/xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOISJ-0000Eb-0V; Tue, 14 Apr 2020 10:06:11 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOIS6-0000Cp-RY; Tue, 14 Apr 2020 10:05:59 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id CF59E3012D8;
 Tue, 14 Apr 2020 12:05:55 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 97BA020B07BF9; Tue, 14 Apr 2020 12:05:55 +0200 (CEST)
Date: Tue, 14 Apr 2020 12:05:55 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Vincent Guittot <vincent.guittot@linaro.org>
Subject: Re: [PATCH 1/2] [V2 1/2]sched:add task_running_oncpu
Message-ID: <20200414100555.GJ20713@hirez.programming.kicks-ass.net>
References: <1586779466-4439-1-git-send-email-wangqing@vivo.com>
 <1586779466-4439-2-git-send-email-wangqing@vivo.com>
 <CAKfTPtDSk31p5xF9aHef4T7ixgx8m1H86Py=deu7L6dG4Z1vzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKfTPtDSk31p5xF9aHef4T7ixgx8m1H86Py=deu7L6dG4Z1vzw@mail.gmail.com>
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
Cc: Juri Lelli <juri.lelli@redhat.com>, Ben Segall <bsegall@google.com>,
 Thomas Gleixner <tglx@linutronix.de>, opensource.kernel@vivo.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Steven Rostedt <rostedt@goodmis.org>, Dave Martin <Dave.Martin@arm.com>,
 Wang Qing <wangqing@vivo.com>, jinho lim <jordan.lim@samsung.com>,
 Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
 Mel Gorman <mgorman@suse.de>, Mark Rutland <mark.rutland@arm.com>,
 Will Deacon <will@kernel.org>, Dietmar Eggemann <dietmar.eggemann@arm.com>,
 LAK <linux-arm-kernel@lists.infradead.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 14, 2020 at 09:20:57AM +0200, Vincent Guittot wrote:
> On Mon, 13 Apr 2020 at 14:04, Wang Qing <wangqing@vivo.com> wrote:
> >
> > We have no interface whether the task is running,
> > so we need to add an interface and distinguish CONFIG_SMP.
> >
> > Signed-off-by: Wang Qing <wangqing@vivo.com>
> > ---
> >  include/linux/sched.h | 10 ++++++++++
> >  1 file changed, 10 insertions(+)
> >
> > diff --git a/include/linux/sched.h b/include/linux/sched.h
> > index 4418f5c..13cc8f5 100644
> > --- a/include/linux/sched.h
> > +++ b/include/linux/sched.h
> > @@ -1843,6 +1843,11 @@ static inline unsigned int task_cpu(const struct task_struct *p)
> >
> >  extern void set_task_cpu(struct task_struct *p, unsigned int cpu);
> >
> > +static inline int task_running_oncpu(const struct task_struct *p)
> 
> This function name is too close from task_running_on_cpu() and can be
> misleading as the difference is only "_"
> Also, how task_running_oncpu() is different from task_running() ?

It doesn't have the (arguably superfluous) rq argument. But yes, agreed,
if anything lift that thing (without the argument).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
