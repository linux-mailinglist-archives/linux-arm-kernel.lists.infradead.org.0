Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B9FA1F3E9F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:49:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZecoqBOvWGxdzIObAXziNaqKmXDhqILuBMUXmE8bZKQ=; b=IUYEwjn9TKxWJx
	0K3xZuq34Htj/1ncT0xEVGbRynbKgpltQ57tism/09p40Dz2QLEqSUpSpFMlfFgP67sWK3bkmyhap
	anQkmzWN0zWkVElcfTQBLXZ5dDN0ptZkA8iOZRm2q3/HCEOJhiQi4IWfYgG+1SdcWPXxZgeJRSgJ3
	ar2vWCy0QZU7+klRQdoATlunWfDxfI+TZuaCsN+D/Y9H0pERLhpuTm7BmVrrQ8fc1aB71IYrjo5Nh
	bEz6Gy3f9jtEryOzZZPvebz9KNAgKbX/JxeXbLRxj3OYA4awmHdqRGXOjPHtsWuZcDT4B6KipwLso
	jinoBu0wVO5cARWRRCmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jifZ3-0001Bj-W8; Tue, 09 Jun 2020 14:49:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jifYs-0001AW-Lo
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:49:12 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 38F9C2078C;
 Tue,  9 Jun 2020 14:49:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591714150;
 bh=3D0+JWeNtgWewuzjkQt8kkvnIIVaAOCjbroo16/YY/Y=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WOm2rkYMnv/aUXkGhq569wKdKssvbeLXCk5bq0SvFNcfZiW5MJTY6vIKkA4bIzaNv
 4bNw5ylE0Mp6hJdKzpz6nFfmx0HRO7yEZcwclmUh5TAH72amj+F1ul/xLDJ6R7hVOY
 MxzGxblySi6uf7AU2z876IVdVjVrwTlVk49tvk6s=
Date: Tue, 9 Jun 2020 15:49:05 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH v2 4/6] prctl.2: Add SVE prctls (arm64)
Message-ID: <20200609144905.GA28353@willie-the-truck>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-5-git-send-email-Dave.Martin@arm.com>
 <20200609095734.GA25362@willie-the-truck>
 <20200609140948.GA25945@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609140948.GA25945@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_074910_763002_4B519564 
