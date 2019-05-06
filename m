Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 021FB14B43
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 15:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d+ePKwlNEJlmFU7AgxPkdL2Ry+y+NOQ4VHd04VHR2xM=; b=qGsfENO3O+fMsZ
	4WbXsT//eYrHMkuYemnYqthYjmcCuxFegw97dpwj523L8aq3cHETZ83u6Z5oEsB49w1Soc8IBY/r5
	uQbPh/HXzRJIVeqhoQOBVQ9fjgaSyA+aGG4tpEsqUvgwf5bRV+a5QUnsqM8m48YnukluBaTVSPGto
	JRiEt7Tuov1bxiszkJ7RuOFathCtdtjrt+SfY2p5bhT1Vs9JxkSUi2YCujRCe+NxhMer7XLjifOGx
	/OkpcNm0IJflI4klUvRkmfb2qXw4cIH0/rgo5Ws09dRPWF/xByuL0f3lhmP3JlWK0zSmc8dRuH812
	MKcuqgSS6UmLtVVIGNfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNe3W-0004q6-A9; Mon, 06 May 2019 13:53:22 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNe3O-0004pI-B2
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 13:53:15 +0000
Received: by mail-pf1-x442.google.com with SMTP id l132so1860618pfc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 06:53:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DfsikH3ADmgNVGOW8dVHffAJXBPBy/1Drd0IdtpjjJ8=;
 b=kv7aGbZwowOP86IiNXKGTzv02HGdI2dS555U/AmH12LgQOZnKLK39c4sVdRuufn96A
 qthFKSfdn7G60uj86be1sn6Yz08bEym7ZdQPS1mHAwXca2PX4G4xwzBsumjfQSNalrzf
 yL5bwTZ9P03pKULjLPyCJCemso/1RN2dFNxsJkh8Db8dDQ4uyTu4XB2OtIwgRdUtOIbE
 AyYkrbplUjKWiH4tJjgIH/K5mFuPdBD8NVSdZa64NURA8ieEyhpOBhaJlBUr1GIoMIGp
 v2ptbSyS2qLsf62uamUc0COAt9buSU1YrXxFbkm18U+53rgjezb09axtZoHwZgv8hVgU
 L1Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DfsikH3ADmgNVGOW8dVHffAJXBPBy/1Drd0IdtpjjJ8=;
 b=kilvQ2GbBFwweKO2hYzZOo/J4yiQWMcqsI6QLnaM6vwAf8cwEtP1+2QDjvoBee7h1t
 PHB7s7CnMiX86EfRV4gCJmiNTymnsHW6vvoQ2XIFgpcLqHf6a/Vx4PqhfWLN4/rKwaxR
 qtmeHff7xbZVZjh6ClRkNe5DCVim3MGAGS5JwUkftsfBN8gQRgmBQQJW1qKqs2AdGM3f
 dMq2/YjZWBybpSJiN0b0RqcqqNUbKSKf3O3MmaZVyLO6jDwZ1JZ1f0D66e382tDD5Ajp
 53dM8UGOYx0aRSEPudO6GkspbwLcsorlllcBdFy9Kwp3ijt8n9LQ9MIKCxDgiHZXgrF/
 OJgg==
X-Gm-Message-State: APjAAAUaBMOfOxQXxRwAp2j0j06RGMpWYxoQEUMeAd3KnQOZ+LxR2u+E
 mIxVmxmAzfpUsOhNOj2/TvsFBZnGYnxe33j+rpHI7g==
X-Google-Smtp-Source: APXvYqz1fgwxD3Q1L0PJp0GBoiDCnAmVuD+UduBO6dKustad4HqnmYC98uMKFLNp2x7D5yl19BVMVIT9EGy2Pg34Ktk=
X-Received: by 2002:aa7:9116:: with SMTP id 22mr33262822pfh.165.1557150792655; 
 Mon, 06 May 2019 06:53:12 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
 <8e20df035de677029b3f970744ba2d35e2df1db3.1556630205.git.andreyknvl@google.com>
 <20190503165113.GJ55449@arrakis.emea.arm.com>
In-Reply-To: <20190503165113.GJ55449@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 6 May 2019 15:53:01 +0200
Message-ID: <CAAeHK+wCyCa-5=bPNwfivP6sEODOXKE1bPjcjc2y_T4rN+-6gA@mail.gmail.com>
Subject: Re: [PATCH v14 08/17] mm,
 arm64: untag user pointers in get_vaddr_frames
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_065314_407221_41D88B26 
X-CRM114-Status: GOOD (  20.72  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Koenig@google.com, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Chintan Pandya <cpandya@codeaurora.org>, Felix <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, Deucher@google.com,
 Alex Williamson <alex.williamson@redhat.com>,
 Dmitry Vyukov <dvyukov@google.com>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Kuehling@google.com, Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 3, 2019 at 6:51 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Apr 30, 2019 at 03:25:04PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > get_vaddr_frames uses provided user pointers for vma lookups, which can
> > only by done with untagged pointers. Instead of locating and changing
> > all callers of this function, perform untagging in it.
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  mm/frame_vector.c | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/mm/frame_vector.c b/mm/frame_vector.c
> > index c64dca6e27c2..c431ca81dad5 100644
> > --- a/mm/frame_vector.c
> > +++ b/mm/frame_vector.c
> > @@ -46,6 +46,8 @@ int get_vaddr_frames(unsigned long start, unsigned int nr_frames,
> >       if (WARN_ON_ONCE(nr_frames > vec->nr_allocated))
> >               nr_frames = vec->nr_allocated;
> >
> > +     start = untagged_addr(start);
> > +
> >       down_read(&mm->mmap_sem);
> >       locked = 1;
> >       vma = find_vma_intersection(mm, start, start + 1);
>
> Is this some buffer that the user may have malloc'ed? I got lost when
> trying to track down the provenience of this buffer.

The caller that I found when I was looking at this:

drivers/gpu/drm/exynos/exynos_drm_g2d.c:482
exynos_g2d_set_cmdlist_ioctl()->g2d_map_cmdlist_gem()->g2d_userptr_get_dma_addr()->get_vaddr_frames()

>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
