Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C42851F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 19:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AZloq7Egrcn+0X/ozPDmOLiOh7GfrG4Bk6lKBcvrV/U=; b=FVZi9EFzyqcVeq
	tb6smrGVMEBqo/ampeokZmuMCb5RdamVBt+pjKiItQEBoLyeQZdx4lzLvvLaxX8ZVjzSp48peo7vc
	8Vz1CH3UP9cyIYuNXflVu2z7BvUfItFpdRis7ulIN5cZ6EbegF5nKwkjD5pMCt9oowwgN6Zm23LPK
	5GUyqpL4cqE1vaLLM/c+CgmIgd6XJOOhgyJcH4xBj04VGJf6Hz08AtkcO9jiEB/SWLxcd9lmOiug2
	2zl7IMSFV6xrUR6j+hHz0+HoBSVTFCpHtF0eqYGMMRsawtFD98+Ay2tNFOhnwz/l62gC6lxoJLAcv
	PxFzZOqlF49VYhXr2Bjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvPZc-0002uY-RR; Wed, 07 Aug 2019 17:18:04 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvPZS-0002rz-J8
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 17:17:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id 4so34770469pld.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 10:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8eJrnZxNMCItWIynTatJDEuA9CjWuilxGr3zPMXDYoA=;
 b=lvCOFn8kPw5sKWIBqAtj9nTDw5hreHjOLB8fZD9LK4XqWLqI/y9ZOZsE/4TR27f4Um
 7sNjnMM7si41kfySDx/t9SNrRsRpe9RSjuTSsxtP/LZWsBQ/9wQ/cD4jAY9Afx15eKqx
 drzyP65XIEr5B54raR+/HRbXQh7LyawRCf3zPKIRTqPoYkdFiyNYDBtM/quaMKyDYY7N
 e0hyz+AA4niyiPyNwzehq1Nhy/KS415dSI2CnjbBlju4Nld2LwgPUsvJDvfBXebX8Wbi
 Nmslq3Y7cfQOcqEViWBEfcEzC2SDosb0kffCvwGdMnZ05+LE89QNyyYCkt8oyQaFasdF
 n/vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8eJrnZxNMCItWIynTatJDEuA9CjWuilxGr3zPMXDYoA=;
 b=GHoP1Io3XYlR+2BtRl/tQ4JYKFVzFBTV1fdlWlvuhXmrAe3/QehQcU8HP7djtgwg1C
 Ov8Ve0KTgwdI5CTHZUwPUySubliboC8TcqAoxbiZDLxa8ebsxlBILplDBIZSR9Y7W+hu
 cQaZDscPSlR2ZXIczqRRb5+gRCbKESaq0F7cOvBGpYSUOu9Shnq8wZTsJ8bDdX7xn+Vr
 oj5OYHNFcgMqeL0iAx2/eUW9NmZcL0ERsgoTbD8IXrjhhZwX92JIPvZTIFR5z2rSS7SV
 WmUxtNV7vdVlFElecsRXi4JYgC6rifhaoBkSGMaHz0123GcCdzlBy9MV3mbPUf8XWfJY
 w2Ww==
X-Gm-Message-State: APjAAAWXxb8fojFJpSh7TMmDxrXL9ztbeXWQFKl9jCOMGaldRppCTVxZ
 3j5/69cAZw2M5P3OUdVkRVLTWs0By3MWz4pkK/g06A==
X-Google-Smtp-Source: APXvYqyBW2S319ERBiJQIcPzcGoHmCZb6zerpXN+gU6uALMoVMzBI9LSMd7krnp9xpHZv3cXEfAdJC0fzaJdRwq+DTM=
X-Received: by 2002:a65:4b8b:: with SMTP id t11mr8596413pgq.130.1565198266795; 
 Wed, 07 Aug 2019 10:17:46 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1563904656.git.andreyknvl@google.com>
 <CAAeHK+yc0D_nd7nTRsY4=qcSx+eQR0VLut3uXMf4NEiE-VpeCw@mail.gmail.com>
 <20190724140212.qzvbcx5j2gi5lcoj@willie-the-truck>
 <CAAeHK+xXzdQHpVXL7f1T2Ef2P7GwFmDMSaBH4VG8fT3=c_OnjQ@mail.gmail.com>
 <20190724142059.GC21234@fuggles.cambridge.arm.com>
 <20190806171335.4dzjex5asoertaob@willie-the-truck>
