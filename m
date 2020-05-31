Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF2231E9695
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 31 May 2020 11:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dpGD1BSChZL34cAyXNj3cd48ULLM/VZn4l644+0HaiA=; b=MP+guGiAf81RbB
	5YI3UXBHmv75/iln2kba3dD4SASGo2n2mkvmgm4cGlTVapy8HxypJz49wS5RYAK7HDHnFma/0ZBA8
	7I48YN+FYsFsJjAWty6IShv4/33oYuvf+vZWTmTTPfqG4n28W0WIx33j2Xzbkc2fNYHJJkLdMnDyF
	Umz3eHOBTmDzkS5CR2uovbaC33VMOyBzUJdV7TLSQSCm9Dxi5YEmQd0yoxr70i5bt1gDvR3GHeArV
	OXMMLl6D7RkpDlMkp0rU4aVzoWFYLkmnuL7jTzBXbIT06fz2vikOAMoowS9rJ7yby0DU8nDRmBoLt
	kfumXooWX4Sb89pHnAvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfKLZ-0004Uu-9b; Sun, 31 May 2020 09:33:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfKLQ-0004Tv-4v
 for linux-arm-kernel@lists.infradead.org; Sun, 31 May 2020 09:33:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C00F620707;
 Sun, 31 May 2020 09:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590917606;
 bh=kbhIhCTvdYW4T4mcknrnXd2owAVuTRk+XLhdT0D6n/g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QVgLaPjKeNPKoDEZ3JzbTnF18GnJA5ji6Z7/k7XbKT9vyhxZX0am6CiqSmG5G8xZI
 7zfxuddxUHbu/04/SOXjg60iwuTMZ7iRTiNMsfUUDqhvDbx+undYop7J56Az0Pg51r
 VZkcNB7+Mx+HVp74Zo3tw7nyo3RS3y9l7eaESOFY=
Date: Sun, 31 May 2020 10:33:21 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
Message-ID: <20200531093320.GA30204@willie-the-truck>
References: <CABV8kRz0mKSc=u1LeonQSLroKJLOKWOWktCoGji2nvEBc=e7=w@mail.gmail.com>
 <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
 <20200527095528.GC11111@willie-the-truck>
 <20200527101929.GT5031@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527101929.GT5031@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200531_023328_238194_A06F45C0 
X-CRM114-Status: GOOD (  22.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Kyle Huey <khuey@pernos.co>, Catalin Marinas <catalin.marinas@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Oleg Nesterov <oleg@redhat.com>, Keno Fischer <keno@juliacomputing.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 11:19:29AM +0100, Dave Martin wrote:
> On Wed, May 27, 2020 at 10:55:29AM +0100, Will Deacon wrote:
> > On Sun, May 24, 2020 at 02:56:35AM -0400, Keno Fischer wrote:
> > > Just ran into this issue again, with what I think may be most compelling
> > > example yet why this is problematic:
> > > 
> > > The tracee incurred a signal, we PTRACE_SYSEMU'd to the rt_sigreturn,
> > > which the tracer tried to emulate by applying the state from the signal frame.
> > > However, the PTRACE_SYSEMU stop is a syscall-stop, so the tracer's write
> > > to x7 was ignored and x7 retained the value it had in the signal handler,
> > > which broke the tracee.
> > 
> > Yeah, that sounds like a good justification to add a way to stop this. Could
> > you send a patch, please?
> > 
> > Interestingly, I *thought* the current behaviour was needed by strace, but I
> > can't find anything there that seems to require it. Oh well, we're stuck
> > with it anyway.
> 
> The fact that PTRACE_SYSEMU is only implemented for a few arches makes
> we wonder whether it was a misguided addition that should not be ported
> to new arches... i.e., why does hardly anyone need it?  But I haven't
> attempted to understand the history.
> 
> Can't PTRACE_SYSEMU be emulated by using PTRACE_SYSCALL, cancelling the
> syscall at the syscall enter stop, then modifying the regs at the
> syscall exit stop?
> 
> 
> If SYSEMU was obviously always broken, perhaps we can withdraw support
> for it.  Assuming nobody is crazy enough to try to emulate execve() I
> can't see anything other than sigreturn that would be affected by this
> issue though.  So maybe SYSEMU isn't broken enough to justify
> withdrawal.

Indeed, my preference on another thread [1] was to remove it, but it would
need agreement from Arm, since it was added by them (Sudeep).

But setting that aside, Keno has convinced me that the clobbering of x7
on syscall enter/exit can cause some problems for userspace, so I think
that having a way to disable that seems like a good idea. We can't change
the current default behaviour, but having an explicit opt-in seems
worthwhile.

Keno -- are you planning to send out a patch? You previously spoke about
implementing this using PTRACE_SETOPTIONS.

Will

[1] https://lore.kernel.org/r/20200515121346.GA22919@willie-the-truck

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
