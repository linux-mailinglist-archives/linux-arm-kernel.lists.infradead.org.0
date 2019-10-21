Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5C72DEB16
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=od8tYbW2L/6XSZA9WiwpTyPQwKpXvIDMSrBnU+MJ6UA=; b=sdcNS7PJEd9dj0
	Is4wn+bxUAKC/PNbWO68NUWns4BnV9Q9EcEMgTJpKzuPB6tbRBntLohWPZyavkp+n5Qg/0OhK4s9A
	123kPlV0cuQg/FSXNavO1nMhnwqehgDDfybJwLE1W3I2f5q/b4g3GrqpQfCIwVEqcPcgnkOObUK/C
	axyIusE6id2ekG6r6WI4VbNOeBO+7qr0V1CWE9qLu7P6Nu54+do+XEIiE2Asy0vGJ4xdpDcj8qLWD
	5kbUKSp2ZXrqeOWczWuehdqGNK7pVrFLdiyktWCor3iW1SxWagzZTnPBr2dcLQD6XmvUsgWzxtpm/
	UFi+qXANBcOue223p6rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMW0c-0004bF-2v; Mon, 21 Oct 2019 11:37:58 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMW0P-0004aJ-Hq
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 11:37:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AE0CEBD;
 Mon, 21 Oct 2019 04:37:32 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 16AFE3F718;
 Mon, 21 Oct 2019 04:37:29 -0700 (PDT)
Date: Mon, 21 Oct 2019 12:37:25 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v8 0/5] arm64: ftrace with regs
Message-ID: <20191021113724.GA56589@lakrids.cambridge.arm.com>
References: <0f8d2e77-7e51-fba8-b179-102318d9ff84@arm.com>
 <20190311114945.GA5625@lst.de>
 <20190408153628.GL6139@lakrids.cambridge.arm.com>
 <20190409175238.GE9255@fuggles.cambridge.arm.com>
 <CAB=otbRXuDHSmh9NrGYoep=hxOKkXVsy6R84ACZ9xELwNr=4AA@mail.gmail.com>
 <20190724161500.GG2624@lakrids.cambridge.arm.com>
 <nycvar.YFH.7.76.1910161341520.13160@cbobk.fhfr.pm>
 <20191016175841.GF46264@lakrids.cambridge.arm.com>
 <20191018174100.GC18838@lakrids.cambridge.arm.com>
 <20191019130135.10de9324@blackhole.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191019130135.10de9324@blackhole.lan>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_043745_679161_FB3ADE58 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Julien Thierry <julien.thierry@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Jiri Kosina <jikos@kernel.org>,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Steven Rostedt <rostedt@goodmis.org>,
 AKASHI Takahiro <takahiro.akashi@linaro.org>, Ingo Molnar <mingo@redhat.com>,
 Ruslan Bilovol <ruslan.bilovol@gmail.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>, live-patching@vger.kernel.org,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 19, 2019 at 01:01:35PM +0200, Torsten Duwe wrote:
> Hi Mark!

Hi Torsten!
 
> On Fri, 18 Oct 2019 18:41:02 +0100 Mark Rutland
> <mark.rutland@arm.com> wrote:
> 
> > In the process of reworking this I spotted some issues that will get
> > in the way of livepatching. Notably:
> > 
> > * When modules can be loaded far away from the kernel, we'll
> > potentially need a PLT for each function within a module, if each can
> > be patched to a unique function. Currently we have a fixed number,
> > which is only sufficient for the two ftrace entry trampolines.
> > 
> >   IIUC, the new code being patched in is itself a module, in which
> > case we'd need a PLT for each function in the main kernel image.
> 
> When no live patching is involved, obviously all cases need to have
> been handled so far. And when a live patching module comes in, there
> are calls in and out of the new patch code:
> 
> Calls going into the live patch are not aware of this. They are caught
> by an active ftrace intercept, and the actual call into the LP module
> is done in klp_arch_set_pc, by manipulating the intercept (call site)
> return address (in case thread lives in the "new world", for
> completeness' sake). This is an unsigned long write in C.

I was under the impression that (at some point) the patch site would be
patched to call the LP code directly. From the above I understand that's
not the case, and it will always be directed via the regular ftrace
entry code -- have I got that right?

Assuming that is the case, that sounds fine to me, and sorry for the
noise.

> All calls going _out_ from the KLP module are newly generated, as part
> of the KLP module building process, and are thus aware of them being
> "extern" -- a PLT entry should be generated and accounted for in the
> KLP module.

Yup; understood.

> >   We have a few options here, e.g. changing which memory size model we
> >   use, or reserving space for a PLT before each function using
> >   -f patchable-function-entry=N,M.
> 
> Nonetheless I'm happy I once added the ,M option here. You never know :)

Yup; we may have other reasons to need this in future (and I see parisc
uses this today).

> > * There are windows where backtracing will miss the callsite's caller,
> >   as its address is not live in the LR or existing chain of frame
> >   records. Thus we cannot claim to have a reliable stacktrace.
> > 
> >   I suspect we'll have to teach the stacktrace code to handle this as
> > a special-case.
> 
> Yes, that's where I had to step back. The unwinder needs to stop where
> the chain is even questionable. In _all_ cases. Missing only one race
> condition means a lurking inconsistency.

Sure. I'm calling this out now so that we don't miss this in future.
I've added comments to the ftrace entry asm to this effect for now.

> OTOH it's not a problem to report "not reliable" when in doubt; the
> thread in question will then get woken up and unwind itself.
> It is only an optimisation to let all kernel threads which are
> guaranteed to not contain any patched functions sleep on.

I just want to make it clear that some care will be needed if/when
adding CONFIG_HAVE_RELIABLE_STACKTRACE so that we handle this case
correctly.
 
> >   I'll try to write these up, as similar probably applies to other
> >   architectures with a link register.
> 
> I thought I'd quickly give you my feedback upfront here.

Thanks; it's much appreciated!

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
