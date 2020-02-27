Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15B761724D4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 18:17:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BgU1K645xlTHRF1Kk17voP/g+eBZhVSmIWz7BADeatY=; b=bwNxLuDDpr3nbp
	UjFMjrCj/y4UJr22pTeF32FSUALELgV01cjJ9rROMtn//aBdztT6xKHkQIrm0GvTCUv5P5WsheRbf
	kI+Le5klgTCmJFvuNzETIdAmkTMtajUjq9xp0OUK6rMcow1vigrrG6BewYwSHkW+EJjS3+NpuJPe9
	PMZ1LWpCcyL0reXESpa+Zl6ZQ2oqYNPOPKCw4gWaKr3TJlVJSi1FlcJ/Ke0ir7p1jdCRtq8vRO5ZB
	YsbAM6h8Lbt0EBm5JFELfA8/b0np+lUTt+R/ohIm0IZ2dNf6lTJHWQdLBsC8Wa4xagTVQmaopkRY5
	6ebTCzzLZXWJAm/iH6wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7Mmk-0005ge-LG; Thu, 27 Feb 2020 17:17:18 +0000
Received: from mail-qv1-xf43.google.com ([2607:f8b0:4864:20::f43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7MmZ-0005fY-Vq
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 17:17:09 +0000
Received: by mail-qv1-xf43.google.com with SMTP id y8so1898205qvk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 09:17:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=ARo9Rla66Kxeu/Z2V78mx/ehDWu077QNPWdzDFxfOJY=;
 b=dth2WWWZKp9HGsnWrcnEGnyDwu2blK8iDXb8vLMtoeR2VaMJ3fz37+cGHyNAha/rWV
 dK1sGTg22oiYuz24KPwTF2AS2YzOdqQyu6b+TiUBCYZk9V0zbua+mDMo3YTMUSvN9nIT
 EMJKHUaXkpfsveCsIHveNriBa6Vtjb0vFsMy7lGIqEqrtAiZ99Xs/sQZQxUbkx1mzgHf
 AVJsII2Jxg233IpQwYAVVL3i04SYIDZ8pS2nl8aTFh1Sh2y4snmhOeu+kOn7LsejaKvN
 5rYQfvFElRSnuNIftRZI411+PoKrYCAMkJ59tu4Fy8L8tWs1KfJP0Uu0uqOwYZUWVb/k
 btJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ARo9Rla66Kxeu/Z2V78mx/ehDWu077QNPWdzDFxfOJY=;
 b=hshRxt6NU6YWTelL2DbeKkp0IF76ANCoM4Q5TvAXmJDTqUnE3oTyMCit3sJER8lam3
 vfnJ8F/Phytn6/OwnzWUCRjXUWE7qERmaTB6UOHHhniYeRFHKfV92m0rHTswm+n1/Uoj
 gm2K6DR3u3Sdpn8U2+5cX6coBMAi4wBEaeaZkLmlLqx9E/Ve8J2ylJnWZllw/z3vzLZu
 uPunlMrgcIN58tc4oJ6GrWBcrH+1Pbri7s7Jxs183sgOtJkUZlfejKWXhrhzpTMJk4BJ
 JRyDqYH1+xM6yobnAw1mYcwb7isMmvyjYdQeWs9oeSVTmxVQZczVFawLYgZB/xduZGDL
 HUaw==
X-Gm-Message-State: APjAAAXaRB4PJVwkeAtCWOwkk6goUyUF1WjJmwuQYBdA2fT4CNNkShY2
 LB6wX4VD4ywjnavtrLQ+fw2rFg==
X-Google-Smtp-Source: APXvYqzIGS93ngPFOoj3vliIAB10vgE4M/ehyQsI06gG80887mNylpBqlEfVijkpuc5v919Oz9PGMQ==
X-Received: by 2002:ad4:5429:: with SMTP id g9mr757799qvt.134.1582823826213;
 Thu, 27 Feb 2020 09:17:06 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id x14sm3375572qkf.99.2020.02.27.09.17.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 09:17:05 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j7MmW-0003YD-SC; Thu, 27 Feb 2020 13:17:04 -0400
Date: Thu, 27 Feb 2020 13:17:04 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v3 0/7] Allow setting caching mode in arch_add_memory()
 for P2PDMA
Message-ID: <20200227171704.GK31668@ziepe.ca>
References: <20200221182503.28317-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200221182503.28317-1-logang@deltatee.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_091708_029494_CFC92BC8 
X-CRM114-Status: GOOD (  22.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-ia64@vger.kernel.org, linux-sh@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dave Hansen <dave.hansen@linux.intel.com>, platform-driver-x86@vger.kernel.org,
 linux-mm@kvack.org, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-s390@vger.kernel.org,
 David Hildenbrand <david@redhat.com>, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Dan Williams <dan.j.williams@intel.com>, Borislav Petkov <bp@alien8.de>,
 Andy Lutomirski <luto@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Michal Hocko <mhocko@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Eric Badger <ebadger@gigaio.com>, linux-kernel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 11:24:56AM -0700, Logan Gunthorpe wrote:
> Hi,
> 
> This is v3 of the patchset which cleans up a number of minor issues
> from the feedback of v2 and rebases onto v5.6-rc2. Additional feedback
> is welcome.
> 
> Thanks,
> 
> Logan
> 
> --
> 
> Changes in v3:
>  * Rebased onto v5.6-rc2
>  * Rename mhp_modifiers to mhp_params per David with an updated kernel
>    doc per Dan
>  * Drop support for s390 per David seeing it does not support
>    ZONE_DEVICE yet and there was a potential problem with huge pages.
>  * Added WARN_ON_ONCE in cases where arches recieve non PAGE_KERNEL
>    parameters
>  * Collected David and Micheal's Reviewed-By and Acked-by Tags
> 
> Changes in v2:
>  * Rebased onto v5.5-rc5
>  * Renamed mhp_restrictions to mhp_modifiers and added the pgprot field
>    to that structure instead of using an argument for
>    arch_add_memory().
>  * Add patch to drop the unused flags field in mhp_restrictions
> 
> A git branch is available here:
> 
> https://github.com/sbates130272/linux-p2pmem remap_pages_cache_v3
> 
> --
> 
> Currently, the page tables created using memremap_pages() are always
> created with the PAGE_KERNEL cacheing mode. However, the P2PDMA code
> is creating pages for PCI BAR memory which should never be accessed
> through the cache and instead use either WC or UC. This still works in
> most cases, on x86, because the MTRR registers typically override the
> caching settings in the page tables for all of the IO memory to be
> UC-. However, this tends not to work so well on other arches or
> some rare x86 machines that have firmware which does not setup the
> MTRR registers in this way.
> 
> Instead of this, this series proposes a change to arch_add_memory()
> to take the pgprot required by the mapping which allows us to
> explicitly set pagetable entries for P2PDMA memory to WC.

Is there a particular reason why WC was selected here? I thought for
the p2pdma cases there was no kernel user that touched the memory?

I definitely forsee devices where we want UC instead.

Even so, the whole idea looks like the right direction to me.

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
