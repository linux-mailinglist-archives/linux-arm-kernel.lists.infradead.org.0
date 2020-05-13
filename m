Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087E91D17BB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:37:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4XoFAcvQYR+KDfFmtZxh6lu+CsCEBp8lMAQbduOrvE4=; b=ogIlKTP+NVD0iu
	1w5aAngX0gaTbrvMIO7OHUERjMqAAKxaAfAhxD7RGnLI7o4sIvXR7F7z+VkNJ1NTZ5oRq2f1Ls59Z
	Zl/JuQXc026ECoOsR5cxoH2RybGNmxWxPB9PlQkfIBepXqzxPWAvq8PVIb7xr2hU3p0c3gJmaNIcB
	p6daQyB3GQsJWmk/cpDDUYn9DdlnmIg74c2O6q5dfwPSVzCMVZtx5Kf4pOD0U6D3qaT48Ey1S2Py7
	XiA5YllHFmPPOZehbjm+Fy2hAV0tnXVlVWmeI+mp4G0H5hCX+uzQVU/lq86Mis1fQma0/Hz9CrhBZ
	ff4CKCS68Ji9gpy45Rtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYsVQ-0005yI-FS; Wed, 13 May 2020 14:37:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYsVJ-0005v0-3I
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:37:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A35431B;
 Wed, 13 May 2020 07:36:57 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0FF283F71E;
 Wed, 13 May 2020 07:36:55 -0700 (PDT)
Date: Wed, 13 May 2020 15:36:54 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 14/14] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Message-ID: <20200513143653.GQ21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-15-git-send-email-Dave.Martin@arm.com>
 <20200513072530.GA18196@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513072530.GA18196@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_073701_245263_87216D10 
X-CRM114-Status: GOOD (  19.82  )
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
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 08:25:31AM +0100, Will Deacon wrote:
> Hi Dave,
> 
> On Tue, May 12, 2020 at 05:36:59PM +0100, Dave Martin wrote:
> > diff --git a/man2/prctl.2 b/man2/prctl.2
> > index dd16227..7ea60e2 100644
> > --- a/man2/prctl.2
> > +++ b/man2/prctl.2
> > @@ -950,6 +950,46 @@ behavior.
> >  A value of 1 indicates
> >  .BR execve (2)
> >  will operate in the privilege-restricting mode described above.
> > +.\" prctl PR_PAC_RESET_KEYS
> > +.\" commit ba830885656414101b2f8ca88786524d4bb5e8c1
> > +.TP
> > +.BR PR_PAC_RESET_KEYS " (since Linux 5.0, only on arm64)"
> > +Securely reset the thread's pointer authentication keys
> > +to fresh random values generated by the kernel.
> > +.IP
> > +The set of keys to be reset is specified by
> > +.IR arg2 ,
> > +which must be a logical OR of zero or more of the following:
> > +.RS
> > +.TP
> > +.B PR_PAC_APIAKEY
> > +instruction authentication key A
> > +.TP
> > +.B PR_PAC_APIBKEY
> > +instruction authentication key B
> > +.TP
> > +.B PR_PAC_APDAKEY
> > +data authentication key A
> > +.TP
> > +.B PR_PAC_APDBKEY
> > +data authentication key B
> > +.TP
> > +.B PR_PAC_APGAKEY
> > +generic authentication \(lqA\(rq key.
> > +.IP
> > +(Yes folks, there really is no generic B key.)
> > +.RE
> > +.IP
> > +As a special case, if
> > +.I arg2
> > +is zero then all the keys are reset.
> > +Since new keys could be added in future,
> > +this is the recommended way to completely wipe the existing keys
> > +when creating a new execution context.
> 
> I see what you're saying, but the keys are also reset on exec() iirc, so we
> don't want to encourage people to issue the prctl() unnecessarily
> immediately following an exec().

I thought of saying that, then pulled it out again.

How about:

"[...] a new execution context within an existing process.  Note that
execve() always resets all the keys as part of its operation, without
the need for this prctl() call.  PR_PAC_RESET_KEYS is intended for
custom situations that do not involve execve(), such as creating a new
managed run-time sandbox."

I deliberately don't say "thread" because that's probably libc's job.
I'll need to check glibc does, though.  There may be issues with
pthreads semantics that mean we can't reset the keys there.

> 
> > +.IP
> > +The remaining arguments
> > +.IR arg3 ", " arg4 " and " arg5
> > +must all be zero.
> >  .\" prctl PR_SET_PDEATHSIG
> >  .TP
> >  .BR PR_SET_PDEATHSIG " (since Linux 2.1.57)"
> > @@ -1920,6 +1960,27 @@ are not 0.
> >  .B EINVAL
> >  .I option
> >  was
> > +.B PR_PAC_RESET_KEYS
> > +and
> > +.I arg2
> > +contains non-zero bits other than
> > +.BR
> > +.BR PR_PAC_APIAKEY ,
> > +.BR PR_PAC_APIBKEY ,
> > +.BR PR_PAC_APDAKEY ,
> > +.B PR_PAC_APDBKEY
> > +and
> > +.BR PR_PAC_APGAKEY ;
> > +or
> > +.IR arg3 ,
> > +.I arg4
> > +and
> > +.I arg5
> > +were not all zero.
> 
> Do we care about other reasons for -EINVAL, such as the system not
> supporting pointer authentication?

Again, I tried to catch that under the new "not supported by this
platform" wording in the earlier patch.  Do you think that's sufficient,
or do we need something else here?

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
