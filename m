Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7AC86C26
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 23:12:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AdsJmIlcWEnee6oJutWGVJHesgsYfG7F5CAFPGF5gzo=; b=TVJwP6EOSKU9No
	6CdxpBvD/MBk2O9kAasLkR+jpOksbti3B+5wuf/noEbHHXZ9YV0Z8+MO68ZZ0nCvBjCSQjU8esVcH
	MogIxC8W4Z6dKwr7bBCsoiRJtCjvdQs4+IkPuEL0V7udof+dpb4/rOnF4+fdB4ixkJLiRcVNvRtNx
	1eLjrJQEE4pxxZjLqhAu56jhOFebFaKLAKp1a51qA8k3HyCamqfU4o+3uj0Vo8UCmpTMjVX9G40KD
	a4kBBuOp5c1ZokhSHRqlUzmmWYtMYecb/lvMPUKha/L/jPO6cdwQHlGaPyrQIilJYJ/DVor0ipK7g
	XB/8WTFXNqS20N/F4mRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpi6-0000El-PX; Thu, 08 Aug 2019 21:12:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvphv-0000Bf-2v
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 21:12:24 +0000
Received: by mail-pg1-x541.google.com with SMTP id l21so44689870pgm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 14:12:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=ylddyGuuUpJhKUvK1ev1Q44hiLLmL8PwyC4MRMb3mUE=;
 b=ACf43qcDjfXfx13Z+1Gsw1UZV/Uosrf1yEiF0Agjii4NCq0aSJm4NT0QzSwLCl7Dc5
 gq+wLSnVQcR3qxZ0fm9hvoSL16jb4cCF5OkMFfCEBQn0MQdPfLlk2tDzdSCLPp3vIQBd
 UxRwIr8unIchMakLD/5qyLX3unblGeVjDLQfg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=ylddyGuuUpJhKUvK1ev1Q44hiLLmL8PwyC4MRMb3mUE=;
 b=XJKfCxZ6NM6WnnmKpNgwD+Sf0PGSgvlNJwXlmb6rWtZPA40wagMnn2fbJGp3+Zw2mb
 5pVFku//0WByHforsMrAxMcvej4Hq7I2C+Q+USmrjqTmYRAQOPVvW2d4WVPasgK7p3nD
 YFTW9uyQY3U3QhGcFnsqKLDbAoP5mHmvkChxtwIkzlmOHDZ6Q/uSd8lSDNIxle4MqmiS
 FeeNnT46jKn/i6ErDsGY8VW9WlKcVSL33N9qu6ExNNTDFM3D9BfK9rv9IBRDrp6247tH
 Fi1MIH1eF5da8hLWj/o54c0n+p+DfTWzuwHEei7xPwPpuuI/XisnNYJ0KyZHJEVY5f6/
 w6Nw==
X-Gm-Message-State: APjAAAXC0I1c43SK/EJ2Sk4Gk87KQphggZeTJASA6F3NNULkgYIrz/kj
 fOYSRrwPt0CxijCiQECLMY1ADQ==
X-Google-Smtp-Source: APXvYqy0pdWoHPkerneL5407ilt1ySmaIIJNjNXYxB0G6sGkOR++FLPJzal2z8CcZbjPxvclbtt+OA==
X-Received: by 2002:a62:1750:: with SMTP id 77mr17827956pfx.172.1565298741745; 
 Thu, 08 Aug 2019 14:12:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id q19sm101457867pfc.62.2019.08.08.14.12.20
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 08 Aug 2019 14:12:20 -0700 (PDT)
Date: Thu, 8 Aug 2019 14:12:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v19 00/15] arm64: untag user pointers passed to the kernel
Message-ID: <201908081410.C16D2BD@keescook>
References: <cover.1563904656.git.andreyknvl@google.com>
 <CAAeHK+yc0D_nd7nTRsY4=qcSx+eQR0VLut3uXMf4NEiE-VpeCw@mail.gmail.com>
 <20190724140212.qzvbcx5j2gi5lcoj@willie-the-truck>
 <CAAeHK+xXzdQHpVXL7f1T2Ef2P7GwFmDMSaBH4VG8fT3=c_OnjQ@mail.gmail.com>
 <20190724142059.GC21234@fuggles.cambridge.arm.com>
 <20190806171335.4dzjex5asoertaob@willie-the-truck>
 <CAAeHK+zF01mxU+PkEYLkoVu-ZZM6jNfL_OwMJKRwLr-sdU4Myg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+zF01mxU+PkEYLkoVu-ZZM6jNfL_OwMJKRwLr-sdU4Myg@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_141223_154568_C07ABA59 
