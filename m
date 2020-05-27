Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0EB51E3EDA
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 12:19:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hBacdJL+vAHXauhnrjEETkroHejMc2SR67tHU7nPl38=; b=elYp3UOw5jWKRe
	SmfIyBJMaKgRVGW1ja0h9/XcbpwN4gPYfOMEIsYXI6SMHivFpz7keg39/BK3thwvddlbRNpK2Yhdz
	O8+yoqBp39Qu9x8dZnAL6gdzBoiaiRevjXsnXMa+heD0JvS1sf+tF79Id5oFNTK30nSmRjYtdJ6kc
	41yev2ecaG8IGBtvfRwRtxiToxqovcbLVCi/gEvPd+9DiGJY/FJ2lF1wTxgOLIhUEQQ98G5NqBd3u
	pbdfyQRBvxg3VPtHC/AXBJpCD7T6jnLUjJCenPjciWp2vcmYrKEggp4MxN/Y1Ooylu1R3ijFigcXw
	qF2yrIw+L8SYZo7Z37cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdtA1-0001zN-3x; Wed, 27 May 2020 10:19:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdt9p-0001z3-Ls
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 10:19:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1118B55D;
 Wed, 27 May 2020 03:19:33 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E8FEB3F6C4;
 Wed, 27 May 2020 03:19:31 -0700 (PDT)
Date: Wed, 27 May 2020 11:19:29 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: arm64: Register modification during syscall entry/exit stop
Message-ID: <20200527101929.GT5031@arm.com>
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
 <20200527095528.GC11111@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527095528.GC11111@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_031933_760769_5B23C600 
X-CRM114-Status: GOOD (  19.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Kyle Huey <khuey@pernos.co>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Keno Fischer <keno@juliacomputing.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 10:55:29AM +0100, Will Deacon wrote:
> On Sun, May 24, 2020 at 02:56:35AM -0400, Keno Fischer wrote:
> > Just ran into this issue again, with what I think may be most compelling
> > example yet why this is problematic:
> > 
> > The tracee incurred a signal, we PTRACE_SYSEMU'd to the rt_sigreturn,
> > which the tracer tried to emulate by applying the state from the signal frame.
> > However, the PTRACE_SYSEMU stop is a syscall-stop, so the tracer's write
> > to x7 was ignored and x7 retained the value it had in the signal handler,
> > which broke the tracee.
> 
> Yeah, that sounds like a good justification to add a way to stop this. Could
> you send a patch, please?
> 
> Interestingly, I *thought* the current behaviour was needed by strace, but I
> can't find anything there that seems to require it. Oh well, we're stuck
> with it anyway.

The fact that PTRACE_SYSEMU is only implemented for a few arches makes
we wonder whether it was a misguided addition that should not be ported
to new arches... i.e., why does hardly anyone need it?  But I haven't
attempted to understand the history.

Can't PTRACE_SYSEMU be emulated by using PTRACE_SYSCALL, cancelling the
syscall at the syscall enter stop, then modifying the regs at the
syscall exit stop?


If SYSEMU was obviously always broken, perhaps we can withdraw support
for it.  Assuming nobody is crazy enough to try to emulate execve() I
can't see anything other than sigreturn that would be affected by this
issue though.  So maybe SYSEMU isn't broken enough to justify
withdrawal.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