X-CRM114-Status: GOOD (  38.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-man@vger.kernel.org,
 Michael Kerrisk <mtk.manpages@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 03:11:42PM +0100, Dave Martin wrote:
> On Tue, Jun 09, 2020 at 10:57:35AM +0100, Will Deacon wrote:
> > On Wed, May 27, 2020 at 10:17:36PM +0100, Dave Martin wrote:
> > > diff --git a/man2/prctl.2 b/man2/prctl.2
> > > index cab9915..91df7c8 100644
> > > --- a/man2/prctl.2
> > > +++ b/man2/prctl.2
> > > @@ -1291,6 +1291,148 @@ call failing with the error
> > >  .BR ENXIO .
> > >  For further details, see the kernel source file
> > >  .IR Documentation/admin\-guide/kernel\-parameters.txt .
> > > +.\" prctl PR_SVE_SET_VL
> > > +.\" commit 2d2123bc7c7f843aa9db87720de159a049839862
> > > +.\" linux-5.6/Documentation/arm64/sve.rst
> > > +.TP
> > > +.BR PR_SVE_SET_VL " (since Linux 4.15, only on arm64)"
> > > +Configure the thread's SVE vector length,
> > > +as specified by
> > > +.IR "(int) arg2" .
> > > +Arguments
> > > +.IR arg3 ", " arg4 " and " arg5
> > > +are ignored.
> > > +.IP
> > > +The bits of
> > > +.I arg2
> > > +corresponding to
> > > +.B PR_SVE_VL_LEN_MASK
> > > +must be set to the desired vector length in bytes.
> > > +This is interpreted as an upper bound:
> > > +the kernel will select the greatest available vector length
> > > +that does not exceed the value specified.
> > > +In particular, specifying
> > > +.B SVE_VL_MAX
> > > +(defined in
> > > +.I <asm/sigcontext.h>)
> > > +for the
> > > +.B PR_SVE_VL_LEN_MASK
> > > +bits requests the maximum supported vector length.
> > > +.IP
> > > +In addition,
> > > +.I arg2
> > > +must be set to one of the following combinations of flags:
> > 
> > How about saying:
> > 
> >   In addition, the other bits of arg2 must be set according to the following
> >   combinations of flags:
> > 
> > Otherwise I find it a bit fiddly to read, because it's valid to have
> > flags of 0 and a non-zero length.
> 
> 0 is listed, so I hoped that was clear enough.
> 
> Maybe just write "must be one of the following values:"?
> 
> 0 is a value, but I can see why you might be uneasy about 0 being
> described as a "combination of flags".

It's more that arg2 *also* holds the length, so saying that arg2 must
be set to a combination of flags isn't quite right, because it's actually
to set to a combination of flags and the length.

> > > +.RS
> > > +.TP
> > > +.B 0
> > > +Perform the change immediately.
> > > +At the next
> > > +.BR execve (2)
> > > +in the thread,
> > > +the vector length will be reset to the value configured in
> > > +.IR /proc/sys/abi/sve_default_vector_length .
> > 
> > (implementation note: does this mean that 'sve_default_vl' should be
> >  an atomic_t, as it can be accessed concurrently? We probably need
> >  {READ,WRITE}_ONCE() at the very least, as I'm not seeing any locks
> >  that help us here...)
> 
> Is this purely theoretical?  Can you point to what could go wrong?

If the write is torn by the compiler, then a concurrent reader could end
up seeing a bogus value. There could also be ToCToU issues if it's re-read.

> While I doubt I thought about this very hard and I agree that you're
> right in principle, I think there are probably non-atomic sysctls and
> debugs files etc. all over the place.
> 
> I didn't want to clutter the code unnecessarily.

Right, but KCSAN is coming along and so somebody less familiar with the code
will hit this eventually.

> > > +.B PR_SVE_VL_INHERIT
> > > +Perform the change immediately.
> > > +Subsequent
> > > +.BR execve (2)
> > > +calls will preserve the new vector length.
> > > +.TP
> > > +.B PR_SVE_SET_VL_ONEXEC
> > > +Defer the change, so that it is performed at the next
> > > +.BR execve (2)
> > > +in the thread.
> > > +Further
> > > +.BR execve (2)
> > > +calls will reset the vector length to the value configured in
> > > +.IR /proc/sys/abi/sve_default_vector_length .
> > > +.TP
> > > +.B "PR_SVE_SET_VL_ONEXEC | PR_SVE_VL_INHERIT"
> > > +Defer the change, so that it is performed at the next
> > > +.BR execve (2)
> > > +in the thread.
> > > +Further
> > > +.BR execve (2)
> > > +calls will preserve the new vector length.
> > > +.RE
> > > +.IP
> > > +In all cases,
> > > +any previously pending deferred change is canceled.
> > > +.IP
> > > +The call fails with error
> > > +.B EINVAL
> > > +if SVE is not supported on the platform, if
> > > +.I arg2
> > > +is unrecognized or invalid, or the value in the bits of
> > > +.I arg2
> > > +corresponding to
> > > +.B PR_SVE_VL_LEN_MASK
> > > +is outside the range
> > > +.BR SVE_VL_MIN .. SVE_VL_MAX
> > > +or is not a multiple of 16.
> > > +.IP
> > > +On success,
> > > +a nonnegative value is returned that describes the
> > > +.I selected
> > > +configuration,
> > 
> > If I'm reading the kernel code correctly, this is slightly weird, as
> > the returned value may contain the PR_SVE_VL_INHERIT flag but it will
> > never contain the PR_SVE_SET_VL_ONEXEC flag. Is that right?
> 
> Yes, which is an oddity.
> 
> I suppose we could fake that up actually by returning that flag if
> sve_vl and sve_vl_onexec are different, but we don't currently do this.

I don't think there's any need to change the code, but I think this stuff
is worth documenting.

> > If so, maybe just say something like:
> > 
> >   On success, a nonnegative value is returned that describes the selected
> >   configuration in the same way as PR_SVE_GET_VL.
> 
> How does that help?  PR_SVE_GET_VL doesn't fully clarify the oddity you
> call out anyway.

It clarifies it enough for my liking (by explicitly talking about "the bit
corresponding to PR_SVE_VL_INHERIT" and not about PR_SVE_SET_VL_ONEXEC),
but either way, I think saying that the return value is the same is a
useful clarification. If you want to make PR_SVE_GET_VL more explicit,
we could do that too.

> > > +.B PR_SVE_SET_VL_ONEXEC
> > > +flag may crash the calling process.
> > > +The conditions for using it safely are complex and system-dependent.
> > > +Don't use it unless you really know what you are doing.
> > > +.IP
> > > +For more information, see the kernel source file
> > > +.I Documentation/arm64/sve.rst
> > > +.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
> > > +(or
> > > +.I Documentation/arm64/sve.txt
> > > +before Linux 5.3).
> > 
> > I think I'd drop the kernel reference here, as it feels like we're saying
> > "only do this if you know what you're doing" on one hand, but then "if you
> > don't know what you're doing, see this other documentation" on the other.
> 
> Well, the docmuentation doesn't answer those questions either.
> 
> I could just swap the warning and the cross-reference, so that the
> cross-reference doesn't seem to follow on from "knowing what you're
> doing"?

Ok.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
