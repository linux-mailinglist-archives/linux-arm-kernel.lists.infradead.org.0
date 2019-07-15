Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62E62698C1
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 18:01:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sUriQehwiKjtqv4xYzGyA6eiuCNZgIZjNAMPkVD5owo=; b=JkzF3+GZcyLsv4
	xFfZw1W3F0Z2UxklkSksUTHbK3aSNCJUMVczNhiIRH/npeg/HRK7wfcJPKJH+D2Xqe9q6/oKW0KRb
	AP0qNYxS1+Fx8E8xYXcs5hvVr99vblj1jjOlSdIU9zTO940EuuYdi5c6ksGMv9paFPpeX0efGwiEt
	YtDybUdbcuNTMwpHwHE0wizQyW7i6OAsQYR9nx39vxjwWAtImwHVGLfCRG7LC4nEojAODjVKSto9t
	CEXfcjdH8a00a3dexGqwGQFJQAiMMC+tYNa41Pxl+gYkCKxuvyX2Vuk3dYg/jJ6L+EcRibz5XFUAU
	A0kKwukVu2KsWA5qUrUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3PR-0000sp-Hk; Mon, 15 Jul 2019 16:01:01 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn3PD-0000sK-4P
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 16:00:48 +0000
Received: by mail-pf1-x444.google.com with SMTP id i189so7617696pfg.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 09:00:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=7Q0q/IfCRadymayHol/UUF72+yJ91bYAnFv+xLR30xQ=;
 b=awILUWqnOhL8QrLhWTtK3zyGeYzsbGaDmlapw+TJPtpLmDPRw1GP6vt2k8M63kLr39
 ZOpRC9dNiFsjXCuRW9tvX+XJ4TMinqKEg4V9d0/Cohi7g+H0FLJqsymSlujZFTSwFgq+
 HGvo45b5poteQElVP2ylrss//l0SvENb9w0NdEWBIgvpqnNLsaE/1Oq03NG9YiPmMbZi
 8k5Fou1N/CEVlyaSlbvq+wKBgrOUzCIo1B2qg8bQ1mlF2+F/VYvQbx6QNpAS+GS8VYMS
 4d6tYcKUYuIyyU24AI3+kh3w0LS9e+N+YdRnIzCnanxcL1YdF0dX0SOZIdMQqtDbfKe6
 /xuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7Q0q/IfCRadymayHol/UUF72+yJ91bYAnFv+xLR30xQ=;
 b=WlIoqVgljNH1u5VBsji+g1N7A9FTFpIX/lxAnEq8tXhW4XaEWqjhnoOaNQ+wVrdhxu
 cTbIbakuTkGa+ZEqwsU3nFWrQWswipP5jaaC6bg4Um/BUjIxzFJ8Z8F9y7j53Z3zHw7f
 dsYghJwatH5Xix8/w1mjz4Q60oNYyinLKC5iizmMEK+M8vcVdpW8WYUmAACq22smPCJz
 KHoB6CvfJE/51/jdlXybS+kX/lpcJExkg0d7CrkErV5pTRzvKv8kzmAnATOb2O7SsNHM
 Tyik6qK0sh8AZVlBkFbBs0yaUVzIbFi2N4SYzxklHMm8y+GHsT7IBUXvkWWHhf7+eFu/
 JZ3g==
X-Gm-Message-State: APjAAAVsbaKJPHHLcx03qDYMY3/dkFNdigDhz3kAU4Mut93EHCizAqlm
 t7isglMRpgnzzE6+zKKI2PpjvW8gMgDfvKApugm6LQ==
X-Google-Smtp-Source: APXvYqw+s/Xsm1Inj9c3bcQDg7/b3DVU+zlhxUxxhLhtcMSC55W2OaWJF9iNwAodQ+4dHaGR8RmRVxTzfqDyBCor0Ro=
X-Received: by 2002:a17:90a:25c8:: with SMTP id
 k66mr30231713pje.129.1563206445986; 
 Mon, 15 Jul 2019 09:00:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
 <d8e3b9a819e98d6527e506027b173b128a148d3c.1561386715.git.andreyknvl@google.com>
 <20190624175120.GN29120@arrakis.emea.arm.com>
