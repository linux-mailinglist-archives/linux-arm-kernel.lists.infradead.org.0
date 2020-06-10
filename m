Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EBD1F51DF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:07:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6xBoU9FHIvkFmKJE0Ya/vjB9vCNvHfnnUTN/pm+7cgw=; b=gMhthZJbNPserb
	UsMkVwP8b1jqf7sk2dfnI8Zddc6fi/P/anV3BTaKU3ED3S5hK9dz4of6r7t27XYDNUzMbqU+6L2n2
	SF9unNLFG2pGg3LZJPEhwhrmGKqeDMc+EItR5Iznt/r/MI9QVxIo3X+gtiIN5taHOc53NviC3AO/G
	LPnV7FZlosEJLqeVTUlGJQM159CNz0GhA1ojjebUV67DvJ1M4bBy5usUpMXQRan3VSAE8rZCzAk9/
	K9cavLQETMsgT2E/sTWmbepUQnxgDDlqjLCZUDP6Unl6PGWxFHLwDuVQNKlcYCsMfbD9K8GEgamxI
	GpcnXu2jTh4wlrgg7UeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixdG-00011f-UE; Wed, 10 Jun 2020 10:06:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixd7-000112-Vy
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:06:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6904B1FB;
 Wed, 10 Jun 2020 03:06:45 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4CF843F73D;
 Wed, 10 Jun 2020 03:06:44 -0700 (PDT)
Date: Wed, 10 Jun 2020 11:06:42 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [RFC PATCH v2 6/6] prctl.2: Add tagged address ABI control
 prctls (arm64)
Message-ID: <20200610100641.GF25945@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-7-git-send-email-Dave.Martin@arm.com>
 <20200609172232.GA63286@C02TF0J2HF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609172232.GA63286@C02TF0J2HF1T.local>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_030646_115051_A8BBCF7A 
X-CRM114-Status: GOOD (  41.45  )
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 06:22:32PM +0100, Catalin Marinas wrote:
> Hi Dave,
> 
> On Wed, May 27, 2020 at 10:17:38PM +0100, Dave P Martin wrote:
> > --- a/man2/prctl.2
> > +++ b/man2/prctl.2
> > @@ -1504,6 +1504,143 @@ For more information, see the kernel source file
> >  (or
> >  .I Documentation/arm64/sve.txt
> >  before Linux 5.3).
> > +.\" prctl PR_SET_TAGGED_ADDR_CTRL
> > +.\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
> > +.TP
> > +.BR PR_SET_TAGGED_ADDR_CTRL " (since Linux 5.4, only on arm64)"
> > +Controls support for passing tagged userspace addresses to the kernel
> > +(i.e., addresses where bits 56\(em63 are not all zero).
> 
> Nitpick: maybe say "userspace addresses" again inside the brackets since
> kernel addresses have all top bits 1.

Happy to do that.  This is a user-facing interface though: userspace
addresses are the only kind of address there is.

> 
> > +.IP
> > +The level of support is selected by
> > +.IR "(unsigned int) arg2" ,
> 
> We use (unsigned long) for arg2.

Hmmm, not quite sure how I came up with unsigned int here.  I'll just
drop this: the type in the prctl() prototype is unsigned long anyway.

The type is actually moot in this case, since the valid values all fit
in an unsigned int.

> > +which can be one of the following:
> > +.RS
> > +.TP
> > +.B 0
> > +Addresses that are passed
> > +for the purpose of being dereferenced by the kernel
> > +must be untagged.
> > +.TP
> > +.B PR_TAGGED_ADDR_ENABLE
> > +Addresses that are passed
> > +for the purpose of being dereferenced by the kernel
> > +may be tagged, with the exceptions summarized below.
> > +.RE
> > +.IP
> > +The remaining arguments
> > +.IR arg3 ", " arg4 " and " arg5
> > +must all be zero.
> 
> Indeed. The above commit didn't have this, we added it later in commit
> 3e91ec89f527b9870fe42dcbdb74fd389d123a95.

Ah, missed that.  Did any full kernel release expose the unchecked
behaviour?

Mind you, there's probably no need to document in any case.

> 
> > +.IP
> > +On success, the mode specified in
> > +.I arg2
> > +is set for the calling thread and the the return value is 0.
> > +If the arguments are invalid,
> > +the mode specified in
> > +.I arg2
> > +is unrecognized,
> > +or if this feature is disabled or unsupported by the kernel,
> > +the call fails with
> > +.BR EINVAL .
> > +.IP
> > +In particular, if
> > +.BR prctl ( PR_SET_TAGGED_ADDR_CTRL ,
> > +0, 0, 0, 0)
> > +fails with
> > +.B EINVAL
> > +then all addresses passed to the kernel must be untagged.
> > +.IP
> > +Irrespective of which mode is set,
> > +addresses passed to certain interfaces
> > +must always be untagged:
> 
> Maybe you could add some extra info from the kernel comment (commit
> b2a84de2a2deb76a6a51609845341f508c518c03) along the lines of "... to
> avoid the creation of aliasing mappings in userspace).

