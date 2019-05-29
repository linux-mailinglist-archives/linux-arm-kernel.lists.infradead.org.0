Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D3342E237
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 18:24:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9xslrQPjwKL07hFoDa4V4QSQYWdcdwHGcH61LnT9re0=; b=VOHd6nyjgNnqoW
	VsRUwNVg85WyO9ZimZDXY5Fa6Y+7XbbpppTFm0m/aa/fY9Tb365RU8EAHB33p2CR0ua8ZXg/AEGdo
	FKdnSOjKdRumvK6Ur2qgxSVGv8tIYqWovNqm9lQcKWJB85VyueghxbWAicQ2ENsecH+bW1CV6msK7
	dX7bvQzsYmTzzMFguj7Tkwo5aoYqhaezAbRMKA4o1akVMKRDrICBxvBL17JyhII9GStNpFRv9s9jV
	bncveVM+B7xjDjtquos2/IsCMapD4xvNnw997JqEr73KVpnKNxYXhBKLG0gcqh+YxM7iULKgJhJC2
	52QZfUyZlLJVIugk09zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW1Nj-0003zS-SH; Wed, 29 May 2019 16:24:51 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW1Nb-0003ym-Lo
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 16:24:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 47F7E341;
 Wed, 29 May 2019 09:24:41 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7572A3F5AF;
 Wed, 29 May 2019 09:24:38 -0700 (PDT)
Date: Wed, 29 May 2019 17:24:36 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529162435.GM31777@lakrids.cambridge.arm.com>
References: <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
 <20190529130521.GA11023@fuggles.cambridge.arm.com>
 <20190529132515.GW2623@hirez.programming.kicks-ass.net>
 <20190529143510.GA11154@fuggles.cambridge.arm.com>
 <20190529161955.GZ2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529161955.GZ2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_092443_721629_DAE12D94 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au, jolsa@redhat.com,
 x86@kernel.org, Will Deacon <will.deacon@arm.com>, linux@armlinux.org.uk,
 eranian@google.com, linux-kernel@vger.kernel.org, acme@redhat.com,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 06:19:55PM +0200, Peter Zijlstra wrote:
> On Wed, May 29, 2019 at 03:35:10PM +0100, Will Deacon wrote:
> > On Wed, May 29, 2019 at 03:25:15PM +0200, Peter Zijlstra wrote:
> > > On Wed, May 29, 2019 at 02:05:21PM +0100, Will Deacon wrote:
> > > > On Wed, May 29, 2019 at 02:55:57PM +0200, Peter Zijlstra wrote:
> > > 
> > > > >  	if (user_mode(regs)) {
> > > > 
> > > > Hmm, so it just occurred to me that Mark's observation is that the regs
> > > > can be junk in some cases. In which case, should we be checking for
> > > > kthreads first?
> > > 
> > > task_pt_regs() can return garbage, but @regs is the exception (or
> > > perf_arch_fetch_caller_regs()) regs, and for those user_mode() had
> > > better be correct.
> > 
> > So what should we report for the idle task?
> 
> If an interrupt hits the idle task, @regs would be !user_mode(regs),
> we'll find current->flags & PF_KTHREAD (idle not having passed through
> exec()) and therefore we'll take ABI_NONE for the user regs.
> 
> Or am I not getting it?

If the contents of task_pt_regs(current) is garbage, then the result of
user_mode(task_pt_regs(current)) is also garbage, no?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
