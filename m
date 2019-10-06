Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 325BACD905
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  6 Oct 2019 21:59:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3VuPNMi0jwTUJWd13W3FN4HIatbBPNOyfI37Qdbnsgg=; b=Gw3cr28+mKr089
	288GNmZLLAwcd66XwkYnhdab6ZMzrnnCSVbEvUDddU44qDX4gHHq9Mj1HcCibTVYc2Z3SwLe1fsMX
	TXPVRupBfxFwBKYUzAkAS7eHWFFfFvTj8LmwTas6syKiUKYrsVL9XindzSuP3h6rxbViXw+Mzo3Y1
	OPrf8R60ie3tLIpFgbEZKDMy72FbwaCWVblegZBVxskYOkQc0SKwrIegXqQzwLffEdz1fqI8Sw1/V
	1ZmSNUblkChasy1LRaHp5Jqb1dC6yrgPsH+CjRljghRc/rd+meWMSJxUkcNEUZB7a5zg0Sx6F7NkG
	Audu4aopKfIuAolYGLZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHCg7-00036Q-IY; Sun, 06 Oct 2019 19:58:51 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHCg0-00035y-B9
 for linux-arm-kernel@lists.infradead.org; Sun, 06 Oct 2019 19:58:45 +0000
Received: by mail-qk1-x743.google.com with SMTP id x134so10740837qkb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 06 Oct 2019 12:58:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mail-followup-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=APg736jg0ah1Nn8uMNYIJkW2DcUQUmQs6qDMcBNTRSY=;
 b=FoOm9beXdYeuD1c+g8rePWP5H+HcWgPE076sSAqfiTel4Q0Td54IlBGRZMjKxlUk8L
 HVRy25IZMnNbc8SWFbKQpgGlvGFGDOWhUN+AgLYL92MXWhih+qj8A2fL3VALNocwTpqP
 FQgKEQ9d+gNs/CWsBfMg2M9N1HgEO7l4VgKTRdNRP7srbptNIvK1yLiq9PQFzN97hwJD
 PQqjTJBI9iBcbCgHfkAQivSS8ZhZGWhp7euCX2oVGNcFVVabiEBZ2YQtPZM3E2PwhQNC
 l3CHuJVy6xsLzc6ZK3Xl6/ZmPZbZyzn+7BrsOpcQQthNYmztIX5TH3rU39i5J11LksM6
 OUWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id
 :mail-followup-to:references:mime-version:content-disposition
 :in-reply-to:user-agent;
 bh=APg736jg0ah1Nn8uMNYIJkW2DcUQUmQs6qDMcBNTRSY=;
 b=o0f5oD1Qfo+ja900I15ZsoeY9ci9+gh4dfFSg53N8rauu0fypfwcldzZ8TMzNzj0E+
 dleBsRh+VdY290jpDHwQxLe+hfyLLQ50Kpp+A7BDn+BzdMWF/eQg2akEqH1YlAfYhsyE
 vTFh43mvl/ONU8lf3HjyZn7xy33Xurxzzp6EGxzvSEu+T0d4GYtxr80y3CUq6xGibuh7
 iydD/Pg+hGGPxX2EvH+cn20lEEKYlPKH6KyVW35BXRKy7KXPvBZbLCOUDZZ8OxoJlHMP
 /M7CdLFXfeXIhutcyqRx6V97R1sbCvIQsU4B5kupjrXmzyL0ICFeqHvdlEuPs1q8qp2F
 hiWA==
X-Gm-Message-State: APjAAAVvZehA0tZ2yhJ1FqjP0EIyumqws8TQdHHd3gmahnITGMWMb4+i
 nD90NsxkIVKpUN7ogWpIIKc=
X-Google-Smtp-Source: APXvYqwd63qnLz5/ty0+jRrhUrnVAvecut6TehXBQWTOiWh9hSCC+3s41ChbAphbo9+h6ZSP8hjXUA==
X-Received: by 2002:a37:4e84:: with SMTP id
 c126mr19418006qkb.334.1570391921654; 
 Sun, 06 Oct 2019 12:58:41 -0700 (PDT)
Received: from freebsd.route53-aws-cloud.de
 (ec2-3-95-91-234.compute-1.amazonaws.com. [3.95.91.234])
 by smtp.gmail.com with ESMTPSA id k2sm6645230qti.24.2019.10.06.12.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 06 Oct 2019 12:58:41 -0700 (PDT)
Date: Sun, 6 Oct 2019 21:58:39 +0200
From: Damian Tometzki <damian.tometzki@gmail.com>
To: David Hildenbrand <david@redhat.com>
Subject: Re: [PATCH v6 01/10] mm/memunmap: Don't access uninitialized memmap
 in memunmap_pages()
Message-ID: <20191006195838.GA27160@freebsd.route53-aws-cloud.de>
Mail-Followup-To: David Hildenbrand <david@redhat.com>,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org, linux-ia64@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, linux-s390@vger.kernel.org,
 linux-sh@vger.kernel.org, x86@kernel.org,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>,
 Dan Williams <dan.j.williams@intel.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Jason Gunthorpe <jgg@ziepe.ca>,
 Logan Gunthorpe <logang@deltatee.com>,
 Ira Weiny <ira.weiny@intel.com>
