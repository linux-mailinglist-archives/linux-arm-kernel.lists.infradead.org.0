Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62BBC6BBA1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 13:43:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U6Q8ZS2C5bDLFiB1HlZXIia3BdVIwGNTkxY6du94Q80=; b=krNvEJSKMitQTF
	r0EsvAZ1TH8chwiiicCz7B3USww65qNE/TLxVkKV0jpl+u9PdIwnrfQhy+YD4GT8HxhXIP+APNyRC
	8IUk9hAVEMSjX1c9FscDW56gPAaLA4rSd0/e6glA8+gTLM/boNy8vX76qAxsckyWAYnlzMtEpxAsq
	xvNGJ/HCFKoWY7/BNMQnZ2BDjxN9ys/Ktvo3dHsz2TzwC9HsIIn/mdjPQFJHbxkxgpx/wtP+NoIWk
	6VJUx8wrH7IEitZjAkONkA0zXOtlt4hxn35uGny92Oza8G7Z1tfSx1e8RaIko0QYWkOlaXKjnr04x
	3DPQhwALgYbCHBU5q+Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniLQ-0004a6-KI; Wed, 17 Jul 2019 11:43:36 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniKw-00046g-LB
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 11:43:08 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so11824918pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 04:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Grx9Ph9cpPxnp5U6FBRGOs65Gt1iaoMhcGq5W71SZXw=;
 b=dPqGbc0mQ4L1HVZkSH8ToVI8fJKg/9UNHDO/j/ERbXAicYMzOFznsbpKlaHUysv6li
 HI+ov6aZkI81aTTtxCqQqgB/bUVOpQn9oyTV62JlPhH7/hgOpXEwCdWu9ddqQHOpZpdv
 vvSbjVE/k6KiaC4iA854H6gt6BntwHIeZhW6TlwY6wZ/6+elD6DGPCHZxZrxLz2uCTHc
 8iFhpa9H1Y4EYvcxgufIOEc+0j2fY1DuwRMYeLwfiF/zvSCA0YG2Xctd4B7QhffRyXW7
 79B+/AUSAWe5ZZuaO+yAHuZlFSQxsBpNhxsDDOkk9SiW6k2AqHelqnkNry2oBYROn4ta
 qk0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Grx9Ph9cpPxnp5U6FBRGOs65Gt1iaoMhcGq5W71SZXw=;
 b=HVt1SHg2X3vy4ya2UHNJ9+gI8V8SgNCVo7Eq4Qw2eIxny0hQR2alCWEK1xa82c47vL
 9/dWXXdnGafHajYbdP1hsKi0JbEocTUMigRJSLREoQvB0u/4Ca2uP4HAUeXOLIxNboQ1
 56iRj3FFpbU6nRPmC9RiAclNQPcXKTqNiXH/s1nYe1hubgVk5xS2P63fgVBW9pEYbkxB
 5572wsT1zVvkxkwWe1uZLpK6NWyCSR/fSH78ffj8s+CJ4A6WbRZyHVY6U7fW2sHnfuMf
 FIa8d2ghocjJc7SFmDFbtXj9xMQjTUUUsBbAoF+rv4tc8pZbgoJHp8G1amONzLbmGDSz
 MSOw==
X-Gm-Message-State: APjAAAXMqWEQd8UDzdulqCtyS1Ze4RJh8C2nb2NqV2qYBt1uUQJOdCLS
 M+sTbwJV+kOFQro5c/ECPNgrv/UZ8+lTerbVqVh67Q==
X-Google-Smtp-Source: APXvYqwmLG+YoWbUJiFaN+0PkmRQxPro9175aUMwlEodu495a+iL+q6DhBuBElFNfaLl03HSknMS7Mny75X+YTtbitI=
X-Received: by 2002:a17:902:8689:: with SMTP id
 g9mr39719354plo.252.1563363782037; 
 Wed, 17 Jul 2019 04:43:02 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
 <ea0ff94ef2b8af12ea6c222c5ebd970e0849b6dd.1561386715.git.andreyknvl@google.com>
 <20190624174015.GL29120@arrakis.emea.arm.com>
 <CAAeHK+y8vE=G_odK6KH=H064nSQcVgkQkNwb2zQD9swXxKSyUQ@mail.gmail.com>
 <20190715180510.GC4970@ziepe.ca>
 <CAAeHK+xPQqJP7p_JFxc4jrx9k7N0TpBWEuB8Px7XHvrfDU1_gw@mail.gmail.com>
 <20190716120624.GA29727@ziepe.ca>
In-Reply-To: <20190716120624.GA29727@ziepe.ca>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 17 Jul 2019 13:42:50 +0200
Message-ID: <CAAeHK+xGfCSNgJ1FA1Bi3-6iVZNa5-cPJF54SY9rETqSqnrOTw@mail.gmail.com>
Subject: Re: [PATCH v18 11/15] IB/mlx4: untag user pointers in mlx4_get_umem_mr
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_044306_721691_23F01A29 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
 Christoph Hellwig <hch@infradead.org>, Dmitry Vyukov <dvyukov@google.com>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 linux-media@vger.kernel.org, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
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

On Tue, Jul 16, 2019 at 2:06 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Tue, Jul 16, 2019 at 12:42:07PM +0200, Andrey Konovalov wrote:
> > On Mon, Jul 15, 2019 at 8:05 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > >
> > > On Mon, Jul 15, 2019 at 06:01:29PM +0200, Andrey Konovalov wrote:
> > > > On Mon, Jun 24, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > > >
> > > > > On Mon, Jun 24, 2019 at 04:32:56PM +0200, Andrey Konovalov wrote:
> > > > > > This patch is a part of a series that extends kernel ABI to allow to pass
> > > > > > tagged user pointers (with the top byte set to something else other than
> > > > > > 0x00) as syscall arguments.
> > > > > >
> > > > > > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > > > > > only by done with untagged pointers.
> > > > > >
> > > > > > Untag user pointers in this function.
> > > > > >
> > > > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > > > >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> > > > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > > >
> > > > > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> > > > >
> > > > > This patch also needs an ack from the infiniband maintainers (Jason).
> > > >
> > > > Hi Jason,
> > > >
> > > > Could you take a look and give your acked-by?
> > >
> > > Oh, I think I did this a long time ago. Still looks OK.
> >
> > Hm, maybe that was we who lost it. Thanks!
> >
> > > You will send it?
> >
> > I will resend the patchset once the merge window is closed, if that's
> > what you mean.
>
> No.. I mean who send it to Linus's tree? ie do you want me to take
> this patch into rdma?
>
> Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
