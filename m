Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 441A61D17DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 16:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7BqEJAZRCsWF98tp0OdVamUXgK2ZobEaZcwggeYfJ/0=; b=hVd1G7aWcdgqUo
	baslv3yN7aVkUNIsQA3eTp6H+/wmc3pYVW9cU4pzT0M/kzAncEnfh54kBPNxG7cPy6ECiwnNEsttg
	NsrMd2YAgGHDdRahdQ+N6mXP16uxkat7QoDkP/DOlT54/NwgmfzJ6TQbPKxmGupigp5Ep1xXHof1o
	i2L7gorQ3fFUe8NkkjhLrrMRHP5jAOtmMwGrEGWPlcGfe6yEI86Kj9ORrdMiSMHaF9CczyHvd/uLC
	Srk+d6KlUT1GijpO8QGAmAaYIs7iU/Mc1EkY5k9ilOOxU+qcq5M+Djb4awJitsLdIVS5HSvn/bnLJ
	0R6s4JbVjizUrfyd7jtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYseb-0004za-DB; Wed, 13 May 2020 14:46:37 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYseT-0004yT-1t
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 14:46:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2E6F531B;
 Wed, 13 May 2020 07:46:28 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7E41E3F305;
 Wed, 13 May 2020 07:46:27 -0700 (PDT)
Date: Wed, 13 May 2020 15:46:25 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] arm64: bti: Fix support for userspace only BTI
Message-ID: <20200513144624.GR21779@arm.com>
References: <20200512092155.56931-1-broonie@kernel.org>
 <20200512103908.GB3021@willie-the-truck>
 <20200512110502.GC5110@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200512110502.GC5110@sirena.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_074629_141772_EDCF4536 
X-CRM114-Status: GOOD (  16.15  )
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
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 12, 2020 at 12:05:02PM +0100, Mark Brown wrote:
> On Tue, May 12, 2020 at 11:39:09AM +0100, Will Deacon wrote:
> 
> > Might be worth a comment here in case somebody tries to "clean this up"
> > later on!
> 
> > > +#ifdef CONFIG_ARM64_BTI_KERNEL
> > >  #define PTE_MAYBE_GP		(system_supports_bti() ? PTE_GP : 0)
> > > +#else
> > > +#define PTE_MAYBE_GP		0
> > > +#endif
> 
> Sure.
> 
> > I also notice we have a funny check in the vdso code:
> 
> >   if (IS_ENABLED(CONFIG_ARM64_BTI_KERNEL) && system_supports_bti())
> 
> > but why do we care about CONFIG_ARM64_BTI_KERNEL for the vdso pages?
> 
> To enable BTI for the vDSO we need the vDSO to be built with BTI
> annotations.  Currently the CFLAGS are the same for the vDSO and the
> kernel, we could arrange to allow them to differ but since the most
> likely reason why the user has userspace but not kernel BTI is that
> their compiler isn't suitable it seemed like disproportionate effort
> for a most likely small audience.

The situation where the user is stuck on a binary vendor kernel built
using obsolete or wrongly configured tools doesn't sound that unlikely
to me.

When the vdso was all asm, we could easily have solved this by manually
annotating it ... I guess that's the price of progress, unless anyone
has a bright idea :/

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
