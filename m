Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19BCB1177A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:44:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L775YofNeHKKp9Zf2w8FlplS181JIBqYxJyzk2pfV+Y=; b=oPBvsxWNoFdJjp
	s703eo41Cc2yMV/ISBI9X2U1dXgZRt56nGz5HpJF+JdPdy12ejc1h7LtCaZnTTjrHDgRRKo2htjDm
	PEBAidF5Qiv1bDURhJPXmQrWr7VpAcoqTF5xYV8+LhZ1wL9afxR2blOFze5qwkv/tJGADejJhB3qR
	KgSdBLg9NAYWepBXs9f4ELcWxiVXrgknB5H6DcEfYmmG1VuVa+MxP2FxaawXowx1TEW0Xv42wZU6H
	ijGzOtf75NCKTzhvGWkzb57KB84/Z75fP7g0Rn8MBjrfLd9hhs+dEuamtHtMZdK/KiU8tf79ztvzJ
	pEuqDzf2H2Ap0u03w5EA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePt7-0005eA-IE; Mon, 09 Dec 2019 20:44:13 +0000
Received: from mail-oi1-x243.google.com ([2607:f8b0:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePsn-0005Up-Jp
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:43:55 +0000
Received: by mail-oi1-x243.google.com with SMTP id v140so7691837oie.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 12:43:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=plZMhK84PEv4yWmkyRgS9pvtlaQ95b7dai3GHtutF3U=;
 b=s8JcQPtbr+nVe651d3RxZBcB1lXgZKfKVFhn/ShuBpwGBroXkMdV+1srYkcwwzCfi/
 3AdkcPWeiO2eE4Vph0qmLnpLEA8qPwiUkiQSbuWv9LS1KxvGK3AP4uCAh+EMErUq8k74
 L494AbumcLYt4cMYgyYMcdh6j0zlFuGJ8ZPSO2PxzpS4hTMg0sQG1PNOFwBWl5Zzp6eP
 Hwu+hbiTpbKnoLj6CsAujCqJSlm6zAkwyEntNz5bxfqTJjvUbj59ZsDept7jCzKEEbgY
 DvR3hVrw+BRWOH7VlzK3NLFoCEF6jALh7nekxLiYRnJ0XVoNr+Z9wuJ3vSGrSPuKoOPd
 615w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=plZMhK84PEv4yWmkyRgS9pvtlaQ95b7dai3GHtutF3U=;
 b=T0jrQ1fIjI/jM4FiH11dv0q3wSIfpAbT4/dKRI71dPZsH1WbMF3MECaAWjbIZiWcj4
 FrMU5v+KhV/EQc4h8HhruCXvzLzPNDW+raLJLSRZEWVSMEQ/P1gMcGyT8IQKauln5bSU
 Mrvv0AFztsP7Jj2aMD13D6qP7GuNsegc7nv7CEXBZRSzqea1I5Tb7AM04hTDTRLWLM6/
 DiISN37jjRBiN+qGJlgFZ6wRbscdDAVzdpH6dXSEdfUq96HueAOg3igkHG6w8nDbkXR+
 9nwecjllZjfmUDhNpfH5AmezSOmF8LfA/YCF6NlLFkq/SS7ULLWk7uEZUlR6VAer0pkI
 Xk4w==
X-Gm-Message-State: APjAAAWs6QFwV04reNYKXkMtvomQMcE0gL2HvERhk1yrlZJ/NMakDara
 /wHN7KD1Ac8TtHQlZOlWrBOiNrToRphgaAapowwqhA==
X-Google-Smtp-Source: APXvYqyeRHkHv/ywCxrBIm5A7egnQ5ryTQgyKvJL2kpqRDm3KyRgnulA7iNcBuX+BkZigYY9JneBtT9sFsmo5jtdPMY=
X-Received: by 2002:aca:4850:: with SMTP id v77mr913881oia.70.1575924231490;
 Mon, 09 Dec 2019 12:43:51 -0800 (PST)
MIME-Version: 1.0
References: <20191209191346.5197-1-logang@deltatee.com>
 <20191209191346.5197-6-logang@deltatee.com>
 <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
 <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
In-Reply-To: <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Mon, 9 Dec 2019 12:43:40 -0800
Message-ID: <CAPcyv4hpXCZxV5p7WaeGgE7ceujBBa5NOz9Z8fepDHOt6zHO2A@mail.gmail.com>
Subject: Re: [PATCH 5/6] mm, memory_hotplug: Provide argument for the pgprot_t
 in arch_add_memory()
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_124353_712473_0F6AAE72 
X-CRM114-Status: GOOD (  21.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-s390 <linux-s390@vger.kernel.org>,
 Dave Hansen <dave.hansen@linux.intel.com>, linux-ia64@vger.kernel.org,
 Will Deacon <will@kernel.org>, David Hildenbrand <david@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Linux-sh <linux-sh@vger.kernel.org>,
 Michal Hocko <mhocko@suse.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org, Linux MM <linux-mm@kvack.org>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Andy Lutomirski <luto@kernel.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 9, 2019 at 12:24 PM Logan Gunthorpe <logang@deltatee.com> wrote:
>
>
>
> On 2019-12-09 12:23 p.m., David Hildenbrand wrote:
> > On 09.12.19 20:13, Logan Gunthorpe wrote:
> >> devm_memremap_pages() is currently used by the PCI P2PDMA code to create
> >> struct page mappings for IO memory. At present, these mappings are created
> >> with PAGE_KERNEL which implies setting the PAT bits to be WB. However, on
> >> x86, an mtrr register will typically override this and force the cache
> >> type to be UC-. In the case firmware doesn't set this register it is
> >> effectively WB and will typically result in a machine check exception
> >> when it's accessed.
> >>
> >> Other arches are not currently likely to function correctly seeing they
> >> don't have any MTRR registers to fall back on.
> >>
> >> To solve this, add an argument to arch_add_memory() to explicitly
> >> set the pgprot value to a specific value.
> >>
> >> Of the arches that support MEMORY_HOTPLUG: x86_64, s390 and arm64 is a
> >> simple change to pass the pgprot_t down to their respective functions
> >> which set up the page tables. For x86_32, set the page tables explicitly
> >> using _set_memory_prot() (seeing they are already mapped). For sh, reject
> >> anything but PAGE_KERNEL settings -- this should be fine, for now, seeing
> >> sh doesn't support ZONE_DEVICE anyway.
> >>
> >> Cc: Dan Williams <dan.j.williams@intel.com>
> >> Cc: David Hildenbrand <david@redhat.com>
> >> Cc: Michal Hocko <mhocko@suse.com>
> >> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> >> ---
> >>  arch/arm64/mm/mmu.c            | 4 ++--
> >>  arch/ia64/mm/init.c            | 5 ++++-
> >>  arch/powerpc/mm/mem.c          | 4 ++--
> >>  arch/s390/mm/init.c            | 4 ++--
> >>  arch/sh/mm/init.c              | 5 ++++-
> >>  arch/x86/mm/init_32.c          | 7 ++++++-
> >>  arch/x86/mm/init_64.c          | 4 ++--
> >>  include/linux/memory_hotplug.h | 2 +-
> >>  mm/memory_hotplug.c            | 2 +-
> >>  mm/memremap.c                  | 2 +-
> >>  10 files changed, 25 insertions(+), 14 deletions(-)
> >>
> >> diff --git a/arch/arm64/mm/mmu.c b/arch/arm64/mm/mmu.c
> >> index 60c929f3683b..48b65272df15 100644
> >> --- a/arch/arm64/mm/mmu.c
> >> +++ b/arch/arm64/mm/mmu.c
> >> @@ -1050,7 +1050,7 @@ int p4d_free_pud_page(p4d_t *p4d, unsigned long addr)
> >>  }
> >>
> >>  #ifdef CONFIG_MEMORY_HOTPLUG
> >> -int arch_add_memory(int nid, u64 start, u64 size,
> >> +int arch_add_memory(int nid, u64 start, u64 size, pgprot_t prot,
> >>                      struct mhp_restrictions *restrictions)
> >
> > Can we fiddle that into "struct mhp_restrictions" instead?
>
> Yes, if that's what people want, it's pretty trivial to do. I chose not
> to do it that way because it doesn't get passed down to add_pages() and
> it's not really a "restriction". If I don't hear any objections, I will
> do that for v2.

+1 to storing this information alongside the altmap in that structure.
However, I agree struct mhp_restrictions, with the MHP_MEMBLOCK_API
flag now gone, has lost all of its "restrictions". How about dropping
the 'flags' property and renaming the struct to 'struct
mhp_modifiers'?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
