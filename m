Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E148413BD20
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:11:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FsT9cOaGCLYUc0hOoF6NoCauAUbqnNK59gqgq5EvSXI=; b=OIUXT0MLqc6d6h
	blfebtWTsAptjd0SLS4j8jWWSfqY/ZzrMBBoCNWPEKfGInfIAruXSuMfH2vQOUZX71sw9MhekOBxM
	0BNM4W3Jxz6aXhzRYMdgyT95Qi7plWgZ5lq6EXqDcZT8+u+HYcehapSgOrQbEqEKZh0vIEgKAelll
	gLSL+RgTJnnwI1Q3Jqx/Wlge4pwSrcMIpkM4gcz892Eo/HzXSWUoN/i51PKWVSk0NxMboj2/QCre1
	xAdJz9e2Axe1/hcnEtOFCHs28F5yzagpLrNCbNnKQtyZ15d/e9v0CnwgeH3cCy1AegD9atY2JuzZc
	EzwNZ9zVJTX9EL56cqEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irfeF-0007Xb-RH; Wed, 15 Jan 2020 10:11:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irfe2-0007Ww-7w
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 10:11:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0DFB231B;
 Wed, 15 Jan 2020 02:11:25 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27EE83F6C4;
 Wed, 15 Jan 2020 02:11:24 -0800 (PST)
Date: Wed, 15 Jan 2020 10:11:08 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v10 2/3] arm64: random: Add data to pool from setup_arch()
Message-ID: <20200115101107.GA32549@lakrids.cambridge.arm.com>
References: <20200110122341.8445-1-broonie@kernel.org>
 <20200110122341.8445-3-broonie@kernel.org>
 <CAKv+Gu8He-SmqH3cTOCReOntFaOWvdKmEAfxxAy7QW6GzHd=Pg@mail.gmail.com>
 <20200115091615.GA21692@willie-the-truck>
 <CAKv+Gu9=L6hPSHbvf1qHa7N9hyJ7m7KSYJHBf1em8E0Db_Lghw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKv+Gu9=L6hPSHbvf1qHa7N9hyJ7m7KSYJHBf1em8E0Db_Lghw@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_021126_322096_949C506F 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Richard Henderson <richard.henderson@linaro.org>,
 Mark Brown <broonie@kernel.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 10:22:03AM +0100, Ard Biesheuvel wrote:
> On Wed, 15 Jan 2020 at 10:16, Will Deacon <will@kernel.org> wrote:
> >
> > On Wed, Jan 15, 2020 at 08:48:46AM +0100, Ard Biesheuvel wrote:
> > > On Fri, 10 Jan 2020 at 13:23, Mark Brown <broonie@kernel.org> wrote:
> > > >
> > > > Since the arm64 ARCH_RANDOM implementation is not available until
> > > > cpufeature has determined the system capabilities it can't be used by
> > > > the generic random code to initialize the entropy pool for early use.
> > > > Instead explicitly add some data to the pool from setup_arch() if the
> > > > boot CPU supports v8.5-RNG, this is the point recommended by the generic
> > > > code.
> > > >
> > > > Note that we are only adding data here, it will be mixed into the pool
> > > > but won't be credited as entropy. There are currently no suitable
> > > > interfaces for that at present - extending the random code to provide
> > > > those will be done as a future step. Providing data is better than not
> > > > doing so as it will still provide an increase in variation in the output
> > > > from the random code and there will be no impact on the rate at which
> > > > entropy is credited compared to what we have without this patch.
> > > >
> > >
> > > This is slightly unfortunate, as this way, we lose the ability to use
> > > random.trust_cpu=1 to get the entropy credited and initialize CRNG
> > > early.
> >
> > Agreed. Do you think we should wait for that support before merging the
> > series? Given that I don't know of any CPUs implementing this extension,
> > we can probably afford not to rush this in.
> 
> In a previous iteration, we did have a functional
> arch_get_random_seed_long() early on, which would solve this issue
> without even needing a patch like this.
> 
> Perhaps Mark (Rutland) can give a recap of his concerns at the time?

It meant that the common runtime path had code that was only ever meant
to run at boot time, and would also run on secondary CPUs until we
finalized the caps, so they'd behave inconsistently across boot and
hotplug paths. I was concerned that this was messy and would be painful
to reason about and debug.

My suggestion was that we either:

(a) Had the arch code explicitly inject the entropy in the primary setup
    path, as these patches do, or;

(b) Had a new callback (e.g. __early_arch_get_random_seed_long()) that
    the core random code only called during its initialization, separate
    to the runtime paths.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
