Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 382351A37C1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Apr 2020 18:08:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CV+EjMLW1f0RXH+yF+MWNRAYF/TL2D9bUNU1BOIXteg=; b=f3fG67A3q0iryf
	4dDkBpO6YKSrARs/IrEcSA9Izb9DhL6TVLEgQ27FB4Cw06g+WpLYmm4B5vH60xMSnIq7vrqvTRs8R
	yBly2xyBiBc5v2TSvNw8K3rdN4c2Nt4f/o7muj3Ysm7456zupcJE9L+zOsGAl2mJC/VPprxSNco1l
	X9gMeo7Ry8xENQVOpUiA5UDa3HS3HOUt5AYxjflOJ4MldeOiNFCyWxW76eA8/RshNQMH1IhXKq4P2
	F9NxL27hmk/BQCs89D4TBVCJbC7zI7qbqy54G5dfzuiBoQSa2oNLthRYp0hr+H5kEGAqU666HZEW1
	/oBQHdV2YHhIOMhibiaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZjK-0000px-FP; Thu, 09 Apr 2020 16:08:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZjD-0000pZ-1x
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 16:08:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id q3so4303705pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 09:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Bv5T4MVa9umd8pCEPysPH2jSGjRAmk+aGGhx29rknXE=;
 b=ovy0PS179BjEGMUbAV2YUjlkuVA7wmm5oMqdDajjp0TOKuVkoKJNQkBmal3FBh3iyk
 6uQVZEQZEmdg0/J26gmqgI3Xbf+Y9SwaKDT64/0Z8CygXa+0ktwKWdiNPZDog7inLt6j
 EkNOW+ZQR5kRoBjRRrAAWzyEACYmqWpUvYZJGZKKegZXwil+zgJHu093SKQthM1j8MLC
 8Rf5ULsWMKhJYVAk3C2yHu3UnAeVJgnEj0auKCeACDctiuS3MWj/DOurMbx2MkaY2pLJ
 LiDf/+F+qoyR8JD20gbatncLOb49n47pMUxVIU2+YzFasivC6WMkGvIWS3obeKnzK4ew
 qc7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to;
 bh=Bv5T4MVa9umd8pCEPysPH2jSGjRAmk+aGGhx29rknXE=;
 b=auIKBO9BgMlCnNTtRiC8BQu/D7Vua68HIRbMu046AbCTX0sgc/Ma1jSyb7JxUt1tg1
 h0BjNSocA5JS6trwks6GnK+1qS+msHZt2XHfpdfRjYrdVQS+i17f1WkvT6Mdd6vhGypZ
 KFO5RBnxFF2QlKwYUU1KR9giisslB4PX704vBDuylJSKmVShbfV4Yt4YpJYqnAy8UZbT
 0Da2HdyOVt+suMXJCr8i6ey7u/NU1ERV00R7SeTXvJB/SkxAsnBMMRmcObTBKw4vkdRn
 d4V4FqYf+gcjH3mLxw97lq9U3FcRQwBu44PgjOubZp3+ZRf8l/StH+qWnH/mVnui/RRo
 w0eA==
X-Gm-Message-State: AGi0PuY1a2H7TTTnEBYrdbRNbeONO5OP5E2+KM4DH5hmjDTuIVjHa1ck
 ef0w+p4mSXtNP3M2lK3kL/Y=
X-Google-Smtp-Source: APiQypJFLGcG6dVXLdib9gF5oJvHoXpdIxKhy+0DVfXFFx+ZgGNqEvh6DF50PGrfKmNfspKnDLZDsQ==
X-Received: by 2002:a62:7e0e:: with SMTP id z14mr269015pfc.27.1586448510359;
 Thu, 09 Apr 2020 09:08:30 -0700 (PDT)
Received: from google.com ([2601:647:4001:3000::50e3])
 by smtp.gmail.com with ESMTPSA id k12sm5867045pgj.33.2020.04.09.09.08.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 09:08:29 -0700 (PDT)
Date: Thu, 9 Apr 2020 09:08:26 -0700
From: Minchan Kim <minchan@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 10/28] mm: only allow page table mappings for built-in
 zsmalloc
Message-ID: <20200409160826.GC247701@google.com>
References: <20200408115926.1467567-1-hch@lst.de>
 <20200408115926.1467567-11-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200408115926.1467567-11-hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_090831_122200_8225D2B1 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FSL_HELO_FAKE          No description available.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [minchan.kim[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-hyperv@vger.kernel.org, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-mm@kvack.org,
 "K. Y. Srinivasan" <kys@microsoft.com>, Sumit Semwal <sumit.semwal@linaro.org>,
 linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Wei Liu <wei.liu@kernel.org>, Stephen Hemminger <sthemmin@microsoft.com>,
 x86@kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Laura Abbott <labbott@redhat.com>, Nitin Gupta <ngupta@vflare.org>,
 Daniel Vetter <daniel@ffwll.ch>, Haiyang Zhang <haiyangz@microsoft.com>,
 linaro-mm-sig@lists.linaro.org, bpf@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 Christophe Leroy <christophe.leroy@c-s.fr>,
 Robin Murphy <robin.murphy@arm.com>, linux-kernel@vger.kernel.org,
 sergey.senozhatsky@gmail.com, iommu@lists.linux-foundation.org,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Andrew Morton <akpm@linux-foundation.org>, linuxppc-dev@lists.ozlabs.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Apr 08, 2020 at 01:59:08PM +0200, Christoph Hellwig wrote:
> This allows to unexport map_vm_area and unmap_kernel_range, which are
> rather deep internal and should not be available to modules.

Even though I don't know how many usecase we have using zsmalloc as
module(I heard only once by dumb reason), it could affect existing
users. Thus, please include concrete explanation in the patch to
justify when the complain occurs.

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  mm/Kconfig   | 2 +-
>  mm/vmalloc.c | 2 --
>  2 files changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/mm/Kconfig b/mm/Kconfig
> index 36949a9425b8..614cc786b519 100644
> --- a/mm/Kconfig
> +++ b/mm/Kconfig
> @@ -702,7 +702,7 @@ config ZSMALLOC
>  
>  config ZSMALLOC_PGTABLE_MAPPING
>  	bool "Use page table mapping to access object in zsmalloc"
> -	depends on ZSMALLOC
> +	depends on ZSMALLOC=y
>  	help
>  	  By default, zsmalloc uses a copy-based object mapping method to
>  	  access allocations that span two pages. However, if a particular
> diff --git a/mm/vmalloc.c b/mm/vmalloc.c
> index 3375f9508ef6..9183fc0d365a 100644
> --- a/mm/vmalloc.c
> +++ b/mm/vmalloc.c
> @@ -2046,7 +2046,6 @@ void unmap_kernel_range(unsigned long addr, unsigned long size)
>  	vunmap_page_range(addr, end);
>  	flush_tlb_kernel_range(addr, end);
>  }
> -EXPORT_SYMBOL_GPL(unmap_kernel_range);
>  
>  int map_vm_area(struct vm_struct *area, pgprot_t prot, struct page **pages)
>  {
> @@ -2058,7 +2057,6 @@ int map_vm_area(struct vm_struct *area, pgprot_t prot, struct page **pages)
>  
>  	return err > 0 ? 0 : err;
>  }
> -EXPORT_SYMBOL_GPL(map_vm_area);
>  
>  static inline void setup_vmalloc_vm_locked(struct vm_struct *vm,
>  	struct vmap_area *va, unsigned long flags, const void *caller)
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
