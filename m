Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17C4C833AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 16:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fpy6mB3GUxrraT8Mr55y5t733MQ0XIQXQmjr3hGNqVo=; b=tQEL622WdvumlZ
	Z4LUDBRp7EX6Pue+gwsDxeAqeo0y7pjakVVODyoc7c7AJIGFXKpC0PTjWHE8pHz13UfUpG2R7RZ4Z
	ufJUNUTc6EuwloNaMQLTDyc8bwi9+NLQA4CWn0UxI92mJjX89JUG3sa1mR7dni5wYPMuzioS9WK9P
	5vTO+LCzS5YnJpcbvQMwyseFsmvb9D6/0Sise/D8JnZwd4sblKKyYVayF9Ua9KhtmPxwwE07A5tEH
	YULFFxN9sW8yLHJnjSICyiMBFAkt5b49zYbleK1RCzX8ZJzoGfOVNodpetpmTsNq5tu9j5tCELkee
	RqobUN4VL+ubES7qhF4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv0C3-00062t-M4; Tue, 06 Aug 2019 14:12:03 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv0Bu-00062B-Ca
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 14:11:55 +0000
Received: by mail-oi1-x243.google.com with SMTP id m202so66766135oig.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 07:11:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=KSZHR8G3MghKTiH3RE/z9t0oAkPmKdy9XO/QMCZqNZU=;
 b=SZo4fdmXeH8WXLZpaSB/sTV0Fj/AOoy8kq3bwOXiCeK8jvWHo70O+zD6FGjZ4ESlzG
 MJwNG4UTGW0T+1XmwKK1L0YCnIqCOJzMb+NEEP94tgXzPcO60WWioadGoDrAlJhawAxu
 C6B3hppVH+zXeBCt8Dxdu3vMqTF2xSy6yZ4Us=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=KSZHR8G3MghKTiH3RE/z9t0oAkPmKdy9XO/QMCZqNZU=;
 b=IC2Ji/fyPc4Gq0HZtnDVotySAdzMfis7zZ3xL2h8GvhSbGPebWumN6wYfPfflKUnTe
 4uANlQthuowRJ0rN2rv2vt24VbvJa5WfE2Vm80XN7Nr3CH5f4RCLC/jBjr+laYT2LOI2
 NHmxZzJhVOCrriAIFq1dbXvxuTv21puswlxOvKjnjdvGxGu57F+ZsQiH0C7VYoPn5Xo0
 yq+TPoE4T9V0c67IDRpzhg0uRLVPmJZWGBQ6Up9XzlSIgxzzrj/xlawAt1JVRZeU5deK
 iVXS9FyRWf/72OwUTGyDBSUZj76FxSXmJ2wPflcdhwRC8pplP20yuZxE6WIpldvj8moh
 UM6g==
X-Gm-Message-State: APjAAAWCb9TvsgEDvm3R+ftjpGrdlg+34BpO6A+FJQxstOxdfuRkLTws
 arGqvUe6MLk/hk9XP/j3O1KuloNwrEMRYrdMxvHwcg==
X-Google-Smtp-Source: APXvYqytpvT8vaMFRA5kJCHz75f7m4Y8MAbUwJhZNd42scl1WSb2yxqI74afmLk/TEYBgez6jiANQdmqKzHF5x1pzu0=
X-Received: by 2002:a02:c916:: with SMTP id t22mr4302514jao.24.1565100712372; 
 Tue, 06 Aug 2019 07:11:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190805211451.20176-1-robdclark@gmail.com>
 <20190806084821.GA17129@lst.de>
In-Reply-To: <20190806084821.GA17129@lst.de>
From: Rob Clark <robdclark@chromium.org>
Date: Tue, 6 Aug 2019 07:11:41 -0700
Message-ID: <CAJs_Fx6eh1w7c=crMoD5XyEOMzP6orLhqUewErE51cPGYmObBQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] drm: add cache support for arm64
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_071154_453851_292F2F79 
X-CRM114-Status: GOOD (  22.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
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
 Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 1:48 AM Christoph Hellwig <hch@lst.de> wrote:
>
> This goes in the wrong direction.  drm_cflush_* are a bad API we need to
> get rid of, not add use of it.  The reason for that is two-fold:
>
>  a) it doesn't address how cache maintaince actually works in most
>     platforms.  When talking about a cache we three fundamental operations:
>
>         1) write back - this writes the content of the cache back to the
>            backing memory
>         2) invalidate - this remove the content of the cache
>         3) write back + invalidate - do both of the above

Agreed that drm_cflush_* isn't a great API.  In this particular case
(IIUC), I need wb+inv so that there aren't dirty cache lines that drop
out to memory later, and so that I don't get a cache hit on
uncached/wc mmap'ing.

>  b) which of the above operation you use when depends on a couple of
>     factors of what you want to do with the range you do the cache
>     maintainance operations
>
> Take a look at the comment in arch/arc/mm/dma.c around line 30 that
> explains how this applies to buffer ownership management.  Note that
> "for device" applies to "for userspace" in the same way, just that
> userspace then also needs to follow this protocol.  So the whole idea
> that random driver code calls random low-level cache maintainance
> operations (and use the non-specific term flush to make it all more
> confusing) is a bad idea.  Fortunately enough we have really good
> arch helpers for all non-coherent architectures (this excludes the
> magic i915 won't be covered by that, but that is a separate issue
> to be addressed later, and the fact that while arm32 did grew them
> very recently and doesn't expose them for all configs, which is easily
> fixable if needed) with arch_sync_dma_for_device and
> arch_sync_dma_for_cpu.  So what we need is to figure out where we
> have valid cases for buffer ownership transfer outside the DMA
> API, and build proper wrappers around the above function for that.
> My guess is it should probably be build to go with the iommu API
> as that is the only other way to map memory for DMA access, but
> if you have a better idea I'd be open to discussion.

Tying it in w/ iommu seems a bit weird to me.. but maybe that is just
me, I'm certainly willing to consider proposals or to try things and
see how they work out.

Exposing the arch_sync_* API and using that directly (bypassing
drm_cflush_*) actually seems pretty reasonable and pragmatic.  I did
have one doubt, as phys_to_virt() is only valid for kernel direct
mapped memory (AFAIU), what happens for pages that are not in kernel
linear map?  Maybe it is ok to ignore those pages, since they won't
have an aliased mapping?

BR,
-R

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
