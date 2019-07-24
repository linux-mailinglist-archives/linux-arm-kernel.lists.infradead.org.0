Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A13B273DBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 24 Jul 2019 22:19:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ggWU8bogdATpng/JpykWrfJ9zaKzlKj+e70pSq+V5L0=; b=CJDPeULIlYoL5j
	q5EHaP1fiSJdHJhupRX5EUXtKp4MbiC5tfN3FJ9rNOamXutowljcM54elKzCH6EZY8lhTpDsTJ7Xl
	ZZQN2wPc+10/mpxmayTaHBPsSxCPO2AY6ZbuMdqvfuXBNvneqK/I9HXLYRDLFZ1K63rBKusjW2AzU
	c7tKx8YQzYj65vWdn4M7gBNyogSHtSfKLLPLqz+LvXs3j4bCTfw/gg36EI8FAoXSheIMqGgDHGyZw
	+FJH4oQDlzswZURBZNufsi5m/H552mCmoP+0+wm+MTQAqTjLd87uP5UKVFyGirg619fLD91s4akWP
	LJV6RuPnxCkmS13IDAAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqNjd-00021a-Nd; Wed, 24 Jul 2019 20:19:37 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqNj5-0001oA-4P
 for linux-arm-kernel@lists.infradead.org; Wed, 24 Jul 2019 20:19:04 +0000
Received: by mail-wm1-x342.google.com with SMTP id h19so34220861wme.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 24 Jul 2019 13:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=uCyHvJVkRZumARLm11LdjYU2wgRDrjk7Xpd2Pm/4CUM=;
 b=MMFhBM5Pt5Bu3rS3QrPnpjTF3l1IJpk1QmQmjGaPFr5PvBQwNLRpzX+5/gr6aNSdCZ
 vvEAbsdi+zHpVh40gCBAf96lB7k/+P16YkMaax7BCa3VCjo20+sJY/pvmfXxP7jDAlzc
 AWhRW16LHsMMAlx9kYR+te6xxCZz9DYQkUb9cIX+Eig3VWNu65JSMjOmny0yf4uDVhLR
 DU2YrYMoOP8itf1qPvplk8lYCeENSprEH141M2gm8iDVRP/7Xr9nbG+sdjrPUHqfrU+6
 3k8U622iHi2XDVcsN54oFxmrEi6aL45ohjJEk/gDD0CN++uyO007eaD6Cs6hCiJ9dklQ
 2oNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=uCyHvJVkRZumARLm11LdjYU2wgRDrjk7Xpd2Pm/4CUM=;
 b=inML1hN522mIZjg4kspGzue/XbJc8Bbz6NQ+P40qNeKGFmbva+wAbwJM6Xv2GmyYew
 5r1FsP6m/z9jDqZFybEd2DZFnPFZp85G/ZJ9ltbpxH8zYdaoeHrvnjHDSb9qWsKhcvlW
 KVA1H/Hu1ImV+HRvU1tStLMMyaEiluzqNJe13SOw9KRiO4AhEGOg6HQ88073JlnHNPG+
 /0WudX7b0BKgVNyn7sFF5jrerljZHoudhJzucpFyzDeE16Tf0NtO1V4Ia7B83teh4Urf
 fG4D0mCr2BVXMjIRHdD/3pnS7/TTYLzF9KwTJIDF6LvEMyyVfXYWkG1Hl15JdmLOPi3f
 C8KQ==
X-Gm-Message-State: APjAAAUzFYO/LCboJaEGh/S1+dazRpJxx15W67bvF9JFrdfrLaEaYPdE
 3WQgPcjxMeZPTS1KzvckgqpJz+K2+C6FzWCNcUYiiw==
X-Google-Smtp-Source: APXvYqzne6wuqU7LConXTs0S6lFIYeqa69IIJz0V4W6ONH7N7hOznm+a/z9PghQX0bLW04gOZC7ziRyCGieZewzto2s=
X-Received: by 2002:a1c:d10c:: with SMTP id i12mr75821649wmg.152.1563999540296; 
 Wed, 24 Jul 2019 13:19:00 -0700 (PDT)
