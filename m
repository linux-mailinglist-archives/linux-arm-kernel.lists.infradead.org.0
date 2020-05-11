Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECF51CE0C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 18:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NV7FbHo88bfp3ID8jGGDbLbw7LZiDlXlc2Zga08UQvw=; b=jrE3VcKhpobiKQ
	cNAod7cnKMI4ffqZqtedgtaR9junxf1O4bj8ZJeylfO1XGqF6T8oDCJO+KP0GpwcqFPiTTDG8TN6l
	qrpP7pfY1DUgrUCwKLqgBLsUDfc41O3v1+yQy96TXC2M7YHBUGTo5orlEzCS/5BCM/9k7JI3PTZVS
	nog6HyPU1fUeVliltq0GyiU80KO/FpuF8mz/1+o3SDfBd1jM21jfizRrZtXYpKojQMOY8MFFxxLNf
	0VUombQTYSnN4lhJ1GFDYZwl6x8ac9Yk1+gPT7stU8wvnCIE6uWuTK09QVwMBgyMEgNcdIWwTiDx8
	xWmNUzg91phwkqBubdMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYBTp-0004Dp-7L; Mon, 11 May 2020 16:40:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYBTb-0004DD-AS
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 16:40:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C6C6A1FB;
 Mon, 11 May 2020 09:40:22 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4467A3F305;
 Mon, 11 May 2020 09:40:21 -0700 (PDT)
Date: Mon, 11 May 2020 17:40:19 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200511164018.GC19176@gaia>
References: <20200421142603.3894-1-catalin.marinas@arm.com>
 <20200421142603.3894-24-catalin.marinas@arm.com>
 <20200429164705.GF30377@arm.com> <20200430162316.GJ2717@gaia>
 <20200504164617.GK30377@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200504164617.GK30377@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_094023_450362_CD45CD68 
X-CRM114-Status: GOOD (  36.55  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 04, 2020 at 05:46:17PM +0100, Dave P Martin wrote:
> On Thu, Apr 30, 2020 at 05:23:17PM +0100, Catalin Marinas wrote:
> > On Wed, Apr 29, 2020 at 05:47:05PM +0100, Dave P Martin wrote:
> > > On Tue, Apr 21, 2020 at 03:26:03PM +0100, Catalin Marinas wrote:
> > > > +- *Asynchronous* - The kernel raises a ``SIGSEGV``, in the current
> > > > +  thread, asynchronously following one or multiple tag check faults,
> > > > +  with ``.si_code = SEGV_MTEAERR`` and ``.si_addr = 0``.
> > > 
> > > For "current thread": that's a kernel concept.  For user-facing
> > > documentation, can we say "the offending thread" or similar?
> > > 
> > > For clarity, it's worth saying that the faulting address is not
> > > reported.  Or, we could be optimistic that someday this information will
> > > be available and say that si_addr is the faulting address if available,
> > > with 0 meaning the address is not available.
> > > 
> > > Maybe (void *)-1 would be better duff address, but I can't see it
> > > mattering much.  If there's already precedent for si_addr==0 elsewhere,
> > > it makes sense to follow it.
> > 
> > At a quick grep, I can see a few instances on other architectures where
> > si_addr==0. I'll add a comment here.
> 
> OK, cool
> 
> Except: what if we're in PR_MTE_TCF_ASYNC mode.  If the SIGSEGV handler
> triggers an asynchronous MTE fault itself, we could then get into a
> spin.  Hmm.

How do we handle standard segfaults here? Presumably a signal handler
can trigger a SIGSEGV itself.

> I take it we drain any pending MTE faults when crossing EL boundaries?

We clear the hardware bit on entry to EL1 from EL0 and set a TIF flag.

> In that case, an asynchronous MTE fault pending at sigreturn must have
> been caused by the signal handler.  We could make that particular case
> of MTE_AERR a force_sig.

We clear the TIF flag when delivering the signal. I don't think there is
a way for the kernel to detect when it is running in a signal handler.
sigreturn() is not mandatory either.

> > > > +**Note**: Kernel accesses to user memory (e.g. ``read()`` system call)
> > > > +are only checked if the current thread tag checking mode is
> > > > +PR_MTE_TCF_SYNC.
> > > 
> > > Vague?  Can we make a precise statement about when the kernel will and
> > > won't check such accesses?  And aren't there limitations (like use of
> > > get_user_pages() etc.)?
> > 
> > We could make it slightly clearer by say "kernel accesses to the user
> > address space".
> 
> That's not the ambiguity.
> 
> My question is
> 
> 1) Does the kernel guarantee not to check tags on kernel accesses to
> user memory without PR_MTE_TCF_SYNC?

