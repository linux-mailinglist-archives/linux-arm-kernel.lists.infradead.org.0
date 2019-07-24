Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4840473E54
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:24:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mzdaKRds71t+14JqzAZmhXdhT9tzCNA4U1JrYWq8vl4=; b=Kp4gZ6M3nba/C4
	AcCezsUW65oJou2IffkeJjAXUrY9S4I/AzQ//JSAhmIXyHd9l262l9AlUNIUN+3kEbZftviv2Ngfe
	qCieceiGy2WyqrV5aCWO0Bcl3X91TIjmyxCxSrslTSvzCNESj3jKf34Wc7gZbTtKm2S0/PzB7IR7D
	Lqog+JhWci5Pxsg5l3LsDfm0IPZ5UiFpDn9zAP1a3a2LT44xxezkUTrUmog/AcbfbczFaSOlHy0l3
	V0NGRucygiRFWOZhtBKgByuqAZ/4q4u+DV2Sb1yhwD8X9d9ULfiBAg8IXSphpFNvPV83P/kyFFch3
	yvbh9XbrqswN8g0Zh2EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNo9-0004wN-8e; Wed, 24 Jul 2019 20:24:17 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNnw-0004vf-9E
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:24:05 +0000
Received: by mail-wm1-x343.google.com with SMTP id g67so38627500wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:24:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QhT2aDY6DDwFo4u6pSSbFcjckneqY/fJmJSPh2en2QU=;
 b=exDKJ9fgAtICWDsB/RyvdCl1jI5YfgCIMwTNcxzkx1dyGll/JyL2AkvfnRrYbEirOB
 SEerS90nbZ0Y7uMtaafsNIrKrn2E8fDeOQgPH6N7PGG/abR8nOS6fvcaIr90v+MoUQKL
 Ya6XED0C/nS/Tu4DavDXSBDkL98MKY8aQ7cX7xm2OvAUaFe02AX21Q5ZVMnonR86zf17
 jiYfPhij00tvovhGp4mpN1FJt4aO8yIzLriVTZilkdXv0YgY3MVNNVFA64d7rNVzPt7/
 uDoAdw/I9wt7F4M+AoQ+DsbgfrLlirjsYmK30WF8s1pOpJ9mOGqbMiO76979hv3CBGmj
 6/GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QhT2aDY6DDwFo4u6pSSbFcjckneqY/fJmJSPh2en2QU=;
 b=ZIT0IXkfRYzgpxETeFMeENg0HiEB0ACh3BdHukHdr+DEdG+H/2EinXj1V2OHmfx0Dd
 F7bHAM/vq/A2G1H95aJ7UXGFhdG2pwIbijzsPtEb6ZchLUwDwrs4bgSwiEgpAcGJvwOQ
 XGDtSX7xWg6dtf/hwBClhIvOlBUrk/H1bJ83o8gY1kvvb2BLR1Quzx0SbN/rZuA/4Szn
 SWz/NTeoCnHD5zGWleJVME/cSYFvc18nkl05zyxx71LZxpS/TDJZYhAt6/lDxzSqYdL5
 mVKFjNXDi3bgCSgtJdiKm2vqy7cO7LKcA4ZZFZOb6P4heYDGqqUpJN+G/pFooOpkHpUp
 sgGg==
X-Gm-Message-State: APjAAAWkLgxvqoDyHoxUfqGVHHNn/gBhjpMi703Z/OJxbqGcKXXH/652
 rRfLLQJ3EHxVCeXL6iFHk094T/bnz82d71qUdzZcaQ==
X-Google-Smtp-Source: APXvYqxenlGpviTUKajhjd5h70fbVtfBZYjpg7adyab446NPvnKr6jujmjoqrk0eooFifFaFDgKzniRhKNTV1qCOUmI=
X-Received: by 2002:a1c:dc07:: with SMTP id t7mr78697953wmg.164.1563999842462; 
 Wed, 24 Jul 2019 13:24:02 -0700 (PDT)
MIME-Version: 1.0
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
 <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
 <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
