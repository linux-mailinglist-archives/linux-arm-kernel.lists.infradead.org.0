Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 650EB1E3E23
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 11:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1dvqAAEVp/gqxQtb9d2SmyWExuW1D+8hWoP/n885yw=; b=Vk3+Oa4KesjXIt
	D6Fb3p1vXza2fO2t2BUyrgEkbGoTC9VWZ1BKGXthzNSrFIDjpKGcT3RJhC1M9TIW+cpis8/VD//N3
	h7hXG+L4g4KVlWNqjAXBXNBikWWLKpxw5F96aRHIKUgtJedMKKI42v2a+z86ZkKwz26CUb1G8gWj6
	n90zE0zZH50m/Qn9HoeIpJLR21cJ71PKgThIA9Y0veSffPvd/jyDfx8LVw08vcn8UkhWJl9UNgKUp
	1CCoMbX1yxEsIMb/h72KfuqfI+cFxMMhb/jrcxNiWkcTZyBYQrzvDLH9i2mtJDbqJ//jbDhKhPdms
	1SnR6LyOrF3uw+SWmOmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdsmV-0001jA-MI; Wed, 27 May 2020 09:55:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdsmF-0001R7-AB
 for linux-arm-kernel@lists.infradead.org; Wed, 27 May 2020 09:55:13 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0ECDD20B80;
 Wed, 27 May 2020 09:55:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590573311;
 bh=fus0z074K2+v5viezNh5aSTINzkfZlDW5gDLPTcN3rs=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=0E4osRJDeF5F9676q35dVh44ubGc76fAsV838gxtkC0dMpGT+R8yCAz744kJTI6vv
 +omcCl+atGm3jy4pKReRU4Gg0HdBFfoVtavYZR/imqGupWJKP+XANkpWp3pTqLJqtM
 N5eQfGrHl4rf9HtHLPDBh8apf64eXXFp2aLbdclc=
Date: Wed, 27 May 2020 10:55:05 +0100
From: Will Deacon <will@kernel.org>
To: Patrick Daly <pdaly@codeaurora.org>
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable
 MTE support
Message-ID: <20200527095504.GB11111@willie-the-truck>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
 <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
 <20200518113103.GA32394@willie-the-truck>
 <20200518172054.GL9862@gaia>
 <20200522055710.GA25791@pdaly-linux.qualcomm.com>
 <20200522103714.GA26492@gaia>
 <20200527021153.GA24439@pdaly-linux.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200527021153.GA24439@pdaly-linux.qualcomm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_025511_399165_C89621CF 
X-CRM114-Status: GOOD (  30.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 26, 2020 at 07:11:53PM -0700, Patrick Daly wrote:
> On Fri, May 22, 2020 at 11:37:15AM +0100, Catalin Marinas wrote:
> > On Thu, May 21, 2020 at 10:57:10PM -0700, Patrick Daly wrote:
> > > On Mon, May 18, 2020 at 06:20:55PM +0100, Catalin Marinas wrote:
> > > > On Mon, May 18, 2020 at 12:31:03PM +0100, Will Deacon wrote:
> > > > > On Mon, May 18, 2020 at 12:26:30PM +0100, Vladimir Murzin wrote:
> > > > > > On 5/15/20 6:16 PM, Catalin Marinas wrote:
> > > > > > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > > > > > index f2a93c8679e8..7436e7462b85 100644
> > > > > > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > > > > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > > > > > @@ -373,6 +373,10 @@
> > > > > > >  	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
> > > > > > >  			Format: <io>,<irq>,<nodeID>
> > > > > > >  
> > > > > > > +	arm64.mte_disable=
> > > > > > > +			[ARM64] Disable Linux support for the Memory
> > > > > > > +			Tagging Extension (both user and in-kernel).
> > > > > > > +
> > > > > > 
> > > > > > Should it really to take parameter (on/off/true/false)? It may lead to expectation
> > > > > > that arm64.mte_disable=false should enable MT and, yes, double negatives make it
> > > > > > look ugly, so if we do need parameter, can it be arm64.mte=on/off/true/false?
> > > > > 
> > > > > I don't think "performance analysis" is a good justification for this
> > > > > parameter tbh. We don't tend to add these options for other architectural
> > > > > features, and I don't see why MTE is any different in this regard.
> > > > 
> > > > There is an expectation of performance impact with MTE enabled,
> > > > especially if it's running in synchronous mode. For the in-kernel MTE,
> > > > we could add a parameter which sets sync vs async at boot time rather
> > > > than a big disable knob. It won't affect user space however.
> > > > 
> > > > The other 'justification' is if your hardware has weird unexpected
> > > > behaviour but I'd like this handled via errata workarounds.
> > > > 
> > > > I'll let the people who asked for this to chip in ;). I agree with you
> > > > that we rarely add these (and I rejected a similar option a few weeks
> > > > ago on the AMU patchset).
> > > 
> > > We've been looking into other ways this on/off behavior could be achieved.
> > 
> > The actual question here is what the on/off behaviour is needed for. We
> > can figure out the best mechanism for this once we know what we want to
> > achieve. My wild guess above was performance analysis but that can be
> > toggled by either kernel boot parameter or run-time sysctl (or just the
> > Kconfig option).
> > 
> > If it is about forcing user space not to use MTE, we may look into some
> > other sysctl controls (we already have one for the tagged address ABI).
> 
> We want to allow the end user to be able to easily "opt out" of MTE in favour
> of better power, perf and battery life.

Who is "the end user" in this case?

If MTE is bad enough for power, performance and battery life that we need a
kill switch, then perhaps we shouldn't enable it by default and the few
people that want to use it can build a kernel with it enabled. However, then
I don't really see what MTE buys you over the existing KASAN implementations.

I thought the general idea was that you could run in the (cheap) "async"
mode, and then re-run in the more expensive "sync" mode to further diagnose
any failures. That model seems to work well with these patches, since
reporting is disabled by default. Are you saying that there is a
significant penalty incurred even when reporting is not enabled?

Anyway, we don't offer global runtime/cmdline switches for the vast majority
of other architectural features -- instead, we choose a sensible default,
and I think we should do the same here.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
