Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB7ED6D28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 04:13:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WXVwMjtIEYUIBQzP2jB8VNKgTi91XvC9Tb21RYZVW0U=; b=lfj/eSa+ZerBJL
	FbKy7TZwBoE9o3Cmai48e0a3I0MtJVn+dUa/X/rM+r8UEkdD7b4r0/x9A/fVlwZuVAWbiSxf11mpZ
	mHaLRZAy7kPg9hz+wM+/UhurG2dW7BZ/WaIYm2qtmUioQg3sZWBbNOgXnWdkg+9ujyHUe6dbzrzWq
	LDlBketIHA4iarHCF/nmOLyPc5QmXOlJL14fM4nsLvOHcKazHQj+qITSY2PnPj05CPAS0S9LlnsVg
	Y9WsWz4KzZBp/Q0m6nZwHpVXYgRVlh8VlgpfCDqpbTttvRD09r7ngwPRo5JzAwgMbSBFOGHJcUmMk
	wMvCQ5ec5HD77kShynCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKCKS-00063L-Es; Tue, 15 Oct 2019 02:12:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKCKJ-00062W-TM
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 02:12:46 +0000
Received: by mail-ed1-x543.google.com with SMTP id c4so16468802edl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 19:12:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=soleen.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=jOhD3hzc9gkVVesDRzxLSlzpVe5eTMaHFFgdaKQQ07k=;
 b=nU79VfkycsVBHacxrWznQN62JGOZe8khINHM3Gg3YHmMcGTwooCd1DcRctx0IqEyvx
 LciGAeSdkTSUTFzBPT0zx4Ddz7vYz/3hxeQkZHYHyaFTieVZccEl+lLoGNNSgxSpM41v
 nnqK3rC2xmxmR5NIfbbuBcxqSDGrr1Q0ZwRcEFXob1ISS6YNovVJxefPL8ZuUIqsG8tN
 L9SxUAPHmpdGXCE+g0GDE12MBdhTIH1r/iQB9j2U3ifbtUxuHhYrygLXfnBVQKJZZiCR
 GBMNUMvS0ueb9l8OXIROCTnP3Xk3c2bISQ4s6Dtk3vaJBXU+vIpX7i3FEpm5Po21ZQ9c
 hrqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jOhD3hzc9gkVVesDRzxLSlzpVe5eTMaHFFgdaKQQ07k=;
 b=d/VzjRlJtY/D2fgT8gxmmQ/x6Cj+zvRyIT2xz7DLvml6KdCKB5KRMqNwoBiIix46F4
 6X0cpy4jFAxX+KY/AlBM3zdlqztDsdncS7TkZgOjMcwhvJ2K/KgOKyu/+0g7eJ4BvQcz
 OfMp/4yCMwhSPqVoZOH0ewXLEVVRnSBO0/TyqCfCKQGBlGxPR5ClX+gZSJDndFdo1LVn
 eoMamXszJtT5hlHV7xHmlORhpbMPOOl0FBVSF0SKnyGlGh54UA56QPiBOcg6M4hbfWV/
 FnAG00ZmkdQuc11FB6B53+yErtHOd1M3qjktMgjLfNR6tbBpISSZEcsNdqjSO4NQDJ6p
 1FKg==
X-Gm-Message-State: APjAAAXhwRBi8E8ANJH3Tlhc8ehK9riJFUdQhTB78VwHbKuRJxAo/Xj3
 im8WLTjnv+k+dIWcekDaf17w8Y0iplpOIWMCavLkcw==
X-Google-Smtp-Source: APXvYqwNQKj7s+6OY/jBKvF1nOFxl4VQ4CypnGmfd542O6pQR7O4f7fc2vcVaYR1d0dsPYtfdA8Rp1n5GtR5IbIPI0M=
X-Received: by 2002:a17:907:2095:: with SMTP id
 pv21mr30411260ejb.324.1571105561941; 
 Mon, 14 Oct 2019 19:12:41 -0700 (PDT)
MIME-Version: 1.0
References: <20191004185234.31471-1-pasha.tatashin@soleen.com>
 <20191004185234.31471-17-pasha.tatashin@soleen.com>
 <45a2f0b8-5bac-8b5d-d595-f92e9acb27ad@arm.com>