MIME-Version: 1.0
References: <3b922aa4-c6d4-e4a4-766d-f324ff77f7b5@linux.com>
 <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
In-Reply-To: <40f8b7d8-fafa-ad99-34fb-9c63e34917e2@redhat.com>
From: John Stultz <john.stultz@linaro.org>
Date: Wed, 24 Jul 2019 13:18:47 -0700
Message-ID: <CALAqxLU199ATrMFa2ARmHOZ3K6ZnOuDLSAqNrTfwOWJaYiW7Yg@mail.gmail.com>
Subject: Re: Limits for ION Memory Allocator
To: Laura Abbott <labbott@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_131903_175312_8D4CE5D9 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Wed, Jul 24, 2019 at 12:36 PM Laura Abbott <labbott@redhat.com> wrote:
>
> On 7/17/19 12:31 PM, Alexander Popov wrote:
> > Hello!
> >
> > The syzkaller [1] has a trouble with fuzzing the Linux kernel with ION Memory
> > Allocator.
> >
> > Syzkaller uses several methods [2] to limit memory consumption of the userspace
> > processes calling the syscalls for testing the kernel:
> >   - setrlimit(),
> >   - cgroups,
> >   - various sysctl.
> > But these methods don't work for ION Memory Allocator, so any userspace process
> > that has access to /dev/ion can bring the system to the out-of-memory state.
> >
> > An example of a program doing that:
> >
> >
> > #include <sys/types.h>
> > #include <sys/stat.h>
> > #include <fcntl.h>
> > #include <stdio.h>
> > #include <linux/types.h>
> > #include <sys/ioctl.h>
> >
> > #define ION_IOC_MAGIC         'I'
> > #define ION_IOC_ALLOC         _IOWR(ION_IOC_MAGIC, 0, \
> >                                     struct ion_allocation_data)
> >
> > struct ion_allocation_data {
> >       __u64 len;
> >       __u32 heap_id_mask;
> >       __u32 flags;
> >       __u32 fd;
> >       __u32 unused;
> > };
> >
> > int main(void)
> > {
> >       unsigned long i = 0;
> >       int fd = -1;
> >       struct ion_allocation_data data = {
> >               .len = 0x13f65d8c,
> >               .heap_id_mask = 1,
> >               .flags = 0,
> >               .fd = -1,
> >               .unused = 0
> >       };
> >
> >       fd = open("/dev/ion", 0);
> >       if (fd == -1) {
> >               perror("[-] open /dev/ion");
> >               return 1;
> >       }
> >
> >       while (1) {
> >               printf("iter %lu\n", i);
> >               ioctl(fd, ION_IOC_ALLOC, &data);
> >               i++;
> >       }
> >
> >       return 0;
> > }
> >
> >
> > I looked through the code of ion_alloc() and didn't find any limit checks.
> > Is it currently possible to limit ION kernel allocations for some process?
> >
> > If not, is it a right idea to do that?
> > Thanks!
> >
>
> Yes, I do think that's the right approach. We're working on moving Ion
> out of staging and this is something I mentioned to John Stultz. I don't
> think we've thought too hard about how to do the actual limiting so
> suggestions are welcome.

In part the dmabuf heaps allow for separate heap devices, so we can
have finer grained permissions to the specific heaps.  But that
doesn't provide any controls on how much memory one process could
allocate using the device if it has permission.

I suspect the same issue is present with any of the dmabuf exporters
(gpu/display drivers, etc), so this is less of an ION/dmabuf heap
issue and more of a dmabuf core accounting issue.

Another practical complication is that with Android these days, I
believe the gralloc code lives in the HIDL-ized
android.hardware.graphics.allocator@2.0-service HAL, which does the
buffer allocations on behalf of requests sent over the binder IPC
interface. So with all dma-buf allocations effectively going through
that single process, I'm not sure we would want to put per-process
limits on the allocator.  Instead, I suspect we'd want the memory
covered by the dmabuf to be accounted against processes that have the
dmabuf fd still open?

I know Android has some logic with their memtrack HAL to I believe try
to do accounting of gpu memory against various processes, but I've not
looked at that in detail recently.

Todd/Joel: Any input here?

thanks
-john

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
