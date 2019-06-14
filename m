Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E616945A8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 12:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VuVK0CBnbtoiRkvoqsUmd/ARvZ6xjaBBIVAua2COTZE=; b=IcoOrt43KH+NGG
	Bc2KsTsPKB6oKwBF+vrL7DsQiQkofXKPbUKLFI+RRLKWHYf4WVgMnWf2v0ELt9BEZewVBuTinexuP
	u+fNR7oMyza2QSxSVJtexmrJx2DZEexgLicl5tynHlqRDDMhTbzFCedvWe4MmOFnA2Bk4G/GvlDL2
	m9wY+ngdtZekXVzvVR1xJdi98PEv5FpuMfHrXrP8LJ+kmePBtxnovB1zjD+uh+Fd71Yg+zx89VPxm
	bpViD9Fp6jwQm6B8ob7//JSOlsKX9jqIEXrlkMndJRateLrXYstgXeaSn+SNd0KWwKu7noWKoFIk4
	0RT4F/puu6pLIrJlFZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbjbv-0005Mc-M3; Fri, 14 Jun 2019 10:39:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hbjbh-0005MI-VW
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 10:38:55 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 473812B;
 Fri, 14 Jun 2019 03:38:53 -0700 (PDT)
Received: from fuggles.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F2CF63F246;
 Fri, 14 Jun 2019 03:40:35 -0700 (PDT)
Date: Fri, 14 Jun 2019 11:38:50 +0100
From: Will Deacon <will.deacon@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [RFC] Disable lockref on arm64
Message-ID: <20190614103850.GG10659@fuggles.cambridge.arm.com>
References: <20190506061100.GA8465@dc5-eodlnx05.marvell.com>
 <20190506181039.GA2875@brain-police>
 <20190518042424.GA28517@dc5-eodlnx05.marvell.com>
 <CAKv+Gu9U9z3iAuz4V1c5zTHuz1As8FSNGY-TJon4OLErB8ts8Q@mail.gmail.com>
 <20190522160417.GF7876@fuggles.cambridge.arm.com>
 <20190612040933.GA18848@dc5-eodlnx05.marvell.com>
 <20190612093151.GA11554@brain-police>
 <20190614070914.GA21961@dc5-eodlnx05.marvell.com>
 <20190614095846.GC10506@fuggles.cambridge.arm.com>
 <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu_Kdq=UPijjA84FpmO=ZsdEO9EyyF7GeOQ+WmfqtO_hMg@mail.gmail.com>
User-Agent: Mutt/1.11.1+86 (6f28e57d73f2) ()
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_033854_106965_4B40499E 
X-CRM114-Status: GOOD (  27.27  )
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
Cc: Kees Cook <keescook@chromium.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Jan Glauber <jglauber@marvell.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ard,

On Fri, Jun 14, 2019 at 12:24:54PM +0200, Ard Biesheuvel wrote:
> On Fri, 14 Jun 2019 at 11:58, Will Deacon <will.deacon@arm.com> wrote:
> > On Fri, Jun 14, 2019 at 07:09:26AM +0000, Jayachandran Chandrasekharan Nair wrote:
> > > x86 added a arch-specific fast refcount implementation - and the commit
> > > specifically notes that it is faster than cmpxchg based code[1].
> > >
> > > There seems to be an ongoing effort to move over more and more subsystems
> > > from atomic_t to refcount_t(e.g.[2]), specifically because refcount_t on
> > > x86 is fast enough and you get some error checking atomic_t that does not
> > > have.
> >
> > Correct, but there are also some cases that are only caught by
> > REFCOUNT_FULL.
> >
> Yes, but do note that my arm64 implementation catches
> increment-from-zero as well.

Ok, so it's just the silly racy cases that are problematic?

> > > Do you think Ard's patch needs changes before it can be considered? I
> > > can take a look at that.
> >
> > I would like to see how it performs if we keep the checking inline, yes.
> > I suspect Ard could spin this in short order.
> 
> Moving the post checks before the stores you mean? That shouldn't be
> too difficult, I suppose, but it will certainly cost performance.

That's what I'd like to assess, since the major complaint seems to be the
use of cmpxchg() as opposed to inline branching.

> > > > Whatever we do, I prefer to keep REFCOUNT_FULL the default option for arm64,
> > > > so if we can't keep the semantics when we remove the cmpxchg, you'll need to
> > > > opt into this at config time.
> > >
> > > Only arm64 and arm selects REFCOUNT_FULL in the default config. So please
> > > reconsider this! This is going to slow down arm64 vs. other archs and it
> > > will become worse when more code adopts refcount_t.
> >
> > Maybe, but faced with the choice between your micro-benchmark results and
> > security-by-default for people using the arm64 Linux kernel, I really think
> > that's a no-brainer. I'm well aware that not everybody agrees with me on
> > that.
> 
> I think the question whether the benchmark is valid is justified, but
> otoh, we are obsessed with hackbench which is not that representative
> of a real workload either. It would be better to discuss these changes
> in the context of known real-world use cases where refcounts are a
> true bottleneck.

I wasn't calling into question the validity of the benchmark (I really have
no clue about that), but rather that you can't have your cake and eat it.
Faced with the choice, I'd err on the security side because it's far easier
to explain to somebody that the default is full mitigation at a cost than it
is to explain why a partial mitigation is acceptable (and in the end it's
often subjective because people have different thresholds).

> Also, I'd like to have Kees's view on the gap between REFCOUNT_FULL
> and the fast version on arm64. I'm not convinced the cases we are not
> covering are such a big deal.

Fair enough, but if the conclusion is that it's not a big deal then we
should just remove REFCOUNT_FULL altogether, because it's the choice that
is the problem here.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
