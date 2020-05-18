Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53F31D7E02
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzm5DIdIfOYUdq0iTMHsJOOOggD9P63XCuWo3L0fw2w=; b=TRZnoDx3jTIAkH
	whnzDN3pDnQocZnt6PtaA9ftwCaiLiebDaRyFkxSmFl2Og19E8FqVO8lvYtUkhxnVKR9PLTHOo+1E
	6rV11tKidbFvJL9Io/T0zu3fWyIWyYfJp8PzOdMgwUlZbbvzIM+Rk5ZQ652V/WvfjXFuptaXc8G8o
	c6LDGnfbwKsjS62W40v71I9itvphyO/k4EJHeVd2sUpD+0YExD6+YShHuN3L/Fo2qJx3X9BvWgOag
	wyEtPUQIRorC7q/YyxebLNTYBptQhOvRd7tsSW5aKi8WHHx7ga9b/v3w6XQaQ6fErsMyVoGZvxVC1
	xRsWOBX4TcVbP7HP8Hpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaiMj-0003Fk-NX; Mon, 18 May 2020 16:11:45 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaiMX-00037d-W6
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:11:35 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8E0C7106F;
 Mon, 18 May 2020 09:11:31 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 74E9C3F52E;
 Mon, 18 May 2020 09:11:30 -0700 (PDT)
Date: Mon, 18 May 2020 17:11:28 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 14/14] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Message-ID: <20200518161128.GB21779@arm.com>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-15-git-send-email-Dave.Martin@arm.com>
 <20200513072530.GA18196@willie-the-truck>
 <20200513143653.GQ21779@arm.com>
 <20200513210022.GA28594@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513210022.GA28594@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_091134_117992_E6456E37 
X-CRM114-Status: GOOD (  23.94  )
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
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 10:00:22PM +0100, Will Deacon wrote:
> On Wed, May 13, 2020 at 03:36:54PM +0100, Dave Martin wrote:
> > On Wed, May 13, 2020 at 08:25:31AM +0100, Will Deacon wrote:
> > > On Tue, May 12, 2020 at 05:36:59PM +0100, Dave Martin wrote:
> > > > +As a special case, if
> > > > +.I arg2
> > > > +is zero then all the keys are reset.
> > > > +Since new keys could be added in future,
> > > > +this is the recommended way to completely wipe the existing keys
> > > > +when creating a new execution context.
> > > 
> > > I see what you're saying, but the keys are also reset on exec() iirc, so we
> > > don't want to encourage people to issue the prctl() unnecessarily
> > > immediately following an exec().
> > 
> > I thought of saying that, then pulled it out again.
> > 
> > How about:
> > 
> > "[...] a new execution context within an existing process.  Note that
> > execve() always resets all the keys as part of its operation, without
> > the need for this prctl() call.  PR_PAC_RESET_KEYS is intended for
> > custom situations that do not involve execve(), such as creating a new
> > managed run-time sandbox."
> > 
> > I deliberately don't say "thread" because that's probably libc's job.
> > I'll need to check glibc does, though.  There may be issues with
> > pthreads semantics that mean we can't reset the keys there.
> 
> That's better, but you may even be able to drop the "such as..." part, I
> reckon.
> 
> > > > @@ -1920,6 +1960,27 @@ are not 0.
> > > >  .B EINVAL
> > > >  .I option
> > > >  was
> > > > +.B PR_PAC_RESET_KEYS
> > > > +and
> > > > +.I arg2
> > > > +contains non-zero bits other than
> > > > +.BR
> > > > +.BR PR_PAC_APIAKEY ,
> > > > +.BR PR_PAC_APIBKEY ,
> > > > +.BR PR_PAC_APDAKEY ,
> > > > +.B PR_PAC_APDBKEY
> > > > +and
> > > > +.BR PR_PAC_APGAKEY ;
> > > > +or
> > > > +.IR arg3 ,
> > > > +.I arg4
> > > > +and
> > > > +.I arg5
> > > > +were not all zero.
> > > 
> > > Do we care about other reasons for -EINVAL, such as the system not
> > > supporting pointer authentication?
> > 
> > Again, I tried to catch that under the new "not supported by this
> > platform" wording in the earlier patch.  Do you think that's sufficient,
> > or do we need something else here?
> 
> As long as it's clear that the prctl() *can* fail and userspace can't just
> ignore the return value, then I'm happy. If it's not obvious, then spelling
> it out seems harmless to me.

OK, I'll try to figure out a way to capture this.

Since prctl is really the wild west when it comes to error codes I was
presuming that's it's best to say nothing and rely on people's common sense.
But I guess this isn't great either.


How about summarising the key error cases here, and just putting a cross-
reference in the ERRORS section rather than trying to describe them
there?  I really don't want to duplicate this stuff -- that will get
unmaintanable, fast (if it hasn't already).

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
