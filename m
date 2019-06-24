Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 533F050DC5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 16:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BD3VT0ATRgn1mGxR8QsNGI+7GXV6MmMCcEaRjGbLJ1w=; b=Fw5Izn08JUIx+s
	mPKu1rbqUrTZ0zHHAPl2o807WUQiUV/L5kkNNj+oOSIQOV51xjy1/Vdi2Hlozwyc7fN7diVlj7PJy
	5PRIM9FXSO1fW3f5LW5+sAdi+c2dxfvpLD4YANPpkGmPAPF0tYsuKG9xeQNJEYKIidwvkPqcHbSwY
	sGPcbYPGAVP/MdIIabujjyzCPXkV04sV7CuJ/Q+2jIAuhkStAqdW6kx+N8jK6m/CO/J4ji87pD7Wp
	TIlZApvPpajli+jbJUnyYB1+3CBOjA0KCc/WDMjbAEttj4+PCXyOsyoLkpIbsfr65v9/uhiw4Z1eB
	OEAL5C5v44WqY+oTQRxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPsA-0006vK-2A; Mon, 24 Jun 2019 14:23:06 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPrs-0006tj-UM
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 14:22:50 +0000
Received: by mail-pl1-x643.google.com with SMTP id e5so6965305pls.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 07:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=gAszyd6Rkh0AyBVnY2MGQeafDGFV/B/Xjwc7nOHGBTU=;
 b=km7JeQ3vyTD2UtwSHCAAp4q4at1sY/ltJPO5wzrrkqMzNLeQZPjXSnOQ7VtkWA81dl
 HEFVLO9l5VlkdkocDhA+ezC7dKtBn4IeaF4UZLWnOmGq0Ok4r2E9GR7Hoa79HLNOGJVe
 0AHZ3EJWZEjcDwF6xOVW5nBJXR6vOtRMH7oBaouWSEKGFrWAIrbWb9kQA+Hlo7SIhUEB
 uGLPh5fQQfh1ibByxQrZM4UE+cDk+UJmRIBMFqrJwcIDdYtIIT+tU41CsIi86+tplFna
 0qMXAZhS5viMtSm5pwtZ6YrDben3dB8l27s4Hd+Xtz7mclZlxhwdWOJHEC5Ft/EzKQyl
 VZSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=gAszyd6Rkh0AyBVnY2MGQeafDGFV/B/Xjwc7nOHGBTU=;
 b=l0IuipTWDMmT9qWnMDgwusuNFWps29MPd6Ourc5Q1fLV/qtky2F0BLsaPSM0PPKJ3W
 t380CW2I+1PZl9lshZIMLxEiWBTK9rTs6nvn3inPflY4ZZwbNmL0dink5eWDFXlwwFvU
 2Z584iPZiJ394EqFKrR6t4Ugvq6ZVQLzYwfXxKSCgBMwl5iUlDPS7lgp4vKDPx4f7nYj
 LqZCp+wPGqMXmHcYv+ukGihMyOti12DYUmzeOTXYzNwSiEa5IjVyysAT4ofneO47Y2V9
 UNWIVkMyuxgUYBSschy19euhf/TE6ZBO07fI6hUIMSt75/0WL09g8TbipFEx5BtXxODe
 F5eA==
X-Gm-Message-State: APjAAAUU2qH+1PZBOlffzNKJSnRNwppGMNwuVk9mRK7mdU+pzCzXdhnb
 Axh5Fxlhhisxgh9gMijw5iCCcEuZ8K15RaSLbwDv5A==
X-Google-Smtp-Source: APXvYqx/7NbeFZuwI48tclTUh11xegUV5UsdKc2ldTOnN03zOVYnpDOwlkZEMuzBYRoM7kFvSzXnjLxRZwjrOwVDnPw=
X-Received: by 2002:a17:902:4183:: with SMTP id
 f3mr32179784pld.336.1561386165165; 
 Mon, 24 Jun 2019 07:22:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1560339705.git.andreyknvl@google.com>
 <f9b50767d639b7116aa986dc67f158131b8d4169.1560339705.git.andreyknvl@google.com>
 <a5e0e465-89d5-91d0-c6a4-39674269bbf2@oracle.com>
 <c4bdd767-eb3f-6668-0f49-4aaf4bc7689d@oracle.com>
