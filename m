Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 863538A200
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 17:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6zcWBf1FNHY2JFr+0gGaHQLPs4Cy9d9wwGNe4FKYdzw=; b=AK8vGf2YBLImYp
	DqbU+/Vtr2FWi6brQytkdncjznNOTiI9y+NqVNP/N1NxcsMaqK190QVvzLdJRBe2/x/02JEnmLQDi
	fhrfKdCrMZpJroQ9Z24VNMKN/jlSZMelxhDZjS0hi+zD3FB7JjanUXlyoPinVhxGYSMoynXoe1ajk
	UGcaWTNccxflKraOrmJkEnsVb9TUMD2+y3ah6zmWf03TUemROLDTLHnyvTgIwPmEuvidket3togna
	DiZE5jqPkMiH4w06C62SRrn/2tRz3QKg0lzn32C8tPES8/S+Y+at3rCQnVlE2t8KUVreK4Kpygrdh
	xoR16AzBExr8SMw3WmnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxByW-0001gJ-Lt; Mon, 12 Aug 2019 15:11:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hxByB-0001fi-O1
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 15:10:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 072B115A2;
 Mon, 12 Aug 2019 08:10:47 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A6CDC3F718;
 Mon, 12 Aug 2019 08:10:45 -0700 (PDT)
Date: Mon, 12 Aug 2019 16:10:43 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCHv3 1/6] arm/arm64: smccc/psci: add
 arm_smccc_1_1_get_conduit()
Message-ID: <20190812151043.GU10425@arm.com>
References: <20190809132245.43505-1-mark.rutland@arm.com>
 <20190809132245.43505-2-mark.rutland@arm.com>
 <20190812150326.GT10425@arm.com>
 <20190812150634.GB52896@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812150634.GB52896@lakrids.cambridge.arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_081047_866443_93BACFE1 
X-CRM114-Status: GOOD (  23.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: lorenzo.pieralisi@arm.com, suzuki.poulose@arm.com, marc.zyngier@arm.com,
 catalin.marinas@arm.com, will.deacon@arm.com, linux@armlinux.org.uk,
 james.morse@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 04:06:35PM +0100, Mark Rutland wrote:
> On Mon, Aug 12, 2019 at 04:03:29PM +0100, Dave Martin wrote:
> > On Fri, Aug 09, 2019 at 02:22:40PM +0100, Mark Rutland wrote:
> > > SMCCC callers are currently amassing a collection of enums for the SMCCC
> > > conduit, and are having to dig into the PSCI driver's internals in order
> > > to figure out what to do.
> > > 
> > > Let's clean this up, with common SMCCC_CONDUIT_* definitions, and an
> > > arm_smccc_1_1_get_conduit() helper that abstracts the PSCI driver's
> > > internal state.
> > > 
> > > We can kill off the PSCI_CONDUIT_* definitions once we've migrated users
> > > over to the new interface.
> > > 
> > > Signed-off-by: Mark Rutland <mark.rutland@arm.com>
> > > Acked-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> > > Acked-by: Will Deacon <will.deacon@arm.com>
> > > Cc: Catalin Marinas <catalin.marinas@arm.com>
> > > ---
> > >  drivers/firmware/psci/psci.c | 15 +++++++++++++++
> > >  include/linux/arm-smccc.h    | 16 ++++++++++++++++
> > >  2 files changed, 31 insertions(+)
> > > 
> > > diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
> > > index f82ccd39a913..5f31f1bea1af 100644
> > > --- a/drivers/firmware/psci/psci.c
> > > +++ b/drivers/firmware/psci/psci.c
> > > @@ -57,6 +57,21 @@ struct psci_operations psci_ops = {
> > >  	.smccc_version = SMCCC_VERSION_1_0,
> > >  };
> > >  
> > > +enum arm_smccc_conduit arm_smccc_1_1_get_conduit(void)
> > 
> > Do we expect this to be specific to SMCCC v1.1?
> 
> I intend it to be 1.1+

It seems overspecific, but I guess we can address this later if it
becomes an issue.  This is an internal API for now (at worst I might
envisage it being EXPORT_SYMBOL_GPL()).

> > > +{
> > > +	if (psci_ops.smccc_version < SMCCC_VERSION_1_1)
> > > +		return SMCCC_CONDUIT_NONE;
> > > +
> > > +	switch (psci_ops.conduit) {
> > > +	case PSCI_CONDUIT_SMC:
> > > +		return SMCCC_CONDUIT_SMC;
> > > +	case PSCI_CONDUIT_HVC:
> > > +		return SMCCC_CONDUIT_HVC;
> > > +	default:
> > > +		return SMCCC_CONDUIT_NONE;
> > > +	}
> > > +}
> > > +
> > >  typedef unsigned long (psci_fn)(unsigned long, unsigned long,
> > >  				unsigned long, unsigned long);
> > >  static psci_fn *invoke_psci_fn;
> > > diff --git a/include/linux/arm-smccc.h b/include/linux/arm-smccc.h
> > > index 080012a6f025..df01a8579034 100644
> > > --- a/include/linux/arm-smccc.h
> > > +++ b/include/linux/arm-smccc.h
> > > @@ -80,6 +80,22 @@
> > >  
> > >  #include <linux/linkage.h>
> > >  #include <linux/types.h>
> > > +
> > > +enum arm_smccc_conduit {
> > > +	SMCCC_CONDUIT_NONE,
> > 
> > If this is intended to have the value 0, is it worth making that
> > explicit?  I can never remember whether enums start at 1 or 0 by
> > default...
> 
> They start at 0. I intend that checks are done explicitly against an
> enum value, so I'm not sure that matters.

Not really.

It depends whether code like if (!arm_smccc_1_1_get_conduit()) { ... }
is considered sane or not.

If we don't think people should be doing this, omitting the explicit
value specifier seems fine.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
