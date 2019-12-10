Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E544118532
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 11:35:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRces7lphHZHfLm0b2h837PXaJo5fKiYAclaPL8dVXw=; b=uOXH2VGc6DyWxk
	UAhXtp3uo7dF1eMV5c+XkPEHG4iRWKcw7inxROEGTBz73yBE0Krbr0f+5AxtvZbxuwowtKI08YrLE
	wRkQrIRtzgVXagoJvoA+flPD7UhzPZLM2U9IxC07M5c20gq+1tkpS/XHe/or1JckjHv1XaA1T14G5
	V9+XT62CeBob32bPKJyeaHRqEUd/J0CdCyn1ZfGm8dz87eM5QWeVYPk9TEimRgaulxxGNIUs4lbF0
	9E15Af+efVzkBDcQbnmIy4K5+Kof0ugfyKkQgDAXxpdrgyf0ncb7z7b571yNPgyQdxhjFzr697xwG
	LaX2lBl7hns0YVkUKyOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iecrI-00069K-QH; Tue, 10 Dec 2019 10:35:12 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iecr1-00068m-My
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 10:34:57 +0000
Received: by mail-wr1-f68.google.com with SMTP id d16so19377129wre.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 02:34:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=uizXfprRj8fjney4P3afQoTDUjaSaVYSy+09p97UTek=;
 b=oM1eBwu3sDRvf6ULE/cx4fJ96iWoKpfEgcCfMrOTaFk83KYf1dI0lL+JaAnwWZPQjC
 hZHLls4Kj4/qL75iOSDqMvjIg69SQ0SkcjmgZL+tlgmqPK2JHAQVE0sETjn44W9kCsXg
 GTqAlY0lXH2t+LKdcZWAEZ0BocpDOc89bDH5KBwsLKRFoO6T8XGe/YuJLTAGrL3TuEvy
 QGzh2Ublu88XpAkwwTzjjUcwE/MOI94LOO2kdpzN5DCgGcCGYoDFWzg2EzxcMeCNEjpe
 If9IFKgHm7LEy4iEzmmnWmadfo4wiEr9T8Z63TFcpc33uH03a6MreW56ESqEPZByniRr
 nVqA==
X-Gm-Message-State: APjAAAVHXp0Rg06T/o1if3Ahvt+hyeFAwMj6WG3vluGV4jOAVFuX0NdV
 TrtP44HaHEJniHOcgUEcvrQ=
X-Google-Smtp-Source: APXvYqz7NYibGMgFhBlmpiRw0nMRfb/8UeyOuRHFJOPIT/McfGwDtjqDvzf1agsTzUpbWsC0n1vSRQ==
X-Received: by 2002:adf:8297:: with SMTP id 23mr2231156wrc.379.1575974093765; 
 Tue, 10 Dec 2019 02:34:53 -0800 (PST)
Received: from localhost (prg-ext-pat.suse.com. [213.151.95.130])
 by smtp.gmail.com with ESMTPSA id t1sm2693672wma.43.2019.12.10.02.34.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Dec 2019 02:34:52 -0800 (PST)
Date: Tue, 10 Dec 2019 11:34:52 +0100
From: Michal Hocko <mhocko@kernel.org>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH 5/6] mm, memory_hotplug: Provide argument for the
 pgprot_t in arch_add_memory()
Message-ID: <20191210103452.GF10404@dhcp22.suse.cz>
References: <20191209191346.5197-1-logang@deltatee.com>
 <20191209191346.5197-6-logang@deltatee.com>
 <ce50d9da-c60e-05a1-a86b-3bb3629de502@redhat.com>
 <f34a4c52-cc95-15ed-8a72-c05ab4fd6d33@deltatee.com>
 <CAPcyv4hpXCZxV5p7WaeGgE7ceujBBa5NOz9Z8fepDHOt6zHO2A@mail.gmail.com>
 <20191210100432.GC10404@dhcp22.suse.cz>
 <6da2b279-6a6d-d89c-a34c-962ed021d91d@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6da2b279-6a6d-d89c-a34c-962ed021d91d@redhat.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_023455_749596_56F12C61 
X-CRM114-Status: GOOD (  19.38  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (mstsxfx[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Thomas Gleixner <tglx@linutronix.de>,
 linux-s390 <linux-s390@vger.kernel.org>, linux-ia64@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, Will Deacon <will@kernel.org>,
 Linux-sh <linux-sh@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Logan Gunthorpe <logang@deltatee.com>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 platform-driver-x86@vger.kernel.org, Linux MM <linux-mm@kvack.org>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andy Lutomirski <luto@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Borislav Petkov <bp@alien8.de>, Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, Christoph Hellwig <hch@lst.de>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue 10-12-19 11:09:46, David Hildenbrand wrote:
> On 10.12.19 11:04, Michal Hocko wrote:
> > On Mon 09-12-19 12:43:40, Dan Williams wrote:
> >> On Mon, Dec 9, 2019 at 12:24 PM Logan Gunthorpe <logang@deltatee.com> wrote:
> >>>
> >>>
> >>>
> >>> On 2019-12-09 12:23 p.m., David Hildenbrand wrote:
> >>>> On 09.12.19 20:13, Logan Gunthorpe wrote:
> > [...]
> >>>>>  #ifdef CONFIG_MEMORY_HOTPLUG
> >>>>> -int arch_add_memory(int nid, u64 start, u64 size,
> >>>>> +int arch_add_memory(int nid, u64 start, u64 size, pgprot_t prot,
> >>>>>                      struct mhp_restrictions *restrictions)
> >>>>
> >>>> Can we fiddle that into "struct mhp_restrictions" instead?
> >>>
> >>> Yes, if that's what people want, it's pretty trivial to do. I chose not
> >>> to do it that way because it doesn't get passed down to add_pages() and
> >>> it's not really a "restriction". If I don't hear any objections, I will
> >>> do that for v2.
> >>
> >> +1 to storing this information alongside the altmap in that structure.
> >> However, I agree struct mhp_restrictions, with the MHP_MEMBLOCK_API
> >> flag now gone, has lost all of its "restrictions". How about dropping
> >> the 'flags' property and renaming the struct to 'struct
> >> mhp_modifiers'?
> > 
> > Hmm, this email somehow didn't end up in my inbox so I have missed it
> > before replying.
> > 
> > Well, mhp_modifiers makes some sense and it would reduce the API
> > proliferation but how do you expect the prot part to be handled?
> > I really do not want people to think about PAGE_KERNEL or which
> > protection to use because my experience tells that this will get copied
> > without much thinking or simply will break with some odd usecases.
> > So how exactly this would be used?
> 
> I was thinking about exactly the same "issue".
> 
> 1. default initialization via a function
> 
> memhp_modifier_default_init(&modified);
> 
> 2. a flag that unlocks the prot field (default:0). Without the flag, it
> is ignored. We can keep the current initialization then.
> 
> Other ideas?

3. a prot mask to apply on top of PAGE_KERNEL? Or would that be
insufficient/clumsy?
-- 
Michal Hocko
SUSE Labs

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
