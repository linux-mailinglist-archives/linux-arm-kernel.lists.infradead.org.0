Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AD21F525A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8NGWhuNMPsklaZ3rmzTPuZBnTU3hKJpJpFdnpgd131k=; b=GRdus1sOMh/13/
	UpZmCJfzhT81Emy2db8I547LjzKfwNpa0kRmeuSajQnd3sNa1z+y3YeIVDiOVakIhtshvWkbBnXr3
	H4jcbJiLaflkjh8+DGErL8vXKlbi7ovFIAFMWC6cCTUWsfUBSEEa2KeanOLBT0J8h+B6KO9dVMnPD
	cNIlLYMbpRmOZaqbiy1am4ZJpyTFdnN+3M7fI+2H7Vxp4siv77bv/Tb2ULl/cFilecnt/UjNrbE9Q
	CLnziEmw5lrriUUyXvYyNvxs2lltg6VILR8S8Hu9GblEvAyHl4AAnRKfEVpxCQ+BeCWciRcrFrN8G
	Xh6Hzok4gVPBbgJMuXaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiy25-0001tO-4c; Wed, 10 Jun 2020 10:32:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiy1x-0001t3-8T
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:32:26 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6FE8220656;
 Wed, 10 Jun 2020 10:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591785144;
 bh=nzcMgvSYVSQG6LYhiykQ51gcCDtdIOzGzyxHLuoknuY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PHzbqu6umdAvaggxxISjlUMDbHo6Z0Z9HQuD87acFKVnvoWCEjXL+kvvc/LN6txF+
 Iv/+6aNc+d/l2HGBZjVA8VRJaQF4wUifPS5fZe0hia32prs7PPtQYV8lfaDLSPn2c3
 m6N765mptbSyW31qK4/VndvZKOF7XT8Q5n2HnTtI=
Date: Wed, 10 Jun 2020 11:32:19 +0100
From: Will Deacon <will@kernel.org>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Message-ID: <20200610103218.GA18350@willie-the-truck>
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
 <20200609203502.GA21214@gaia>
 <CAKwvOdnDeYQ-tbyW8=tcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg@mail.gmail.com>
 <20200610084755.GB17035@willie-the-truck>
 <20200610102916.GA26099@gaia>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610102916.GA26099@gaia>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_033225_336903_C3362692 
X-CRM114-Status: GOOD (  26.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Naohiro Aota <naohiro.aota@wdc.com>, Stephen Boyd <swboyd@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Robin Murphy <robin.murphy@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 10, 2020 at 11:29:17AM +0100, Catalin Marinas wrote:
> On Wed, Jun 10, 2020 at 09:47:55AM +0100, Will Deacon wrote:
> > On Tue, Jun 09, 2020 at 04:55:13PM -0700, Nick Desaulniers wrote:
> > > On Tue, Jun 9, 2020 at 1:35 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > > On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> > > > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > > > index 7f9d38444d6d..fe9e6b231cac 100644
> > > > > --- a/arch/arm64/Kconfig
> > > > > +++ b/arch/arm64/Kconfig
> > > > > @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
> > > > >         You must have a 32-bit build of glibc 2.22 or later for programs
> > > > >         to seamlessly take advantage of this.
> > > > >
> > > > > +config THUMB2_COMPAT_VDSO
> > > > > +     bool "Compile the vDSO in THUMB2 mode"
> > > > > +     depends on COMPAT_VDSO
> > > > > +     default y
> > > > > +     help
> > > > > +       Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> > > > > +       as -marm.
> > > >
> > > > Now that we understood the issue (I think), do we actually need this
> > > > choice? Why not going for -mthumb -fomit-frame-pointer always for the
> > > > compat vdso?
> > > 
> > > "Why should the compat vdso be configurable?" is a fair question.  I
> > > don't have an answer, but maybe some of the folks on thread do?
> > > 
> > > Our problem is more so "if the vdso is built as thumb, we need it also
> > > explicitly built with -fomit-frame-pointer."  Whether it should be
> > > built as thumb, arm, or configurable (and which default to pick in
> > > that case) are still an open questions.  Will asked for it to be
> > > configurable, so I sent a patch making it configurable.
> > 
> > It's configurable for 32-bit arm,
> 
> On 32-bit, the vdso mode is a side-effect of how we build the kernel
> image. I guess we haven't put much thought into whether we want to keep
> the vdso in Thumb-2 or ARM mode.

I think your guess is correct!

> > so I was just following that as it's
> > hardly a maintenance burden to support both. I suppose you could have
> > a toolchain that only supports one or the other, but it does seem a little
> > esoteric if you're building a kernel for an arm64 CPU.
> 
> We could leave the config option in if we ever need to change the compat
> vdso mode. But as not to confuse others with too many options, maybe
> add:
> 
> 	bool "Compile the vDSO in THUMB2 mode" if EXPERT
> 
> Either way:
> 
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>

Cheers, I'll add the dependency on EXPERT since I agree it's probably not
something most people would want to touch. I'll also change the text to say
"compat vDSO" not just vDSO.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
