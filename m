Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C5661207B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 18:45:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L0jHWYYiOGRpZ+Ti2GpDH1wfZ/qe4owiSjK4DLnd/pk=; b=TMGXl42vYCkHSr
	OL/286Hq0j7EIajW/rR/f9Y5b2ibCCEGCMuCdWGGx/BudjZUXuT+P1eks3mFP3TJRDkqydXaPxwTm
	wNTJTBTwkzVHc+Sux8nZs52tIJFtwjPRkXdJYHEBML0puwyyoc491IDD+Cr3RbYIU+7GrDui2Ex5/
	lK3sy+NGEfxPeS9BnNRZz5ADSsH0UvORkJOB33a2a210P8bYBhgjVS9E1RnzDI2NpAavIc5Gu3j5X
	n58Xk4srttmJBw6xYg0R8bcYvrgV3YETNGY+HZQaZ6QX0Ce8fnoQZAVB2Pr2DVjGvhpQYBMSzYTfB
	J/wkR7g8jvxpyBChWlhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMEpr-0000wO-9b; Thu, 02 May 2019 16:45:27 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMEpk-0000w2-4D
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 16:45:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A4C6AA78;
 Thu,  2 May 2019 09:45:19 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DA8073F5AF;
 Thu,  2 May 2019 09:45:16 -0700 (PDT)
Date: Thu, 2 May 2019 17:45:12 +0100
From: Will Deacon <will.deacon@arm.com>
To: Oleg Nesterov <oleg@redhat.com>
Subject: Re: [PATCH v3 1/4] ptrace: move clearing of TIF_SYSCALL_EMU flag to
 core
Message-ID: <20190502164512.GA10635@fuggles.cambridge.arm.com>
References: <20190430170520.29470-1-sudeep.holla@arm.com>
 <20190430170520.29470-2-sudeep.holla@arm.com>
 <20190501161330.GD30235@redhat.com>
 <20190501161752.GA12498@e107155-lin>
 <20190502161329.GE7323@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190502161329.GE7323@redhat.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_094520_181047_A2582E18 
X-CRM114-Status: GOOD (  15.08  )
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, Haibo Xu <haibo.xu@arm.com>,
 Steve Capper <Steve.Capper@arm.com>, Richard Weinberger <richard@nod.at>,
 jdike@addtoit.com, x86@kernel.org, linux-kernel@vger.kernel.org,
 Bin Lu <bin.lu@arm.com>, Ingo Molnar <mingo@redhat.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 Andy Lutomirski <luto@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 02, 2019 at 06:13:30PM +0200, Oleg Nesterov wrote:
> On 05/01, Sudeep Holla wrote:
> >
> > On Wed, May 01, 2019 at 06:13:30PM +0200, Oleg Nesterov wrote:
> > > On 04/30, Sudeep Holla wrote:
> > > >
> > > > While the TIF_SYSCALL_EMU is set in ptrace_resume independent of any
> > > > architecture, currently only powerpc and x86 unset the TIF_SYSCALL_EMU
> > > > flag in ptrace_disable which gets called from ptrace_detach.
> > > >
> > > > Let's move the clearing of TIF_SYSCALL_EMU flag to __ptrace_unlink
> > > > which gets executed from ptrace_detach and also keep it along with
> > > > or close to clearing of TIF_SYSCALL_TRACE.
> > > >
> > > > Cc: Oleg Nesterov <oleg@redhat.com>
> > > > Cc: Paul Mackerras <paulus@samba.org>
> > > > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > > > Cc: Thomas Gleixner <tglx@linutronix.de>
> > > > Cc: Ingo Molnar <mingo@redhat.com>
> > > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > >
> > > Acked-by: Oleg Nesterov <oleg@redhat.com>
> > >
> >
> > Since 1/4 and 2/4 are completely independent of arm64 changes in 3&4/4,
> > I prefer you take these via your tree.
> 
> Sorry Sudeep, I can't do this, I need to reanimate my account on kernel.org.

Ok, if you're happy for us to take them via arm64 with your ack, then we can
do that as well. Just don't want to step on anybody's toes!

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
