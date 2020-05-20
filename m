Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3191DAF3D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 11:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qz5A75hrokB9ZewUBLAAiK9zaJd2qU8xMLS7nZuLOTU=; b=rhUC1un1hPv+95
	5GVGJ6KDrMEiMbE8ea9/XvfilkNHX9q/ru/mwc3It01sebEABE3Z1gXRUQA4JqWKebugT2z233aqF
	veeiQKrsP2OYGvpJ3h8I8Xcr99ESN4PJQkSUToBmBGYsEz7VLrv939JGrNbW70bBFC8kZMhvJEI/i
	G+NFYTWuvSiY8ahKqZXDnJRg/1fqF1zPX6DQjaGgKaVvRNhWGU7i907b3eSB6839uOqosvB7Rdjuz
	OjVx898p8ahw0FpGsWd7TsuMV3FRgakUFvkeiFNOhZKQhQJn/K19FRb27j4uKX2kNWY6pEcuiO+jW
	5rG5zVNbNl7nMmxqA7Iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbLLT-0003wX-LI; Wed, 20 May 2020 09:49:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLLF-0003vr-74
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 09:48:50 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35A1630E;
 Wed, 20 May 2020 02:48:48 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 507073F68F;
 Wed, 20 May 2020 02:48:47 -0700 (PDT)
Date: Wed, 20 May 2020 10:48:45 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200520094844.GL5031@arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519123843.GJ4611@sirena.org.uk>
 <20200519132538.GE5031@arm.com>
 <20200519143500.GK4611@sirena.org.uk>
 <20200519145514.GH5031@arm.com>
 <20200519154247.GN4611@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519154247.GN4611@sirena.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_024849_306867_8F7FBCA3 
X-CRM114-Status: GOOD (  16.79  )
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, kernel-team@android.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 04:42:47PM +0100, Mark Brown wrote:
> On Tue, May 19, 2020 at 03:55:15PM +0100, Dave Martin wrote:
> > On Tue, May 19, 2020 at 03:35:00PM +0100, Mark Brown wrote:
> > > On Tue, May 19, 2020 at 02:25:38PM +0100, Dave Martin wrote:
> 
> > > > Rather, the "ret lr" that jumps here is supposed to be authenticated via
> > > > pointer auth in the caller.
> 
> > > In which case there was an issue anyway...
> 
> > What issue?
> 
> None, I was confused.
> 
> > > > If BTI {nothing} allows this while disallowing all BR/BLR then we could
> > > > use that (I can't remember what BTI {nothing} is useful for, if anything).
> 
> > > > Otherwise, it's less clear what we should have here.
> 
> > > I can't remember anything that distinguishes it from an explicit NOP.
> 
> > I think it rejects everything other then fallthrough execution
> > (BTYPE==0, which includes RET).  I might have misunderstood something
> 
> Right, but since BTI only generates an exception when BTYPE != 0 I'm
> having trouble differentiating this from a NOP in practical terms.

The idea would be that if an attacker could fudge some function pointer
to point at __kernel_rt_sigreturn, attempting to do a call via that
pointer would still trigger a BTI trap.

This vulnerability isn't applicable to return addresses, because the
victim is supposed to sign those before storing them to (attackable)
memory, and authenticate between loading back from memory and doing the
RET.  So the victim can defend itself from that scenario.

> 
> > somewhere, but sort of feels like the right thing here.  I never put a
> > lot of effort into trying to understand BTI {nothing} though.  It
> > seemed a weird, possibly useless special case.
> 
> That was my read too.

And if the gdb doesn't tolerate modification of the exact insn sequence,
we can't do it anyway.  I'd really say that's a bug-like rogue heuristic
in gdb and "not our problem".  But people will moan about regressions
nonetheless.

I was that interested because of the potential use for BTI {nothing}.
I'd have to actually try it out to be 100% sure it works anyway.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
