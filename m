Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A21BA1F3DAE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 16:12:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VTOxdxf7lV0WqJNjkwV5XDby+weI7sEfCWSLiiQvQcU=; b=YQYhv/MXBjRdFE
	7B7XmlYQP6ZSKd7rEAqRtNismk4i6TtmJ8WsGQHZdONq7u4RhltKfBGpkh+LLwJI/mjtX/4KakCzW
	/xMv/1UDQdCseV/wa8QokIEbR2SqJyXRg1Q0H/fgRZbl5DQtoUPpaBPhOypAOSv61R1utXXwRO/4L
	6hRom3jGmjUjbO0DBXcw9EgRNWStr0XSG68bSuDWUuC7sPxIV0P2cuEK7Aweo6rgMaAebtNdXj1fK
	SMM0chzVnM/PD+b2sg30wRIFyhNw5e0TOHHwk3PbiaciXIIwD9rKmKgs07CkZhaJKRB97xcpjQb7U
	XsfZj3OoodtbDKGcRl/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jieyx-0006lW-1v; Tue, 09 Jun 2020 14:12:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jieyo-0006g7-KH
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 14:11:56 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3FACE1FB;
 Tue,  9 Jun 2020 07:11:51 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 41CEE3F66F;
 Tue,  9 Jun 2020 07:11:50 -0700 (PDT)
Date: Tue, 9 Jun 2020 15:11:42 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2 4/6] prctl.2: Add SVE prctls (arm64)
Message-ID: <20200609140948.GA25945@arm.com>
References: <1590614258-24728-1-git-send-email-Dave.Martin@arm.com>
 <1590614258-24728-5-git-send-email-Dave.Martin@arm.com>
 <20200609095734.GA25362@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200609095734.GA25362@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_071154_757237_0439A063 
