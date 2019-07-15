Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCDF69A75
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 20:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jbeAmK9aYt1VWTMDfUNS5qRMeoYn8mFo2KDwtLW5xDk=; b=URB6VqlJEJhW3Y
	kZcmTqjY+uKPgRRJk0t1JiBS+fpchgTSTN+8DVtF6OFgeZHZtSi/Yw1P/PIPnWgz5iGkSCMLVrxrb
	FtzzAO7Lz2gEgYuoEGamz8vHi4OobxXdRdaWyC02vcyYInBo/YG2h+8uub7dwBnv1pFYdAZ+LEYfS
	c2tnndFf8gZ4o1Mh71DW/XMTBT11uWWebGxj9WrpWTHC04TV6e4LqCGIsUF62t3K2bcKw0BQStisx
	aemCiZk8x+D5FmH7GY7Lb7gM8DW5KrbbEMPZLgHXFkL76mLOt9kB8dFFrL7Dz98i/+awy579c9wMG
	LWh1W8QhWBP70MTDusmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn5Lp-0001iO-Mb; Mon, 15 Jul 2019 18:05:25 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn5Ld-0001hP-RZ
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 18:05:15 +0000
Received: by mail-qt1-x841.google.com with SMTP id k10so16646950qtq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 11:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oQ4K7j9A7KZ0nbwdC0yOxg3aR/aRtjl8qzNQbwacYqI=;
 b=PwR1EtCrURwrbo7TpqHuOvhX3LIycbjKkBb4iZ6+YCuC60ErzFmtlkMrRo9GfbX0ep
 bOPWg9HzO0UREAz1sjKJFk3TljxpYwzvCkuA0H8lubNfJCvY2ASmYBnxIKBySJaciMh9
 IWCtA6vd68VwBDPGY07TF40sWdRGtt46+KtuhJCf3Dkv+hk0kDlTClc7v0FgkXnm9Td6
 i1yxqpRiKWqC8epriEnPtS7rhozNGFmNJhWNANw7o2ytOh0Tu6qDWMUojtH/q6UpZnph
 8NNcHVz4Emezex9wQTSbQUH4N9LwFgHNyRTzxKvxiscGagPT01BlLq6kMX4xBhj5skGH
 0P7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oQ4K7j9A7KZ0nbwdC0yOxg3aR/aRtjl8qzNQbwacYqI=;
 b=iyFggjGpO4rsG+SRNoF7Yq8SRTh7VYpLAm7/1EkGuWwImBRerEnY+oHnoJsFB4fxLK
 h9SmvAdF6ENL9ADmzeUOLVwLQHg92cELF9HdD9ALrsAZum7zSV0BrW2V6sUOUKPGrPls
 rbJnzIj77Js9pGjK9LqjvhHdhTk6mG0kR0x0VPwXuPy9PU6pAjw8f+MCLm8yGl2SwA4E
 r56eadCoRUt2ZbtJKkug+BLyhP1ZHvdwouUx14lWbSCkhJ3eIzdQeXCxC/gbAal7Fnen
 oDCNf6oIsASubgPUqWcNk5Pzzf95Duyq3vQV97V34vLnerN5S9ntivoRcqAAPQfZsZMR
 YVEQ==
X-Gm-Message-State: APjAAAUF9/mSVl0elgq7IpQWJu3PXaFblZGKs57qXWJiGF1WZ39KLhcF
 DFPiE9Vx2jn8IKZTCszca106Lg==
X-Google-Smtp-Source: APXvYqzV3YFI+MpwRBSBS9L25rk8A7XfyA1gAg9YfhwBzidc1Vfy+exQVLzBpqEA6++D83b7IWLy1g==
X-Received: by 2002:a05:6214:3a5:: with SMTP id
 m5mr19973542qvy.7.1563213911969; 
 Mon, 15 Jul 2019 11:05:11 -0700 (PDT)
Received: from ziepe.ca
 (hlfxns017vw-156-34-55-100.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [156.34.55.100])
 by smtp.gmail.com with ESMTPSA id l80sm8277974qke.24.2019.07.15.11.05.11
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 15 Jul 2019 11:05:11 -0700 (PDT)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1hn5La-0001zV-SL; Mon, 15 Jul 2019 15:05:10 -0300
Date: Mon, 15 Jul 2019 15:05:10 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v18 11/15] IB/mlx4: untag user pointers in mlx4_get_umem_mr
Message-ID: <20190715180510.GC4970@ziepe.ca>
References: <cover.1561386715.git.andreyknvl@google.com>
 <ea0ff94ef2b8af12ea6c222c5ebd970e0849b6dd.1561386715.git.andreyknvl@google.com>
 <20190624174015.GL29120@arrakis.emea.arm.com>
 <CAAeHK+y8vE=G_odK6KH=H064nSQcVgkQkNwb2zQD9swXxKSyUQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+y8vE=G_odK6KH=H064nSQcVgkQkNwb2zQD9swXxKSyUQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_110513_896835_969FC457 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On Mon, Jul 15, 2019 at 06:01:29PM +0200, Andrey Konovalov wrote:
> On Mon, Jun 24, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
> >
> > On Mon, Jun 24, 2019 at 04:32:56PM +0200, Andrey Konovalov wrote:
> > > This patch is a part of a series that extends kernel ABI to allow to pass
> > > tagged user pointers (with the top byte set to something else other than
> > > 0x00) as syscall arguments.
> > >
> > > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > > only by done with untagged pointers.
> > >
> > > Untag user pointers in this function.
> > >
> > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> > >  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > Acked-by: Catalin Marinas <catalin.marinas@arm.com>
> >
> > This patch also needs an ack from the infiniband maintainers (Jason).
> 
> Hi Jason,
> 
> Could you take a look and give your acked-by?

Oh, I think I did this a long time ago. Still looks OK. You will send
it?

Reviewed-by: Jason Gunthorpe <jgg@mellanox.com>

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
