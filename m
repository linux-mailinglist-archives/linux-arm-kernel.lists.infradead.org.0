Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FB9729586
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 12:12:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8oqRTSmTAoMjeNjyHeSHkncsJUwI5WQCw1gCw9OD58=; b=ebBBxV19doDyJD
	YHhRsy8zkfZHgrXqVnWyy0jS38tVdoG7KiqWrEXCwG409ayVvVuLpqLvGrIOoNux9CC2amuBpAvZM
	IcmDdAp0H4ea2Z5asY37R7cGC0Y5xGfQ1/YjTYRNe6LWL8YL+Ico2joI5goIVJUlPrav38KSAMcbQ
	U9EZ/AQrf3iUn0g1z4sko4l5qSk9SzweyYYy+9Av7nVp4xf/E2ZAouN5J6h7i7a/uSpvebL3Rekti
	/rZdbHehECExV0C0nr9Ew19fSC49C5Phea2+Trku9z2p18wfEYzYcGfE/vSacoi9NRE6SXbakAPus
	ZkRLO21L8MO0hSEZaqdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU7BC-0003q3-TP; Fri, 24 May 2019 10:12:02 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU7B5-0003pG-KJ
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 10:11:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9EB11A78;
 Fri, 24 May 2019 03:11:53 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 85B933F703;
 Fri, 24 May 2019 03:11:47 -0700 (PDT)
Date: Fri, 24 May 2019 11:11:40 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Khalid Aziz <khalid.aziz@oracle.com>
Subject: Re: [PATCH v15 00/17] arm64: untag user pointers passed to the kernel
Message-ID: <20190524101139.36yre4af22bkvatx@mbp>
References: <cover.1557160186.git.andreyknvl@google.com>
 <20190517144931.GA56186@arrakis.emea.arm.com>
 <CAFKCwrj6JEtp4BzhqO178LFJepmepoMx=G+YdC8sqZ3bcBp3EQ@mail.gmail.com>
 <20190521182932.sm4vxweuwo5ermyd@mbp>
 <201905211633.6C0BF0C2@keescook>
 <6049844a-65f5-f513-5b58-7141588fef2b@oracle.com>
 <20190523201105.oifkksus4rzcwqt4@mbp>
 <ffe58af3-7c70-d559-69f6-1f6ebcb0fec6@oracle.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ffe58af3-7c70-d559-69f6-1f6ebcb0fec6@oracle.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_031155_677245_15EF1420 
X-CRM114-Status: GOOD (  29.15  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 linux-rdma@vger.kernel.org, amd-gfx@lists.freedesktop.org,
 Dmitry Vyukov <dvyukov@google.com>, Dave Martin <Dave.Martin@arm.com>,
 Evgenii Stepanov <eugenis@google.com>, linux-media@vger.kernel.org,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Yishai Hadas <yishaih@mellanox.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Kostya Serebryany <kcc@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Felix Kuehling <Felix.Kuehling@amd.com>, LKML <linux-kernel@vger.kernel.org>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Elliott Hughes <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 03:49:05PM -0600, Khalid Aziz wrote:
> On 5/23/19 2:11 PM, Catalin Marinas wrote:
> > On Thu, May 23, 2019 at 11:51:40AM -0600, Khalid Aziz wrote:
> >> On 5/21/19 6:04 PM, Kees Cook wrote:
> >>> As an aside: I think Sparc ADI support in Linux actually side-stepped
> >>> this[1] (i.e. chose "solution 1"): "All addresses passed to kernel must
> >>> be non-ADI tagged addresses." (And sadly, "Kernel does not enable ADI
> >>> for kernel code.") I think this was a mistake we should not repeat for
> >>> arm64 (we do seem to be at least in agreement about this, I think).
> >>>
> >>> [1] https://lore.kernel.org/patchwork/patch/654481/
> >>
> >> That is a very early version of the sparc ADI patch. Support for tagged
> >> addresses in syscalls was added in later versions and is in the patch
> >> that is in the kernel.
> > 
> > I tried to figure out but I'm not familiar with the sparc port. How did
> > you solve the tagged address going into various syscall implementations
> > in the kernel (e.g. sys_write)? Is the tag removed on kernel entry or it
> > ends up deeper in the core code?
> 
> Another spot I should point out in ADI patch - Tags are not stored in
> VMAs and IOMMU does not support ADI tags on M7. ADI tags are stripped
> before userspace addresses are passed to IOMMU in the following snippet
> from the patch:
> 
> diff --git a/arch/sparc/mm/gup.c b/arch/sparc/mm/gup.c
> index 5335ba3c850e..357b6047653a 100644
> --- a/arch/sparc/mm/gup.c
> +++ b/arch/sparc/mm/gup.c
> @@ -201,6 +202,24 @@ int __get_user_pages_fast(unsigned long start, int
> nr_pages
> , int write,
>         pgd_t *pgdp;
>         int nr = 0;
> 
> +#ifdef CONFIG_SPARC64
> +       if (adi_capable()) {
> +               long addr = start;
> +
> +               /* If userspace has passed a versioned address, kernel
> +                * will not find it in the VMAs since it does not store
> +                * the version tags in the list of VMAs. Storing version
> +                * tags in list of VMAs is impractical since they can be
> +                * changed any time from userspace without dropping into
> +                * kernel. Any address search in VMAs will be done with
> +                * non-versioned addresses. Ensure the ADI version bits
> +                * are dropped here by sign extending the last bit before
> +                * ADI bits. IOMMU does not implement version tags.
> +                */
> +               addr = (addr << (long)adi_nbits()) >> (long)adi_nbits();
> +               start = addr;
> +       }
> +#endif
>         start &= PAGE_MASK;
>         addr = start;
>         len = (unsigned long) nr_pages << PAGE_SHIFT;

Thanks Khalid. I missed that sparc does not enable HAVE_GENERIC_GUP, so
you fix this case here. If we add the generic untagged_addr() macro in
the generic code, I think sparc can start making use of it rather than
open-coding the shifts.

There are a few other other places where tags can leak and the core code
would get confused (for example, madvise()). I presume your user space
doesn't exercise them. On arm64 we plan to just allow the C library to
tag any new memory allocation, so those core code paths would need to be
covered.

And similarly, devices, IOMMU, any DMA would ignore tags.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