X-CRM114-Status: GOOD (  34.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, Jun 09, 2020 at 10:57:35AM +0100, Will Deacon wrote:
> Hi Dave,
> 
> On Wed, May 27, 2020 at 10:17:36PM +0100, Dave Martin wrote:
> > Add documentation for the the PR_SVE_SET_VL and PR_SVE_GET_VL
> > prctls added in Linux 4.15 for arm64.
> 
> Looks really good to me, thanks. Just a few comments inline.
> 
> > diff --git a/man2/prctl.2 b/man2/prctl.2
> > index cab9915..91df7c8 100644
> > --- a/man2/prctl.2
> > +++ b/man2/prctl.2
> > @@ -1291,6 +1291,148 @@ call failing with the error
> >  .BR ENXIO .
> >  For further details, see the kernel source file
> >  .IR Documentation/admin\-guide/kernel\-parameters.txt .
> > +.\" prctl PR_SVE_SET_VL
> > +.\" commit 2d2123bc7c7f843aa9db87720de159a049839862
> > +.\" linux-5.6/Documentation/arm64/sve.rst
> > +.TP
> > +.BR PR_SVE_SET_VL " (since Linux 4.15, only on arm64)"
> > +Configure the thread's SVE vector length,
> > +as specified by
> > +.IR "(int) arg2" .
> > +Arguments
> > +.IR arg3 ", " arg4 " and " arg5
> > +are ignored.
> > +.IP
> > +The bits of
> > +.I arg2
> > +corresponding to
> > +.B PR_SVE_VL_LEN_MASK
> > +must be set to the desired vector length in bytes.
> > +This is interpreted as an upper bound:
> > +the kernel will select the greatest available vector length
> > +that does not exceed the value specified.
> > +In particular, specifying
> > +.B SVE_VL_MAX
> > +(defined in
> > +.I <asm/sigcontext.h>)
> > +for the
> > +.B PR_SVE_VL_LEN_MASK
> > +bits requests the maximum supported vector length.
> > +.IP
> > +In addition,
> > +.I arg2
> > +must be set to one of the following combinations of flags:
> 
> How about saying:
> 
>   In addition, the other bits of arg2 must be set according to the following
>   combinations of flags:
> 
> Otherwise I find it a bit fiddly to read, because it's valid to have
> flags of 0 and a non-zero length.

0 is listed, so I hoped that was clear enough.

Maybe just write "must be one of the following values:"?

0 is a value, but I can see why you might be uneasy about 0 being
described as a "combination of flags".

> > +.RS
> > +.TP
> > +.B 0
> > +Perform the change immediately.
> > +At the next
> > +.BR execve (2)
> > +in the thread,
> > +the vector length will be reset to the value configured in
> > +.IR /proc/sys/abi/sve_default_vector_length .
> 
> (implementation note: does this mean that 'sve_default_vl' should be
>  an atomic_t, as it can be accessed concurrently? We probably need
>  {READ,WRITE}_ONCE() at the very least, as I'm not seeing any locks
>  that help us here...)

Is this purely theoretical?  Can you point to what could go wrong?

While I doubt I thought about this very hard and I agree that you're
right in principle, I think there are probably non-atomic sysctls and
debugs files etc. all over the place.

I didn't want to clutter the code unnecessarily.

> > +.B PR_SVE_VL_INHERIT
> > +Perform the change immediately.
> > +Subsequent
> > +.BR execve (2)
> > +calls will preserve the new vector length.
> > +.TP
> > +.B PR_SVE_SET_VL_ONEXEC
> > +Defer the change, so that it is performed at the next
> > +.BR execve (2)
> > +in the thread.
> > +Further
> > +.BR execve (2)
> > +calls will reset the vector length to the value configured in
> > +.IR /proc/sys/abi/sve_default_vector_length .
> > +.TP
> > +.B "PR_SVE_SET_VL_ONEXEC | PR_SVE_VL_INHERIT"
> > +Defer the change, so that it is performed at the next
> > +.BR execve (2)
> > +in the thread.
> > +Further
> > +.BR execve (2)
> > +calls will preserve the new vector length.
> > +.RE
> > +.IP
> > +In all cases,
> > +any previously pending deferred change is canceled.
> > +.IP
> > +The call fails with error
> > +.B EINVAL
> > +if SVE is not supported on the platform, if
> > +.I arg2
> > +is unrecognized or invalid, or the value in the bits of
> > +.I arg2
> > +corresponding to
> > +.B PR_SVE_VL_LEN_MASK
> > +is outside the range
> > +.BR SVE_VL_MIN .. SVE_VL_MAX
> > +or is not a multiple of 16.
> > +.IP
> > +On success,
> > +a nonnegative value is returned that describes the
> > +.I selected
> > +configuration,
> 
> If I'm reading the kernel code correctly, this is slightly weird, as
> the returned value may contain the PR_SVE_VL_INHERIT flag but it will
> never contain the PR_SVE_SET_VL_ONEXEC flag. Is that right?

Yes, which is an oddity.

I suppose we could fake that up actually by returning that flag if
sve_vl and sve_vl_onexec are different, but we don't currently do this.

> If so, maybe just say something like:
> 
>   On success, a nonnegative value is returned that describes the selected
>   configuration in the same way as PR_SVE_GET_VL.

How does that help?  PR_SVE_GET_VL doesn't fully clarify the oddity you
call out anyway.

Really, I preferred not to have people relying on this one way or the
other.  The only sensible reason for an _ONEXEC is because you've
committed to calling execve().  On such a path, queryng the vector
length isn't likely to be useful.

Maybe I was optimistic.

> > +which may differ from the current configuration if
> > +.B PR_SVE_SET_VL_ONEXEC
> > +was specified.
> > +The value is encoded in the same way as the return value of
> > +.BR PR_SVE_GET_VL .
> > +.IP
> > +The configuration (including any pending deferred change)
> > +is inherited across
> > +.BR fork (2)
> > +and
> > +.BR clone (2).
> > +.IP
> > +.B Warning:
> > +Because the compiler or run-time environment
> > +may be using SVE, using this call without the
> > +.B PR_SVE_SET_VL_ONEXEC
> > +flag may crash the calling process.
> > +The conditions for using it safely are complex and system-dependent.
> > +Don't use it unless you really know what you are doing.
> > +.IP
> > +For more information, see the kernel source file
> > +.I Documentation/arm64/sve.rst
> > +.\"commit b693d0b372afb39432e1c49ad7b3454855bc6bed
> > +(or
> > +.I Documentation/arm64/sve.txt
> > +before Linux 5.3).
> 
> I think I'd drop the kernel reference here, as it feels like we're saying
> "only do this if you know what you're doing" on one hand, but then "if you
> don't know what you're doing, see this other documentation" on the other.

Well, the docmuentation doesn't answer those questions either.

I could just swap the warning and the cross-reference, so that the
cross-reference doesn't seem to follow on from "knowing what you're
doing"?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
