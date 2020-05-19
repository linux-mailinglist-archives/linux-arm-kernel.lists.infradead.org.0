Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F7E91D97A0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 15:25:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFLPPR1/oC8bSfil/mohAmZvGeREym9VPynzpucbhR8=; b=kKIeP21SHgwTmn
	XCzn47lxcnsAGEb0Ht1AkCaQpLmlBKzb3QA2tu5Xc20e/Te5ZUjp7TM9CkYB/actWzV49O3yrVFua
	ODsuNi+StMdx1wki9+kdi1ageffYCkvmdC7y7GN60hyniC5CE6cumXQqdf8RFZPsXVjjRmtMMA8up
	Wpm1e5EPmyWd/c0sTTJX1OmY45UP0eF+kh0YlSZkD7kjPhnGALwMcuQ2LBT83DHkoS72c3Xt2dbIF
	w4n4Myxki9cldCaP8zNcU3bA3Bw0YFbbD7p7OtIkgeE7Scetg80mwuQ6gVDFTpLFac9GiiWFDf29o
	9yMh+A6J7QgTujrnqejw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2Fj-0006f2-0E; Tue, 19 May 2020 13:25:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2Fa-0006eQ-MZ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 13:25:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D47D530E;
 Tue, 19 May 2020 06:25:41 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EE0F23F52E;
 Tue, 19 May 2020 06:25:40 -0700 (PDT)
Date: Tue, 19 May 2020 14:25:38 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH 1/3] arm64: vdso: Don't prefix sigreturn trampoline with
 a BTI C instruction
Message-ID: <20200519132538.GE5031@arm.com>
References: <20200519121818.14511-1-will@kernel.org>
 <20200519121818.14511-2-will@kernel.org>
 <20200519123843.GJ4611@sirena.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200519123843.GJ4611@sirena.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_062542_783186_E9E3034E 
X-CRM114-Status: GOOD (  17.60  )
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
Cc: Tamas Zsoldos <tamas.zsoldos@arm.com>, kernel-team@android.com,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Daniel Kiss <daniel.kiss@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 19, 2020 at 01:38:43PM +0100, Mark Brown wrote:
> On Tue, May 19, 2020 at 01:18:16PM +0100, Will Deacon wrote:
> 
> > Fixes: 714a8d02ca4d ("arm64: asm: Override SYM_FUNC_START when building the kernel with BTI")
> 
> I'd say it's the annotation conversion not this, and also that the
> bikeshed would be most fetching in orange.
> 
> c91db232da484851 (arm64: vdso: Convert to modern assembler annotations)
> 
> > -SYM_FUNC_START(__kernel_rt_sigreturn)
> > +/*
> > + * GDB relies on being able to identify the sigreturn instruction sequence to
> > + * unwind from signal handlers. We cannot, therefore, use SYM_FUNC_START()
> > + * here, as it will emit a BTI C instruction and break the unwinder. Thankfully,
> > + * this function is only ever called from a RET and so omitting the landing pad
> > + * is perfectly fine.
> > + */
> > +SYM_START(__kernel_rt_sigreturn, SYM_L_GLOBAL, SYM_A_ALIGN)
> 
> Shouldn't this be a SYM_CODE_START()?  It's the same thing as above
> currently and we'll break an awful lot more if we change what it does in
> a way that affects the code, plus the use of CODE basically says the
> above - it's a "this is non-standard and we know exactly what we're
> doing, don't mess with it" annotation.  If not then it'd be good to
> cover that in the comment since otherwise this seems like it's asking
> for a cleanup, we shouldn't really have raw SYM_START() in code.
> 
> I guess we also ought to annotate the 32 bit sigreturns as CODE too,
> though it's academic there without BTI.

Relating to this, we explicitly don't support calls to
__kernel_rt_sigreturn.

Rather, the "ret lr" that jumps here is supposed to be authenticated via
pointer auth in the caller.


If BTI {nothing} allows this while disallowing all BR/BLR then we could
use that (I can't remember what BTI {nothing} is useful for, if anything).

Otherwise, it's less clear what we should have here.


Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
