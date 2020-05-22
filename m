Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF241DE495
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 May 2020 12:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTxrdha1UPtvviL4F+NzFjNegA5EEK/laBxqLBEIkzw=; b=Fghd8mfQCVtloM
	MZzJKol4M+r7AxNg83tfo+nsAc5r+y1OiMhfnlubyd/LoUADmwkuKxjQdEZcwHOXKSh9Ysflnz4fN
	6Yf8gdglgG2vJ62SIOYcI6CPHr7nTj+6bVTE1p0NOXeeY53kEqwSCY3QjL6cPoX45LqqfzuRXLl4R
	BJ9LFR7q3orcoRdD1jYtvlLftNYu9nWtRNIIOZVwE/HNnT5WcHGSUZZydlTDFVq5Wtn+WvR5LzSdI
	Mavzs5OxWq36iZIim25xllub0HjIntEwF6eOKH8r/EWkJKx/2TMQ4bcnMjAoukMIAwuX3Ck74pF7U
	EyHdgHYrAuvQOZDbj7pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc53V-0004Hu-Kn; Fri, 22 May 2020 10:37:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc53I-0004Eu-Ai
 for linux-arm-kernel@lists.infradead.org; Fri, 22 May 2020 10:37:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 6E358D6E;
 Fri, 22 May 2020 03:37:19 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C2FC23F305;
 Fri, 22 May 2020 03:37:17 -0700 (PDT)
Date: Fri, 22 May 2020 11:37:15 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Patrick Daly <pdaly@codeaurora.org>
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable
 MTE support
Message-ID: <20200522103714.GA26492@gaia>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
 <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
 <20200518113103.GA32394@willie-the-truck>
 <20200518172054.GL9862@gaia>
 <20200522055710.GA25791@pdaly-linux.qualcomm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200522055710.GA25791@pdaly-linux.qualcomm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_033720_467860_A6FC4A93 
X-CRM114-Status: GOOD (  28.67  )
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
Cc: linux-arch@vger.kernel.org, Vladimir Murzin <vladimir.murzin@arm.com>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Peter Collingbourne <pcc@google.com>,
 linux-mm@kvack.org, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Will Deacon <will@kernel.org>, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Patrick,

On Thu, May 21, 2020 at 10:57:10PM -0700, Patrick Daly wrote:
> On Mon, May 18, 2020 at 06:20:55PM +0100, Catalin Marinas wrote:
> > On Mon, May 18, 2020 at 12:31:03PM +0100, Will Deacon wrote:
> > > On Mon, May 18, 2020 at 12:26:30PM +0100, Vladimir Murzin wrote:
> > > > On 5/15/20 6:16 PM, Catalin Marinas wrote:
> > > > > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > > > > index f2a93c8679e8..7436e7462b85 100644
> > > > > --- a/Documentation/admin-guide/kernel-parameters.txt
> > > > > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > > > > @@ -373,6 +373,10 @@
> > > > >  	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
> > > > >  			Format: <io>,<irq>,<nodeID>
> > > > >  
> > > > > +	arm64.mte_disable=
> > > > > +			[ARM64] Disable Linux support for the Memory
> > > > > +			Tagging Extension (both user and in-kernel).
> > > > > +
> > > > 
> > > > Should it really to take parameter (on/off/true/false)? It may lead to expectation
> > > > that arm64.mte_disable=false should enable MT and, yes, double negatives make it
> > > > look ugly, so if we do need parameter, can it be arm64.mte=on/off/true/false?
> > > 
> > > I don't think "performance analysis" is a good justification for this
> > > parameter tbh. We don't tend to add these options for other architectural
> > > features, and I don't see why MTE is any different in this regard.
> > 
> > There is an expectation of performance impact with MTE enabled,
> > especially if it's running in synchronous mode. For the in-kernel MTE,
> > we could add a parameter which sets sync vs async at boot time rather
> > than a big disable knob. It won't affect user space however.
> > 
> > The other 'justification' is if your hardware has weird unexpected
> > behaviour but I'd like this handled via errata workarounds.
> > 
> > I'll let the people who asked for this to chip in ;). I agree with you
> > that we rarely add these (and I rejected a similar option a few weeks
> > ago on the AMU patchset).
> 
> We've been looking into other ways this on/off behavior could be achieved.

The actual question here is what the on/off behaviour is needed for. We
can figure out the best mechanism for this once we know what we want to
achieve. My wild guess above was performance analysis but that can be
toggled by either kernel boot parameter or run-time sysctl (or just the
Kconfig option).

If it is about forcing user space not to use MTE, we may look into some
other sysctl controls (we already have one for the tagged address ABI).

If it is for working around hardware not supporting MTE (i.e. no
allocation tag storage), this should be handled differently, not by
kernel parameter.

> The "arm,armv8.5-memtag" DT flag already provides what we want - meaning
> that this flag could be removed if the system did not support MTE.
> 
> I did see your remark on "arm64: mte: Check the DT memory nodes for MTE support"
> questioning whether it was the right approach - is this still the case?

My plan is to remove the DT patch altogether _if_ I get confirmation
from the CPU designers. The idea is that if ID_AA64PFR1_EL1.MTE > 1,
Linux can assume system-wide MTE support. If an MTE-capable CPU is
deployed in an SoC without tag storage, a tie-off should change the ID
field to 1 (or 0). If we do find hardware with an ID field > 1 and no
tag storage, it will be handled as an SoC erratum in the kernel,
probably tied to the new SoC Id advertised by firmware (Sudeep had some
patches recently).

Thanks.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
