Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36CA96A6AF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 16 Jul 2019 12:42:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kiiI7FelSvOoRUYDJmuDBwLMrb9hgdb7tjEiy6vFfuw=; b=kf9SZvYDnItIJQ
	xhSVr3hVWDS3uaBJAbVj5noL7OavHV44homWpuoddt5SQijjlI+vNoEOsbKhvkGuf//vKwd/dQRkb
	RHATRV/V0A/E19YdXFEb/cKqYUZzSBXWDhJYEg/oqp0jZ+UG0dQKp50JwoYNxucZrJvDt+MWvMTMa
	BNRpaySwBRzuXHrArFBY0UnXIcWkCFsQ3vcYKQ7pmlmKMXY0b+jjdIiwt1APZaAXyvieaT+RSZMe6
	NqcqOFx9wcjniUvDNSMR6metQ+TJMoEHsAW2b4OyG3YpP08XnltroW3agdmnFFlBG4d/ni4riVgsI
	EM458j45zSMhG2soi9CQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnKup-0004qD-6y; Tue, 16 Jul 2019 10:42:35 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnKua-0004pV-2x
 for linux-arm-kernel@lists.infradead.org; Tue, 16 Jul 2019 10:42:21 +0000
Received: by mail-pg1-x544.google.com with SMTP id i18so9234723pgl.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 16 Jul 2019 03:42:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pcaSKUptakKKj3J2cwfnG8UjZ2PIKf/cDSDsIedAL2o=;
 b=s+OFL3WXkvuRlzxrd5bE1Ngy+XgzRf65DCow2JPQVmoncUwZbVCqMBlaegEFH9OjoE
 hGCT+agVZt6o7c1dpbisMO2uuxLS4ocd2/ZDN7N4RlgjJBFJVqurL7o3Ajgq9RawIe5i
 iUUC4MErBeuJi9C5qq1rXWHueETWBI6Hzy/jstfQMgqGCotgu8bx7AIz25MV6uvB/uMd
 AEZz6pOzM1SLevN2MhBCQnN+Ls0p0A8Ke9oO9L3/oytDbjyhFG4BNaIQGs6zmciV6uIC
 B6Z1DPnQPaMXlwFS2CsRvlNBpOj4ZTVcwcFW3en9/NlOTRMUXcMVVd3220XqOCAD3ZI0
 4G+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pcaSKUptakKKj3J2cwfnG8UjZ2PIKf/cDSDsIedAL2o=;
 b=p5diE2FG5cdwzWT7BquP4mVlIpvfP8tdcQUr/Ghu/QC1ekeHgei62vdAnK7+OtPTpm
 a81nKW2TUam26QIEZG4Gd3SascQnr4KBJUqtKiCX1ELZlYT5+d20XCznysT2G2yGI9AK
 ZEeidqfjiVBSnKvNEEAXYzrKZsPHurOfnbeBWZdRxi1EcShFV8kQt6X6xMZxeluHFEmi
 0Nh7qeHkzY8dYjFKCe8l6PmxSTGOAwY4vOHonHn+VJFbfup29rEEdLOWjpqwljVeb+0E
 FnowbHZyGnoohaQn1A9poRX2lobzeWT6zW7roU1GlfOvC6GDKwGaznYvFlvMG6oj90RD
 B1FA==
X-Gm-Message-State: APjAAAWMplnHsLkQ+T+xucKmWFFALX5kuIf9gDZUYm5LqFq/1H1w6XG4
 it9szPQLtfW0wkVcFI6p5tGp5w1jEWHgbMgwJNVzU4DFCSzEgg==
X-Google-Smtp-Source: APXvYqxbAU3TJ3lRd6aOUwZ5wuALN9pC6/wjaLV/0rVHNmhI9zipeP18fROsGNN7fnnNJ7wIdpoSB0T+fWzH5C49P+M=
X-Received: by 2002:a65:4b8b:: with SMTP id t11mr32488026pgq.130.1563273738850; 
 Tue, 16 Jul 2019 03:42:18 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
 <ea0ff94ef2b8af12ea6c222c5ebd970e0849b6dd.1561386715.git.andreyknvl@google.com>
 <20190624174015.GL29120@arrakis.emea.arm.com>
 <CAAeHK+y8vE=G_odK6KH=H064nSQcVgkQkNwb2zQD9swXxKSyUQ@mail.gmail.com>
 <20190715180510.GC4970@ziepe.ca>
In-Reply-To: <20190715180510.GC4970@ziepe.ca>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Tue, 16 Jul 2019 12:42:07 +0200
Message-ID: <CAAeHK+xPQqJP7p_JFxc4jrx9k7N0TpBWEuB8Px7XHvrfDU1_gw@mail.gmail.com>
Subject: Re: [PATCH v18 11/15] IB/mlx4: untag user pointers in mlx4_get_umem_mr
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_034220_154460_AE2328DB 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

On Mon, Jul 15, 2019 at 8:05 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
>
> On Mon, Jul 15, 2019 at 06:01:29PM +0200, Andrey Konovalov wrote:
> > On Mon, Jun 24, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> > >
> > > On Mon, Jun 24, 2019 at 04:32:56PM +0200, Andrey Konovalov wrote:
> > > > This patch is a part of a series that extends kernel ABI to allow to pass
> > > > tagged user pointers (with the top byte set to something else other than
> > > > 0x00) as syscall arguments.
> > > >
> > > > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > > > only by done with untagged pointers.
> > > >
> > > > Untag user pointers in this function.
> > > >
> > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> > > >  1 file changed, 4 insertions(+), 3 deletions(-)
> > >
> > > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> > >
> > > This patch also needs an ack from the infiniband maintainers (Jason).
> >
> > Hi Jason,
> >
> > Could you take a look and give your acked-by?
>
> Oh, I think I did this a long time ago. Still looks OK.

Hm, maybe that was we who lost it. Thanks!

> You will send it?

I will resend the patchset once the merge window is closed, if that's
what you mean.

>
> Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>
>
> Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
