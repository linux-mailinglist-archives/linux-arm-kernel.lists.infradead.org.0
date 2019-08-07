Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B1E584BC2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 14:38:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tIpi3v/5o4X8kOzDQmk6T9DgGTk4SxvOia+UUcVzpu0=; b=kvd0yrCrNP/yd9
	8WJX5h5M3hxkK/x4qZsNHBRA6pz4pv0y+Oc3RdqaMWib2zbUbGNDTztHRshI0pGU/7QLR4hZrIp/7
	/p3IjANQzEp5ioq23OHA6z7TXazv9+IwaQMlLhHMEytQgcqGfCDwUMSuE8obsimggkye/s8I4k0Nk
	q/v4ji/J+buhHZErlhK1rYMW1peyDfpgqPH0/A3C0V2EjNNAMUA1Hg9NwI0kJ2HiNdN8Z2U4b408B
	YkOrdx9ZFHdGwGTeF/fz3gYGXoXQqhjOp7tBHLy5lzxonMIaqs6qCTrCrzDkbhD6+Cs985FkQNc1V
	jX29cJdW5piIdnSrVCcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLD2-0000Gc-Fz; Wed, 07 Aug 2019 12:38:28 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLCp-0000Fx-La
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 12:38:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3757F28;
 Wed,  7 Aug 2019 05:38:12 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 358E03F575;
 Wed,  7 Aug 2019 05:38:10 -0700 (PDT)
Date: Wed, 7 Aug 2019 13:38:08 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Rob Clark <robdclark@chromium.org>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
Message-ID: <20190807123807.GD54191@lakrids.cambridge.arm.com>
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
 <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_053815_752487_0D124768 
X-CRM114-Status: GOOD (  20.45  )
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

On Tue, Aug 06, 2019 at 09:31:55AM -0700, Rob Clark wrote:
> On Tue, Aug 6, 2019 at 7:35 AM Mark Rutland <mark.rutland@arm.com> wrote:
> >
> > On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > > On Tue, Aug 6, 2019 at 1:48 AM Christoph Hellwig <hch@lst.de> wrote:
> > > >
> > > > This goes in the wrong direction.  drm_cflush_* are a bad API we need to
> > > > get rid of, not add use of it.  The reason for that is two-fold:
> > > >
> > > >  a) it doesn't address how cache maintaince actually works in most
> > > >     platforms.  When talking about a cache we three fundamental operations:
> > > >
> > > >         1) write back - this writes the content of the cache back to the
> > > >            backing memory
> > > >         2) invalidate - this remove the content of the cache
> > > >         3) write back + invalidate - do both of the above
> > >
> > > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > > out to memory later, and so that I don't get a cache hit on
> > > uncached/wc mmap'ing.
> >
> > Is there a cacheable alias lying around (e.g. the linear map), or are
> > these addresses only mapped uncached/wc?
> >
> > If there's a cacheable alias, performing an invalidate isn't sufficient,
> > since a CPU can allocate a new (clean) entry at any point in time (e.g.
> > as a result of prefetching or arbitrary speculation).
> 
> I *believe* that there are not alias mappings (that I don't control
> myself) for pages coming from
> shmem_file_setup()/shmem_read_mapping_page()..  

AFAICT, that's regular anonymous memory, so there will be a cacheable
alias in the linear/direct map.

> digging around at what dma_sync_sg_* does under the hood, it looks
> like it is just arch_sync_dma_for_cpu/device(), so I guess that should
> be sufficient for what I need.

I don't think that's the case, per the example I gave above.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
