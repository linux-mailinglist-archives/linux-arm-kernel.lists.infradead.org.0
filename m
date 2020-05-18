Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DACF1D7F37
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 18:52:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P575x9v/EyaMqvJl6E8AQBiLdAl+HpE25ilnwtFLY3A=; b=AlS1SArSA/T1ub
	YR4LflqzZQabLq+jBzOMUH8KuSbk0Qbo+K8ZwawdoqCXZtOXPbs9s9N2+08KmcvFanB8kLDyTsKDr
	hU0ZULx6NxGppvvAAiCn3bXJP0xsacI+mIW79xcheThdh5MyTQHFPloXMIO3fKfA421AjUlWFdeZ7
	/ul8eXvqiiaoiXQPloIyFJ9pTwjsVEHaLxP2oAq43eMGGKQCUBrDpDuGDjvqIPX/RZa0uVIlzi+Qv
	i0x3aJOLalL4zweOUXOJFZIlgLCXTIHkDVMQXJ5Euf6QLfS3+dvT17d2aGOOK5OOBNFIMRClNob8O
	pidJEKFtf6/HcljjqRJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaj0K-0000cK-Jm; Mon, 18 May 2020 16:52:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaj07-0000bn-Oh
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 16:52:29 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1A1D3106F;
 Mon, 18 May 2020 09:52:27 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7EE723F305;
 Mon, 18 May 2020 09:52:25 -0700 (PDT)
Date: Mon, 18 May 2020 17:52:23 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Szabolcs Nagy <szabolcs.nagy@arm.com>
Subject: Re: [PATCH v3 23/23] arm64: mte: Add Memory Tagging Extension
 documentation
Message-ID: <20200518165223.GB5031@arm.com>
References: <20200504164617.GK30377@arm.com> <20200511164018.GC19176@gaia>
 <20200513154845.GT21779@arm.com> <20200514113722.GA1907@gaia>
 <20200515103839.GA22393@gaia> <20200515111359.GC27289@arm.com>
 <20200515112740.GB22393@gaia> <20200515120433.GE27289@arm.com>
 <20200515121343.GC22393@gaia> <20200515125332.GF27289@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515125332.GF27289@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_095227_845194_DACF5685 
X-CRM114-Status: GOOD (  21.36  )
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
Cc: linux-arch@vger.kernel.org, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Andrey Konovalov <andreyknvl@google.com>, nd@arm.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 01:53:32PM +0100, Szabolcs Nagy wrote:
> The 05/15/2020 13:13, Catalin Marinas wrote:
> > On Fri, May 15, 2020 at 01:04:33PM +0100, Szabolcs Nagy wrote:
> > > The 05/15/2020 12:27, Catalin Marinas wrote:
> > > > Thanks Szabolcs. While we are at this, no-one so far asked for the
> > > > GCR_EL1.RRND to be exposed to user (and this implies RGSR_EL1.SEED).
> > > > Since RRND=1 guarantees a distribution "no worse" than that of RRND=0, I
> > > > thought there isn't much point in exposing this configuration to the
> > > > user. The only advantage of RRND=0 I see is that the kernel can change
> > > 
> > > it seems RRND=1 is the impl specific algorithm.
> > 
> > Yes, that's the implementation specific algorithm which shouldn't be
> > worse than the standard one.
> > 
> > > > the seed randomly but, with only 4 bits per tag, it really doesn't
> > > > matter much.
> > > > 
> > > > Anyway, mentioning it here in case anyone is surprised later about the
> > > > lack of RRND configurability.
> > > 
> > > i'm not familiar with how irg works.
> > 
> > It generates a random tag based on some algorithm.
> > 
> > > is the seed per process state that's set up at process startup in some
> > > way? or shared (and thus effectively irg is non-deterministic in
> > > userspace)?
> > 
> > The seed is only relevant if the standard algorithm is used (RRND=0).
> 
> i wanted to understand if we can get deterministic
> irg behaviour in user space (which may be useful
> for debugging to get reproducible tag failures).
> 
> i guess if no control is exposed that means non-
> deterministic irg. i think this is fine.

Hmmm, I guess this might eventually be wanted.  But it's probably OK not
to have it to begin with.

Things like CRIU restores won't be reproducible unless the seeds can be
saved/restored.

Doesn't seem essential from day 1 though.

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
