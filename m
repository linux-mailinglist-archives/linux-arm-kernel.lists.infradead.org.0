Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170C686729
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 18:32:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LddbyHMU5rzmqQO6ZppiuZx1+wvEh3NB4qLNr896140=; b=SHRQzd+x71LG3O
	ZzSBpATO47psfJW9tCqudQTQ+GlygcWTGn4dRigZLI5iD+/zHd76UL8hZ1zDosKtPUlA0Yy9Nh78s
	fg+7dM83gvoP5ENgqb324xUnpoAg9ZDK1bhbhsDtcn1IltbfAjvnVM4fPJn83EsVS3zr10WL6p3Id
	Hzgv7NUt2VaeltYXSAOap0mXl6IG4gBFOCEa+p6+2yEz+6jGKoq5idPglvIVaGp4KGhZMnDha6E2a
	mvXoOCTvmARCFa1jK75FyaMHsuKf0wvrpnbd8bi6JCGZkI4tZgu+6gJedv8/6L/kpPgN7PQIWkDju
	DmV4O8BaPWQU3D6N3XDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlLG-0005z3-O5; Thu, 08 Aug 2019 16:32:42 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlL7-0005yO-BM
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 16:32:34 +0000
Received: by mail-ot1-x343.google.com with SMTP id q20so120909332otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 09:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=erfhL7VDoeVN6LjjmIrSkztKG2I43YnuXIQ5QoKPdbc=;
 b=kV+NV+qW/5qJZ2Z48xBPFEZ6LJYAXKY5/LhYbls4LmwDokugWNdTa16wJmKp0yXodN
 iVYJzFf9wKMlE++n5p9Whx3JnTaCk53pROAM7OZ8x0kFxKIh5rsaR/LnSEl93Lnc1C2A
 Hfwb5Y/I4iLfY0pVARlG0U/1rzE7/uJK5ZkZY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=erfhL7VDoeVN6LjjmIrSkztKG2I43YnuXIQ5QoKPdbc=;
 b=byA4W/6sZBfE4Y5oI8wEl8rRyWbO4DCJXG13ev2F06H6ZxYxPhw6YvaKhC/P+zlTsR
 P7cyJ4D8af3240jhMRiTJozevuzo2OEH+3m5yHIYmbtxVaqOaFLpSDz6sOedeUeaRevn
 s0wGrMgI3CD7NpK+gsYzGZEIGLgZzaI04D4CTZ37cjDRqpnicj8DQjDDVUJ65avX2zTC
 Edj8EATPxFQ8flymbz9DvHscMidrLYyw3p98ep8x5aod5luTzaIkhUYMXR9Qu9PH2UAk
 HF/TRrE7s5nBpVC78gngrtojGvX03vw698KU1wY2yIp4uEy5Jn5myZEk7vfWTdTmSLpD
 OZJg==
X-Gm-Message-State: APjAAAVDnkjnnElEMmuuPzTF0T3Mp+oq1Gb5ku+J4i7OtFwIKLf9Wx8I
 tWjg0s3EU6tJUy8SlBJPrCj6I9wRIMMHY5LenTRqVFq0
X-Google-Smtp-Source: APXvYqy8Y64Qwzaj+EcuykgpBje7tkhZgHMn/Tvi8eNyfMMvhJLC6rMpyPg9xxizaeKi+hpK8mPldF+gfVafFe2ZGzs=
X-Received: by 2002:a6b:90c1:: with SMTP id
 s184mr15573418iod.244.1565281952009; 
 Thu, 08 Aug 2019 09:32:32 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
 <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
 <20190806155044.GC25050@lst.de>
 <CAJs_Fx6uztwDy2PqRy3Tc9p12k8r_ovS2tAcsMV6HqnAp=Ggug@mail.gmail.com>
 <20190807062545.GF6627@lst.de>
 <CAJs_Fx7tqbr_gqRdqJEwOcRFReP0DqZzOu11Dxhxkp8+PygUQw@mail.gmail.com>
 <20190808100031.GA32658@lst.de>
In-Reply-To: <20190808100031.GA32658@lst.de>
From: Rob Clark <robdclark@chromium.org>
Date: Thu, 8 Aug 2019 09:32:21 -0700
Message-ID: <CAJs_Fx6ikxob7Mu6GM1ESe4pBXAbVv4NNnbZN7YUQdmyfPnxgg@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_093233_417845_13772FB9 
X-CRM114-Status: GOOD (  27.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 3:00 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Wed, Aug 07, 2019 at 09:09:53AM -0700, Rob Clark wrote:
> > > > (Eventually I'd like to support pages passed in from userspace.. but
> > > > that is down the road.)
> > >
> > > Eww.  Please talk to the iommu list before starting on that.
> >
> > This is more of a long term goal, we can't do it until we have
> > per-context/process pagetables, ofc.
> >
> > Getting a bit off topic, but I'm curious about what problems you are
> > concerned about.  Userspace can shoot it's own foot, but if it is not
> > sharing GPU pagetables with other processes, it can't shoot other's
> > feet.  (I'm guessing you are concerned about non-page-aligned
> > mappings?)
>
> Maybe I misunderstood what you mean above, I though you mean messing
> with page cachability attributes for userspace pages.  If what you are
> looking into is just "standard" SVM I only hope that our APIs for that
> which currently are a mess are in shape by then, as all users currently
> have their own crufty and at least slightly buggy versions of that.  But
> at least it is an issue that is being worked on.

ahh, ok.. and no, we wouldn't be remapping 'malloc' memory as
writecombine.  We'd have to wire up better support for cached buffers.

Currently we use WC for basically all GEM buffers allocated from
kernel, since that is a good choice for most GPU workloads.. ie. CPU
isn't reading back from GPU buffers in most cases.  I'm told cached
buffers are useful for compute workloads where there is more back and
forth between GPU and CPU, but we haven't really crossed that bridge
yet.  Compute workloads is also were the SVM interest is.

> > > So back to the question, I'd like to understand your use case (and
> > > maybe hear from the other drm folks if that is common):
> > >
> > >  - you allocate pages from shmem (why shmem, btw?  if this is done by
> > >    other drm drivers how do they guarantee addressability without an
> > >    iommu?)
> >
> > shmem for swappable pages.  I don't unpin and let things get swapped
> > out yet, but I'm told it starts to become important when you have 50
> > browser tabs open ;-)
>
> Yes,  but at that point the swapping can use the kernel linear mapping
> and we are going into aliasing problems that can disturb the cache.  So
> as-is this is going to problematic without new hooks into shmemfs.
>

My expectation is that we'd treat the pages as cached when handing
them back to shmemfs, and wb+inv when we take them back again from
shmemfs and re-pin.  I think this works out to be basically the same
scenario as having to wb+inv when we first get the pages from shmemfs.

> > >  - then the memory is either mapped to userspace or vmapped (or even
> > >    both, althrough the lack of aliasing you mentioned would speak
> > >    against it) as writecombine (aka arm v6+ normal uncached).  Does
> > >    the mapping live on until the memory is freed?
> >
> > (side note, *most* of the drm/msm supported devices are armv8, the
> > exceptions are 8060 and 8064 which are armv7.. I don't think drm/msm
> > will ever have to deal w/ armv6)
>
> Well, the point was that starting from v6 the kernels dma uncached
> really is write combine.  So that applied to v7 and v8 as well.

ahh, gotcha

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
