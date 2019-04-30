Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B2610069
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 21:48:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lw9OcxAYlQa6Z8VQW+ozbuVvmetPIfAHZ3IIMutxgD0=; b=DQauiOse9WF0tL
	FHNPtitJqHZDuQEMvamPnPz1Len77WV4nnucVzYSC/6Rjr6LLo7pw6WtRUN6UJAkT5DjPXKnVcq74
	Bw6qpj3hYuKe/GiLzgwBwb+bvnHJUJjhnsZQIaN61s6PLDSSM91WfxBgKusjIzTkQid0y+TuGNtUF
	F6HgMmwudA6St0eqoO10w4rJ7VJjPyH/Wvid7gKyARsiy4ffshacp737yLoS9wBBhd5sJGkQSwl0z
	Yv9bTt/gs7kxoDinRMLskjuAh6fLNMvSmozTbw/U0kaH0+zYSyBNY3TK7qn2/PfUBvl6HFrUV2u25
	krRiq/D3nmv89pzViwzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLYjO-0004sf-LQ; Tue, 30 Apr 2019 19:47:58 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLYjI-0004sB-2k
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 19:47:53 +0000
Received: by mail-pg1-x543.google.com with SMTP id p6so7315929pgh.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 12:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=86GCSVrH9zo4gh156Oo5t8O2oP844A9QOA6J/OXOUxA=;
 b=RDkJwLgMXXBm7lJVQVTDnpEtriShEMPyVioxbhNW+zutYavuTMg0jbA7KIZU4ozWRa
 8IKC2EuvJi2rhxPjTUZf1t+gqmpJmc0a2yR3dcSEgC3NkAxERDqQkgahjcwvC4xbE/s/
 fkqW1OL++MlrDw6zQJ/HjWBnDv+IepQfzMfnf4gVq8buMVXCo0K6M29JIcQnC7woKwCD
 JlWH0/et3lm4jQE3SZXbnI2Oo5K+IbpTg3UuIYzsNpp7j2R16SRawvjYXnsLMOP+lM27
 rM0z3Ay7JsxNp4jcVY93LELKhAPfTqirUOfIR5/m9hA83EmsvwL4OoWKuXyfmjOIJ6oM
 SaxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=86GCSVrH9zo4gh156Oo5t8O2oP844A9QOA6J/OXOUxA=;
 b=YI4K9ItQnGfe2H7mlD6I8UbLD9RlJAntkg64lELIUt93dIvYIZJJHDHHRpPWGPuafz
 78MGrG3lIjcEt4KWHBqMAfqhcqJcoYw/yYq6cpWm6zcdiIafsH5atwTEROfNYDcZupQ2
 6VHDl6cn9X29VBZqQ83fuHaj2K1cJ3zzHjYgQ0hugQerJoMMgOTmISbC3gy+HyMmhVLn
 fpxT8+eNzTKXefTtnBP7ZxY5R+1N4UEm5EHnlKFHjApZFi3zHv43Pf6zy4YwdamuW1Vt
 eycE3UXTn+ogUJWOcXFCIgFJLNfOWej+HcBmOl9U2miiq5TEtZ++bPtrBDRvM+my/CpJ
 ncww==
X-Gm-Message-State: APjAAAVAQg0H3fIoQmsDQ1uDSro8ckYPzndNnYNC/4JdrTrzhI0JINiy
 0EMDDcuEr1qFkQgdZzxAHlg=
X-Google-Smtp-Source: APXvYqzFBvVULwHUiGXsDPHzgJbD3J/zaoDiLOXodZvC2mcsihPg9PVzKdT/PfoC4gUpNKvmhCjzaA==
X-Received: by 2002:a63:3fc1:: with SMTP id
 m184mr34699554pga.222.1556653670976; 
 Tue, 30 Apr 2019 12:47:50 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id g24sm5419285pfi.126.2019.04.30.12.47.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Apr 2019 12:47:50 -0700 (PDT)
Date: Tue, 30 Apr 2019 12:46:13 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Robin Murphy <robin.murphy@arm.com>, Christoph Hellwig <hch@lst.de>
Subject: Re: [RFC/RFT PATCH 1/2] dma-contiguous: Simplify
 dma_*_from_contiguous() function calls
Message-ID: <20190430194612.GA31543@Asurada-Nvidia.nvidia.com>
References: <20190430015521.27734-1-nicoleotsuka@gmail.com>
 <20190430015521.27734-2-nicoleotsuka@gmail.com>
 <20190430105640.GA20021@lst.de>
 <0e3e6d8b-de44-d23e-a039-8d11b578ec5c@arm.com>
 <20190430151833.GB25447@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430151833.GB25447@lst.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_124752_136466_8EFA13E4 
X-CRM114-Status: GOOD (  15.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: chris@zankel.net, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 sfr@canb.auug.org.au, tony@atomide.com, catalin.marinas@arm.com,
 joro@8bytes.org, will.deacon@arm.com, linux@armlinux.org.uk,
 iommu@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 jcmvbkbc@gmail.com, wsa+renesas@sang-engineering.com,
 akpm@linux-foundation.org, treding@nvidia.com, dwmw2@infradead.org,
 iamjoonsoo.kim@lge.com, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Apr 30, 2019 at 05:18:33PM +0200, Christoph Hellwig wrote:
> On Tue, Apr 30, 2019 at 01:37:54PM +0100, Robin Murphy wrote:
> > On 30/04/2019 11:56, Christoph Hellwig wrote:
> >> So while I really, really like this cleanup it turns out it isn't
> >> actually safe for arm :(  arm remaps the CMA allocation in place
> >> instead of using a new mapping, which can be done because they don't
> >> share PMDs with the kernel.
> >>
> >> So we'll probably need a __dma_alloc_from_contiguous version with
> >> an additional bool fallback argument - everyone but arms uses
> >> dma_alloc_from_contiguous as in your patch, just arm will get the
> >> non-fallback one.
> >
> > Or we even just implement dma_{alloc,free}_contiguous() as a wrapper around 
> > the existing APIs so that users can be thoroughly checked and converted 
> > one-by-one.
> 
> Yeah.  Actually given all the contention I wonder if the easiest solution
> for now is to just open code the cma_alloc/cma_free calls in dma-direct
> and dma-iommu, with the hopes that everyone is going to migrate to those
> implementations in the mid-term anyway and dma_alloc_from_contiguous /
> dma_release_from_contiguous just go away..

Thanks for the comments.

Listing all the solutions as a summary:
A) Add "bool fallback" to dma_{alloc,free}_contiguous, and let
   ARM use fallback=false.
B) Continue replacing "_from" with dma_{alloc,free}_contiguous
   but let callers like ARM use cma_alloc/free() directly.
C) Have both new dma_{alloc,free}_contiguous and "_from" funcs.
   Implement the new one to dma-direct only as an initial step
   and change others one-by-one in the future.

Combining the comments at alloc_pages_node(), I guess that the
Solution C would be a better (cleaner) one?

List of to-change callers for Solution C:
 kernel/dma/direct.c

List of to-exclude-for-now callers for Solution C:
 arch/arm64/mm/dma-mapping.c
 drivers/iommu/amd_iommu.c
 drivers/iommu/intel-iommu.c
 arch/arm/mm/dma-mapping.c
 arch/xtensa/kernel/pci-dma.c
 kernel/dma/remap.c

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
