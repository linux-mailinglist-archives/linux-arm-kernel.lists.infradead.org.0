Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C5FD6BBC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:47:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AzrPC8+cfzp4bRCPEnoaaOsp24XFBbZxl5VZY6JHnjc=; b=HC0wU+/sMkrsZ5
	n2wFMHrQwnUQf/K77fu1Kl38uRzaRJgiTXhYcdiENm7Syc6Qqw/9DdVGeQXLzftYqrCkuH+RIWf52
	hMpnH///nx4bzNx9IFy7dcit2BKVy6VUFLNded4oDK+X9lP/0rZJjK9Q76L1FLoTM+PZhfbPAVKCC
	sMQiX80LXUA405IhfcUYapZbJPyPcA2EwI0r6ZEvHRocmM4M1xiO+QpuFCD3ppvp5WS0kgokx1IES
	7wyZaVmprmWVrKUmvwxoe+jUjTFDN9GmG9tQvpjGAiHJwDoahUbIKbEy6o2BqaW2QxyV5iJECObwU
	KLJHWXiUBo4d4mi7XyOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniOw-00028e-10; Wed, 17 Jul 2019 11:47:14 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniOm-000289-3h
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 11:47:05 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so11858613plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 04:47:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=XH7pgHFzkwihJR5psn/ZNzGH7d1Hcpwg4ypt2aGmLUk=;
 b=q9rg5oP+7QfRryee4CQfI+zTuO8vcNkAU+Zb8S/XX5gbQKX1OYbsUUbB3B8KK9hFmU
 UHgvh4Mz+Kyv0D5E5zvwH3nJNYoE2P1kzcK2Rg1yMoExsViP4+PURLjfYPF2WZhrd0MF
 a+zGI8yxCxdvE8nZGITXCK8/RaYQDCnkR7z8XELwz+GgVBZndcqvcfCaF4ihTHl0HyVo
 bFY7Esho++ViErb2avPSuS/M58xcsz7oUebcD6xLNGIpCphqGpuQ31GuhoMHpSqGmldC
 ZKZZNvAff0cBNn4NnOvQXzgW64bJR2BOmy7dIGzstZ5vq+Xgsj3OiBdAV2LIo/WRsiLm
 aMOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=XH7pgHFzkwihJR5psn/ZNzGH7d1Hcpwg4ypt2aGmLUk=;
 b=ZfmXtXEPyfHOT3RB/tij5eXayqZBHcPg9TZT2gfzPKNT+Ftgc+2p/BeGR2ZNnXTKBG
 RJfjfbJx7Tr5KjRe4XzNtd95pU805wnoOtBvYDCYW3KwxAyXVs4ZE/jqrbUE4FSPLGXJ
 AwxNJ4w4hTSkaRYFmm7SQeJdb/5Yl8ltrNP2ZPk4F9hGXTOMpA6avxr7/w6sa+lPxLBV
 NZfoakLx3cY0n00SIUJfzPgy1rqnvowD3GMSPXvbj3BiFeUv1FyM8EqM/93akRQXiNaT
 9AJ+mu7W6EMNXhs2O6dvh5M8KQy4RX+OgXUgwBGfoD+HJPuJC178fS+TyWfFBbcIYM2v
 T75Q==
X-Gm-Message-State: APjAAAUL1h6ml0xRtAADbfBXryEASQlTHLVP1l4/nSsOZpXL1cfY9y/+
 1TP76wf0YuQSOoZFSKFnAKYAlsev0LvMhAUBDydcHA==
X-Google-Smtp-Source: APXvYqz8S3jyPxed+oPtsIDmi9g4NsD5ItlfcVysZ7+qze2pU/edo+3e3aBEztJRj4XnLTpHjY2eNg/431rKCehxHqk=
X-Received: by 2002:a17:902:8689:: with SMTP id
 g9mr39736837plo.252.1563364023206; 
 Wed, 17 Jul 2019 04:47:03 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
 <d8e3b9a819e98d6527e506027b173b128a148d3c.1561386715.git.andreyknvl@google.com>
 <20190624175120.GN29120@arrakis.emea.arm.com>
 <20190717110910.GA12017@rapoport-lnx>