In-Reply-To: <20190624175120.GN29120@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 15 Jul 2019 18:00:34 +0200
Message-ID: <CAAeHK+w=Hi2OQSBfRGmw2dG15ctiHoP6DpktyFG7Qo3AohBAgA@mail.gmail.com>
Subject: Re: [PATCH v18 08/15] userfaultfd: untag user pointers
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_090047_170301_1F994C0A 
X-CRM114-Status: GOOD (  21.34  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <will.deacon@arm.com>,
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

On Mon, Jun 24, 2019 at 7:51 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 24, 2019 at 04:32:53PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends kernel ABI to allow to pass
> > tagged user pointers (with the top byte set to something else other than
> > 0x00) as syscall arguments.
> >
> > userfaultfd code use provided user pointers for vma lookups, which can
> > only by done with untagged pointers.
> >
> > Untag user pointers in validate_range().
> >
> > Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> > Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  fs/userfaultfd.c | 22 ++++++++++++----------
> >  1 file changed, 12 insertions(+), 10 deletions(-)
>
> Same here, it needs an ack from Al Viro.

Hi Al,

Could you take a look at this one as well and give your acked-by?

Thanks!

>
> > diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
> > index ae0b8b5f69e6..c2be36a168ca 100644
> > --- a/fs/userfaultfd.c
> > +++ b/fs/userfaultfd.c
> > @@ -1261,21 +1261,23 @@ static __always_inline void wake_userfault(struct userfaultfd_ctx *ctx,
> >  }
> >
> >  static __always_inline int validate_range(struct mm_struct *mm,
> > -                                       __u64 start, __u64 len)
> > +                                       __u64 *start, __u64 len)
> >  {
> >       __u64 task_size = mm->task_size;
> >
> > -     if (start & ~PAGE_MASK)
> > +     *start = untagged_addr(*start);
> > +
> > +     if (*start & ~PAGE_MASK)
> >               return -EINVAL;
> >       if (len & ~PAGE_MASK)
> >               return -EINVAL;
> >       if (!len)
> >               return -EINVAL;
> > -     if (start < mmap_min_addr)
> > +     if (*start < mmap_min_addr)
> >               return -EINVAL;
> > -     if (start >= task_size)
> > +     if (*start >= task_size)
> >               return -EINVAL;
> > -     if (len > task_size - start)
> > +     if (len > task_size - *start)
> >               return -EINVAL;
> >       return 0;
> >  }
> > @@ -1325,7 +1327,7 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
> >               goto out;
> >       }
> >
> > -     ret = validate_range(mm, uffdio_register.range.start,
> > +     ret = validate_range(mm, &uffdio_register.range.start,
> >                            uffdio_register.range.len);
> >       if (ret)
> >               goto out;
> > @@ -1514,7 +1516,7 @@ static int userfaultfd_unregister(struct userfaultfd_ctx *ctx,
> >       if (copy_from_user(&uffdio_unregister, buf, sizeof(uffdio_unregister)))
> >               goto out;
> >
> > -     ret = validate_range(mm, uffdio_unregister.start,
> > +     ret = validate_range(mm, &uffdio_unregister.start,
> >                            uffdio_unregister.len);
> >       if (ret)
> >               goto out;
> > @@ -1665,7 +1667,7 @@ static int userfaultfd_wake(struct userfaultfd_ctx *ctx,
> >       if (copy_from_user(&uffdio_wake, buf, sizeof(uffdio_wake)))
> >               goto out;
> >
> > -     ret = validate_range(ctx->mm, uffdio_wake.start, uffdio_wake.len);
> > +     ret = validate_range(ctx->mm, &uffdio_wake.start, uffdio_wake.len);
> >       if (ret)
> >               goto out;
> >
> > @@ -1705,7 +1707,7 @@ static int userfaultfd_copy(struct userfaultfd_ctx *ctx,
> >                          sizeof(uffdio_copy)-sizeof(__s64)))
> >               goto out;
> >
> > -     ret = validate_range(ctx->mm, uffdio_copy.dst, uffdio_copy.len);
> > +     ret = validate_range(ctx->mm, &uffdio_copy.dst, uffdio_copy.len);
> >       if (ret)
> >               goto out;
> >       /*
> > @@ -1761,7 +1763,7 @@ static int userfaultfd_zeropage(struct userfaultfd_ctx *ctx,
> >                          sizeof(uffdio_zeropage)-sizeof(__s64)))
> >               goto out;
> >
> > -     ret = validate_range(ctx->mm, uffdio_zeropage.range.start,
> > +     ret = validate_range(ctx->mm, &uffdio_zeropage.range.start,
> >                            uffdio_zeropage.range.len);
> >       if (ret)
> >               goto out;
> > --
> > 2.22.0.410.gd8fdbe21b5-goog

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
