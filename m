Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1A514B17
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 15:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pwke4TQemUkKRtXvoqYm26T76UwP7g+WwgYJsGb+bX0=; b=o9ruI43J6KM2+Y
	Cwfh0Ja0aoTGrswtUsnFM/9E3qNQcF1LSCz18mH+HC6Adj56gXT8b+k1E7MBM3wR+x8ENmd6RUQYB
	pMq3vzY2ZRkOt4cBnqMw8Vr7NtCw6+tNYWL3yoIiG4XR+3PJQ0mFhlHY7jQFze7T1euYyEwTyKF96
	8OIIZ4qh3SH4Xi0BKo7AEK43VRfcbPiu/G27seWmKZXOm+v/WktEukf8cJ6ULC4wXXquj9+0CvZDx
	Jk93Pb4yTDMevz1w8nb4L+D7M3H3iMciRIw/4DxcmjmxwtE6h+uW9PUpCk8IisAbGz3+YHAygZQbo
	Hbg7/e+ukMxv9EstOsHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNdv4-0001an-SD; Mon, 06 May 2019 13:44:38 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNduw-0001aI-PG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 13:44:33 +0000
Received: by mail-pg1-x543.google.com with SMTP id c13so6499607pgt.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 06:44:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P1AsWbEhRa0wHsK8aH/Xd0AjHqgvO+evP2tETj4R/Hs=;
 b=mCRvGiMCWNKbNQEDEHJPLjAQLrUoFSSCHXZ4fTSXpN0g/fIsZshRPm9ndJR5eUZFeS
 cUUVjH5+H0srhJLB97pYS1dAESJ7tlFO12o1QmSKRMylSSrMX7eSkAQZPeAl3j+/4jot
 Z0rf7bLAB+FWXtNFndWhjKloQyKtxfQf5Kq8g+VAeVRm9B5go9fsjfeA1Dd6Ooje6hgH
 357+7liJijJSnEfmpI/7ugnjlRqi6Wms+2k2fk5xNGdbQ6jmPTdGnzA1IYZPJTlgFqN0
 Ndu9I5tb/O92PbPFqb8n8H87QKDs4WxDWcu0C7SbNnCwtFrTK4+5MXiNHqnk7vlAYn6T
 l3OQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P1AsWbEhRa0wHsK8aH/Xd0AjHqgvO+evP2tETj4R/Hs=;
 b=mHDahRkPcT1I6vaI8DiQGam+gByHHhh+Pw28WYn0LfAhmk9lb4HqTP5aquYn3q3eb8
 ScR2FwDb9W+myo77FdKl9v4zKmblA6OXz04zwSQzK2EwUe65rGJVo9OiRH8+O3k7pGNy
 zg7hXXd8mRB8rcjKoGNdAk2WnHrq/yaRwbzbHrrGRe5jzOCRgdXiNFcmGr70QuvmcuUA
 icG7DVCY0mVudXxfobHbDC5zQlw9M4TUeRoQfySO0pZzmCQk8enyalS9A9R/zNClTpzj
 N8et/c6Vc4AzxArVf7IoJNnBisTl0YGTF9fEoGVzHDN4+5vYSFxawXzKucYqNmllXP1N
 tWZA==
X-Gm-Message-State: APjAAAXE7uHqZ2mMpoV5zW8f6bhdA8B+BCuPxyjDLSm2NQPjpJdXbZUi
 /mjpdrS0WE8yajIZ+l600vhsWAhRM2NC0cvcZZaQ+g==
X-Google-Smtp-Source: APXvYqyNDZxWsCMEiiGgR4F3I9CPNPMghQJxWH7nmS2ow6tBDXdVdmASCVpQ1EAh1QL7BadGynC5IC5t7w0MYPoEEO8=
X-Received: by 2002:a65:610a:: with SMTP id z10mr32127312pgu.54.1557150266321; 
 Mon, 06 May 2019 06:44:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
 <9a50ef07d927cbccd9620894bda825e551168c3d.1556630205.git.andreyknvl@google.com>
 <bfe5e11e-6dc4-352f-57eb-d527f965a2ef@amd.com>