For ASYNC and NONE, yes, we can guarantee this.

> 2) Does the kernel guarantee to check tags on kernel accesses to user
> memory with PR_MTE_TCF_SYNC?

I'd say yes but it depends on how much knowledge one has about the
syscall implementation. If it's access to user address directly, it
would be checked. If it goes via get_user_pages(), it won't. Since the
user doesn't need to have knowledge of the kernel internals, you are
right that we don't guarantee this.

> In practice, this note sounds to be more like a kernel implementation
> detail rather than advice to userspace.
> 
> Would it make sense to say something like:
> 
>  * PR_MTE_TCF_NONE: the kernel does not check tags for kernel accesses
>    to use memory done by syscalls in the thread.
> 
>  * PR_MTE_TCF_ASYNC: the kernel may check some tags for kernel accesses
>    to user memory done by syscalls.  (Should we guarantee that such
>    faults are reported synchronously on syscall exit?  In practice I
>    think they are.  Should we use SEGV_MTESERR in this case?  Perhaps
>    it's not worth making this a special case.)

Both NONE and ASYNC are now the same for kernel uaccess - not checked.

For background information, I decided against ASYNC uaccess checking
since (1) there are some cases where the kernel overreads
(strncpy_from_user) and (2) we don't normally generate SIGSEGV on
uaccess but rather return -EFAULT. The latter is not possible to contain
since we only learn about the fault asynchronously, usually after the
transfer.

>  * PR_MTE_TCF_SYNC: the kernel makes best efforts to check tags for
>    kernel accesses to user memory done by the syscalls, but does not
>    guarantee to check everything (or does it?  I thought we can't really
>    do that for some odd cases...)

It doesn't. I'll add some notes along the lines of your text above.

> > > > +excludes all tags other than 0. A user thread can enable specific tags
> > > > +in the randomly generated set using the ``prctl(PR_SET_TAGGED_ADDR_CTRL,
> > > > +flags, 0, 0, 0)`` system call where ``flags`` contains the tags bitmap
> > > > +in the ``PR_MTE_TAG_MASK`` bit-field.
> > > > +
> > > > +**Note**: The hardware uses an exclude mask but the ``prctl()``
> > > > +interface provides an include mask. An include mask of ``0`` (exclusion
> > > > +mask ``0xffff``) results in the CPU always generating tag ``0``.
> > > 
> > > Is there no way to make this default to 1 rather than having a magic
> > > meaning for 0?
> > 
> > We follow the hardware behaviour where 0xffff and 0xfffe give the same
> > result.
> 
> Exposing this through a purely software interface seems a bit odd:
> because the exclude mask is privileged-access-only, the architecture
> could amend it to assign a different meaning to 0xffff, providing this
> was an opt-in change.  Then we'd have to make a mess here.

You have a point. An include mask of 0 translates to an exclude mask of
0xffff as per the current patches. If the hardware gains support for one
more bit (32 colours), old software running on new hardware may run into
unexpected results with an exclude mask of 0xffff.

> Can't we just forbid the nonsense value 0 here, or are there other
> reasons why that's problematic?

It was just easier to start with a default. I wonder whether we should
actually switch back to the exclude mask, as per the hardware
definition. This way 0 would mean all tags allowed. We can still
disallow 0xffff as an exclude mask.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
