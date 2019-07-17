Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28D2F6BD2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 15:37:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Gk9TOTsD/fUBNg3BEaE1NPeqx8IE0CE2Jec4zjT5V6o=; b=CBaxEIjaOCL6cr
	W5e2mGmwKwCMoYbeGQVpTH0N3tPmrsHKdualbKZgtwH9kHd1orWdzxVtyc1R9P8fs8d/AA5EFdJgX
	o1D6UVtR00+lgEuC4aJu5ASp729HZYHvB06RIJUuAjDbhC30+nIUc6EkJifSz2n9FkOt4F1QvYgr2
	2/r65j5MpBgUc/T7fzze1ukm77RLk+UOrnFD6eFCRq2WUVJtli2hgZNSSZTuPxEC2gq/HoFGCvuUc
	+apbQSWn/WQWw38AR+n8yR+NmP9YR1A4rv00M1yOdmqKDljZELq1ni0wKtgbnOKgcsTD6dKEQ3FWH
	K97KpQduiRb9EVzS80Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnk79-00025z-2L; Wed, 17 Jul 2019 13:36:59 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnk70-000251-0z
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 13:36:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id t16so10844148pfe.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jul 2019 06:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=upJur9hX33jRa5ZDAABYWCcVNIU4OKrA323sUj0kiJ0=;
 b=jU/Zat9i+mrs8cSnCYXrBiEONUz0WXxyKyOECIIPiTvG8WEhtGZGjK61290IX8o36U
 OrHTHQ7Woyg/qn3+sukX8RWKFmT/Ab3vSFlM0FM2BRuiucJNWXV94DF4e2NhGQgdA44A
 dT08TPfZUZgkz0of54cXYItyNEHlQbHBkArsYbqcDoUXDHAB+kz50O9ewS939NtAQV8u
 N3pg+MG4dZM9J1oQTBELA9KEuGXZuE94dTh2nx4VJ6oW11nUXuKKdq/o5lVXbnas7dEB
 7eGFT9GZTTNoP+bU6YviC4h7qnZidfElkMDjIpsDOMoPQb/nzifgWXLs7MlD24BgMlQq
 Xslw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=upJur9hX33jRa5ZDAABYWCcVNIU4OKrA323sUj0kiJ0=;
 b=k3hQmSYDGrMCisRjPrEGBTdJ/Li9S8pdZgKmPlC7EGyE5cx/piaMh4n1m1grlC/6hb
 9LfnvyzKWyL0Yh9A+F5cKLAg+13+x49kMeWNNsJwP7CSHQvNt7cICOpE7cNFtePYM+Ri
 ItmSlJMblH9MdV8Oy4TjvBS/cQIeSY4NhEcdOC7hfhqMSiOOCKcdfEjpgLRqdCX0XgF4
 dVRRfjlkkCpOehGSdoikkCH3oc3lIVUGpUG87kDqM4p4cLFwjPDpFv+1elnC74jjD4nZ
 uqOvsW/TgU3qxQqIUjnx/vak5VSOZSx2RVkik1a6gFox6t6ISltIkgXyGZ3ogBYsuKer
 KShg==
X-Gm-Message-State: APjAAAWlI5kSeFsSBEiG5G/SVP+5h+tytnmYhOG+AOOQP1AB6ufSDuiN
 gIyUCFwZIk77ObSK9N9yMPw96JPX1T4SrCyl1WnGxw==
X-Google-Smtp-Source: APXvYqz7m/UfmCxQEvGyEZmLKWfGDEQqrP2qzxF/oMVv3Ek5NDX+f4ncbRdtOgqzhkxO4Lp3vwbZe7MPyGJ1vZM4Wx0=
X-Received: by 2002:a17:90a:2488:: with SMTP id
 i8mr43162554pje.123.1563370608796; 
 Wed, 17 Jul 2019 06:36:48 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
 <ea0ff94ef2b8af12ea6c222c5ebd970e0849b6dd.1561386715.git.andreyknvl@google.com>
 <20190624174015.GL29120@arrakis.emea.arm.com>
 <CAAeHK+y8vE=G_odK6KH=H064nSQcVgkQkNwb2zQD9swXxKSyUQ@mail.gmail.com>
 <20190715180510.GC4970@ziepe.ca>
 <CAAeHK+xPQqJP7p_JFxc4jrx9k7N0TpBWEuB8Px7XHvrfDU1_gw@mail.gmail.com>
 <20190716120624.GA29727@ziepe.ca>
 <CAAeHK+xPPQ9QjAksbfWG-Zmnawt-cdw9eO_6GVxjEYcaDGvaRA@mail.gmail.com>
 <20190717115828.GE12119@ziepe.ca>
In-Reply-To: <20190717115828.GE12119@ziepe.ca>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 17 Jul 2019 15:36:37 +0200
Message-ID: <CAAeHK+yyQpc6cxyVeUUWUwiQYy8iAgVXmOVO=EQYSNzy9G8Q0A@mail.gmail.com>
Subject: Re: [PATCH v18 11/15] IB/mlx4: untag user pointers in mlx4_get_umem_mr
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_063650_100448_F6CB722E 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

On Wed, Jul 17, 2019 at 1:58 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Wed, Jul 17, 2019 at 01:44:07PM +0200, Andrey Konovalov wrote:
> > On Tue, Jul 16, 2019 at 2:06 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > >
> > > On Tue, Jul 16, 2019 at 12:42:07PM +0200, Andrey Konovalov wrote:
> > > > On Mon, Jul 15, 2019 at 8:05 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > > >
> > > > > On Mon, Jul 15, 2019 at 06:01:29PM +0200, Andrey Konovalov wrote:
> > > > > > On Mon, Jun 24, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > > > > > >
> > > > > > > On Mon, Jun 24, 2019 at 04:32:56PM +0200, Andrey Konovalov wrote:
> > > > > > > > This patch is a part of a series that extends kernel ABI to allow to pass
> > > > > > > > tagged user pointers (with the top byte set to something else other than
> > > > > > > > 0x00) as syscall arguments.
> > > > > > > >
> > > > > > > > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > > > > > > > only by done with untagged pointers.
> > > > > > > >
> > > > > > > > Untag user pointers in this function.
> > > > > > > >
> > > > > > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > > > > > >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> > > > > > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > > > > > >
> > > > > > > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> > > > > > >
> > > > > > > This patch also needs an ack from the infiniband maintainers (Jason).
> > > > > >
> > > > > > Hi Jason,
> > > > > >
> > > > > > Could you take a look and give your acked-by?
> > > > >
> > > > > Oh, I think I did this a long time ago. Still looks OK.
> > > >
> > > > Hm, maybe that was we who lost it. Thanks!
> > > >
> > > > > You will send it?
> > > >
> > > > I will resend the patchset once the merge window is closed, if that's
> > > > what you mean.
> > >
> > > No.. I mean who send it to Linus's tree? ie do you want me to take
> > > this patch into rdma?
> >
> > I think the plan was to merge the whole series through the mm tree.
> > But I don't mind if you want to take this patch into your tree. It's
> > just that this patch doesn't make much sense without the rest of the
> > series.
>
> Generally I prefer if subsystem changes stay in subsystem trees. If
> the patch is good standalone, and the untag API has already been
> merged, this is a better strategy.

OK, feel free to take this into your tree, this works for me.

>
> Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