In-Reply-To: <20190717110910.GA12017@rapoport-lnx>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 17 Jul 2019 13:46:52 +0200
Message-ID: <CAAeHK+yB=d_oXOVZ2TuVe2UkBAx-GM_f+mu88JeVWqPO95xVHQ@mail.gmail.com>
Subject: Re: [PATCH v18 08/15] userfaultfd: untag user pointers
To: Mike Rapoport <rppt@linux.ibm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_044704_185521_67E84FE8 
X-CRM114-Status: GOOD (  23.37  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Al Viro <viro@zeniv.linux.org.uk>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 1:09 PM Mike Rapoport <rppt@linux.ibm.com> wrote:
>
> On Mon, Jun 24, 2019 at 06:51:21PM +0100, Catalin Marinas wrote:
> > On Mon, Jun 24, 2019 at 04:32:53PM +0200, Andrey Konovalov wrote:
> > > This patch is a part of a series that extends kernel ABI to allow to pass
> > > tagged user pointers (with the top byte set to something else other than
> > > 0x00) as syscall arguments.
> > >
> > > userfaultfd code use provided user pointers for vma lookups, which can
> > > only by done with untagged pointers.
> > >
> > > Untag user pointers in validate_range().
> > >
> > > Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > ---
> > >  fs/userfaultfd.c | 22 ++++++++++++----------
> > >  1 file changed, 12 insertions(+), 10 deletions(-)
> >
> > Same here, it needs an ack from Al Viro.
>
> The userfault patches usually go via -mm tree, not sure if Al looks at them :)

Ah, OK, I guess than Andrew will take a look at them when merging.

>
> FWIW, you can add
>
> Reviewed-by: Mike Rapoport <rppt@linux.ibm.com>

I will, thanks!

>
> > > diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
> > > index ae0b8b5f69e6..c2be36a168ca 100644
> > > --- a/fs/userfaultfd.c
> > > +++ b/fs/userfaultfd.c
> > > @@ -1261,21 +1261,23 @@ static __always_inline void wake_userfault(struct userfaultfd_ctx *ctx,
> > >  }
> > >
> > >  static __always_inline int validate_range(struct mm_struct *mm,
> > > -                                     __u64 start, __u64 len)
> > > +                                     __u64 *start, __u64 len)
> > >  {
> > >     __u64 task_size = mm->task_size;
> > >
> > > -   if (start & ~PAGE_MASK)
> > > +   *start = untagged_addr(*start);
> > > +
> > > +   if (*start & ~PAGE_MASK)
> > >             return -EINVAL;
> > >     if (len & ~PAGE_MASK)
> > >             return -EINVAL;
> > >     if (!len)
> > >             return -EINVAL;
> > > -   if (start < mmap_min_addr)
> > > +   if (*start < mmap_min_addr)
> > >             return -EINVAL;
> > > -   if (start >= task_size)
> > > +   if (*start >= task_size)
> > >             return -EINVAL;
> > > -   if (len > task_size - start)
> > > +   if (len > task_size - *start)
> > >             return -EINVAL;
> > >     return 0;
> > >  }
> > > @@ -1325,7 +1327,7 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
> > >             goto out;
> > >     }
> > >
> > > -   ret = validate_range(mm, uffdio_register.range.start,
> > > +   ret = validate_range(mm, &uffdio_register.range.start,
> > >                          uffdio_register.range.len);
> > >     if (ret)
> > >             goto out;
> > > @@ -1514,7 +1516,7 @@ static int userfaultfd_unregister(struct userfaultfd_ctx *ctx,
> > >     if (copy_from_user(&uffdio_unregister, buf, sizeof(uffdio_unregister)))
> > >             goto out;
> > >
> > > -   ret = validate_range(mm, uffdio_unregister.start,
> > > +   ret = validate_range(mm, &uffdio_unregister.start,
> > >                          uffdio_unregister.len);
> > >     if (ret)
> > >             goto out;
> > > @@ -1665,7 +1667,7 @@ static int userfaultfd_wake(struct userfaultfd_ctx *ctx,
> > >     if (copy_from_user(&uffdio_wake, buf, sizeof(uffdio_wake)))
> > >             goto out;
> > >
> > > -   ret = validate_range(ctx->mm, uffdio_wake.start, uffdio_wake.len);
> > > +   ret = validate_range(ctx->mm, &uffdio_wake.start, uffdio_wake.len);
> > >     if (ret)
> > >             goto out;
> > >
> > > @@ -1705,7 +1707,7 @@ static int userfaultfd_copy(struct userfaultfd_ctx *ctx,
> > >                        sizeof(uffdio_copy)-sizeof(__s64)))
> > >             goto out;
> > >
> > > -   ret = validate_range(ctx->mm, uffdio_copy.dst, uffdio_copy.len);
> > > +   ret = validate_range(ctx->mm, &uffdio_copy.dst, uffdio_copy.len);
> > >     if (ret)
> > >             goto out;
> > >     /*
> > > @@ -1761,7 +1763,7 @@ static int userfaultfd_zeropage(struct userfaultfd_ctx *ctx,
> > >                        sizeof(uffdio_zeropage)-sizeof(__s64)))
> > >             goto out;
> > >
> > > -   ret = validate_range(ctx->mm, uffdio_zeropage.range.start,
> > > +   ret = validate_range(ctx->mm, &uffdio_zeropage.range.start,
> > >                          uffdio_zeropage.range.len);
> > >     if (ret)
> > >             goto out;
> > > --
> > > 2.22.0.410.gd8fdbe21b5-goog
>
> --
> Sincerely yours,
> Mike.
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