In-Reply-To: <c4bdd767-eb3f-6668-0f49-4aaf4bc7689d@oracle.com>
From: Andrey Konovalov <andreyknvl@google.com>
Date: Mon, 24 Jun 2019 16:22:34 +0200
Message-ID: <CAAeHK+zceAZ0Mqhz3t6Ob71-Dgk4DNHRrzr72r+qEsUugwzTsg@mail.gmail.com>
Subject: Re: [PATCH v17 04/15] mm,
 arm64: untag user pointers passed to memory syscalls
To: Khalid Aziz <khalid.aziz@oracle.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_072248_987020_67238FC4 
X-CRM114-Status: GOOD (  24.53  )
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, kvm@vger.kernel.org,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 dri-devel@lists.freedesktop.org,
 Linux Memory Management List <linux-mm@kvack.org>,
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

On Wed, Jun 19, 2019 at 6:46 PM Khalid Aziz <khalid.aziz@oracle.com> wrote:
>
> On 6/19/19 9:55 AM, Khalid Aziz wrote:
> > On 6/12/19 5:43 AM, Andrey Konovalov wrote:
> >> This patch is a part of a series that extends arm64 kernel ABI to allow to
> >> pass tagged user pointers (with the top byte set to something else other
> >> than 0x00) as syscall arguments.
> >>
> >> This patch allows tagged pointers to be passed to the following memory
> >> syscalls: get_mempolicy, madvise, mbind, mincore, mlock, mlock2, mprotect,
> >> mremap, msync, munlock, move_pages.
> >>
> >> The mmap and mremap syscalls do not currently accept tagged addresses.
> >> Architectures may interpret the tag as a background colour for the
> >> corresponding vma.
> >>
> >> Reviewed-by: Catalin Marinas <catalin.marinas@arm.com>
> >> Reviewed-by: Kees Cook <keescook@chromium.org>
> >> Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
> >> ---
> >
> > Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
> >
> >
>
> I would also recommend updating commit log for all the patches in this
> series that are changing files under mm/ as opposed to arch/arm64 to not
> reference arm64 kernel ABI since the change applies to every
> architecture. So something along the lines of "This patch is part of a
> series that extends kernel ABI to allow......."

Sure, will do in v18, thanks!

