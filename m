Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64851749DA
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Feb 2020 23:48:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LCCCMSAIFnrZkw4DrOt6yXtkrbrAVsDTpqr3PFVGCeQ=; b=ObPqdqimAqAzZE
	g+ZcYDCbjyxhZi94sZSxFSuu0KP2WV3UwC8tzgOJH5TDG6uSdGUD8OlHwj8KqZ8mF6xRvk76UOd1B
	095A58vlVFC9Nve8N3WlC8olzXhQmx6nwTjb/qCAW/4ZxZdol4/bM43p04/jzwNXHSCZHSTPuZadY
	z76PdJlEmYDTOnE341Mq8U8J5+xEs+dXeSOZpbFAkOAOB6sfO2rcKl8zRZGw4mUyw1sS8zGPge5ix
	An5EKx1DMdcRotoek4FD+2q1cMEibGO1tphgILu/+7E9wuNaqmNSqDXzeymjDXlRyxXuF4X60I8gd
	8X4dVwyLt82xpNHpb96Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8Au2-0002mp-4r; Sat, 29 Feb 2020 22:48:10 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8Ats-0002le-4s
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Feb 2020 22:48:01 +0000
Received: by mail-ot1-x341.google.com with SMTP id b3so6149578otp.4
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Feb 2020 14:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=intel-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=8rTAnPPQPQ2zDwIh6KNULPqO4A3SBF/aTaf3+a0KIRA=;
 b=09+H6QEX0IFkK+L3p4GHO6Y0ATs+adHreQcu1bdLJyN+n2Vgctq6CmsN235zfYz7cz
 Zjowwp86NseHUm8hZsO+r0jOlHoaSUrXGunU/rqFwsJ1s7n5AN8EwU8Ta7ZV68MEDMoy
 cYFY629qtjE7k7S8TFWxiMwDorJu8ZM8TrjzCM6bvmFSocUCibA7lH7EUmIS6yLAffHg
 Ym9Ff+mKB4LVR21VHWSFek6dY5HD72PiWKRZfpQCH7KVSONiX3j+r8BDKOrr5WjC/edI
 3j/m/eKnMAevYsWQnEm1mQYYcl4k+knJqW8Hze1OVUGbNTe30vZzkPj3LXSahhmiaB5B
 dHBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=8rTAnPPQPQ2zDwIh6KNULPqO4A3SBF/aTaf3+a0KIRA=;
 b=LLFVCt4pW9MNGQafI2V2epqyHRoLKIlfVz/aWW/htBaFORPqxK9m3GZeQNUtHLbCh9
 mYy80zSYTrMor0f+LCmUfA2ufbFuIBCHw2Uj2edvEDKt9Mwl2MmnP93sP4FJBrg7u6YQ
 F5JgT99/ojGKJZrSOuEET7c3qTi238fEsxLOIS4EnkUaWRVi8OM1yze61Qq+sClnOeMf
 sqE6j8z/kQq9eudR6Wart/8RHnAdlqmFjrp+uUADX7G1YTZanWwzdSWQbh2aaB7lz+vk
 BnZ1H0feZaIUFDbFtesH9KXM7+Gip0wlwNErjnyIfxZnvjSpOxiV7tGAZ4RTnGHNAJnq
 r6Yw==
X-Gm-Message-State: APjAAAWbV8AH7dhx1PdAY0bvb7ZtHWu/OjrYgpyqXQTaMTuo1I105XZy
 kLV05VpKlXe57j6DMOBhVmxmDwP+pS369Q3Tw8MGnA==
X-Google-Smtp-Source: APXvYqwSzpqJpUKxRtH4EHX0XgauIJ4nXMymmXz192v5Aj+PoXy5ct4ECYTcjg/oqiVXoujFwDEj//qBNgc38LEqyHw=
X-Received: by 2002:a9d:5d09:: with SMTP id b9mr8013603oti.207.1583016478029; 
 Sat, 29 Feb 2020 14:47:58 -0800 (PST)
MIME-Version: 1.0
References: <20200221182503.28317-1-logang@deltatee.com>
 <20200221182503.28317-8-logang@deltatee.com>
In-Reply-To: <20200221182503.28317-8-logang@deltatee.com>
From: Dan Williams <dan.j.williams@intel.com>
Date: Sat, 29 Feb 2020 14:47:47 -0800
Message-ID: <CAPcyv4gNi3sesGnujShStoF8bi8kYg+MQkqhQRCT_1+wex5wbw@mail.gmail.com>
Subject: Re: [PATCH v3 7/7] mm/memremap: Set caching mode for PCI P2PDMA
 memory to WC
To: Logan Gunthorpe <logang@deltatee.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200229_144800_205443_8CCF7C14 
X-CRM114-Status: GOOD (  17.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-ia64@vger.kernel.org, Linux-sh <linux-sh@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 Linux MM <linux-mm@kvack.org>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390 <linux-s390@vger.kernel.org>,
 David Hildenbrand <david@redhat.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Borislav Petkov <bp@alien8.de>, Andy Lutomirski <luto@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Eric Badger <ebadger@gigaio.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 10:25 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>
> PCI BAR IO memory should never be mapped as WB, however prior to this
> the PAT bits were set WB and it was typically overridden by MTRR
> registers set by the firmware.
>
> Set PCI P2PDMA memory to be WC (writecombining) as the only current
> user (the NVMe CMB) was originally mapped WC before the P2PDMA code
> replaced the mapping with devm_memremap_pages().

Will the change to UC regress this existing use case?

>
> Future use-cases may need to generalize this by adding flags to
> select the caching type, as some P2PDMA cases will not want WC.
> However, those use-cases are not upstream yet and this can be changed
> when they arrive.
>
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> ---
>  mm/memremap.c | 3 +++
>  1 file changed, 3 insertions(+)
>
> diff --git a/mm/memremap.c b/mm/memremap.c
> index 06742372a203..8d141c3e3364 100644
> --- a/mm/memremap.c
> +++ b/mm/memremap.c
> @@ -190,7 +190,10 @@ void *memremap_pages(struct dev_pagemap *pgmap, int nid)
>                 }
>                 break;
>         case MEMORY_DEVICE_DEVDAX:
> +               need_devmap_managed = false;
> +               break;
>         case MEMORY_DEVICE_PCI_P2PDMA:
> +               params.pgprot = pgprot_writecombine(params.pgprot);

Approach looks good to me, modulo Jason's comment that this should be
UC. Upcoming DAX changes will want to pass this via pgmap, but as you
say this can wait for this changes to arrive.

After change to UC:

Reviewed-by: Dan Williams <dan.j.williams@intel.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
