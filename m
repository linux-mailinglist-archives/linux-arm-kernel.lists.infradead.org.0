Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3BFC3E28
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 19:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=08qP8fk5yvVx7VXiRnDfWq3Qe3cmBDD7DxpONq+qxmw=; b=fncRoSi26axoQi
	ZP8P5H4erQCy0fydAywgSPvCvYOwWG6/9anHyrNX4atrEpwU/xwJYfnxDNa4q6HcE2e8CEXNaLAux
	LsO/ZwKeWKd7s4HZPNI3O5TEhj+KkDpaCcMa4hJWBmte2wA4E6dilB7AikvvciX/u9xRUkXLsjnpf
	oyfBhZ+5EgtekZdUpsnMv1PdqusDMIkTYbIpwhmASV75xUV7RWf7tavwqssotks+LcwTh4Kh2Cxyb
	su9Tfv0kCOMJ1W9rsDwcL1VlGPiVYD0ztqHIiDFavxChkKSOXXc0yg9fjzqEgc+XEO7HDC1zY30/f
	hNqEe6WQT8/4Mz5gdRLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFLdH-0003P5-EO; Tue, 01 Oct 2019 17:08:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFLd0-0003Ea-BY
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 17:07:59 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9FB702086A;
 Tue,  1 Oct 2019 17:07:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569949678;
 bh=+7NPqfF0AL8UQWDtO4pLPhJnj5AiFgDnAWO65lSZPoM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KkZdnRG3bI+dVB+2pqePndAjg2iozbh+wyK1MCJEIt2uePTa35+wNQ1BxWCjrqNJe
 7QcoGWCoAKbO0rVskGi8AomqGXuJiFhUNkLH/e58UVpUktGYrP0Rey/SXcOJtSkGTJ
 PiSAaCZkM7j3B0+psd91J58E0kLKYWm/uvrVJrfA=
Date: Tue, 1 Oct 2019 18:07:53 +0100
From: Will Deacon <will@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Subject: Re: [PATCH v3 1/5] arm64: vdso32: Introduce COMPAT_CC_IS_GCC
Message-ID: <20191001170753.sqmfqt7zf33jgzns@willie-the-truck>
References: <20190926214342.34608-2-vincenzo.frascino@arm.com>
 <20191001131420.y3fsydlo7pg6ykfs@willie-the-truck>
 <20191001132731.GG41399@arrakis.emea.arm.com>
 <ed7d1465-2d7b-d57c-c1b1-215af1ba7a6f@arm.com>
 <20191001142038.ptwyfbesfrz3kkoz@willie-the-truck>
 <7558914c-fc2d-d05a-ccbe-76ef451670ae@arm.com>
 <20191001144353.5rn3bkcc6eyfclh7@willie-the-truck>
 <20191001153056.GO41399@arrakis.emea.arm.com>
 <20191001164657.l2wz3ghq6icm3lim@willie-the-truck>
 <CAKwvOd=+-PEQXOZBG6rprWdOzHfcQq9ojkGo+Q28vfC4AU=Hwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKwvOd=+-PEQXOZBG6rprWdOzHfcQq9ojkGo+Q28vfC4AU=Hwg@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_100758_415884_FE74B092 
X-CRM114-Status: GOOD (  17.87  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, LKML <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 01, 2019 at 09:59:43AM -0700, Nick Desaulniers wrote:
> On Tue, Oct 1, 2019 at 9:47 AM Will Deacon <will@kernel.org> wrote:
> >
> > On Tue, Oct 01, 2019 at 04:30:56PM +0100, Catalin Marinas wrote:
> > > In the long run, I wouldn't mandate CROSS_COMPILE_COMPAT to always be
> > > set for the compat vDSO since with clang we could use the same compiler
> > > binary for both native and compat (with different flags). That's once we
> > > cleaned up the headers.
> >
> > But we'll still need it even with clang so that the relevant triple can be
> > passed to the --target option. The top-level Makefile already does this:
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Makefile#n544
> 
> That's not pulling the cross compiler out of a *config* (as this patch
> is proposing); rather from an env var.

CROSS_COMPILE_COMPAT is the environment variable, right? If not, then I have
my terminology mixed up.

> > so I think we should do the same thing for the compat vdso as well, which
> > would allow us to remove this complexity by requiring that
> > CROSS_COMPILE_COMPAT identifies the cross-compiler to use in exactly the
> > same way as CROSS_COMPILE does.
> >
> > Am I missing something here?
> 
> I think the second paragraph you wrote shows we're all in agreement,
> but I suspect you may be conflating *how* the toplevel Makefile knows
> we're doing a cross compile.  It doesn't read a config, this patch
> would make it so a cross compiler is specified via config, Catalin
> asked "please no," I agree with Catalin (and I suspect you do too).

Yes, I'm saying let's have an environment variable only and drop the
CONFIG stuff completely. I think this means that the environment variable
must always be specified if you want the compat vDSO, but I don't see that
as a problem.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
