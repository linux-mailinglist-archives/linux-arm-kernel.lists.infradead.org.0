Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7591EA16D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 11:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nyHiaT6NBSdytolvQtoBVwRg1OSP88sv0MYG+89JgAg=; b=oWq1rnuirYW/TN
	GAxE4OWf2dsfKh44hwmvb3oMdlHA5/urgCiHTUruARQjE3FjxJp0D4sTaH4DeW+V18yzErvAIC2DA
	5lJvinnA1hcE14oPeE18qKVC9zIbvANXCB+yPDqZQpZf7mzipAYkfrtaeIrJOa4G8B45pmizJNMym
	O9kGWzph3T2QzDComMnMggQqEi6h/UJaVjf0GkE+eUMsdQwz1vD2XQKBstJ/jiToYubet8sd0DVT4
	WPRoD3bzUyMtWNWAtqTQ9Lt1qD/Dh6/b48o3th6SfjUU3yfGU0XgjyrSsYmElNeYDvCsFXGmcB08B
	dS4TZ6fZEpLTwzMapWqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfhEG-00028C-Br; Mon, 01 Jun 2020 09:59:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfhE9-00027X-Ey
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jun 2020 09:59:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 956831FB;
 Mon,  1 Jun 2020 02:59:28 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 799EB3F305;
 Mon,  1 Jun 2020 02:59:27 -0700 (PDT)
Date: Mon, 1 Jun 2020 10:59:25 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Keno Fischer <keno@juliacomputing.com>
Subject: Re: arm64: Register modification during syscall entry/exit stop
Message-ID: <20200601095925.GZ5031@arm.com>
References: <20200519081551.GA9980@willie-the-truck>
 <CABV8kRzYzBrdzC1_opmmdpW63N2htfOsAUZ+RjiSDsy=SJW6Yg@mail.gmail.com>
 <20200520174149.GB27629@willie-the-truck>
 <CABV8kRzjCCsjVeRsBD7U_Lo0==sBw9EKm=1z7g=60KyJvJLZBQ@mail.gmail.com>
 <CABV8kRxfet2RXXNcUoTKwfVzFWEQfxAkXUX4M5XhkP3nc-0+rQ@mail.gmail.com>
 <20200527095528.GC11111@willie-the-truck>
 <20200527101929.GT5031@arm.com>
 <CABV8kRwhsPhhqUXS46Rwh-xDEDY2q=KSd-xz1W-pu4Gy4KVp8Q@mail.gmail.com>
 <20200601092329.GX5031@arm.com>
 <CABV8kRzkLiVuqxT3+8c1o8m_OuROtXgfowQcrMVnrxu=CiGB=w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CABV8kRzkLiVuqxT3+8c1o8m_OuROtXgfowQcrMVnrxu=CiGB=w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_025929_544856_CDBAE92E 
X-CRM114-Status: GOOD (  22.48  )
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
 Oleg Nesterov <oleg@redhat.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 01, 2020 at 05:40:28AM -0400, Keno Fischer wrote:
> On Mon, Jun 1, 2020 at 5:23 AM Dave Martin <Dave.Martin@arm.com> wrote:
> > > > Can't PTRACE_SYSEMU be emulated by using PTRACE_SYSCALL, cancelling the
> > > > syscall at the syscall enter stop, then modifying the regs at the
> > > > syscall exit stop?
> > >
> > > Yes, it can. The idea behind SYSEMU is to be able to save half the
> > > ptrace traps that would require, in theory making the ptracer
> > > a decent amount faster. That said, the x7 issue is orthogonal to
> > > SYSEMU, you'd have the same issues if you used PTRACE_SYSCALL.
> >
> > Right, I just wondered whether there was some deeper difference between
> > the two approaches.
> 
> You're asking about a new regset vs trying to do it via ptrace option?

I meant SYSEMU versus SYSCALL + cancellation and emulating the syscall
at the syscall exit stop.

i.e., I was trying to understand whether SYSEMU is just a convenience,
or does some magic that can't be reproduced by other means.

> I don't think there's anything a ptrace option can do that a new regset
> that replicates the same registers (I'm gonna propose adding orig_x0,
> while we're at it and changing the x0 semantics a bit, will have
> those details with the patch) wouldn't be able to do . The reason I
> originally thought it might have to be a ptrace option is because
> the register modification currently gets applied in the syscall entry
> code to the actual regs struct, so I thought you might have to know
> to preserve those registers. However, then I realized that you could
> just change the regset accessors to emulate the old behavior, since
> we do already store all the required information (what kind of stop
> we're currently at) in order to be able to answer the ptrace
> informational queries. So doing that it probably just all around
> easier. I guess NT_PRSTATUS might also rot, but I guess strace
> doesn't really have to stop using it, since it doesn't care about
> the x7 value nor does it need to modify it.

I think NT_PRSTATUS probably doesn't need to change.

Having a duplicate regset feels like a worse outcome that having a new
ptrace option.  Undocumentedly different things already happen to the
regs depending on how the tracee stopped, so adding a new special case
doesn't seem to justify creating a new regset.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
