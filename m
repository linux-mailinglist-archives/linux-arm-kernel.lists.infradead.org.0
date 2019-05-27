Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E8A62B296
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 May 2019 12:56:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mm+ZTNpHJJQOfP6P1S0z/S5w58PiJsg328TyFDWU7U4=; b=gCHDwJgm8nONQJ
	ekN3dSv3lfCOE2WKuppivFIm4VoV0MvyVHuqNpWR0Ng2/v36jVYLSzesQ5eaULOdTbQ2zICPpkk6Z
	nRss1Bv51mYDy3HElvgiSAzWUS9CzCbMLApghhNwZqIUGlOn1LP/BrE9b3DbjSUIn7cZW/eLeRqwD
	BRjUImujZgAAhTO1bdeVkp8bsKG4BmONOiJ2h9jfpQcom61keDWQguIDEzslC80QLbnZ2IW7JzQ/7
	katoD2S1wjcVUNqAvNC8EhN0ZLYdlVxbE4oBddwbQUSdz9cWM54PfiruXKl64o2mw3aXBtUijJyfu
	BIdJ7jIWPZ+2xDw3Kf8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVDJE-00024s-85; Mon, 27 May 2019 10:56:52 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVDJ6-00024D-Lf
 for linux-arm-kernel@lists.infradead.org; Mon, 27 May 2019 10:56:45 +0000
Received: by mail-pl1-x643.google.com with SMTP id c5so6923739pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 May 2019 03:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xQG94E91rcdUfSlkW1uYF9ApGj+jgzKgN0E+vtaKz6A=;
 b=Gy9EASSRYlr9i12Logn21TdN5ujim45QVkv2y2MggLHvc1zjqiO1HnQBLFMvdefKhV
 8EUvnRVO5xeo+ymGVEjsG02qBU4VBKJE1w07kzfdcqPRGvvU6qwS7CcKyUwBb43n6ctR
 GXh4BXEKOgL0SWJtNXegveEi3DU5WYLZJg+61DjGG2FPDXWGfylwfRNQeZlbtfrm0Ca+
 3h/DBbQC5pmXA6gRd0uHwD+EOUkhThBuDvV1Iai08L58GcavSub2+7rJ+l4x9dHUQrr6
 XJqz9SfLROkIZQU/3aNmTia9K5JyI8CzL9X7+4mJCGAJPvtRPfLc2cg1CoPnV0/ANVEJ
 kf8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xQG94E91rcdUfSlkW1uYF9ApGj+jgzKgN0E+vtaKz6A=;
 b=Y0jGSFkWemmj/QYt5NwZLY/RQs99+xBnOpKxxt5Qo8njREeHNARo2neFaayNQedfY4
 jTLFZVizBE3FM07u5TbLNv3bymZwnWVrek/K2lGuaI92lbfKgZwA+AA6yV21DYeBx/md
 EcB/vgcbWiG0/qxy//iQJUKirQATsguob4JGjD/6LhgXcHqG4mxELyUZZG7HVKIGcMAF
 hhK+mhlWs0OEq0it56LNDYwa7X63m4ABmt6oWYzdaYkvwKphoxMXqeLxoVu4Tpm8bFFD
 dnjh6NjDHzr9Dd1AbgW4TkGYsn6h6IEgk4GKhKq1fE1t0E7d0GpWKZg9BxPVhzXAnTrM
 fCcg==
X-Gm-Message-State: APjAAAUxT+zTLP9qZrVCkabCCi1lrasN2iuYs0usoFdPMBEeZeJO1/T+
 PyassvGdEQtVCN702rVvfTA=
X-Google-Smtp-Source: APXvYqwYifFGznpVmbp990JQuxYufhL5+M7CwwnvfxITZA/hhhnqSphHZcc/3LL1+bFx/1MWhz5Akw==
X-Received: by 2002:a17:902:28c9:: with SMTP id
 f67mr20202766plb.19.1558954603720; 
 Mon, 27 May 2019 03:56:43 -0700 (PDT)
Received: from Asurada-Nvidia.nvidia.com (thunderhill.nvidia.com.
 [216.228.112.22])
 by smtp.gmail.com with ESMTPSA id x10sm14034629pfj.136.2019.05.27.03.56.42
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 27 May 2019 03:56:43 -0700 (PDT)
Date: Mon, 27 May 2019 03:55:29 -0700
From: Nicolin Chen <nicoleotsuka@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>
Subject: Re: [PATCH v3 2/2] dma-contiguous: Use fallback alloc_pages for
 single pages
Message-ID: <20190527105528.GA26916@Asurada-Nvidia.nvidia.com>
References: <20190524040633.16854-1-nicoleotsuka@gmail.com>
 <20190524040633.16854-3-nicoleotsuka@gmail.com>
 <20190524161618.GB23100@iweiny-DESK2.sc.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524161618.GB23100@iweiny-DESK2.sc.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_035644_709425_4D5BE37D 
X-CRM114-Status: GOOD (  18.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nicoleotsuka[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: tony@atomide.com, catalin.marinas@arm.com, will.deacon@arm.com,
 jcmvbkbc@gmail.com, hch@lst.de, m.szyprowski@samsung.com, sfr@canb.auug.org.au,
 dann.frazier@canonical.com, joro@8bytes.org, linux@armlinux.org.uk,
 treding@nvidia.com, linux-xtensa@linux-xtensa.org, keescook@chromium.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org,
 chris@zankel.net, wsa+renesas@sang-engineering.com, robin.murphy@arm.com,
 linux-kernel@vger.kernel.org, iommu@lists.linux-foundation.org,
 iamjoonsoo.kim@lge.com, dwmw2@infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ira,

On Fri, May 24, 2019 at 09:16:19AM -0700, Ira Weiny wrote:
> On Thu, May 23, 2019 at 09:06:33PM -0700, Nicolin Chen wrote:
> > The addresses within a single page are always contiguous, so it's
> > not so necessary to always allocate one single page from CMA area.
> > Since the CMA area has a limited predefined size of space, it may
> > run out of space in heavy use cases, where there might be quite a
> > lot CMA pages being allocated for single pages.
> > 
> > However, there is also a concern that a device might care where a
> > page comes from -- it might expect the page from CMA area and act
> > differently if the page doesn't.
> 
> How does a device know, after this call, if a CMA area was used?  From the
> patches I figured a device should not care.

A device doesn't know. But that doesn't mean a device won't care
at all. There was a concern from Robin and Christoph, as a corner
case that device might act differently if the memory isn't in its
own CMA region. That's why we let it still use its device specific
CMA area.

> > +	if (dev && dev->cma_area)
> > +		cma = dev->cma_area;
> > +	else if (count > 1)
> > +		cma = dma_contiguous_default_area;
> 
> Doesn't dev_get_dma_area() already do this?

Partially yes. But unwrapping it makes the program flow clear in
my opinion. Actually I should have mentioned that this patch was
suggested by Christoph also.

Otherwise, it would need an override like:
	cma = dev_get_dma_area();
	if (count > 1 && cma == dma_contiguous_default_area)
		cma = NULL;

Which doesn't look that bad though..

Thanks
Nicolin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