In-Reply-To: <45a2f0b8-5bac-8b5d-d595-f92e9acb27ad@arm.com>
From: Pavel Tatashin <pasha.tatashin@soleen.com>
Date: Mon, 14 Oct 2019 22:12:30 -0400
Message-ID: <CA+CK2bCBEp8Uvm8oF-LJ6hUpJtSYN0xuK6Esd75czYBAWsA5GQ@mail.gmail.com>
Subject: Re: [PATCH v6 16/17] arm64: kexec: configure trans_pgd page table for
 kexec
To: James Morse <james.morse@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_191244_041780_7E08121D 
X-CRM114-Status: GOOD (  33.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Vladimir Murzin <vladimir.murzin@arm.com>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Bhupesh Sharma <bhsharma@redhat.com>,
 kexec mailing list <kexec@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, James Morris <jmorris@namei.org>,
 linux-mm <linux-mm@kvack.org>, "Eric W. Biederman" <ebiederm@xmission.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, will@kernel.org,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > +/* Body of the vector for escalating to EL2 from relocation routine */
> > +extern const unsigned char kexec_el1_sync[];
> > +extern const unsigned long kexec_el1_sync_size;
>
> > +#define KEXEC_EL2_VECTOR_TABLE_SIZE  2048
>
>
> > +#define KEXEC_EL2_SYNC_OFFSET                (KEXEC_EL2_VECTOR_TABLE_SIZE / 2)
>
> Yuck.
>
> Please don't generate one-off vectors like this. Create _all_ of them, and have the ones
> that should never happen spin round a branch. Someone will hit one eventually, its a lot
> easier to work out what happened if it stops on the first fault, instead of executing junk
> and flying off into the weeds.
>
> git grep invalid_vector
>
> Having the vectors at a known offset in the page that does the relocation means you have a
> fair idea what happened from just the PC.

Sure, I will set invalid_vector of every unused part of the table.

> > +     for (entry = kimage->head; !(entry & IND_DONE); entry = *ptr++) {
> > +             addr = entry & PAGE_MASK;
> > +
> > +             switch (entry & IND_FLAGS) {
> > +             case IND_DESTINATION:
> > +                     dest = addr;
> > +                     break;
> > +             case IND_INDIRECTION:
> > +                     ptr = __va(addr);
> > +                     if (rc)
> > +                             return rc;
> > +                     break;
>
> > +             case IND_SOURCE:
> > +                     rc = trans_pgd_map_page(info, pgdp, __va(addr),
> > +                                             src_va, PAGE_KERNEL);
> > +                     if (rc)
> > +                             return rc;
> > +                     rc = trans_pgd_map_page(info, pgdp, __va(dest),
> > +                                             dst_va, PAGE_KERNEL);
> > +                     if (rc)
> > +                             return rc;
> > +                     dest += PAGE_SIZE;
> > +                     src_va += PAGE_SIZE;
> > +                     dst_va += PAGE_SIZE;
> > +                     len += PAGE_SIZE;
> > +             }
>
> It looks like you're building a swiss cheese.

The userland provides several segments that need to be loaded at
specific physical locations. Each of those segment is mapped with
virtually contiguous source and destinations. We do not have swiss
cheese, even between the segments the VAs are contiguous.

>
> If you disable RODATA_FULL_DEFAULT_ENABLED, the kernel will use block mappings for the
> linear map. This dramatically reduces the amount of memory in use. On Juno running with
> 39bit/4K, there is typically 6G of contiguous memory with no firmware/uefi holes in it.
> This is mapped by 6 1G block mappings, which take up no additional memory.

Kexec loads segments in the common code, and pages for the segments
are allocated one at a time in a special allocator that checks that
the allocated pages are outside of the destination addresses. The
allocations are done one base page at a time:

kimage_load_normal_segment()
  kimage_alloc_page()

Unlike with control pages, it is not simple to change them to use
large pages. The control pages can be allocated as large pages, as
kimage_alloc_normal_control_pages() accepts an "order" argument.

Without overhaul of the common code I do not see how can we benefit
from having large pages here. But even then, imo it is not a high
priority. Performance wise, I do not think we will win anything by
using large mappings here. The only benefit of using large pages here
is to save space. But, we do not waste any space for crash kernel, as
crash kernel does not require relocation, so the only space that we
will space is only for normal reboot, but that means we are about to
be rebooted, and saving space is probably not a high priority.

> For the first go at supporting this in mainline please keep as close as possible to the
> existing hibernate code. Please use the helpers that copy the linear map.
> (if you cant do pa->va in the relocation assembly you'd need to generate a virtually
> addressed structure, which could then use hibernate's relocation assembly)
>
> If all this extra code turns out to be a significant performance improvement, I'd like to
> see the numbers. We can come back to it after we've got the simplest way of running
> kexec's relocation with the MMU on merged.

I had some RFC version of this project where I had a linear map, but
was asked to create mapping only for segments that are being copied.
Which, I think is the right approach here.  The page table is smaller
(when small mappings are used), faster, because copies are not
sparse), and the assembly code is MUCH simpler because all we need to
do if bcopy(src, dst, len)

+3:     copy_page x1, x2, x3, x4, x5, x6, x7, x8, x9, x10
+       sub     x11, x11, #PAGE_SIZE
+       cbnz    x11, 3b                         /* page copy loop */

These 3 lines copy all segments to the correct locations.

> > +static int mmu_relocate_setup(struct kimage *kimage, unsigned long kern_reloc,
> > +                           struct kern_reloc_arg *kern_reloc_arg)
> > +{
> > +     struct trans_pgd_info info = {
> > +             .trans_alloc_page       = kexec_page_alloc,
> > +             .trans_alloc_arg        = kimage,
> > +     };
> > +
> > +     pgd_t *trans_ttbr0 = kexec_page_alloc(kimage);
> > +     pgd_t *trans_ttbr1 = kexec_page_alloc(kimage);
> > +     int rc;
> > +
> > +     if (!trans_ttbr0 || !trans_ttbr1)
> > +             return -ENOMEM;
> > +
> > +     rc = map_segments(kimage, trans_ttbr1, &info,
> > +                       &kern_reloc_arg->copy_len);
> > +     if (rc)
> > +             return rc;
> > +
> > +     /* Map relocation function va == pa */
> > +     rc = trans_pgd_map_page(&info, trans_ttbr0,  __va(kern_reloc),
> > +                             kern_reloc, PAGE_KERNEL_EXEC);
> > +     if (rc)
> > +             return rc;
>
> You can't do this with the page table helpers. We support platforms with no memory in
> range of TTBR0's VA space. See dd006da21646f
>
> You will need some idmapped memory to turn the MMU off on a system that booted at EL1.
> This will need to be in a set of page tables that the helpers can't easily touch - so it
> should only be a single page. (like the arch code's existing idmap - although that may
> have been overwritten).
>
> (I have a machine where this is a problem, if I get the time I will have a stab at making
> hibernate's safe page idmaped).

To be honest, I am a little lost here. Do you mean machine has
physical addresses above ttbr0 VA-range? If so, seems we need  to
reserve few idmapped pages for trans_pgd... But, what to do if all
physical memory is outside of ttbr0 VA-range? Means, we can't use
idmap at all?
Also, reserving is not good because what if user requested kexec
segments to be loaded into idmaped reserved memory..

>
>
> >  int machine_kexec_post_load(struct kimage *kimage)
> >  {
> > +     unsigned long el2_vector = 0;
> >       unsigned long kern_reloc;
> >       struct kern_reloc_arg *kern_reloc_arg;
> > +     int rc = 0;
> > +
> > +     /*
> > +      * Sanity check that relocation function + el2_vector fit into one
> > +      * page.
> > +      */
> > +     if (arm64_relocate_new_kernel_size > KEXEC_EL2_VECTOR_TABLE_SIZE) {
> > +             pr_err("can't fit relocation function and el2_vector in one page");
> > +             return -ENOMEM;
> > +     }
>
> If you need them to fit in one page, why are the separate?
> hibernate does this as a compile time check.

I checked, arm64_relocate_new_kernel_size is not known at compile
time, so unfortunately BUILD_BUG_ON() cannot be used here. However, if
you think this check is ugly, I can put them into separate pages, and
map these pages independently (or do this conditionally when the above
condition fails, which should never happen, as I cannot imagine
arm64_relocate_new_kernel_size to ever grow that big).

Thank you,
Pasha

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