It depends.  It's useful if it helps people to guess highly accurately
the rule for in interface that is too new or that we don't explicitly
document (such as a random setsockopt or perf widget).

If not, it might be best to say nothing and make guarantees only about
the explicitly listed interfaces though.

What do you think?

> > +.RS
> > +.IP \(em
> > +.BR brk (2),
> > +.BR mmap (2),
> > +.BR shmat (2),
> > +and the
> > +.I new_address
> > +argument of
> > +.BR mremap (2).
> > +.IP
> > +(Prior to Linux 5.6 these accepted tagged addresses,
> > +but the behaviour may not be what you expect.
> > +Don't rely on it.)
> 
> shmat() was not part of the subsequent fix
> (dcde237319e626d1ec3c9d8b7613032f0fd4663a), it always rejected tagged
> address. But I guess it doesn't matter much, the user should not pass
> tagged addresses to these syscalls anyway.
> 
> You could move shmat() down together with shmdt().

I guess I was highlighting that shmdt() is a special case, because the
user would guess from the pattern of the other listed calls that shmdt()
should accept tagged addresses.  If you think separating it just adds to
the confusion, I'm happy not too call it out specially here.

OTOH, we could fix shmdt() and document the legacy behaviour as a bug in
specific kernel versions rather than the canonical behaviour.  But I
guess that's one for later.

> > +.IP \(em
> > +\(oqpolymorphic\(cq interfaces
> > +that accept pointers to arbitrary types cast to a
> > +.I void *
> > +or other generic type, specifically
> > +.BR prctl (2),
> > +.BR ioctl (2),
> > +and in general
> > +.BR setsockopt (2)
> > +(only certain specific
> > +.BR setsockopt (2)
> > +options allow tagged addresses).
> > +.IP \(em
> > +.BR shmdt (2).
> > +.RE
> > +.IP
> > +This list of exclusions may shrink
> > +when moving from one kernel version to a later kernel version.
> > +While the kernel may make some guarantees
> > +for backwards compatibility reasons,
> > +for the purposes of new software
> > +the effect of passing tagged addresses to these interfaces
> > +is unspecified.
> > +.IP
> > +The mode set by this call is inherited across
> > +.BR fork (2)
> > +and
> > +.BR clone (2).
> > +The mode is reset by
> > +.BR execve (2)
> > +to 0
> > +(i.e., tagged addresses not permitted in the user/kernel ABI).
> > +.IP
> > +.B Warning:
> > +Because the compiler or run-time environment
> > +may make use of address tagging,
> > +a successful
> > +.B PR_SET_TAGGED_ADDR_CTRL
> > +may crash the calling process.
> 
> I don't think PR_SET_TAGGED_ADDR_CTRL could crash the calling process.
> Rather disabling tagged addresses would break it. If a process is using

This is precisely how PR_SET_TAGGED_ADDR_CTRL could crash the calling
process, no?

Rather than try to explain the different cases in detail here and have
the reader take it as gospel, I thought it would be better to scare them
a bit and encourage them to so some homework.  Perhaps I'm being too
cautious.

> tagged addresses but does not pass them to the kernel, it will continue
> to do so even when the syscalls accept such addresses.
> 
> > +The conditions for using it safely are complex and system-dependent.
> > +Don't use it unless you know what you are doing.
> 
> This syscall is intended for the C library if the heap allocator
> generates tagged addresses. So it's not a general purpose prctl() random
> application code could call. Anyway I'm fine with your warning of not
> doing it but you may want to clarify the intent.

Maybe add something like

"This call is primarily intended for use by the run-time environment."

?

> 
> > +.IP
> > +For more information, see the kernel source file
> > +.IR Documentation/arm64/tagged\-address\-abi.rst .
> > +.\" prctl PR_GET_TAGGED_ADDR_CTRL
> > +.\" commit 63f0c60379650d82250f22e4cf4137ef3dc4f43d
> > +.TP
> > +.BR PR_GET_TAGGED_ADDR_CTRL " (since Linux 5.4, only on arm64)"
> > +Returns the current tagged address mode
> > +for the calling thread.
> > +.IP
> > +Arguments
> > +.IR arg2 ", " arg3 ", " arg4 " and " arg5
> > +must all be zero.
> > +.IP
> > +If the arguments are invalid
> > +or this feature is disabled or unsupported by the kernel,
> > +the call fails with
> > +.BR EINVAL .
> > +In particular, if
> > +.BR prctl ( PR_GET_TAGGED_ADDR_CTRL ,
> > +0, 0, 0, 0)
> > +fails with
> > +.BR EINVAL ,
> > +then this feature is definitely unsupported or disabled,
> 
> I guess it's outside the scope of the prctl.2 to describe how the
> feature was disabled (e.g. sysctl).

We could include it here, but I'm thinking we might want a more
comprehensive separate page to describe how to use MTE in general.

For now, is referencing the kernel documentation enough?

> > +and all addresses passed to the kernel must be untagged.
> > +.IP
> > +Otherwise, the call returns a nonnegative value
> > +describing the current tagged address mode,
> > +encoded in the same way as the
> > +.I arg2
> > +argument of
> > +.BR PR_SET_TAGGED_ADDR_CTRL .
> > +.IP
> > +For more information, see the kernel source file
> > +.IR Documentation/arm64/tagged\-address\-abi.rst .
> >  .\"
> >  .\" prctl PR_TASK_PERF_EVENTS_DISABLE
> >  .TP
> > @@ -1749,6 +1886,7 @@ On success,
> >  .BR PR_GET_SPECULATION_CTRL ,
> >  .BR PR_SVE_GET_VL ,
> >  .BR PR_SVE_SET_VL ,
> > +.BR PR_GET_TAGGED_ADDR_CTRL ,
> >  .BR PR_GET_THP_DISABLE ,
> >  .BR PR_GET_TIMING ,
> >  .BR PR_GET_TIMERSLACK ,
> > @@ -2057,6 +2195,24 @@ is
> >  .B PR_SVE_GET_VL
> >  and SVE is not available on this platform.
> >  .TP
> > +.B EINVAL
> > +.I option
> > +is
> > +.BR PR_SET_TAGGED_ADDR_CTRL
> > +and the arguments are invalid or unsupported.
> > +See the description of
> > +.B PR_SET_TAGGED_ADDR_CTRL
> > +above for details.
> > +.TP
> > +.B EINVAL
> > +.I option
> > +is
> > +.BR PR_GET_TAGGED_ADDR_CTRL
> > +and the arguments are invalid or unsupported.
> > +See the description of
> > +.B PR_GET_TAGGED_ADDR_CTRL
> > +above for details.
> > +.TP
> >  .B ENODEV
> >  .I option
> >  was
> 
> Apart from some minor nits above, the documentation looks fine.
> 
> Thanks for writing this up.

Thanks for the review.  I was taking a punt on some of it, so I'm
reassured that you didn't find too many controversial points.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