References: <20191006085646.5768-1-david@redhat.com>
 <20191006085646.5768-2-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191006085646.5768-2-david@redhat.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191006_125844_408654_D1FD24C4 
X-CRM114-Status: GOOD (  19.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (damian.tometzki[at]gmail.com)
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
Cc: linux-s390@vger.kernel.org, linux-ia64@vger.kernel.org,
 Ira Weiny <ira.weiny@intel.com>, linux-sh@vger.kernel.org,
 Jason Gunthorpe <jgg@ziepe.ca>,
 "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 Logan Gunthorpe <logang@deltatee.com>, Dan Williams <dan.j.williams@intel.com>,
 linuxppc-dev@lists.ozlabs.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello David,

patch 05/10 is missing in the patch series. 


On Sun, 06. Oct 10:56, David Hildenbrand wrote:
> From: "Aneesh Kumar K.V" <aneesh.kumar@linux.ibm.com>
> 
> With an altmap, the memmap falling into the reserved altmap space are
> not initialized and, therefore, contain a garbage NID and a garbage
> zone. Make sure to read the NID/zone from a memmap that was initialzed.
> 
> This fixes a kernel crash that is observed when destroying a namespace:
> 
> [   81.356173] kernel BUG at include/linux/mm.h:1107!
> cpu 0x1: Vector: 700 (Program Check) at [c000000274087890]
>     pc: c0000000004b9728: memunmap_pages+0x238/0x340
>     lr: c0000000004b9724: memunmap_pages+0x234/0x340
> ...
>     pid   = 3669, comm = ndctl
> kernel BUG at include/linux/mm.h:1107!
> [c000000274087ba0] c0000000009e3500 devm_action_release+0x30/0x50
> [c000000274087bc0] c0000000009e4758 release_nodes+0x268/0x2d0
> [c000000274087c30] c0000000009dd144 device_release_driver_internal+0x174/0x240
> [c000000274087c70] c0000000009d9dfc unbind_store+0x13c/0x190
> [c000000274087cb0] c0000000009d8a24 drv_attr_store+0x44/0x60
> [c000000274087cd0] c0000000005a7470 sysfs_kf_write+0x70/0xa0
> [c000000274087d10] c0000000005a5cac kernfs_fop_write+0x1ac/0x290
> [c000000274087d60] c0000000004be45c __vfs_write+0x3c/0x70
> [c000000274087d80] c0000000004c26e4 vfs_write+0xe4/0x200
> [c000000274087dd0] c0000000004c2a6c ksys_write+0x7c/0x140
> [c000000274087e20] c00000000000bbd0 system_call+0x5c/0x68
> 
> Cc: Dan Williams <dan.j.williams@intel.com>
> Cc: Andrew Morton <akpm@linux-foundation.org>
> Cc: Jason Gunthorpe <jgg@ziepe.ca>
> Cc: Logan Gunthorpe <logang@deltatee.com>
> Cc: Ira Weiny <ira.weiny@intel.com>
> Signed-off-by: Aneesh Kumar K.V <aneesh.kumar@linux.ibm.com>
> [ minimze code changes, rephrase description ]
> Signed-off-by: David Hildenbrand <david@redhat.com>
> ---
>  mm/memremap.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/mm/memremap.c b/mm/memremap.c
> index 557e53c6fb46..8c2fb44c3b4d 100644
> --- a/mm/memremap.c
> +++ b/mm/memremap.c
> @@ -123,6 +123,7 @@ static void dev_pagemap_cleanup(struct dev_pagemap *pgmap)
>  void memunmap_pages(struct dev_pagemap *pgmap)
>  {
>  	struct resource *res = &pgmap->res;
> +	struct page *first_page;
>  	unsigned long pfn;
>  	int nid;
>  
> @@ -131,14 +132,16 @@ void memunmap_pages(struct dev_pagemap *pgmap)
>  		put_page(pfn_to_page(pfn));
>  	dev_pagemap_cleanup(pgmap);
>  
> +	/* make sure to access a memmap that was actually initialized */
> +	first_page = pfn_to_page(pfn_first(pgmap));
> +
>  	/* pages are dead and unused, undo the arch mapping */
> -	nid = page_to_nid(pfn_to_page(PHYS_PFN(res->start)));
> +	nid = page_to_nid(first_page);

Why we need 'nid = page_to_nid(first_page)' we didnt use it anymore in this function ?

>  
>  	mem_hotplug_begin();
>  	if (pgmap->type == MEMORY_DEVICE_PRIVATE) {
> -		pfn = PHYS_PFN(res->start);
> -		__remove_pages(page_zone(pfn_to_page(pfn)), pfn,
> -				 PHYS_PFN(resource_size(res)), NULL);
> +		__remove_pages(page_zone(first_page), PHYS_PFN(res->start),
> +			       PHYS_PFN(resource_size(res)), NULL);
>  	} else {
>  		arch_remove_memory(nid, res->start, resource_size(res),
>  				pgmap_altmap(pgmap));
> -- 
> 2.21.0
>
Best regards
Damian
 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
