Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11AD718F824
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 16:05:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=azUXzqLOzJdegFmnUhquOPTZ5r5yp8MTZBOIqWWzMCg=; b=RkrIsnLJ/tcCpp
	nxiF1h+bnsVwZHoJ1/21VSCP4x5QwjMLS7uUxg+3mRYrvmSkYNjp8TLlYERdvxnwVBj5upZy1QGkL
	E+KYrdPaRqU0IpJFUBDOXlkFIUQiYSZY6O8NyPmlohYYDSZvtrkjKAR5uXX3CihqPLGbM87wHMqBO
	FBkQbAJzwje7U4nHxMlW7qRycj/mL01Y0F86N+ZYlGhRVEexIepv1ZSnqhXE0jkjjUImsqd9+KyM1
	J3WAPrm4fiIP1LU/LdcIRwKVHFuUq0IarOlhA1yp9olyiw3kOcR04VWyWdozeTX7yjKGhxBn76GBh
	y7ZKZqCNGAGdKcJDDWDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGOdk-0004AA-9Q; Mon, 23 Mar 2020 15:05:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGOam-0002TZ-TV
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 15:02:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35DAA1FB;
 Mon, 23 Mar 2020 08:02:16 -0700 (PDT)
Received: from C02TD0UTHF1T.local (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 460B13F7C3;
 Mon, 23 Mar 2020 08:02:12 -0700 (PDT)
Date: Mon, 23 Mar 2020 15:02:09 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Catalin Marinas <catalin.marinas@arm.com>
Subject: Re: [PATCH v10 00/13] arm64: Branch Target Identification support
Message-ID: <20200323150209.GC3959@C02TD0UTHF1T.local>
References: <20200316165055.31179-1-broonie@kernel.org>
 <20200320173945.GC27072@arm.com> <20200323122143.GB4892@mbp>
 <20200323132412.GD4948@sirena.org.uk>
 <20200323135722.GA3959@C02TD0UTHF1T.local>
 <20200323143954.GC4892@mbp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200323143954.GC4892@mbp>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_080217_037662_E0F18117 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Paul Elliott <paul.elliott@arm.com>, Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrew Jones <drjones@redhat.com>, Amit Kachhap <amit.kachhap@arm.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 linux-arch@vger.kernel.org, Marc Zyngier <maz@kernel.org>,
 Eugene Syromiatnikov <esyr@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 "H . J . Lu " <hjl.tools@gmail.com>, Yu-cheng Yu <yu-cheng.yu@intel.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Jann Horn <jannh@google.com>, Richard Henderson <richard.henderson@linaro.org>,
 Kristina =?utf-8?Q?Mart=C5=A1enko?= <kristina.martsenko@arm.com>,
 Mark Brown <broonie@kernel.org>, Alexander Viro <viro@zeniv.linux.org.uk>,
 Thomas Gleixner <tglx@linutronix.de>, nd@arm.com,
 linux-arm-kernel@lists.infradead.org, Florian Weimer <fweimer@redhat.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Sudakshina Das <sudi.das@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 23, 2020 at 02:39:55PM +0000, Catalin Marinas wrote:
> On Mon, Mar 23, 2020 at 01:57:22PM +0000, Mark Rutland wrote:
> > On Mon, Mar 23, 2020 at 01:24:12PM +0000, Mark Brown wrote:
> > > On Mon, Mar 23, 2020 at 12:21:44PM +0000, Catalin Marinas wrote:
> > > > On Fri, Mar 20, 2020 at 05:39:46PM +0000, Szabolcs Nagy wrote:
> > > 
> > > > +int arch_elf_adjust_prot(int prot, const struct arch_elf_state *state,
> > > > +                        bool has_interp, bool is_interp)
> > > > +{
> > > > +       if (is_interp != has_interp)
> > > > +               return prot;
> > > > +
> > > > +       if (!(state->flags & ARM64_ELF_BTI))
> > > > +               return prot;
> > > > +
> > > > +       if (prot & PROT_EXEC)
> > > > +               prot |= PROT_BTI;
> > > > +
> > > > +       return prot;
> > > > +}

> > I think it would be best to document the current behaviour, as it's a
> > simple ABI that we can guarantee, and the dynamic linker will have to be
> > aware of BTI in order to do the right thing anyhow.
> 
> That's a valid point. If we have an old dynamic linker and the kernel
> enabled BTI automatically for the main executable, could things go wrong
> (e.g. does the PLT need to be BTI-aware)?

Also worth noting that an old dynamic linker won't have ARM64_ELF_BTI
set, so the kernel will not enable BTI for this.

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
