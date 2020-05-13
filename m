Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04021D2084
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 23:00:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMVu1egU9akDKQo/P0gN9PK2Rg1bVawNQa6Lg0Tm64o=; b=poIFozJgG1aOqm
	j9n3h9N4X0Yc8SJivZeEcQWLI3x5GEThJYpNHgSCD/Ic7HilVjk2mph1JxuaYbfSX8DsLppfvNk87
	L77ig3O9yHsCdWERuZrqc5UaTyrFNzJeoyAAt84aZgh6Mh/huq3+2C/uJc4Is1kd0bJA4Pt6DujZ4
	hYqIp5yaXCQRa0nE5L29lp5vlkriuwECBV4v8KuWMOO8hDrdslSH9sDiCJQDWgbseKyZ052O/os+d
	aHm5axalfCC8y7NTBP4GHYRNoKln+xCfJnU7fDDNk6JEJzQl+Bt57UAWAYDJciLhsrzEn6bQ4KEqf
	/uE34h2UwNcAqF5XxdfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYyUd-0007dV-An; Wed, 13 May 2020 21:00:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYyUT-0007cU-3K
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 21:00:34 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE2FB2054F;
 Wed, 13 May 2020 21:00:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589403628;
 bh=lXerR0C/bG8EZFwEAjwwHZFirVN5cCzzv7uwEH5gJHA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H+5bBpcseah4fVXN0BEDNhCesGeOv0zCMgIe5XmZu6g+qFwyXRrCZzSC8scCwn0u1
 5NXVnSb2qC5AIYSHTXDSYNfeMotmhZ26GAP9WX2/NI2pMLHHa9U260mw5SjXU1zGPp
 u33cRnUKlBteWIHeppSu0R65yphUuTTSKXdu5Oxg=
Date: Wed, 13 May 2020 22:00:22 +0100
From: Will Deacon <will@kernel.org>
To: Dave Martin <Dave.Martin@arm.com>
Subject: Re: [PATCH 14/14] prctl.2: Add PR_PAC_RESET_KEYS (arm64)
Message-ID: <20200513210022.GA28594@willie-the-truck>
References: <1589301419-24459-1-git-send-email-Dave.Martin@arm.com>
 <1589301419-24459-15-git-send-email-Dave.Martin@arm.com>
 <20200513072530.GA18196@willie-the-truck>
 <20200513143653.GQ21779@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200513143653.GQ21779@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_140033_160761_49B81D28 
X-CRM114-Status: GOOD (  18.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Catalin Marinas <catalin.marinas@arm.com>, mtk.manpages@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 03:36:54PM +0100, Dave Martin wrote:
> On Wed, May 13, 2020 at 08:25:31AM +0100, Will Deacon wrote:
> > On Tue, May 12, 2020 at 05:36:59PM +0100, Dave Martin wrote:
> > > +As a special case, if
> > > +.I arg2
> > > +is zero then all the keys are reset.
> > > +Since new keys could be added in future,
> > > +this is the recommended way to completely wipe the existing keys
> > > +when creating a new execution context.
> > 
> > I see what you're saying, but the keys are also reset on exec() iirc, so we
> > don't want to encourage people to issue the prctl() unnecessarily
> > immediately following an exec().
> 
> I thought of saying that, then pulled it out again.
> 
> How about:
> 
> "[...] a new execution context within an existing process.  Note that
> execve() always resets all the keys as part of its operation, without
> the need for this prctl() call.  PR_PAC_RESET_KEYS is intended for
> custom situations that do not involve execve(), such as creating a new
> managed run-time sandbox."
> 
> I deliberately don't say "thread" because that's probably libc's job.
> I'll need to check glibc does, though.  There may be issues with
> pthreads semantics that mean we can't reset the keys there.

That's better, but you may even be able to drop the "such as..." part, I
reckon.

> > > @@ -1920,6 +1960,27 @@ are not 0.
> > >  .B EINVAL
> > >  .I option
> > >  was
> > > +.B PR_PAC_RESET_KEYS
> > > +and
> > > +.I arg2
> > > +contains non-zero bits other than
> > > +.BR
> > > +.BR PR_PAC_APIAKEY ,
> > > +.BR PR_PAC_APIBKEY ,
> > > +.BR PR_PAC_APDAKEY ,
> > > +.B PR_PAC_APDBKEY
> > > +and
> > > +.BR PR_PAC_APGAKEY ;
> > > +or
> > > +.IR arg3 ,
> > > +.I arg4
> > > +and
> > > +.I arg5
> > > +were not all zero.
> > 
> > Do we care about other reasons for -EINVAL, such as the system not
> > supporting pointer authentication?
> 
> Again, I tried to catch that under the new "not supported by this
> platform" wording in the earlier patch.  Do you think that's sufficient,
> or do we need something else here?

As long as it's clear that the prctl() *can* fail and userspace can't just
ignore the return value, then I'm happy. If it's not obvious, then spelling
it out seems harmless to me.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
