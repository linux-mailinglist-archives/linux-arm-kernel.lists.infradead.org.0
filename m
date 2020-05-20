Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75B11DB10A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 13:08:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UckmMcaCJrvvS5pQjRsCrWrK0PpXnccNI7yKVKbbx4E=; b=Dps5ecKZcn9fF5
	FFynOtG9oVoMyH0u9ux0DwNvS8RvuN4kgknElMWg9riIj14q3e/TVX/KRteZ+mubmFOSKEsBp+78R
	jnD/cWTgXwVD5uEs5h2osA2E8ToVctNaMHBCQ8JC9kO2OFcEny0L+NNOO6RHyXnZCh9Nldy12dsiT
	XdNMG5bzgo1JKQf1xfO4KRtKqOX5eiMVOD/rc//zyaXoZUonPeZWOpPYveI2UUHKuGTZIjHemBhPa
	OUylB2c3KzOcM+1PFI1Qa6imBH6lkAAQ7LoilvcS7ZH3ljvfZ1z1jcmHIHyogQ94rRXqZDpVi4mT5
	ofZ5J4ihlRXgSuHhYmzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMac-0008VL-BI; Wed, 20 May 2020 11:08:46 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMaS-0008Ur-Od
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 11:08:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 33D2531B;
 Wed, 20 May 2020 04:08:36 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E9B53F68F;
 Wed, 20 May 2020 04:08:35 -0700 (PDT)
Date: Wed, 20 May 2020 12:08:33 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200520110833.GP5031@arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519123843.GJ4611@sirena.org.uk>
 <20200519132538.GE5031@arm.com>
 <20200519143500.GK4611@sirena.org.uk>
 <20200519145514.GH5031@arm.com>
 <20200519154247.GN4611@sirena.org.uk>
 <20200520094844.GL5031@arm.com>
 <20200520104653.GA4823@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520104653.GA4823@sirena.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_040836_842924_C06FE27A 
X-CRM114-Status: GOOD (  16.47  )
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, Will Deacon <will@kernel.org>,
 kernel-team@android.com, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 11:46:53AM +0100, Mark Brown wrote:
> On Wed, May 20, 2020 at 10:48:45AM +0100, Dave Martin wrote:
> > On Tue, May 19, 2020 at 04:42:47PM +0100, Mark Brown wrote:
> > > On Tue, May 19, 2020 at 03:55:15PM +0100, Dave Martin wrote:
> 
> > > > > > If BTI {nothing} allows this while disallowing all BR/BLR then we could
> > > > > > use that (I can't remember what BTI {nothing} is useful for, if anything).
> 
> > > > > > Otherwise, it's less clear what we should have here.
> 
> > > > > I can't remember anything that distinguishes it from an explicit NOP.
> 
> > > > I think it rejects everything other then fallthrough execution
> > > > (BTYPE==0, which includes RET).  I might have misunderstood something
> 
> > > Right, but since BTI only generates an exception when BTYPE != 0 I'm
> > > having trouble differentiating this from a NOP in practical terms.
> 
> > The idea would be that if an attacker could fudge some function pointer
> > to point at __kernel_rt_sigreturn, attempting to do a call via that
> > pointer would still trigger a BTI trap.
> 
> We'll get a BTI exception no matter what instruction is here so long as
> it's not an appropriate BTI landing pad so unless we want to prevent one
> being generated there's no need to change the instruction sequence.  Or
> perhaps I'm not quite getting the scenario you're thinking of?

Duh, yes.  I guess we're good, then.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
