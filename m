Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D46B3CED3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 16:34:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdidufGT/53lKVTMGH9lim3kO0j60c7ncevUXN0eRmY=; b=n0+aVL1Ni0rO/n
	RdPHRQMvx9MJx2BGWVu31UnGO6xDjEFg2QecOaeYrmmIUbKUhI77NejyfHy0L2SU4sNa0lG47TjbW
	PIW+XeHvcr17kQBZmvwogo8+dY3u0j2E4o3xX2nZV6I+Z6v1aSO//CrA49eeiTWt0c3F/nwJgybxP
	iIMi2qOWMhC+vlv3LL5xyjAg6zlF6BcDVxaZKSgB1Is2sBeovTB4GeRm/3kd0GbCeAKQ+V1ftH5dH
	3a/5ffQeB628s+xOX3FrnpaBhtMArO8uW+4GANYeXM6KXxLvhl+1Sl1+7/i2u556NRrncezUBiL7S
	uZnc6oEIDlYw/B1SKaYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hahqv-0008TI-E9; Tue, 11 Jun 2019 14:34:21 +0000
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hahqc-0008Ov-Bb; Tue, 11 Jun 2019 14:34:02 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id CF8A641149; Tue, 11 Jun 2019 11:23:56 -0300 (-03)
Date: Tue, 11 Jun 2019 11:23:56 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 1/7] perf: arm64: Compile tests unconditionally
Message-ID: <20190611142356.GA28689@kernel.org>
References: <20190611125315.18736-1-raphael.gault@arm.com>
 <20190611125315.18736-2-raphael.gault@arm.com>
 <20190611140907.GF29008@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611140907.GF29008@lakrids.cambridge.arm.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: peterz@infradead.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, Raphael Gault <raphael.gault@arm.com>,
 mingo@redhat.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Jun 11, 2019 at 03:09:07PM +0100, Mark Rutland escreveu:
> On Tue, Jun 11, 2019 at 01:53:09PM +0100, Raphael Gault wrote:
> > In order to subsequently add more tests for the arm64 architecture
> > we compile the tests target for arm64 systematically.
> 
> Given prior questions regarding this commit, it's probably worth
> spelling things out more explicitly, e.g.
> 
>   Currently we only build the arm64/tests directory if
>   CONFIG_DWARF_UNWIND is selected, which is fine as the only test we
>   have is arm64/tests/dwarf-unwind.o.
> 
>   So that we can add more tests to the test directory, let's
>   unconditionally build the directory, but conditionally build
>   dwarf-unwind.o depending on CONFIG_DWARF_UNWIND.
> 
>   There should be no functional change as a result of this patch.
> 
> > 
> > Signed-off-by: Raphael Gault <raphael.gault@arm.com>
> 
> Either way, the patch looks good to me:
> 
> Acked-by: Mark Rutland <mark.rutland@arm.com>

I'll update the comment, collect your Acked-by and apply the patch.

- Arnaldo
 
> Mark.
> 
> > ---
> >  tools/perf/arch/arm64/Build       | 2 +-
> >  tools/perf/arch/arm64/tests/Build | 2 +-
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/tools/perf/arch/arm64/Build b/tools/perf/arch/arm64/Build
> > index 36222e64bbf7..a7dd46a5b678 100644
> > --- a/tools/perf/arch/arm64/Build
> > +++ b/tools/perf/arch/arm64/Build
> > @@ -1,2 +1,2 @@
> >  perf-y += util/
> > -perf-$(CONFIG_DWARF_UNWIND) += tests/
> > +perf-y += tests/
> > diff --git a/tools/perf/arch/arm64/tests/Build b/tools/perf/arch/arm64/tests/Build
> > index 41707fea74b3..a61c06bdb757 100644
> > --- a/tools/perf/arch/arm64/tests/Build
> > +++ b/tools/perf/arch/arm64/tests/Build
> > @@ -1,4 +1,4 @@
> >  perf-y += regs_load.o
> > -perf-y += dwarf-unwind.o
> > +perf-$(CONFIG_DWARF_UNWIND) += dwarf-unwind.o
> >  
> >  perf-y += arch-tests.o
> > -- 
> > 2.17.1
> > 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
