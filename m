Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12284698C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 18:01:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qw6BmqzBXbH3JyjDqqedgrc3iJpKUSodbV8ysdeghdI=; b=uNLlJ0Z+x5Bh+b
	DowlOYbuAfaJiWEL4yxYuGnBVRGzdTRR1PD5UGWGPdfN236lHMrCpLH1Fslu7cV7GvDiLlW4Jwvog
	+3iUsIKOSWsB2RzAvBoSnfGwgcbCB0Rog6Vi+eFGC9fEWkc/gifzQ4gbDSi/UnjWfZWtV3gC95JiI
	6ipeWVIv3s7lWNHz4nrp2ygfJPkd5T99H0ZlTnSFMcygGTKlcYEJhV1J4qy8wivU7RHyFBib77jYI
	BzwQQPMzys06+2bm6uPJmSZRBsmmG5Y3x6DcO94V+2GoZFg/UERgyWhbdtbtS1eRRqbBdKQF8XAUI
	2VNbaDECkIxz7xCKHvHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hn3QH-0001JL-Ke; Mon, 15 Jul 2019 16:01:53 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn3Q5-0001Im-WC
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 16:01:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id o13so7907115pgp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jul 2019 09:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lChEEghQFkJA0ae9eAwhZ0QJmvdqy/WLUOFz361BXCQ=;
 b=m3ylaWA1nfDKOLFQBZbi5lVR91/hvH9n6ddTo7/UGe/KLQTke6nfJGGnTYTOxi8VCA
 HfS0hKS7p+bVQo6gCnikJZrIRnFAsBOo76vo66MNNR76VN9RpCPaB5uiN9mXzb/wKBaC
 2YPMCtyHAVUy8c0n2Hy0noVhGDDAso8pOP+OWaQofcmHPvFQjxyIKXwz5wkCf0bTrn7S
 NzX5/+eAUp4zqkWQrLjg7UELrWGHhufD8/uShStHD6i3q1aY9KquzAKDzGkmcTnssS5F
 Z3nCiKnfqdcqBaEFScvEV6fXgwg7XscQvG1/2qeAbDEIc8Yoj5aguZfuLCcnlHXlWZQG
 m73g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lChEEghQFkJA0ae9eAwhZ0QJmvdqy/WLUOFz361BXCQ=;
 b=HPase9Y7kCEpOD2xfSUEbydRaFTzK6/QCFWcjhyFMwV9dLeImFJ1ZdZW2xbk+BWXVb
 DsmBm3E5KDadVdSaPzMIvH5HThLc65+nqk+AIgSU4Vi3W7/7DrZdZ2wPbPZMxZchRecL
 77e0cujEUhPrQlMBIqIWIN6LN7Af2cNFtuB4eTR4A96dysm2iv4uNvyZxBxZWhKK6Su+
 GL+5YWzFuWVIcRXcwu+PbP6oTPr+MS+BhdSM0x7hwdYdEseOPp1+op78nJY4j7QLSpS3
 A3hv3wY5ZxRakvWL6O0641ds57BiB0LUFfD4cfufqlY2K/M61a5uZLN1TQA3xnfEAL6O
 xRZA==
X-Gm-Message-State: APjAAAWILYnBeL0YC5vPDkX6+FX7RXf8mHSAmggk+AClKwSkD475tIa6
 p//u4Z3L1F7j1rYrPNlfRsFwjNq+Bpe/3MqTb0rRuVmGEr4nqQ==
X-Google-Smtp-Source: APXvYqyLZ0wS0QgBngEcy3YbbCLzw5RatJ3FtyfhyqUYHKhFv456jIze9R6yuxvC6+RP9cmNsJEN8HfxXPuILyhJ/1w=
X-Received: by 2002:a17:90a:a116:: with SMTP id
 s22mr29861239pjp.47.1563206500702; 
 Mon, 15 Jul 2019 09:01:40 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561386715.git.andreyknvl@google.com>
 <ea0ff94ef2b8af12ea6c222c5ebd970e0849b6dd.1561386715.git.andreyknvl@google.com>
 <20190624174015.GL29120@arrakis.emea.arm.com>
In-Reply-To: <20190624174015.GL29120@arrakis.emea.arm.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 15 Jul 2019 18:01:29 +0200
Message-ID: <CAAeHK+y8vE=G_odK6KH=H064nSQcVgkQkNwb2zQD9swXxKSyUQ@mail.gmail.com>
Subject: Re: [PATCH v18 11/15] IB/mlx4: untag user pointers in mlx4_get_umem_mr
To: Jason Gunthorpe <jgg@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_090142_057143_618E2B9D 
X-CRM114-Status: GOOD (  16.39  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

On Mon, Jun 24, 2019 at 7:40 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Mon, Jun 24, 2019 at 04:32:56PM +0200, Andrey Konovalov wrote:
> > This patch is a part of a series that extends kernel ABI to allow to pass
> > tagged user pointers (with the top byte set to something else other than
> > 0x00) as syscall arguments.
> >
> > mlx4_get_umem_mr() uses provided user pointers for vma lookups, which can
> > only by done with untagged pointers.
> >
> > Untag user pointers in this function.
> >
> > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > ---
> >  drivers/infiniband/hw/mlx4/mr.c | 7 ++++---
> >  1 file changed, 4 insertions(+), 3 deletions(-)
>
> Acked-by: Catalin Marinas <catalin.marinas@arm.com>
>
> This patch also needs an ack from the infiniband maintainers (Jason).

Hi Jason,

Could you take a look and give your acked-by?

Thanks!

>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
