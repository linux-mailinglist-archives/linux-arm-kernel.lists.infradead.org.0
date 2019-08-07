Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1618516E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 18:50:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5fV8q1cJ1mrIcLUjuMSeIpbyRwUljVLflYgta0th0U=; b=BoNYFbqVCACNcO
	Ft7HNy9DvyxaI8EjfzieEyr2ADjm8qTXnZxel8kG8T1MDrFhoTkKsCpTa10Hg3CfOVIGWAxmVeXpu
	LczqsLvdBkybUwLIkv2FjO3KQWl/h4o0H8x8wvuAAXhAsbMzZXlaqA+79MIi1VmC58TO7zVQ2hcl0
	ueSj9Z781q2iThHC+TOJdx/0cp4QgXlKNrIDN1BBxSqlH6xypQjF3HLjvP7rRkxoNSQB/AD3YJJMH
	vAShxbFdk6hIe9Oi3rX9wRGu1UcDChs+D3Z3UMEQYnqtXoo6zKZckwyIpOOur01EqsSLB0+Gwr0Cm
	nsO2JNjc4w0yU9SiHpJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvP8m-00026N-9k; Wed, 07 Aug 2019 16:50:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvP8Z-00023N-VA
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 16:50:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7600C344;
 Wed,  7 Aug 2019 09:50:06 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 711623F694;
 Wed,  7 Aug 2019 09:50:04 -0700 (PDT)
Date: Wed, 7 Aug 2019 17:49:59 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190807164958.GA44765@lakrids.cambridge.arm.com>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
 <20190807123807.GD54191@lakrids.cambridge.arm.com>
 <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJs_Fx5xU2-dn3iOVqWTzAjpTaQ8BBNP_Gn_iMc-eJpOX+iXoQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_095008_097364_00886EB6 
X-CRM114-Status: GOOD (  28.61  )
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
Cc: Sean Paul <sean@poorly.run>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
 Rob Clark <robdclark@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 09:15:54AM -0700, Rob Clark wrote:
> On Wed, Aug 7, 2019 at 5:38 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Tue, Aug 06, 2019 at 09:31:55AM -0700, Rob Clark wrote:
> > > On Tue, Aug 6, 2019 at 7:35 AM Mark Rutland <mark.rutland@arm.com> wrote:
> > > >
> > > > On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > > > > On Tue, Aug 6, 2019 at 1:48 AM Christoph Hellwig <hch@lst.de> wrote:
> > > > > >
> > > > > > This goes in the wrong direction.  drm_cflush_* are a bad API we need to
> > > > > > get rid of, not add use of it.  The reason for that is two-fold:
> > > > > >
> > > > > >  a) it doesn't address how cache maintaince actually works in most
> > > > > >     platforms.  When talking about a cache we three fundamental operations:
> > > > > >
> > > > > >         1) write back - this writes the content of the cache back to the
> > > > > >            backing memory
> > > > > >         2) invalidate - this remove the content of the cache
> > > > > >         3) write back + invalidate - do both of the above
> > > > >
> > > > > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > > > > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > > > > out to memory later, and so that I don't get a cache hit on
> > > > > uncached/wc mmap'ing.
> > > >
> > > > Is there a cacheable alias lying around (e.g. the linear map), or are
> > > > these addresses only mapped uncached/wc?
> > > >
> > > > If there's a cacheable alias, performing an invalidate isn't sufficient,
> > > > since a CPU can allocate a new (clean) entry at any point in time (e.g.
> > > > as a result of prefetching or arbitrary speculation).
> > >
> > > I *believe* that there are not alias mappings (that I don't control
> > > myself) for pages coming from
> > > shmem_file_setup()/shmem_read_mapping_page()..
> >
> > AFAICT, that's regular anonymous memory, so there will be a cacheable
> > alias in the linear/direct map.
> 
> tbh, I'm not 100% sure whether there is a cacheable alias, or whether
> any potential linear map is torn down.

I'm fairly confident that the linear/direct map cacheable alias is not
torn down when pages are allocated. The gneeric page allocation code
doesn't do so, and I see nothing the shmem code to do so.

For arm64, we can tear down portions of the linear map, but that has to
be done explicitly, and this is only possible when using rodata_full. If
not using rodata_full, it is not possible to dynamically tear down the
cacheable alias.

> My understanding is that a cacheable alias is "ok", with some
> caveats.. ie. that the cacheable alias is not accessed.  

Unfortunately, that is not true. You'll often get away with it in
practice, but that's a matter of probability rather than a guarantee.

You  cannot prevent a CPU from accessing a VA arbitrarily (e.g. as the
result of wild speculation). The ARM ARM (ARM DDI 0487E.a) points this
out explicitly:

| Entries for addresses that are Normal Cacheable can be allocated to
| the cache at any time, and so the cache invalidate instruction cannot
| ensure that the address is not present in a cache.

... along with:

| Caches introduce a number of potential problems, mainly because:
|
| * Memory accesses can occur at times other than when the programmer
|   would expect them.

;)

> I'm not entirely sure about pre-fetch from access to adjacent pages.
> We have been using shmem as a source for pages since the beginning,
> and I haven't seen it cause any problems in the last 6 years.  (This
> is limited to armv7 and armv8, I'm not really sure what would happen
> on armv6, but that is a combo I don't have to care about.)

Over time, CPUs get more aggressive w.r.t. prefetching and speculation,
so having not seen such issues in the past does not imply we won't in
future.

Anecdotally, we had an issue a few years ago that we were only able to
reproduce under heavy stress testing. A CPU would make speculative
instruction fetches from a read-destructive MMIO register, despite the
PC never going near the corresponding VA, and despite that code having
(apparently) caused no issue for years before that.

See commit:

  b6ccb9803e90c16b ("ARM: 7954/1: mm: remove remaining domain support from ARMv6")

... which unfortunately lacks the full war story.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