X-CRM114-Status: GOOD (  27.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Christian Koenig <Christian.Koenig@amd.com>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org, Kostya Serebryany <kcc@google.com>,
 Khalid Aziz <khalid.aziz@oracle.com>, Lee Smith <Lee.Smith@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>, Will Deacon <will@kernel.org>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Memory Management List <linux-mm@kvack.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>, Yishai Hadas <yishaih@mellanox.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 07:17:35PM +0200, Andrey Konovalov wrote:
> On Tue, Aug 6, 2019 at 7:13 PM Will Deacon <will@kernel.org> wrote:
> >
> > On Wed, Jul 24, 2019 at 03:20:59PM +0100, Will Deacon wrote:
> > > On Wed, Jul 24, 2019 at 04:16:49PM +0200, Andrey Konovalov wrote:
> > > > On Wed, Jul 24, 2019 at 4:02 PM Will Deacon <will@kernel.org> wrote:
> > > > > On Tue, Jul 23, 2019 at 08:03:29PM +0200, Andrey Konovalov wrote:
> > > > > > Should this go through the mm or the arm tree?
> > > > >
> > > > > I would certainly prefer to take at least the arm64 bits via the arm64 tree
> > > > > (i.e. patches 1, 2 and 15). We also need a Documentation patch describing
> > > > > the new ABI.
> > > >
> > > > Sounds good! Should I post those patches together with the
> > > > Documentation patches from Vincenzo as a separate patchset?
> > >
> > > Yes, please (although as you say below, we need a new version of those
> > > patches from Vincenzo to address the feedback on v5). The other thing I
> > > should say is that I'd be happy to queue the other patches in the series
> > > too, but some of them are missing acks from the relevant maintainers (e.g.
> > > the mm/ and fs/ changes).
> >
> > Ok, I've queued patches 1, 2, and 15 on a stable branch here:
> >
> >   https://git.kernel.org/pub/scm/linux/kernel/git/arm64/linux.git/log/?h=for-next/tbi
> >
> > which should find its way into -next shortly via our for-next/core branch.
> > If you want to make changes, please send additional patches on top.
> >
> > This is targetting 5.4, but I will drop it before the merge window if
> > we don't have both of the following in place:
> >
> >   * Updated ABI documentation with Acks from Catalin and Kevin
> 
> Catalin has posted a new version today.
> 
> >   * The other patches in the series either Acked (so I can pick them up)
> >     or queued via some other tree(s) for 5.4.
> 
> So we have the following patches in this series:
> 
> 1. arm64: untag user pointers in access_ok and __uaccess_mask_ptr
> 2. arm64: Introduce prctl() options to control the tagged user addresses ABI
> 3. lib: untag user pointers in strn*_user
> 4. mm: untag user pointers passed to memory syscalls
> 5. mm: untag user pointers in mm/gup.c
> 6. mm: untag user pointers in get_vaddr_frames
> 7. fs/namespace: untag user pointers in copy_mount_options
> 8. userfaultfd: untag user pointers
> 9. drm/amdgpu: untag user pointers
> 10. drm/radeon: untag user pointers in radeon_gem_userptr_ioctl
> 11. IB/mlx4: untag user pointers in mlx4_get_umem_mr
> 12. media/v4l2-core: untag user pointers in videobuf_dma_contig_user_get
> 13. tee/shm: untag user pointers in tee_shm_register
> 14. vfio/type1: untag user pointers in vaddr_get_pfn
> 15. selftests, arm64: add a selftest for passing tagged pointers to kernel
> 
> 1, 2 and 15 have been picked by Will.
> 
> 11 has been picked up by Jason.
> 
> 9, 10, 12, 13 and 14 have acks from their subsystem maintainers.
> 
> 3 touches generic lib code, I'm not sure if there's a dedicated
> maintainer for that.

Andrew tends to pick up lib/ patches.

> The ones that are left are the mm ones: 4, 5, 6, 7 and 8.
> 
> Andrew, could you take a look and give your Acked-by or pick them up directly?

Given the subsystem Acks, it seems like 3-10 and 12 could all just go
via Andrew? I hope he agrees. :)

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
