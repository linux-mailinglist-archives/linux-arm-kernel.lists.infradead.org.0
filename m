Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28A4C764C3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z71c18unv9AA7TOFaFMUWWAhk1wjA0F8cnRl8x3bcPM=; b=oBgl3pRE5hLsps
	7WDCkIK7hKaflyHCE52Mgw09mR9yWgywqklbM49SfzVy7odZbNoawiBPrrkXoJxUiO8NAdcFpZ5a+
	fPJZt9NyVeqysJOJFxF5sUHiklmuXXpHlAv8UDZ3CZxUSRn93zs2+yWbonfopwraMUjlvzNKhAATN
	XHnET0uEKs9hj3uV3aOtLCxDRXxiyX56hDvBZy75fjPcWgBX1RkUwQ/j6ut4AcX68hmTKwMMfE4k+
	C16kiKp0t6tF5u774Cd6SkgHaEN3RM3J7lJVvBgWrjHW0zDKiuSG1Uqr/FCV2uYPihV1pLEHxnvNK
	1n5z2L6ds5mnh0o+MHZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqyfS-0002rH-Ht; Fri, 26 Jul 2019 11:45:46 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqyfC-0002qp-Re
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:45:32 +0000
Received: by mail-lj1-x244.google.com with SMTP id z28so51277545ljn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 26 Jul 2019 04:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=joelfernandes.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=IIyzRbatR38ttllEYMMotwwVkanyqchmaJcpYBpIki0=;
 b=pETxnGiWkSphfi8/+4c4u+22brSho8PFLYphcLagT7bB4i3SZD16fRKJ1ZGb4qp9QL
 XlEsF8oKodWUi4PTu9/XdlUG9gA1pNqyjoA1KsmDLbgysBzBCd4nQcFsDELuCIbpAPhL
 21AoZAsF7HFuXv/4+6Ros9QR2I6qyBtvICViA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=IIyzRbatR38ttllEYMMotwwVkanyqchmaJcpYBpIki0=;
 b=HALIEbSCCcJ/iBpYCfkoZ7BVnkOwFCUBioHnOkgodUfOWSNVEnxHJnVH6Z2hoQ0Hk0
 uSzop0cEKyk+NXeL13KjaWuVyuVLzSS20XL4zQbUKn4+DUQgprT3iKKaoA14Hx1fRglW
 G9QCzDB+peaSaTVn0G5jNZU4Ur1hK8WPQP4JDBwcZ6k7FcP1zteWaiYS9p4vsp1Efmmu
 1Ny3c1sUnE+oZUTtK+NUC+jjAx56Bo0qlRhC+aVS0GFnubuOL1ErQkWpGmRDg6LJWgRo
 OQKFM55R6UHmuqq6hFT1x0JaSdnuEL1ftFxbT/DE1rRY95n5XrmYcEfhFemq3JHw/YP4
 y8mg==
X-Gm-Message-State: APjAAAVleksQo+eyJNKlDsnMxYy47I405JfBv9fTG7IEnzpL2192ftfY
 cd7zA4hAYEH7XxxERWHNVKhBeXhkiwTAv2GaEDw=
X-Google-Smtp-Source: APXvYqy1v+K91LR9Uqf7ttTOrc82KHvHW4Tm7nxGruwvykh6mSwzjj9McmHGuJKaCGbsiBx37LheJaMcKc4BiMCDW/c=
X-Received: by 2002:a2e:3602:: with SMTP id d2mr13542107lja.112.1564141528767; 
 Fri, 26 Jul 2019 04:45:28 -0700 (PDT)
MIME-Version: 1.0
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
 <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
 <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
 <CALAqxLU0VUp=PGx5=JuVp6c5gwLqpSZJxs7ieL631QhdzNQTyA@mail.gmail.com>