In-Reply-To: <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 24 Jul 2019 13:23:50 -0700
Message-ID: <CALAqxLU0VUp=PGx5=JuVp6c5gwLqpSZJxs7ieL631QhdzNQTyA@mail.gmail.com>
Subject: Re: Limits for ION Memory Allocator
To: Laura Abbott <labbott@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_132404_331844_6B1A8A45 
X-CRM114-Status: GOOD (  21.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: dri-devel <dri-devel@lists.freedesktop.org>, Linux-MM <linux-mm@kvack.org>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 Joel Fernandes <joel@joelfernandes.org>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>,
 Christian Brauner <christian@brauner.io>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, alex.popov@linux.com,
 Alistair Delva <adelva@google.com>, Todd Kjos <tkjos@android.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Riley Andrews <riandrews@android.com>, syzkaller <syzkaller@googlegroups.com>,
 Martijn Coenen <maco@android.com>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Mark Brown <broonie@kernel.org>, Hridya Valsaraju <hridya@google.com>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 1:18 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Wed, Jul 24, 2019 at 12:36 PM Laura Abbott <labbott@redhat.com> wrote:
> >
> > On 7/17/19 12:31 PM, Alexander Popov wrote:
> > > Hello!
> > >
> > > The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
> > > Allocator.
> > >
> > > Syzkaller uses several methods [2] to limit memory consumption of the userspace
> > > processes calling the syscalls for testing the kernel:
> > >   - setrlimit(),
> > >   - cgroups,
> > >   - various sysctl.
> > > But these methods don't work for ION Memory Allocator, so any userspace process
> > > that has access to /dev/ion can bring the system to the out-of-memory state.
> > >
> > > An example of a program doing that:
> > >
> > >
> > > #include <sys/types.h>
> > > #include <sys/stat.h>
> > > #include <fcntl.h>
> > > #include <stdio.h>
> > > #include <linux/types.h>
> > > #include <sys/ioctl.h>
> > >
> > > #define ION_IOC_MAGIC         'I'
> > > #define ION_IOC_ALLOC         _IOWR(ION_IOC_MAGIC, 0, \
> > >                                     struct ion_allocation_data)
> > >
> > > struct ion_allocation_data {
> > >       __u64 len;
> > >       __u32 heap_id_mask;
> > >       __u32 flags;
> > >       __u32 fd;
> > >       __u32 unused;
> > > };
> > >
> > > int main(void)
> > > {
> > >       unsigned long i = 0;
> > >       int fd = -1;
> > >       struct ion_allocation_data data = {
> > >               .len = 0x13f65d8c,
> > >               .heap_id_mask = 1,
> > >               .flags = 0,
> > >               .fd = -1,
> > >               .unused = 0
> > >       };
> > >
> > >       fd = open("/dev/ion", 0);
> > >       if (fd == -1) {
> > >               perror("[-] open /dev/ion");
> > >               return 1;
> > >       }
> > >
> > >       while (1) {
> > >               printf("iter %lu\n", i);
> > >               ioctl(fd, ION_IOC_ALLOC, &data);
> > >               i++;
> > >       }
> > >
> > >       return 0;
> > > }
> > >
> > >
> > > I looked through the code of ion_alloc() and didn't find any limit checks.
> > > Is it currently possible to limit ION kernel allocations for some process?
> > >
> > > If not, is it a right idea to do that?
> > > Thanks!
> > >
> >
> > Yes, I do think that's the right approach. We're working on moving Ion
> > out of staging and this is something I mentioned to John Stultz. I don't
> > think we've thought too hard about how to do the actual limiting so
> > suggestions are welcome.
>
> In part the dmabuf heaps allow for separate heap devices, so we can
> have finer grained permissions to the specific heaps.  But that
> doesn't provide any controls on how much memory one process could
> allocate using the device if it has permission.
>
> I suspect the same issue is present with any of the dmabuf exporters
> (gpu/display drivers, etc), so this is less of an ION/dmabuf heap
> issue and more of a dmabuf core accounting issue.
>

Also, do unmapped memfd buffers have similar accounting issues?

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
