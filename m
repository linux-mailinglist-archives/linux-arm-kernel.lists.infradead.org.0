Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C354142354
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 13:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sVG6u52J/mUsfae3UMVBOWK0UqxXwm0bsGepCmnnODU=; b=Mm3Q+XwX2xT9ds
	wMs0Oa0mHRtYeNIxs00HhvG2AmCn7Eexlk7aoxj0e44IZOrEk5aZlTlmxK+uCXVOq4r4pWrkUKU+z
	ME8FxjkhUZEWcIOChd7WhI+KneaaplGxJBnu3/a3rJE60AnDV70Q650PLtj2ZuE/Tbq9V1mqGF3zN
	7TayrBCY9ZVei9JNKKhFr+muolc+N638cVeU6XsbX7jekt7fUMks0XT/uiPOrNYhwanqL0XrF4R0v
	KHEQUCq1DJfb1ZPgUzFhNfdoDbzhDCGcMmBOlc3gIzlQH42ooH1+i3NhVgWZWQyKtsF3fIA1iSmtK
	2bp6ykeK0eEg0fRT9OiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb11O-0000kt-28; Wed, 12 Jun 2019 11:02:26 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb119-0000k3-M9
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 11:02:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1E16528;
 Wed, 12 Jun 2019 04:02:11 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 04CA33F246;
 Wed, 12 Jun 2019 04:03:23 -0700 (PDT)
Date: Wed, 12 Jun 2019 12:01:34 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Andrey Konovalov <andreyknvl@google.com>
Subject: Re: [PATCH v16 12/16] IB, arm64: untag user pointers in
 ib_uverbs_(re)reg_mr()
Message-ID: <20190612110129.GC28951@C02TF0J2HF1T.local>
References: <cover.1559580831.git.andreyknvl@google.com>
 <c829f93b19ad6af1b13be8935ce29baa8e58518f.1559580831.git.andreyknvl@google.com>
 <20190603174619.GC11474@ziepe.ca>
 <CAAeHK+xy-dx4dLDLLj9dRzRNSVG9H5nDPPnjpYF38qKZNNCh_g@mail.gmail.com>
 <20190604122714.GA15385@ziepe.ca>
 <CAAeHK+xyqwuJyviGhvU7L1wPZQF7Mf9g2vgKSsYmML3fV6NrXg@mail.gmail.com>
 <20190604130207.GD15385@ziepe.ca>
 <CAAeHK+xBxDB-OBuzPDcNaTHCNJqu6djHwqoVGSYpxG33w-YR9g@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAeHK+xBxDB-OBuzPDcNaTHCNJqu6djHwqoVGSYpxG33w-YR9g@mail.gmail.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_040211_815278_87B55A07 
X-CRM114-Status: GOOD (  31.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

On Tue, Jun 04, 2019 at 03:09:26PM +0200, Andrey Konovalov wrote:
> On Tue, Jun 4, 2019 at 3:02 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > On Tue, Jun 04, 2019 at 02:45:32PM +0200, Andrey Konovalov wrote:
> > > On Tue, Jun 4, 2019 at 2:27 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > > On Tue, Jun 04, 2019 at 02:18:19PM +0200, Andrey Konovalov wrote:
> > > > > On Mon, Jun 3, 2019 at 7:46 PM Jason Gunthorpe <jgg@ziepe.ca> wrote:
> > > > > > On Mon, Jun 03, 2019 at 06:55:14PM +0200, Andrey Konovalov wrote:
> > > > > > > This patch is a part of a series that extends arm64 kernel ABI to allow to
> > > > > > > pass tagged user pointers (with the top byte set to something else other
> > > > > > > than 0x00) as syscall arguments.
> > > > > > >
> > > > > > > ib_uverbs_(re)reg_mr() use provided user pointers for vma lookups (through
> > > > > > > e.g. mlx4_get_umem_mr()), which can only by done with untagged pointers.
> > > > > > >
> > > > > > > Untag user pointers in these functions.
> > > > > > >
> > > > > > > Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> > > > > > >  drivers/infiniband/core/uverbs_cmd.c | 4 ++++
> > > > > > >  1 file changed, 4 insertions(+)
> > > > > > >
> > > > > > > diff --git a/drivers/infiniband/core/uverbs_cmd.c b/drivers/infiniband/core/uverbs_cmd.c
> > > > > > > index 5a3a1780ceea..f88ee733e617 100644
> > > > > > > +++ b/drivers/infiniband/core/uverbs_cmd.c
> > > > > > > @@ -709,6 +709,8 @@ static int ib_uverbs_reg_mr(struct uverbs_attr_bundle *attrs)
> > > > > > >       if (ret)
> > > > > > >               return ret;
> > > > > > >
> > > > > > > +     cmd.start = untagged_addr(cmd.start);
> > > > > > > +
> > > > > > >       if ((cmd.start & ~PAGE_MASK) != (cmd.hca_va & ~PAGE_MASK))
> > > > > > >               return -EINVAL;
> > > > > >
> > > > > > I feel like we shouldn't thave to do this here, surely the cmd.start
> > > > > > should flow unmodified to get_user_pages, and gup should untag it?
> > > > > >
> > > > > > ie, this sort of direction for the IB code (this would be a giant
> > > > > > patch, so I didn't have time to write it all, but I think it is much
> > > > > > saner):
> > > > >
> > > > > ib_uverbs_reg_mr() passes cmd.start to mlx4_get_umem_mr(), which calls
> > > > > find_vma(), which only accepts untagged addresses. Could you explain
> > > > > how your patch helps?
> > > >
> > > > That mlx4 is just a 'weird duck', it is not the normal flow, and I
> > > > don't think the core code should be making special consideration for
> > > > it.
> > >
> > > How do you think we should do untagging (or something else) to deal
> > > with this 'weird duck' case?
> >
> > mlx4 should handle it around the call to find_vma like other patches
> > do, ideally as part of the cast from a void __user * to the unsigned
> > long that find_vma needs
> 
> So essentially what we had a few versions ago
> (https://lkml.org/lkml/2019/4/30/785) plus changing unsigned longs to
> __user * across all IB code? I think the second part is something
> that's not related to this series and needs to be done separately. I
> can move untagging back to mlx4_get_umem_mr() though.
> 
> Catalin, you've initially asked to to move untagging out of
> mlx4_get_umem_mr(), do you have any comments on this?

It's fine by me either way. My original reasoning was to untag this at
the higher level as tags may not be relevant to the mlx4 code. If that's
what Jason prefers, go for it.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
