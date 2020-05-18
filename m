Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D230B1D7FF7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 19:21:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ckXJk1sTkBW5Qrrb1yfaE1wo18XrA6aEGXtvri7cDxw=; b=cPOMvmEqYdW3xo
	mdWRDoMCsBKtbRsAH40ovKp1wUckw4nF55hrWfHJFmsiWExgXJa85xqkd0Bjc2FVRvlBGayzZu+Ey
	Ad1FhbPdehhnTFGopjkUR6J40xnB/7NXgm9VxZ3QN3NTPXuBVVrRYnU53najEgEQz1qszK5Zu8YR/
	Fc2hBn/X87AJnCSMiPjQm+qPuRMy74MXnIeMkxXtvQj98BH7WrKAJuFXHKsTxFHscJVMWqcD5LYkN
	6Mw7dOvfeTE6OZ56nXKYm6lAdppKRWQdyQ4HjtpMdxHbLT7TbuAdiVkNnha07Yu53MV5ZvhvaL2SH
	E56z7J2VsbkK13r1AWGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jajRw-0006k5-3M; Mon, 18 May 2020 17:21:12 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jajRn-0006jV-R3
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 17:21:05 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DBD96106F;
 Mon, 18 May 2020 10:21:02 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5BD183F305;
 Mon, 18 May 2020 10:21:01 -0700 (PDT)
Date: Mon, 18 May 2020 18:20:55 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable
 MTE support
Message-ID: <20200518172054.GL9862@gaia>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
 <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
 <20200518113103.GA32394@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518113103.GA32394@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_102103_914360_CF30134D 
X-CRM114-Status: GOOD (  22.27  )
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
Cc: linux-arch@vger.kernel.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:31:03PM +0100, Will Deacon wrote:
> On Mon, May 18, 2020 at 12:26:30PM +0100, Vladimir Murzin wrote:
> > On 5/15/20 6:16 PM, Catalin Marinas wrote:
> > > For performance analysis it may be desirable to disable MTE altogether
> > > via an early param. Introduce arm64.mte_disable and, if true, filter out
> > > the sanitised ID_AA64PFR1_EL1.MTE field to avoid exposing the HWCAP to
> > > user.
> > > 
> > > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > > Cc: Will Deacon <will@kernel.org>
> > > ---
> > > 
> > > Notes:
> > >     New in v4.
> > > 
> > >  Documentation/admin-guide/kernel-parameters.txt |  4 ++++
> > >  arch/arm64/kernel/cpufeature.c                  | 11 +++++++++++
> > >  2 files changed, 15 insertions(+)
> > > 
> > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > index f2a93c8679e8..7436e7462b85 100644
> > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > @@ -373,6 +373,10 @@
> > >  	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
> > >  			Format: <io>,<irq>,<nodeID>
> > >  
> > > +	arm64.mte_disable=
> > > +			[ARM64] Disable Linux support for the Memory
> > > +			Tagging Extension (both user and in-kernel).
> > > +
> > 
> > Should it really to take parameter (on/off/true/false)? It may lead to expectation
> > that arm64.mte_disable=false should enable MT and, yes, double negatives make it
> > look ugly, so if we do need parameter, can it be arm64.mte=on/off/true/false?
> 
> I don't think "performance analysis" is a good justification for this
> parameter tbh. We don't tend to add these options for other architectural
> features, and I don't see why MTE is any different in this regard.

There is an expectation of performance impact with MTE enabled,
especially if it's running in synchronous mode. For the in-kernel MTE,
we could add a parameter which sets sync vs async at boot time rather
than a big disable knob. It won't affect user space however.

The other 'justification' is if your hardware has weird unexpected
behaviour but I'd like this handled via errata workarounds.

I'll let the people who asked for this to chip in ;). I agree with you
that we rarely add these (and I rejected a similar option a few weeks
ago on the AMU patchset).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