In-Reply-To: <20190806171335.4dzjex5asoertaob@willie-the-truck>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 7 Aug 2019 19:17:35 +0200
Message-ID: <CAAeHK+zF01mxU+PkEYLkoVu-ZZM6jNfL_OwMJKRwLr-sdU4Myg@mail.gmail.com>
Subject: Re: [PATCH v19 00/15] arm64: untag user pointers passed to the kernel
To: Will Deacon <will@kernel.org>, Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_101754_636233_5F573CBD 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 6, 2019 at 7:13 PM Will Deacon <will@kernel.org> wrote:
>
> On Wed, Jul 24, 2019 at 03:20:59PM +0100, Will Deacon wrote:
> > On Wed, Jul 24, 2019 at 04:16:49PM +0200, Andrey Konovalov wrote:
> > > On Wed, Jul 24, 2019 at 4:02 PM Will Deacon <will@kernel.org> wrote:
> > > > On Tue, Jul 23, 2019 at 08:03:29PM +0200, Andrey Konovalov wrote:
> > > > > Should this go through the mm or the arm tree?
> > > >
> > > > I would certainly prefer to take at least the arm64 bits via the arm64 tree
> > > > (i.e. patches 1, 2 and 15). We also need a Documentation patch describing
> > > > the new ABI.
> > >
> > > Sounds good! Should I post those patches together with the
> > > Documentation patches from Vincenzo as a separate patchset?
> >
> > Yes, please (although as you say below, we need a new version of those
> > patches from Vincenzo to address the feedback on v5). The other thing I
> > should say is that I'd be happy to queue the other patches in the series
> > too, but some of them are missing acks from the relevant maintainers (e.g.
> > the mm/ and fs/ changes).
>
> Ok, I've queued patches 1, 2, and 15 on a stable branch here:
>
>   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/tbi
>
> which should find its way into -next shortly via our for-next/core branch.
> If you want to make changes, please send additional patches on top.
>
> This is targetting 5.4, but I will drop it before the merge window if
> we don't have both of the following in place:
>
>   * Updated ABI documentation with Acks from Catalin and Kevin

Catalin has posted a new version today.

>   * The other patches in the series either Acked (so I can pick them up)
>     or queued via some other tree(s) for 5.4.

So we have the following patches in this series:

1. arm64: untag user pointers in access_ok and __uaccess_mask_ptr
2. arm64: Introduce prctl() options to control the tagged user addresses ABI
3. lib: untag user pointers in strn*_user
4. mm: untag user pointers passed to memory syscalls
5. mm: untag user pointers in mm/gup.c
6. mm: untag user pointers in get_vaddr_frames
7. fs/namespace: untag user pointers in copy_mount_options
8. userfaultfd: untag user pointers
9. drm/amdgpu: untag user pointers
10. drm/radeon: untag user pointers in radeon_gem_userptr_ioctl
11. IB/mlx4: untag user pointers in mlx4_get_umem_mr
12. media/v4l2-core: untag user pointers in videobuf_dma_contig_user_get
13. tee/shm: untag user pointers in tee_shm_register
14. vfio/type1: untag user pointers in vaddr_get_pfn
15. selftests, arm64: add a selftest for passing tagged pointers to kernel

1, 2 and 15 have been picked by Will.

11 has been picked up by Jason.

9, 10, 12, 13 and 14 have acks from their subsystem maintainers.

3 touches generic lib code, I'm not sure if there's a dedicated
maintainer for that.

The ones that are left are the mm ones: 4, 5, 6, 7 and 8.

Andrew, could you take a look and give your Acked-by or pick them up directly?

>
> Make sense?
>
> Cheers,
>
> Will

Thanks!

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
