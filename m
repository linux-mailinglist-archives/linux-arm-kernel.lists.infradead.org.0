Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B031F5247
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 12:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=anGcPS3cADZayNHzlJLc6+StbBZuj3JbhqQcwC4u1Pg=; b=Nns71/TaF/mwxM
	8ru3cctmq1Et+9V8D13yGgsWRld9speCcqyB3FS7fzQBG5cinb5P6q9HMswD/OayooEqKJE2uADaX
	AlkRnZPZDOBnTH15Uydb9w87S8DUOHm53isryd2tMkO6UT2xoe7TYZU06NX7QdgxXjVSdtH2g4QRS
	AGmALU36d4fD/hUc0VlPmCLzUL8lBB19wcdkWGgQLsWMz1Bubj8c3cpvenmzKO1ZFgebSK5s6jFO/
	lG/i1ocP7x50N6saJHS4q957pJlFN6+osiAVRYfRpM8TPJlKF62pnMwiU1hySv/GIds9nXO7+O4P/
	tKI6yifAuHqYh/dhQtgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jixzE-0006dK-PH; Wed, 10 Jun 2020 10:29:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jixyz-0006cM-TH
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 10:29:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 400191FB;
 Wed, 10 Jun 2020 03:29:21 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5FE5E3F73D;
 Wed, 10 Jun 2020 03:29:19 -0700 (PDT)
Date: Wed, 10 Jun 2020 11:29:17 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: vdso32: add CONFIG_THUMB2_COMPAT_VDSO
Message-ID: <20200610102916.GA26099@gaia>
References: <20200528072031.GA22156@willie-the-truck>
 <20200608205711.109418-1-ndesaulniers@google.com>
 <20200609203502.GA21214@gaia>
 <CAKwvOdnDeYQ-tbyW8=tcKcbbFxtDzqk8dCUSzbBYP1amb9a2hg@mail.gmail.com>
 <20200610084755.GB17035@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200610084755.GB17035@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_032921_985939_9BA3DF08 
X-CRM114-Status: GOOD (  23.96  )
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

On Wed, Jun 10, 2020 at 09:47:55AM +0100, Will Deacon wrote:
> On Tue, Jun 09, 2020 at 04:55:13PM -0700, Nick Desaulniers wrote:
> > On Tue, Jun 9, 2020 at 1:35 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > On Mon, Jun 08, 2020 at 01:57:08PM -0700, Nick Desaulniers wrote:
> > > > diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
> > > > index 7f9d38444d6d..fe9e6b231cac 100644
> > > > --- a/arch/arm64/Kconfig
> > > > +++ b/arch/arm64/Kconfig
> > > > @@ -1299,6 +1299,14 @@ config COMPAT_VDSO
> > > >         You must have a 32-bit build of glibc 2.22 or later for programs
> > > >         to seamlessly take advantage of this.
> > > >
> > > > +config THUMB2_COMPAT_VDSO
> > > > +     bool "Compile the vDSO in THUMB2 mode"
> > > > +     depends on COMPAT_VDSO
> > > > +     default y
> > > > +     help
> > > > +       Compile the compat vDSO with -mthumb -fomit-frame-pointer if y, otherwise
> > > > +       as -marm.
> > >
> > > Now that we understood the issue (I think), do we actually need this
> > > choice? Why not going for -mthumb -fomit-frame-pointer always for the
> > > compat vdso?
> > 
> > "Why should the compat vdso be configurable?" is a fair question.  I
> > don't have an answer, but maybe some of the folks on thread do?
> > 
> > Our problem is more so "if the vdso is built as thumb, we need it also
> > explicitly built with -fomit-frame-pointer."  Whether it should be
> > built as thumb, arm, or configurable (and which default to pick in
> > that case) are still an open questions.  Will asked for it to be
> > configurable, so I sent a patch making it configurable.
> 
> It's configurable for 32-bit arm,

On 32-bit, the vdso mode is a side-effect of how we build the kernel
image. I guess we haven't put much thought into whether we want to keep
the vdso in Thumb-2 or ARM mode.

> so I was just following that as it's
> hardly a maintenance burden to support both. I suppose you could have
> a toolchain that only supports one or the other, but it does seem a little
> esoteric if you're building a kernel for an arm64 CPU.

We could leave the config option in if we ever need to change the compat
vdso mode. But as not to confuse others with too many options, maybe
add:

	bool "Compile the vDSO in THUMB2 mode" if EXPERT

Either way:

Acked-by: Catalin Marinas <catalin.marinas@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
