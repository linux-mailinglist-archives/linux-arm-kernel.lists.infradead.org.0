Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EE4442A25
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:01:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/m8iQKhUANXHHdks4tJ4Te3Xyb1K72PRjfRP9WNFSrc=; b=S3kR9kN4rOvyaJ
	jAbgThItwmtuacfdWbYrxZb4XzJneo7wJA4FIJjZ/NMRrFPaj7ySVwjnnbV+eyYByoeKj1NHAfxs7
	qcQAw034WiHN4X8cvVC0SfrBqQgDJGnFF6YCqrb+5dJXY4hy2M937rMtYy8kjTcsUfGI5v99kW7zq
	NpqAPTm9kIH30JrRSoBHbS6MVMaKJfdiR/5ImJiMyc+Lq86NoT0XK32wPNUQVC3CkaBEOBpxm4yif
	lcx9lm5mREHZ5zsnN5KtajyiQyUI23jqNr/qGbb9Fe/L50ZQ+oU2WIliqn/kucXR5A7B66fVsU8IQ
	DJyoIG7UzBuiEGdUE+qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4l8-0001DP-3I; Wed, 12 Jun 2019 15:01:54 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4kI-00013X-Ak
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:01:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B40A2B;
 Wed, 12 Jun 2019 08:01:00 -0700 (PDT)
Received: from C02TF0J2HF1T.local (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 71C193F557;
 Wed, 12 Jun 2019 08:00:46 -0700 (PDT)
Date: Wed, 12 Jun 2019 16:00:42 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Szabolcs Nagy <Szabolcs.Nagy@arm.com>
Subject: Re: [PATCH v17 15/15] selftests, arm64: add a selftest for passing
 tagged pointers to kernel
Message-ID: <20190612150040.GH28951@C02TF0J2HF1T.local>
References: <cover.1560339705.git.andreyknvl@google.com>
 <e024234e652f23be4d76d63227de114e7def5dff.1560339705.git.andreyknvl@google.com>
 <7cd942c0-d4c1-0cf4-623a-bce6ef14d992@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7cd942c0-d4c1-0cf4-623a-bce6ef14d992@arm.com>
User-Agent: Mutt/1.11.2 (2019-01-07)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_080102_464437_07CC102D 
X-CRM114-Status: GOOD (  15.93  )
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
Cc: Mark Rutland <Mark.Rutland@arm.com>,
 "kvm@vger.kernel.org" <kvm@vger.kernel.org>, Will Deacon <Will.Deacon@arm.com>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-mm@kvack.org" <linux-mm@kvack.org>,
 Khalid Aziz <khalid.aziz@oracle.com>,
 "linux-kselftest@vger.kernel.org" <linux-kselftest@vger.kernel.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <Vincenzo.Frascino@arm.com>, nd <nd@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dmitry Vyukov <dvyukov@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>,
 "linux-media@vger.kernel.org" <linux-media@vger.kernel.org>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
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

On Wed, Jun 12, 2019 at 01:30:36PM +0100, Szabolcs Nagy wrote:
> On 12/06/2019 12:43, Andrey Konovalov wrote:
> > --- /dev/null
> > +++ b/tools/testing/selftests/arm64/tags_lib.c
> > @@ -0,0 +1,62 @@
> > +// SPDX-License-Identifier: GPL-2.0
> > +
> > +#include <stdlib.h>
> > +#include <sys/prctl.h>
> > +
> > +#define TAG_SHIFT	(56)
> > +#define TAG_MASK	(0xffUL << TAG_SHIFT)
> > +
> > +#define PR_SET_TAGGED_ADDR_CTRL	55
> > +#define PR_GET_TAGGED_ADDR_CTRL	56
> > +#define PR_TAGGED_ADDR_ENABLE	(1UL << 0)
> > +
> > +void *__libc_malloc(size_t size);
> > +void __libc_free(void *ptr);
> > +void *__libc_realloc(void *ptr, size_t size);
> > +void *__libc_calloc(size_t nmemb, size_t size);
> 
> this does not work on at least musl.
> 
> the most robust solution would be to implement
> the malloc apis with mmap/munmap/mremap, if that's
> too cumbersome then use dlsym RTLD_NEXT (although
> that has the slight wart that in glibc it may call
> calloc so wrapping calloc that way is tricky).
> 
> in simple linux tests i'd just use static or
> stack allocations or mmap.
> 
> if a generic preloadable lib solution is needed
> then do it properly with pthread_once to avoid
> races etc.

Thanks for the feedback Szabolcs. I guess we can go back to the initial
simple test that Andrey had and drop the whole LD_PRELOAD hack (I'll
just use it for my internal testing).

BTW, when you get some time, please review Vincenzo's ABI documentation
patches from a user/libc perspective. Once agreed, they should become
part of this series.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
