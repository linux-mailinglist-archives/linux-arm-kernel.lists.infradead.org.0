Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6FD914B38
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 15:50:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ru6gP1J83DyVWe+6ZaENVxIuXYKp+kIzgpc9C7F5tTA=; b=s6v7HM8bwqvZd+
	h6EPd1ixZDUHmJr24fPVO0ZEMwmlQtvaO0+R8CLbc205VagDdNhNb7g6+TvZe+8jvLkD3jBI7FzTy
	u+5YsACQJapViC3fn2zTUpgndG0MkmPko/e8ZhKoGUQNcWi7EQSYt1wS+KUIM/ybAf4IqdNhKUt0k
	8wv+ZO9NvBGrhLMxoW9MGS0rQEhHK2hqHL9Wcrt5XJrt6bMQCj3C4H1LDXb/ls3KEGZBj6oyOjHju
	NVpnNWjvzMiwM0tWGjwn71pnPcrWaYrq6lwgGrcAD46VbjePGDRdwmeHtl7gvrqh7VFDe2HJi7pl+
	2xj7KBSzPp4oHJorsPaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNe0z-0004SO-Bw; Mon, 06 May 2019 13:50:45 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNe0s-0004Rs-6B
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 13:50:39 +0000
Received: by mail-pl1-x641.google.com with SMTP id d3so2398013plj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 06:50:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bQJbdD3DpYVGAJMB4xHT/wsaNr2EFZ6QKX73vdaXiy8=;
 b=DRQ6yKsX6G++7lU4Zg5s3BYR0P9dOtDVRdgDq4OTKtqnFzdHr5mrU+eAH8m/xaAqq9
 GjaGvUS7mkeRr5xpwetie72lE61cQQyZApscmN4YS70y1VIT4NWv/M48lKerfm627Th7
 gjcuK1BYAbSf4nXxfiio5m7d5spLpXCCTDKGcC2aVAdeBFYRKrP8Z7bE2tG9DZ2rIsGu
 CwljSWmdU9qHLtd/Gz+syQE0KKMpSKrEQoJTqd9Mdkk5tKa5G5tK8eI5XA5KcbzqPu4t
 Lq4Z4U34+8CqteCsW5OMIEDaAHJ5orfzvcPcniCK32BPqiOxrEh1Ln7swqpgKcat4g3N
 37Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bQJbdD3DpYVGAJMB4xHT/wsaNr2EFZ6QKX73vdaXiy8=;
 b=t1uZiipjOpAwfBnxNvP2W8Eshni49j6i0ZD1zHMTY9/uBR0pInmPbNcJ0anYB31hNo
 t8sfMGgiCgmycTpXr+w82Tw9MO8lnZkyuxvR0mMsYWvh0uB+zfDnWdsPiOBFeRgdCjRP
 BhkydO+HgdWLAWdtNT2lOEVa7A3G9vCFbNxg4E01CieHKQyD8jUi7WrdLF9cPFfUxl1N
 TTkVWquo/RZ+itRIuApUQ5J/cz7vwHA4+K2sXfrGNgsTq3IPdzVX9XuZlWOdkGEL1RuU
 VK+TYg9c3H9Mi41jRl8V/xZvbDK7nuNo0KPO6oxjoqzLJQncNYmLGfL/IPlznmnASFAj
 hISw==
X-Gm-Message-State: APjAAAXy3tsMBZJjDsO8V3TUNJXi28GbFzFq5Y3rgPheLifucKBvipMB
 3BeBUjZIcq5YEGlIpnxCo4IE0nLLFA2+sBvNfStqtZg2peI=
X-Google-Smtp-Source: APXvYqwbKSvVTOpuC9GERGa4zYi/56mC1YqRSuljrXhiTGgFzKxKxPy7xquJMcd52Z/Xw9GWuZtYyS77z4awlmXBnWo=
X-Received: by 2002:a17:902:7783:: with SMTP id
 o3mr32208910pll.159.1557150636780; 
 Mon, 06 May 2019 06:50:36 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
 <2e827b5c484be14044933049fec180cd6acb054b.1556630205.git.andreyknvl@google.com>
 <3108d33e-8e18-a73e-5e1a-f0db64f02ab3@amd.com>
