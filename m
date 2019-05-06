Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5114614BA1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 16:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjf4qYjoiqhCq+f3b6zM8kfMHZFmhPu6+2CR3No4eFg=; b=o1BWvrda1sU6Ct
	x28qr8eBADScAv4LYf4s9QiTGsxJaybxHhP3rmFnHd+OC0SyexUM0cNRR52+71iJBKHUuGKeFsRuq
	6qnBgW28WndzDAfEqWtBfZeiJXVE66Tx7smr2qc4lyGWJo+HMuJzdgxPqv9cUgmZHM74+cnHPeYR7
	DNc535yikIninHUCOMuNxVOtt1S6b7PGj1cDwKlw0sscyp2CylM+alm4PW8tw4wr+E3CbGBaE+zyn
	G24IJQTZ6DL+sRjb0Sabtdb+gQH+9EZjB9CRp5DHoKSLaJlUXBWlqOVQDkobXZkvORt6IcN9Ncnsh
	Gf1q2uZjBws+VYOJl2dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNeP6-0003mq-Lp; Mon, 06 May 2019 14:15:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNeOz-0003m4-FV
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 14:15:34 +0000
Received: by mail-pl1-x643.google.com with SMTP id z8so6457100pln.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 07:15:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OW9r981uG4q4mCEE3eviMpvcgNrP8ztSBy/V22TuEyU=;
 b=RwIwMiF88+Wz2lyiiiRFLD0DtzmtPhSYctT7DECXSVGGsMCqqEywraKb1VVIDK0D+6
 e05K/iAAJcE9yRHQNbEvq9ePWUxNo3jMQ16tSsOGtmWiuiuGjYTIKZn3RWyGJN1L7rxH
 JWCib8njn+v5Gl74GjdEjnavoToExJWkPKuLN2usGUeeVQU1cj6afqv3AP+Szx9d1YbR
 /iYb1mW4rEJXqf/1doCy1zenFphH/aiHoOYrBoxPgEK3EUfKzOGpHL63KMDfpfhEfnGD
 SAWo20WeW5Qs/kAhFHEaSxMs4rZb4+Da05bz1k2JR3ScMW8GRukA/aJ+BvUhLbhKhimD
 bg2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OW9r981uG4q4mCEE3eviMpvcgNrP8ztSBy/V22TuEyU=;
 b=D0o4shMa2BrsWCm/TjotHCHHgAzzlgpQZL4gdGBoMxn6dxGFx/9/n0+DJ7SPDWVsZ1
 Svo64yJct7o90FP9vtR1IpFLZzmoc/h9y3nRpfWZDbfUcnJ+uHZKMtafFWsZZeECdgwG
 j41KPi0WnbGd8K6en3ZHcO6Lc6bCnMg8wA2Q4FPf2zUNK9F0Exi8tS4igZTGiq3gOxde
 Pm6idR7IE0YIUmR/8OpRIl7QndaACyitvUMZKmXAAZ+j6jbL0ZKYKCF6IEroPbraqBRr
 p7gRh92EFDuVv/RjpXam4axbhXC3oJxlk0ZyJzaJezXSnHqJsaiL1rbyKQujtaG2ULxt
 Fkcg==
X-Gm-Message-State: APjAAAU/8TyWhtBV1DIpMeiDfsX4vFgB0otD1itQSP4MsJVYx5dOf5pl
 GYPTlEH/KaAF9LVdLdyVxFrKLc069vnrkIHV6/dhXw==
X-Google-Smtp-Source: APXvYqyWDp8mHq4mu+m9PaBcR4hr0UfLsUgs2S/OxvEKrdiWi6A7iqRf42KWhYp4nRTNFO6VlU1AYWwzebl0ku93GlI=
X-Received: by 2002:a17:902:7783:: with SMTP id
 o3mr32385898pll.159.1557152131315; 
 Mon, 06 May 2019 07:15:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
 <7d3b28689d47c0fa1b80628f248dbf78548da25f.1556630205.git.andreyknvl@google.com>
 <20190503165646.GK55449@arrakis.emea.arm.com>
In-Reply-To: <20190503165646.GK55449@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 6 May 2019 16:15:20 +0200
Message-ID: <CAAeHK+yya4OR7GfSJPc59+trq3fS9Qh_1WK2hB1aoHdR0C_t8Q@mail.gmail.com>
Subject: Re: [PATCH v14 10/17] fs,
 arm64: untag user pointers in fs/userfaultfd.c
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_071533_546160_91B9FF69 
X-CRM114-Status: GOOD (  22.67  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

On Fri, May 3, 2019 at 6:56 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Tue, Apr 30, 2019 at 03:25:06PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > pass tagged user pointers (with the top byte set to something else other
> > than 0x00) as syscall arguments.
> >
> > userfaultfd_register() and userfaultfd_unregister() use provided user
> > pointers for vma lookups, which can only by done with untagged pointers.
> >
> > Untag user pointers in these functions.
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  fs/userfaultfd.c | 5 +++++
> >  1 file changed, 5 insertions(+)
> >
> > diff --git a/fs/userfaultfd.c b/fs/userfaultfd.c
> > index f5de1e726356..fdee0db0e847 100644
> > --- a/fs/userfaultfd.c
> > +++ b/fs/userfaultfd.c
> > @@ -1325,6 +1325,9 @@ static int userfaultfd_register(struct userfaultfd_ctx *ctx,
> >               goto out;
> >       }
> >
> > +     uffdio_register.range.start =
> > +             untagged_addr(uffdio_register.range.start);
> > +
> >       ret = validate_range(mm, uffdio_register.range.start,
> >                            uffdio_register.range.len);
> >       if (ret)
> > @@ -1514,6 +1517,8 @@ static int userfaultfd_unregister(struct userfaultfd_ctx *ctx,
> >       if (copy_from_user(&uffdio_unregister, buf, sizeof(uffdio_unregister)))
> >               goto out;
> >
> > +     uffdio_unregister.start = untagged_addr(uffdio_unregister.start);
> > +
> >       ret = validate_range(mm, uffdio_unregister.start,
> >                            uffdio_unregister.len);
> >       if (ret)
>
> Wouldn't it be easier to do this in validate_range()? There are a few
> more calls in this file, though I didn't check whether a tagged address
> would cause issues.

Yes, I think it makes more sense, will do in v15, thanks!

>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
