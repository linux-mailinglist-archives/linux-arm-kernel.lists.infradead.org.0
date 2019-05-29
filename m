Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55F072DDAE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 15:05:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9YgOUbINi0ELljsVu4qgcUYDAa9nty1JeumxQ58P++8=; b=DCHcQboPFgtBXw
	7vOE21gWOV+2j+a5OqtRvrco5/HwHCIMOWbz3jkkZcY4/ZEQV4y1cbD+PsjE0wokxT7uJdJRwiBv1
	4t43dMDROkhmWZSF/YAORCqmxc7nIdcT6+SAzmHWRSDt/5yQwJiDs/DpGDefDX2JJ2qtv6EGI4gB9
	Ug6Rl7+esuPWDkDZNJWa4HqbD2XAqTqBwjH9Zl5DAel3iF3gczxmC0/HXezoYA/4bJxnQZBLvz5FO
	CHtwoC++HrZm4ANDINgqzKQ7gun2oabAYMNyUEuzZg36VG5yVvco0LjiyacgKXkzJIK7idJtdb7tg
	s2BSh1QZFXQZfy57a8pQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVyGv-0004Pj-Ev; Wed, 29 May 2019 13:05:37 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVyGn-0004PN-Tj
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 13:05:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4389080D;
 Wed, 29 May 2019 06:05:29 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71F863F59C;
 Wed, 29 May 2019 06:05:26 -0700 (PDT)
Date: Wed, 29 May 2019 14:05:21 +0100
From: Will Deacon <will.deacon@arm.com>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190529130521.GA11023@fuggles.cambridge.arm.com>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
 <20190528173228.GW2623@hirez.programming.kicks-ass.net>
 <20190529091733.GA4485@fuggles.cambridge.arm.com>
 <20190529101042.GN2623@hirez.programming.kicks-ass.net>
 <20190529102022.GC4485@fuggles.cambridge.arm.com>
 <20190529125557.GU2623@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529125557.GU2623@hirez.programming.kicks-ass.net>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_060529_966298_9B1F2E37 
X-CRM114-Status: GOOD (  18.25  )
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
Cc: mark.rutland@arm.com, Young Xiao <92siuyang@gmail.com>, mpe@ellerman.id.au,
 jolsa@redhat.com, x86@kernel.org, linux@armlinux.org.uk, eranian@google.com,
 linux-kernel@vger.kernel.org, acme@redhat.com, mingo@redhat.com, bp@alien8.de,
 hpa@zytor.com, ravi.bangoria@linux.vnet.ibm.com, fweisbec@gmail.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 29, 2019 at 02:55:57PM +0200, Peter Zijlstra wrote:
> On Wed, May 29, 2019 at 11:20:22AM +0100, Will Deacon wrote:
> > Anyway, you can add my ack to your patch, but I bet we can remove that mm
> > check :D
> 
> I've ended up with the below. Ravi, can you test if that does indeed
> obsolete your PPC patch?
> 
> ---
> Subject: perf: Fix perf_sample_regs_user()
> From: Peter Zijlstra <peterz@infradead.org>
> Date: Wed May 29 14:37:24 CEST 2019
> 
> perf_sample_regs_user() uses 'current->mm' to test for the presence of
> userspace, but this is insufficient, consider use_mm().
> 
> A better test is: '!(current->flags & PF_KTHREAD)', exec() clears
> PF_KTHREAD after it sets the new ->mm but before it drops to userspace
> for the first time.
> 
> Possibly obsoletes: bf05fc25f268 ("powerpc/perf: Fix oops when kthread execs user process")
> 
> Reported-by: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
> Reported-by: Young Xiao <92siuyang@gmail.com>
> Cc: Ravi Bangoria <ravi.bangoria@linux.vnet.ibm.com>
> Cc: Naveen N. Rao <naveen.n.rao@linux.vnet.ibm.com>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Frederic Weisbecker <fweisbec@gmail.com>
> Cc: Stephane Eranian <eranian@google.com>
> Cc: Arnaldo Carvalho de Melo <acme@redhat.com>
> Acked-by: Will Deacon <will.deacon@arm.com>
> Fixes: 4018994f3d87 ("perf: Add ability to attach user level registers dump to sample")
> Signed-off-by: Peter Zijlstra (Intel) <peterz@infradead.org>
> ---
>  kernel/events/core.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> --- a/kernel/events/core.c
> +++ b/kernel/events/core.c
> @@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct
>  	if (user_mode(regs)) {

Hmm, so it just occurred to me that Mark's observation is that the regs
can be junk in some cases. In which case, should we be checking for
kthreads first?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