In-Reply-To: <3108d33e-8e18-a73e-5e1a-f0db64f02ab3@amd.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 6 May 2019 15:50:25 +0200
Message-ID: <CAAeHK+zDScw-aYpQFVG=JKartDqCF+ZWnq3-6PuaYgMiBphcJA@mail.gmail.com>
Subject: Re: [PATCH v14 11/17] drm/amdgpu, arm64: untag user pointers
To: "Kuehling, Felix" <Felix.Kuehling@amd.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_065038_353556_31E6A3A2 
X-CRM114-Status: GOOD (  25.31  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "Koenig,
 Christian" <Christian.Koenig@amd.com>, Lee Smith <Lee.Smith@arm.com>, "Deucher,
 Alexander" <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 8:03 PM Kuehling, Felix <Felix.Kuehling@amd.com> wrote:
>
> On 2019-04-30 9:25 a.m., Andrey Konovalov wrote:
> > [CAUTION: External Email]
> >
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > amdgpu_ttm_tt_get_user_pages() uses provided user pointers for vma
> > lookups, which can only by done with untagged pointers. This patch
> > untag user pointers when they are being set in
> > amdgpu_ttm_tt_set_userptr().
> >
> > In amdgpu_gem_userptr_ioctl() and amdgpu_amdkfd_gpuvm.c/init_user_pages()
> > an MMU notifier is set up with a (tagged) userspace pointer. The untagged
> > address should be used so that MMU notifiers for the untagged address get
> > correctly matched up with the right BO. This patch untag user pointers in
> > amdgpu_gem_userptr_ioctl() for the GEM case and in
> > amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu() for the KFD case.
> >
> > Suggested-by: Kuehling, Felix <Felix.Kuehling@amd.com>
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c | 2 +-
> >   drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c          | 2 ++
> >   drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c          | 2 +-
> >   3 files changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> > index 1921dec3df7a..20cac44ed449 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_gpuvm.c
> > @@ -1121,7 +1121,7 @@ int amdgpu_amdkfd_gpuvm_alloc_memory_of_gpu(
> >                  alloc_flags = 0;
> >                  if (!offset || !*offset)
> >                          return -EINVAL;
> > -               user_addr = *offset;
> > +               user_addr = untagged_addr(*offset);
> >          } else if (flags & ALLOC_MEM_FLAGS_DOORBELL) {
> >                  domain = AMDGPU_GEM_DOMAIN_GTT;
> >                  alloc_domain = AMDGPU_GEM_DOMAIN_CPU;
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
> > index d21dd2f369da..985cb82b2aa6 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_gem.c
> > @@ -286,6 +286,8 @@ int amdgpu_gem_userptr_ioctl(struct drm_device *dev, void *data,
> >          uint32_t handle;
> >          int r;
> >
> > +       args->addr = untagged_addr(args->addr);
> > +
> >          if (offset_in_page(args->addr | args->size))
> >                  return -EINVAL;
> >
> > diff --git a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> > index 73e71e61dc99..1d30e97ac2c4 100644
> > --- a/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> > +++ b/drivers/gpu/drm/amd/amdgpu/amdgpu_ttm.c
> > @@ -1248,7 +1248,7 @@ int amdgpu_ttm_tt_set_userptr(struct ttm_tt *ttm, uint64_t addr,
> >          if (gtt == NULL)
> >                  return -EINVAL;
> >
> > -       gtt->userptr = addr;
> > +       gtt->userptr = untagged_addr(addr);
>
> Doing this here seems unnecessary. You already untagged the address in
> both callers of this function. Untagging in the two callers ensures that
> the userptr and MMU notifier are in sync, using the same untagged
> address. Doing it again here is redundant.

 Will fix in v15, thanks!

>
> Regards,
>    Felix
>
>
> >          gtt->userflags = flags;
> >
> >          if (gtt->usertask)
> > --
> > 2.21.0.593.g511ec345e18-goog
> >

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
