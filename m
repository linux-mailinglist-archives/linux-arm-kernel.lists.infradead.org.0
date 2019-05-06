Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 594151511F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 18:22:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pN+wYaexMmQg+gwL1/g+Ov06pjg1+LRKExtVJAZmiZw=; b=f+tyYiMSjkM8BB
	PJMn9yNpiBGezwXEqHZPUcMhdktwhSvMK9lew62EJ+F5ViJu/IwrYB7ln8TcTvB5OKlhru8TpUDfg
	2fkWIrte/bQW/az2MuXQdxwU3yjz1mk7KT1NaKHl2I8Uu1NQfj1Ahm0Ip5WEOhHPwtmY4hV1zzXuV
	NMo/dbqbFsUGo5Tsjh5M+WlH51P7Tvuv+zNMQN1uP4MF9URk03IWMDDXm1dw+xdmrCW4YVPWXPyF5
	hbDTrnA3SvtO2XGRmkdhFxR00/j90A3xS8jANcVepF18pH80MM3IaYZ9s+IkyALumi2/euO6bdrQL
	EHImxq97IL2GjwKqXL3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNgNc-0001r4-Kn; Mon, 06 May 2019 16:22:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNgNU-0001qR-SX
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 16:22:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id j26so6704883pgl.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 09:22:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=40wSFiuSnxDz381aUfzuDl5Kav43yI7Ct1/keTyO3F8=;
 b=DVotpDP1BfYOu9EIG5sO2py/kG385U8+4RKehRk0tC71Vfe/y8Dohrbwudfghmv4gC
 V1LDKukVm8TPgSIGKPKH/+AzQnvMn07KhJn3HSkyadIn3jlSJ5ClUm6UwCAwkx5Lj2ec
 jTZ+KF06FbPmw0HHf3CBeQEfXVzStv1Mct1AUlW1wy4NJfE7vbBjZ0bMdocNxT2oB1CS
 9lHhKeWSjQzqoRHwiiBianLagL8GKIjs0O4OySI/oLm6QzImAzv5mMB4tTPiN7x1FtTU
 rnBUs5QzACe456XBtVa1RIzVbxerlIOvNFz0tCOCg55SYKbtj/SOkAkOVG3enaPf58Zc
 SNbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=40wSFiuSnxDz381aUfzuDl5Kav43yI7Ct1/keTyO3F8=;
 b=oY0kRdJ1T5n3wwcSmYzh8SbIzCw+hcETcjjEFrOnfqNaJ7/gH30TVhzWBG9vyMBKux
 7e13wdpPuOBvese/oKiTeHb2yFDNxJ4fmca/98gxbSG9xCIGXvgtBh6xqdwqsTqRE9Ry
 a2l1AVpttz0z0Nfbdtll0cf4rQTqVnc6aPGpqHle9VUO5xX3UAKzM7w1D3EGy5j81Nx3
 vPx2p5a3jGhbRlyzmEwjO0LHcw0ojokr2mLLaBiQd486dKdXpiX7g6CSwbWoSM4m3R2L
 PtAOkIA0zcqLCno5WRM4ez/8+OiW99H/CG4bJAidXNirxcfEv9nNQAmfW8IXSJc9X2tE
 i8wQ==
X-Gm-Message-State: APjAAAU9vukDRnOGTnvVVWz7s3WLT3bCvZOWxVL+uycHkjyzlNu3zkZQ
 juAlbxVGWuUFLXBGdYtJOIkNhuNdUuhoEHgNVrvJnOAoNgo=
X-Google-Smtp-Source: APXvYqw0KbWeRobzhAngWvuw0v+iBDWRKwDC2xGNXHO8L4kdi1iOFuLP64D72WK0vtdzu/2x0qr2r6kf9SEmu6uA3nY=
X-Received: by 2002:aa7:90ce:: with SMTP id k14mr30343128pfk.239.1557159727868; 
 Mon, 06 May 2019 09:22:07 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
 <05c0c078b8b5984af4cc3b105a58c711dcd83342.1556630205.git.andreyknvl@google.com>
 <20190503170310.GL55449@arrakis.emea.arm.com>
In-Reply-To: <20190503170310.GL55449@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 6 May 2019 18:21:56 +0200
Message-ID: <CAAeHK+weVYv4Tgj8DXv0ZTFZzGEpLYsn-3wxxmQN+ZW88MXbMw@mail.gmail.com>
Subject: Re: [PATCH v14 13/17] IB/mlx4,
 arm64: untag user pointers in mlx4_get_umem_mr
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_092208_947863_2F760DFB 
X-CRM114-Status: GOOD (  24.15  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 Leon Romanovsky <leonro@mellanox.com>,
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

On Fri, May 3, 2019 at 7:03 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Apr 30, 2019 at 03:25:09PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > only by done with untagged pointers.
> >
> > Untag user pointers in this function.
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > Reviewed-by: Leon Romanovsky <leonro@mellanox.com>
> > ---
> >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/infiniband/hw/mlx4/mr.c b/drivers/infiniband/hw/mlx4/mr.c
> > index 395379a480cb..9a35ed2c6a6f 100644
> > --- a/drivers/infiniband/hw/mlx4/mr.c
> > +++ b/drivers/infiniband/hw/mlx4/mr.c
> > @@ -378,6 +378,7 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
> >        * again
> >        */
> >       if (!ib_access_writable(access_flags)) {
> > +             unsigned long untagged_start = untagged_addr(start);
> >               struct vm_area_struct *vma;
> >
> >               down_read(&current->mm->mmap_sem);
> > @@ -386,9 +387,9 @@ static struct ib_umem *mlx4_get_umem_mr(struct ib_udata *udata, u64 start,
> >                * cover the memory, but for now it requires a single vma to
> >                * entirely cover the MR to support RO mappings.
> >                */
> > -             vma = find_vma(current->mm, start);
> > -             if (vma && vma->vm_end >= start + length &&
> > -                 vma->vm_start <= start) {
> > +             vma = find_vma(current->mm, untagged_start);
> > +             if (vma && vma->vm_end >= untagged_start + length &&
> > +                 vma->vm_start <= untagged_start) {
> >                       if (vma->vm_flags & VM_WRITE)
> >                               access_flags |= IB_ACCESS_LOCAL_WRITE;
> >               } else {
>
> Discussion ongoing on the previous version of the patch but I'm more
> inclined to do this in ib_uverbs_(re)reg_mr() on cmd.start.

OK, I want to publish v15 sooner to fix the issue with emails
addresses, so I'll implement this approach there for now.



>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