In-Reply-To: <CALAqxLU0VUp=PGx5=JuVp6c5gwLqpSZJxs7ieL631QhdzNQTyA@mail.gmail.com>
From: Joel Fernandes <joel@joelfernandes.org>
Date: Fri, 26 Jul 2019 07:45:17 -0400
Message-ID: <CAEXW_YQFKhfS=2-LkkDkSg_1XzWh9WUa__nWjqxL0Uts9yyDdg@mail.gmail.com>
Subject: Re: Limits for ION Memory Allocator
To: John Stultz <john.stultz@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_044530_943146_948FDF03 
X-CRM114-Status: GOOD (  21.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Daniel Vetter <daniel.vetter@intel.com>,
 Sumit Semwal <sumit.semwal@linaro.org>,
 driverdevel <devel@driverdev.osuosl.org>, Erick Reyes <erickreyes@google.com>,
 Christian Brauner <christian@brauner.io>, Dmitry Vyukov <dvyukov@google.com>,
 Laura Abbott <labbott@redhat.com>, alex.popov@linux.com,
 Alistair Delva <adelva@google.com>, Todd Kjos <tkjos@android.com>,
 Andrey Konovalov <andreyknvl@google.com>, Chenbo Feng <fengc@google.com>,
 "moderated list:DMA BUFFER SHARING FRAMEWORK" <linaro-mm-sig@lists.linaro.org>,
 Riley Andrews <riandrews@android.com>, syzkaller <syzkaller@googlegroups.com>,
 Martijn Coenen <maco@android.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 LKML <linux-kernel@vger.kernel.org>,
 =?UTF-8?B?QXJ2ZSBIasO4bm5ldsOlZw==?= <arve@android.com>,
 Mark Brown <broonie@kernel.org>, Hridya Valsaraju <hridya@google.com>,
 Brian Starkey <brian.starkey@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 4:24 PM John Stultz <john.stultz@linaro.org> wrote:
>
> On Wed, Jul 24, 2019 at 1:18 PM John Stultz <john.stultz@linaro.org> wrote:
> >
> > On Wed, Jul 24, 2019 at 12:36 PM Laura Abbott <labbott@redhat.com> wrote:
> > >
> > > On 7/17/19 12:31 PM, Alexander Popov wrote:
> > > > Hello!
> > > >
> > > > The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
> > > > Allocator.
> > > >
> > > > Syzkaller uses several methods [2] to limit memory consumption of the userspace
> > > > processes calling the syscalls for testing the kernel:
> > > >   - setrlimit(),
> > > >   - cgroups,
> > > >   - various sysctl.
> > > > But these methods don't work for ION Memory Allocator, so any userspace process
> > > > that has access to /dev/ion can bring the system to the out-of-memory state.
> > > >
> > > > An example of a program doing that:
> > > >
> > > >
> > > > #include <sys/types.h>
> > > > #include <sys/stat.h>
> > > > #include <fcntl.h>
> > > > #include <stdio.h>
> > > > #include <linux/types.h>
> > > > #include <sys/ioctl.h>
> > > >
> > > > #define ION_IOC_MAGIC         'I'
> > > > #define ION_IOC_ALLOC         _IOWR(ION_IOC_MAGIC, 0, \
> > > >                                     struct ion_allocation_data)
> > > >
> > > > struct ion_allocation_data {
> > > >       __u64 len;
> > > >       __u32 heap_id_mask;
> > > >       __u32 flags;
> > > >       __u32 fd;
> > > >       __u32 unused;
> > > > };
> > > >
> > > > int main(void)
> > > > {
> > > >       unsigned long i = 0;
> > > >       int fd = -1;
> > > >       struct ion_allocation_data data = {
> > > >               .len = 0x13f65d8c,
> > > >               .heap_id_mask = 1,
> > > >               .flags = 0,
> > > >               .fd = -1,
> > > >               .unused = 0
> > > >       };
> > > >
> > > >       fd = open("/dev/ion", 0);
> > > >       if (fd == -1) {
> > > >               perror("[-] open /dev/ion");
> > > >               return 1;
> > > >       }
> > > >
> > > >       while (1) {
> > > >               printf("iter %lu\n", i);
> > > >               ioctl(fd, ION_IOC_ALLOC, &data);
> > > >               i++;
> > > >       }
> > > >
> > > >       return 0;
> > > > }
> > > >
> > > >
> > > > I looked through the code of ion_alloc() and didn't find any limit checks.
> > > > Is it currently possible to limit ION kernel allocations for some process?
> > > >
> > > > If not, is it a right idea to do that?
> > > > Thanks!
> > > >
> > >
> > > Yes, I do think that's the right approach. We're working on moving Ion
> > > out of staging and this is something I mentioned to John Stultz. I don't
> > > think we've thought too hard about how to do the actual limiting so
> > > suggestions are welcome.
> >
> > In part the dmabuf heaps allow for separate heap devices, so we can
> > have finer grained permissions to the specific heaps.  But that
> > doesn't provide any controls on how much memory one process could
> > allocate using the device if it has permission.
> >
> > I suspect the same issue is present with any of the dmabuf exporters
> > (gpu/display drivers, etc), so this is less of an ION/dmabuf heap
> > issue and more of a dmabuf core accounting issue.
> >
>
> Also, do unmapped memfd buffers have similar accounting issues?
>

The syzcaller bot didn't complain about this for memfd yet, so I suspect not ;-)

With memfd since it uses shmem underneath, __vm_enough_memory() is
called during shmem_acct_block() which should take per-process memory
into account already and fail if there is not enough memory.

Should ION be doing something similar to fail if there's not enough memory?

thanks,

- Joel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
