Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 11F9583705
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 18:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDXg1HJHPnCVdZ3Tcm0qE4uGNG69JpzOAJ2NiCf70QA=; b=Q1CIvI8qcYYjAB
	eCB8dt9RlnfLtsPAxC1/CE4bAG7QtWuIFjHyzsBkQIXLHo7Tc2wroCr4EWjpWD5rCM8qlJBBNnVf6
	qWwPc1JLE9TJ1/15JdATHSJdXktGAlYIEn10pZHxWquTkUvpTW4sZrIHknn8qVnK0BiCdceONQvYd
	QWTnsUg4TXOoYK9rIChyHY+QzahNGoj+ZN5HDfYXGcXs85Lr9EpxrQ3kgPgcvVXSQmf/hxlQTkF1U
	Q5rRbfjAejIE0PiugQtSIcaBUjM/grfis0h8KJcBw0SEDfDYZSqllFrYFV3OYWIxdeMHacqhxHaaQ
	bFS7BWOPT1xUIb/Q7sRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2Nj-00053U-Pk; Tue, 06 Aug 2019 16:32:15 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2Nb-00052c-0V
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 16:32:08 +0000
Received: by mail-ua1-x942.google.com with SMTP id v18so33884508uad.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 09:32:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=qJV0VVyb7OBSwrj4NQkfWBYcw+e0SGu2TpYvncrxquQ=;
 b=PaNovIOOce5SiqO4ZfKl84Pa4yv0mSqVy5C30RPobTjNSM7clsyNQbQ/vhelfWggU9
 NgsFUrCfnnyuoAdH13iul7qyQW+rfYTpPfBbokbf4T3tjfWMbJTP7PDBLdM2atX1U17L
 kqJ0ZreL5023LO6c/T/0E/lD7i0AsyjbuCbI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=qJV0VVyb7OBSwrj4NQkfWBYcw+e0SGu2TpYvncrxquQ=;
 b=cek6pFz9tcy+okN/IT2+wP8zP9Pm5tdmdwxxStFZIoY09Oe4EGB+/S6tZqS7Q0iFd1
 3Nv0ZvB1+MtvPzyRV5VW8VqqmcSWkHKX8hjxRb2CrJYFxt0qYNj7ebpUA0HOtc4EGxjW
 K5lSWIDSr8HEd0PvZAJ7HjQzUpkqF8/7Q/ex5XT0SOhEQOEOdb6xmjqr6AGFwWvyxPII
 YTgnTHz4F7b1w/M1YFxlIFzoRAWmdD2jsAHkcwIrmpUK2maFBJKrnhyaKC05EDUmYUqS
 Ui7iDPJhOPl8bvfO7OWn1r+XDHrUHrj9EmVuY9v8HcHMqh+l2dvMG0tX7kj39yxmuLlF
 SFpw==
X-Gm-Message-State: APjAAAWDf53FJow0xOWRJru4DCj3d6DBOL3CCfPv+EeVLwKt3dxtH9eZ
 qoUf+Z+6u7gv3aXcoASfJHDOuPnL7+ulroF3Z7Lqrw==
X-Google-Smtp-Source: APXvYqxN7Za8djlBzCs0iQ70yJGGaDd0xjSmac554wXuA65p9UMe7pqTUjduNocumSHig7Qa6Mhlgd8Iif02bjhVezI=
X-Received: by 2002:ab0:66d2:: with SMTP id d18mr1393892uaq.101.1565109125884; 
 Tue, 06 Aug 2019 09:32:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806143457.GF475@lakrids.cambridge.arm.com>
In-Reply-To: <20190806143457.GF475@lakrids.cambridge.arm.com>
From: Rob Clark <robdclark@chromium.org>
Date: Tue, 6 Aug 2019 09:31:55 -0700
Message-ID: <CAJs_Fx4h6SWGmDTLBnV4nmWUFAs_Ge1inxd-dW9aDKgKqmc1eQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Mark Rutland <mark.rutland@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_093207_074229_9F141A5C 
X-CRM114-Status: GOOD (  18.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Tue, Aug 6, 2019 at 7:35 AM Mark Rutland <mark.rutland@arm.com> wrote:
>
> On Tue, Aug 06, 2019 at 07:11:41AM -0700, Rob Clark wrote:
> > On Tue, Aug 6, 2019 at 1:48 AM Christoph Hellwig <hch@lst.de> wrote:
> > >
> > > This goes in the wrong direction.  drm_cflush_* are a bad API we need to
> > > get rid of, not add use of it.  The reason for that is two-fold:
> > >
> > >  a) it doesn't address how cache maintaince actually works in most
> > >     platforms.  When talking about a cache we three fundamental operations:
> > >
> > >         1) write back - this writes the content of the cache back to the
> > >            backing memory
> > >         2) invalidate - this remove the content of the cache
> > >         3) write back + invalidate - do both of the above
> >
> > Agreed that drm_cflush_* isn't a great API.  In this particular case
> > (IIUC), I need wb+inv so that there aren't dirty cache lines that drop
> > out to memory later, and so that I don't get a cache hit on
> > uncached/wc mmap'ing.
>
> Is there a cacheable alias lying around (e.g. the linear map), or are
> these addresses only mapped uncached/wc?
>
> If there's a cacheable alias, performing an invalidate isn't sufficient,
> since a CPU can allocate a new (clean) entry at any point in time (e.g.
> as a result of prefetching or arbitrary speculation).

I *believe* that there are not alias mappings (that I don't control
myself) for pages coming from
shmem_file_setup()/shmem_read_mapping_page()..  digging around at what
dma_sync_sg_* does under the hood, it looks like it is just
arch_sync_dma_for_cpu/device(), so I guess that should be sufficient
for what I need.

There are a few buffers that I vmap for use on kernel side, but like
the userspace mmap's, the vmaps are also writecombine.

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
