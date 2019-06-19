Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D73F34BBE5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 16:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FZNsFx4TS8uNUrfZO59tDewuJAd6n8oHHF+l0qnNUsI=; b=CGaIdymcnDJVXB
	I7ylxXpbMxhwP69pVs8DCFB/YlWHjmJ2fwpcmJuQYH0w6sR9egprTWUkf5cvZTw2T6HzNsl/RbvCx
	Bd8xrAssJ4tVai4Cyi5f3eGQ1kys2qcr9tRlV2w/tE+WJtMvsnPyE9pALoNwLFiJWwZuSAZ0rJS8S
	JFPoivzyPANtE1LRlNQZIdjHwRFxdh7czxApF+rxm01NOu7+l6+6eVxyW05kYC+HzMVO+8MGt/u7V
	2qdDX0zfudyi91Mm70m91n4mQLNh3ZITz1XjXiTx+PjiOJWi2tpmXONwPe48wrYXM7/4Tm433DMZx
	NvQe6moEvXdeyXLdFrug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdbnd-0008F4-1I; Wed, 19 Jun 2019 14:42:57 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdbnB-00081b-UC
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 14:42:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so7332520pls.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 19 Jun 2019 07:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=ZUb5QTtqm4gVcMQkDqa/NfcfqCV/fqPlPHdvScpz0wo=;
 b=jbRaxdb+WWdzPQKppmuoBauA7dvRkdybKRNWtDi8BmVPL/duOwFKyfvGY1RtILXxC+
 E8fMNzdn99xzzaV1RU67k5BSaIeAySJVjGFam1tncgt0b1c3N/H+rn9Q1Ce9beAuIxY9
 4KU4S5Y6wyOdt8eRLq9iK/DasXwgpWgTB7OZoLagsJt17dKKFAk9z5/knt/SGGUXD1Pm
 OoCcVKVcumlyUAfwODg+GBNNkPYKXfWaLZhXGdXetH+hDPabh+cOTFmJx9VZ0MK9R5nx
 t58AUdQKa58pKb0SOzR1wBFV6nXGOJqmSpABaHdX/di+h0+s+ytlFiUVqPji7K9x3yTy
 3m5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ZUb5QTtqm4gVcMQkDqa/NfcfqCV/fqPlPHdvScpz0wo=;
 b=JjBUbIY5xahfBO21+4L2D220dGaXxG2nZbNPXo66ubZEeJxyhpMCpIaKBg/NUKoHeF
 UB/YL0jcFPt1NuSbJSmao5RNqaFOeWXk/AfK6NN3UFRX1ofoelRGDKillGYNGkadryKU
 YiB+jclO8wOmbAxlDRp6CI868ddqxaZQYoxQO4ptlBac49PJC4NrNP7CVNMpRBeOWISV
 CG0fSj7LLtiTo/iZ2ctdJMZd+teBC3HtzJjvFk8R34bSmKfdy/PYY+jxXBwC4VYMmi/y
 vaUAI6p9xh9NDBkfQox0uMHrqwTlrGU9lRjH1mBA4kIvjyChlq4pyPDztxuGxND7CQtm
 kHwQ==
X-Gm-Message-State: APjAAAURhi2IbNEPJbkzBNOK2EIXVi8mjHvJHxv+rFQgWvmboVvXV0lt
 Ja387IB/u4nhhK++SiPaWrUz/LOwk1rErvupaL7kVA==
X-Google-Smtp-Source: APXvYqz/8xJBvM5YApkc8q1BMr1dT5VicIPSZVfioxxqqY6SMtW097rTx7U+hky1E4IR1FcJP1uIwN60haaDiBmSyao=
X-Received: by 2002:a17:902:4183:: with SMTP id
 f3mr3975974pld.336.1560955346243; 
 Wed, 19 Jun 2019 07:42:26 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
 <e024234e652f23be4d76d63227de114e7def5dff.1560339705.git.andreyknvl@google.com>
 <7cd942c0-d4c1-0cf4-623a-bce6ef14d992@arm.com>
 <20190612150040.GH28951@C02TF0J2HF1T.local>
In-Reply-To: <20190612150040.GH28951@C02TF0J2HF1T.local>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Wed, 19 Jun 2019 16:42:15 +0200
Message-ID: <CAAeHK+yWdW_sa2HgD8foCuwHj97dgGd07K2b1W1-9fpLXGmphQ@mail.gmail.com>
Subject: Re: [PATCH v17 15/15] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
To: Catalin Marinas <catalin.marinas@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_074230_044400_B10B4F07 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>, Will Deacon <Will.Deacon@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>, nd <nd@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <Robin.Murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 5:01 PM Catalin Marinas <catalin.marinas@arm.com> wrote:
>
> On Wed, Jun 12, 2019 at 01:30:36PM +0100, Szabolcs Nagy wrote:
> > On 12/06/2019 12:43, Andrey Konovalov wrote:
> > > --- /dev/null
> > > +++ b/tools/testing/selftests/arm64/tags_lib.c
> > > @@ -0,0 +1,62 @@
> > > +// SPDX-License-Identifier: GPL-2.0
> > > +
> > > +#include <stdlib.h>
> > > +#include <sys/prctl.h>
> > > +
> > > +#define TAG_SHIFT  (56)
> > > +#define TAG_MASK   (0xffUL << TAG_SHIFT)
> > > +
> > > +#define PR_SET_TAGGED_ADDR_CTRL    55
> > > +#define PR_GET_TAGGED_ADDR_CTRL    56
> > > +#define PR_TAGGED_ADDR_ENABLE      (1UL << 0)
> > > +
> > > +void *__libc_malloc(size_t size);
> > > +void __libc_free(void *ptr);
> > > +void *__libc_realloc(void *ptr, size_t size);
> > > +void *__libc_calloc(size_t nmemb, size_t size);
> >
> > this does not work on at least musl.
> >
> > the most robust solution would be to implement
> > the malloc apis with mmap/munmap/mremap, if that's
> > too cumbersome then use dlsym RTLD_NEXT (although
> > that has the slight wart that in glibc it may call
> > calloc so wrapping calloc that way is tricky).
> >
> > in simple linux tests i'd just use static or
> > stack allocations or mmap.
> >
> > if a generic preloadable lib solution is needed
> > then do it properly with pthread_once to avoid
> > races etc.
>
> Thanks for the feedback Szabolcs. I guess we can go back to the initial
> simple test that Andrey had and drop the whole LD_PRELOAD hack (I'll
> just use it for my internal testing).

OK, will do in v18.

>
> BTW, when you get some time, please review Vincenzo's ABI documentation
> patches from a user/libc perspective. Once agreed, they should become
> part of this series.
>
> --
> Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
