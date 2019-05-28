Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29F112CDB0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 19:33:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SC3k0j4MqXDlEOMqfGUnwvvVBEBkJaoj5DbS911VG2U=; b=Ij1f3QT5KLgnbn
	ru0NGDITArjFt2sLX/FyBKOzu1C8qLJC2CNhIMTVqZjO0eKmqxGiaFKoSiP6eVWimbcgCfpOLlCo0
	fl8b8CBuI/f/wgh2HxzUx3Rzq+fywm0Q0ojf7FH+3Mh6S7/+VNnpnrYiMdTaSk5gYwwW5MK8QBUbF
	6qWsrGQcweUG7youLdDZh9yCJx3t5ypaPZNTcPuJEGq1A4mqmQH77ksvRi4wfHf+FtifCEEHW/PWp
	fmm41piA3nS7OifcT5Bnvx2eJdRw0XVbcBA3hOOk2axugAtk/iLbdo932zOiBYS8us8mriZgbLRVt
	vIfquz52Gk5t1YOYj18w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVfyA-0007Qi-AN; Tue, 28 May 2019 17:33:02 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfxk-0007AV-Hi
 for linux-arm-kernel@bombadil.infradead.org; Tue, 28 May 2019 17:32:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8hqQ/4mY+bEfn2TTxujxDR99aFDvZhBW5ujyUYsewrA=; b=tp4Euh6rEs5ztJp2Jat+Uqdvn
 czVGXFImP9LykLjKyzlEaOFjzQ3IOl3Wf5G+k4+2dOgAHWCVtnv2kfAmkGLpCsy8ME63e0c377YWM
 EVAFoj16561WdTQutv/JVyOrCiTLlx894bbHEKW6OqY9c2ye0o6JzPNHaMbRKqpA33k1dI1sweW9i
 zk/xyhyncKacrc3WhfmGr9ggCUj/k4eya7Dgn9Yzjhds9Orb3tG36g2tGNshyXNPwbfvXYykEiATq
 pgnj0pfe9QLsrOC6J8sJi7CJbpPjbIM+QjJOyGn55704x2tWs0HstV8esLSUR3Im/7QQmtIPQfpJk
 H7ru2Veig==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVfxd-0005ts-TE; Tue, 28 May 2019 17:32:30 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id A8A25200E9AEF; Tue, 28 May 2019 19:32:28 +0200 (CEST)
Date: Tue, 28 May 2019 19:32:28 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will.deacon@arm.com>
Subject: Re: [PATCH] perf: Fix oops when kthread execs user process
Message-ID: <20190528173228.GW2623@hirez.programming.kicks-ass.net>
References: <1559046689-24091-1-git-send-email-92siuyang@gmail.com>
 <20190528140103.GT2623@hirez.programming.kicks-ass.net>
 <20190528153224.GE20758@fuggles.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528153224.GE20758@fuggles.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
 x86@kernel.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 mingo@redhat.com, bp@alien8.de, hpa@zytor.com,
 ravi.bangoria@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 04:32:24PM +0100, Will Deacon wrote:
> On Tue, May 28, 2019 at 04:01:03PM +0200, Peter Zijlstra wrote:
> > On Tue, May 28, 2019 at 08:31:29PM +0800, Young Xiao wrote:
> > > When a kthread calls call_usermodehelper() the steps are:
> > >   1. allocate current->mm
> > >   2. load_elf_binary()
> > >   3. populate current->thread.regs
> > > 
> > > While doing this, interrupts are not disabled. If there is a perf
> > > interrupt in the middle of this process (i.e. step 1 has completed
> > > but not yet reached to step 3) and if perf tries to read userspace
> > > regs, kernel oops.
> 
> This seems to be because pt_regs(current) gives NULL for kthreads on Power.

'funny' thing that, perf_sample_regs_user() seems to assume that
anything with current->mm is in fact a user task, and that assumption is
just plain wrong, consider use_mm().

So I'm thinking the right thing to do here is something like the below;
umh should get PF_KTHREAD cleared when it passes exec(). And this should
also fix the power splat I'm thinking.

---

diff --git a/kernel/events/core.c b/kernel/events/core.c
index abbd4b3b96c2..9929404b6eb9 100644
--- a/kernel/events/core.c
+++ b/kernel/events/core.c
@@ -5923,7 +5923,7 @@ static void perf_sample_regs_user(struct perf_regs *regs_user,
 	if (user_mode(regs)) {
 		regs_user->abi = perf_reg_abi(current);
 		regs_user->regs = regs;
-	} else if (current->mm) {
+	} else if (!(current->flags & PF_KTHREAD) && current->mm) {
 		perf_get_regs_user(regs_user, regs, regs_user_copy);
 	} else {
 		regs_user->abi = PERF_SAMPLE_REGS_ABI_NONE;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