In-Reply-To: <bfe5e11e-6dc4-352f-57eb-d527f965a2ef@amd.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 6 May 2019 15:44:15 +0200
Message-ID: <CAAeHK+wFq_NwhYtoGapcrKDnCxZUcquBuW_ZCae+8CAqtp3ndQ@mail.gmail.com>
Subject: Re: [PATCH v14 12/17] drm/radeon, arm64: untag user pointers
To: "Kuehling, Felix" <Felix.Kuehling@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_064430_849910_6CDE4A8B 
X-CRM114-Status: GOOD (  24.35  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Koenig@google.com" <Koenig@google.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Chintan Pandya <cpandya@codeaurora.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 "Deucher@google.com" <Deucher@google.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Dmitry Vyukov <dvyukov@google.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 "Kuehling@google.com" <Kuehling@google.com>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 "Deucher, Alexander" <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 "Koenig, Christian" <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 7:57 PM Kuehling, Felix <Felix.Kuehling@amd.com> wrote:
>
> On 2019-04-30 9:25 a.m., Andrey Konovalov wrote:
> > [CAUTION: External Email]
> >
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > radeon_ttm_tt_pin_userptr() uses provided user pointers for vma
> > lookups, which can only by done with untagged pointers. This patch
> > untags user pointers when they are being set in
> > radeon_ttm_tt_pin_userptr().
> >
> > In amdgpu_gem_userptr_ioctl() an MMU notifier is set up with a (tagged)
> > userspace pointer. The untagged address should be used so that MMU
> > notifiers for the untagged address get correctly matched up with the right
> > BO. This patch untags user pointers in radeon_gem_userptr_ioctl().
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >   drivers/gpu/drm/radeon/radeon_gem.c | 2 ++
> >   drivers/gpu/drm/radeon/radeon_ttm.c | 2 +-
> >   2 files changed, 3 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/radeon/radeon_gem.c b/drivers/gpu/drm/radeon/radeon_gem.c
> > index 44617dec8183..90eb78fb5eb2 100644
> > --- a/drivers/gpu/drm/radeon/radeon_gem.c
> > +++ b/drivers/gpu/drm/radeon/radeon_gem.c
> > @@ -291,6 +291,8 @@ int radeon_gem_userptr_ioctl(struct drm_device *dev, void *data,
> >          uint32_t handle;
> >          int r;
> >
> > +       args->addr = untagged_addr(args->addr);
> > +
> >          if (offset_in_page(args->addr | args->size))
> >                  return -EINVAL;
> >
> > diff --git a/drivers/gpu/drm/radeon/radeon_ttm.c b/drivers/gpu/drm/radeon/radeon_ttm.c
> > index 9920a6fc11bf..dce722c494c1 100644
> > --- a/drivers/gpu/drm/radeon/radeon_ttm.c
> > +++ b/drivers/gpu/drm/radeon/radeon_ttm.c
> > @@ -742,7 +742,7 @@ int radeon_ttm_tt_set_userptr(struct ttm_tt *ttm, uint64_t addr,
> >          if (gtt == NULL)
> >                  return -EINVAL;
> >
> > -       gtt->userptr = addr;
> > +       gtt->userptr = untagged_addr(addr);
>
> Doing this here seems unnecessary, because you already untagged the
> address in the only caller of this function in radeon_gem_userptr_ioctl.
> The change there will affect both the userptr and MMU notifier setup and
> makes sure that both are in sync, using the same untagged address.

Will fix in v15, thanks!

>
> Regards,
>    Felix
>
>
> >          gtt->usermm = current->mm;
> >          gtt->userflags = flags;
> >          return 0;
> > --
> > 2.21.0.593.g511ec345e18-goog
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