>
> --
> Khalid
>
>
> >>  mm/madvise.c   | 2 ++
> >>  mm/mempolicy.c | 3 +++
> >>  mm/migrate.c   | 2 +-
> >>  mm/mincore.c   | 2 ++
> >>  mm/mlock.c     | 4 ++++
> >>  mm/mprotect.c  | 2 ++
> >>  mm/mremap.c    | 7 +++++++
> >>  mm/msync.c     | 2 ++
> >>  8 files changed, 23 insertions(+), 1 deletion(-)
> >>
> >> diff --git a/mm/madvise.c b/mm/madvise.c
> >> index 628022e674a7..39b82f8a698f 100644
> >> --- a/mm/madvise.c
> >> +++ b/mm/madvise.c
> >> @@ -810,6 +810,8 @@ SYSCALL_DEFINE3(madvise, unsigned long, start, size_t, len_in, int, behavior)
> >>      size_t len;
> >>      struct blk_plug plug;
> >>
> >> +    start = untagged_addr(start);
> >> +
> >>      if (!madvise_behavior_valid(behavior))
> >>              return error;
> >>
> >> diff --git a/mm/mempolicy.c b/mm/mempolicy.c
> >> index 01600d80ae01..78e0a88b2680 100644
> >> --- a/mm/mempolicy.c
> >> +++ b/mm/mempolicy.c
> >> @@ -1360,6 +1360,7 @@ static long kernel_mbind(unsigned long start, unsigned long len,
> >>      int err;
> >>      unsigned short mode_flags;
> >>
> >> +    start = untagged_addr(start);
> >>      mode_flags = mode & MPOL_MODE_FLAGS;
> >>      mode &= ~MPOL_MODE_FLAGS;
> >>      if (mode >= MPOL_MAX)
> >> @@ -1517,6 +1518,8 @@ static int kernel_get_mempolicy(int __user *policy,
> >>      int uninitialized_var(pval);
> >>      nodemask_t nodes;
> >>
> >> +    addr = untagged_addr(addr);
> >> +
> >>      if (nmask != NULL && maxnode < nr_node_ids)
> >>              return -EINVAL;
> >>
> >> diff --git a/mm/migrate.c b/mm/migrate.c
> >> index f2ecc2855a12..d22c45cf36b2 100644
> >> --- a/mm/migrate.c
> >> +++ b/mm/migrate.c
> >> @@ -1616,7 +1616,7 @@ static int do_pages_move(struct mm_struct *mm, nodemask_t task_nodes,
> >>                      goto out_flush;
> >>              if (get_user(node, nodes + i))
> >>                      goto out_flush;
> >> -            addr = (unsigned long)p;
> >> +            addr = (unsigned long)untagged_addr(p);
> >>
> >>              err = -ENODEV;
> >>              if (node < 0 || node >= MAX_NUMNODES)
> >> diff --git a/mm/mincore.c b/mm/mincore.c
> >> index c3f058bd0faf..64c322ed845c 100644
> >> --- a/mm/mincore.c
> >> +++ b/mm/mincore.c
> >> @@ -249,6 +249,8 @@ SYSCALL_DEFINE3(mincore, unsigned long, start, size_t, len,
> >>      unsigned long pages;
> >>      unsigned char *tmp;
> >>
> >> +    start = untagged_addr(start);
> >> +
> >>      /* Check the start address: needs to be page-aligned.. */
> >>      if (start & ~PAGE_MASK)
> >>              return -EINVAL;fixup_user_fault
> >> diff --git a/mm/mlock.c b/mm/mlock.c
> >> index 080f3b36415b..e82609eaa428 100644
> >> --- a/mm/mlock.c
> >> +++ b/mm/mlock.c
> >> @@ -674,6 +674,8 @@ static __must_check int do_mlock(unsigned long start, size_t len, vm_flags_t fla
> >>      unsigned long lock_limit;
> >>      int error = -ENOMEM;
> >>
> >> +    start = untagged_addr(start);
> >> +
> >>      if (!can_do_mlock())
> >>              return -EPERM;
> >>
> >> @@ -735,6 +737,8 @@ SYSCALL_DEFINE2(munlock, unsigned long, start, size_t, len)
> >>  {
> >>      int ret;
> >>
> >> +    start = untagged_addr(start);
> >> +
> >>      len = PAGE_ALIGN(len + (offset_in_page(start)));
> >>      start &= PAGE_MASK;
> >>
> >> diff --git a/mm/mprotect.c b/mm/mprotect.c
> >> index bf38dfbbb4b4..19f981b733bc 100644
> >> --- a/mm/mprotect.c
> >> +++ b/mm/mprotect.c
> >> @@ -465,6 +465,8 @@ static int do_mprotect_pkey(unsigned long start, size_t len,
> >>      const bool rier = (current->personality & READ_IMPLIES_EXEC) &&
> >>                              (prot & PROT_READ);
> >>
> >> +    start = untagged_addr(start);
> >> +
> >>      prot &= ~(PROT_GROWSDOWN|PROT_GROWSUP);
> >>      if (grows == (PROT_GROWSDOWN|PROT_GROWSUP)) /* can't be both */
> >>              return -EINVAL;
> >> diff --git a/mm/mremap.c b/mm/mremap.c
> >> index fc241d23cd97..64c9a3b8be0a 100644
> >> --- a/mm/mremap.c
> >> +++ b/mm/mremap.c
> >> @@ -606,6 +606,13 @@ SYSCALL_DEFINE5(mremap, unsigned long, addr, unsigned long, old_len,
> >>      LIST_HEAD(uf_unmap_early);
> >>      LIST_HEAD(uf_unmap);
> >>
> >> +    /*
> >> +     * Architectures may interpret the tag passed to mmap as a background
> >> +     * colour for the corresponding vma. For mremap we don't allow tagged
> >> +     * new_addr to preserve similar behaviour to mmap.
> >> +     */
> >> +    addr = untagged_addr(addr);
> >> +
> >>      if (flags & ~(MREMAP_FIXED | MREMAP_MAYMOVE))
> >>              return ret;
> >>
> >> diff --git a/mm/msync.c b/mm/msync.c
> >> index ef30a429623a..c3bd3e75f687 100644
> >> --- a/mm/msync.c
> >> +++ b/mm/msync.c
> >> @@ -37,6 +37,8 @@ SYSCALL_DEFINE3(msync, unsigned long, start, size_t, len, int, flags)
> >>      int unmapped_error = 0;
> >>      int error = -EINVAL;
> >>
> >> +    start = untagged_addr(start);
> >> +
> >>      if (flags & ~(MS_ASYNC | MS_INVALIDATE | MS_SYNC))
> >>              goto out;
> >>      if (offset_in_page(start))
> >>
> >
> >
>
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
