Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E214E16AFE4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 20:01:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yu1991TMXvLp2jXiXDigY2OLU5msSPbqAig2ZGCE4TM=; b=NUmS9vwO13rJgW
	XDtbV/30J6GTVlkHr6WilMbqbPtcXggNhYDq/LEKB0+ZOtH1hljuP2bxdropx/fVXh07QH6VnZpDb
	AIzuNxgUpu14YfTzFKBN5QiL9V+5fokwScq1+ib8/GjrmGUsdQQvXhCpIYuFo3mF0rgP1iWM4Fohv
	IwmXhrqRQOI+IlYgPMeT7V9CR3QuPTTbP1xRb7GszuDH/+8pSy9rs53ghNClPW6iNjpyaeLOSVwU4
	3btGfz8VcoBVelpRZnToGmY53SmpyJ+8zWbnlFnOBT31rEFgib/w3+Ds1Srp3bYNRZHFYFxCFHCiF
	8Cbz2oUMbheUUXXpHhQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6Iyd-00068I-8S; Mon, 24 Feb 2020 19:01:11 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6IyS-00066x-F6
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 19:01:04 +0000
Received: by mail-qv1-xf41.google.com with SMTP id o18so4615115qvf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 11:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ziepe.ca; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=nS4y9b6My/7+JIxHts6eLm8z0C4thsb5l3wuyiXD29Q=;
 b=FnR6SEUSqjm6pva9hmjZjjMQWlNtH8BimVmLzNHoyK5KObnwJJd4v62FvcucQXR613
 Vs8HRCZGupCTQ5IZ0JUUxDfBksnOmCrAaBY+t9FVQ6WaO9/f1nfENMH64EtLf6mQOl3A
 ULGnEHBvxwQ+J67AeNEUPMlBMuj+D9qb1H5X2oBhmsBZnIHcb4yro7ts8Lp+wdj45jEW
 v76e8KPBbvQd89kU+MetflzO8JQksrPwRwleGV8a9HuL+52ruaZpjBkc9Ny6pYP+Y1YO
 IlJp1zbAGL4jPjja65grNuAP/DFEdsR9iZ2aPGrstIS0jUFiDV/TkZWtZDP/2nIWRKh9
 659A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=nS4y9b6My/7+JIxHts6eLm8z0C4thsb5l3wuyiXD29Q=;
 b=n6G39bNpSH8p9OkG29Csl4Ncj6M108j+vZTmm8GqylO8CpzL/bRPKm/EIsnPlMnTm8
 XJYB9blyXHx4UjSzv2LbWWp65FEcGy/bEOHT7Fgw7pRX+4C+VJ4rHewW7TCZanRKFkeF
 NEkXxeSdP1dHAYxCUOV1l5tEWd6780QjfaXPEzBKD55gVBIT1XlhyC5fimlsCMnl1z13
 YgUQ9vYUQX6opF8wAxDRUMQj8FCmECk8WR5Ng07scHggQZ3nh1bg4OHsO7tINuMq45IA
 93/nEUYaXraegAmukBxUvKdn4ZUVeMI7tuTfnJykysny7jGRZmVvmfQZF8nHuLC9I/iT
 aGtA==
X-Gm-Message-State: APjAAAU+32BM5C0x6J8EwCyXDOMNSMfxeqd4NNMIPxChj9FzOGYwOwN/
 8PeLzNlMiQgC45hBCXJfuBNHgA==
X-Google-Smtp-Source: APXvYqyNbYKidHbzZ1XJJ2LbIhIEjWa9RFdUt4bTzm6wm+o3ErpK3Y9OIJTvmpvQbXJ0sVD9TGvEfA==
X-Received: by 2002:ad4:4b21:: with SMTP id s1mr47274639qvw.81.1582570858491; 
 Mon, 24 Feb 2020 11:00:58 -0800 (PST)
Received: from ziepe.ca
 (hlfxns017vw-142-68-57-212.dhcp-dynamic.fibreop.ns.bellaliant.net.
 [142.68.57.212])
 by smtp.gmail.com with ESMTPSA id m17sm6086872qki.128.2020.02.24.11.00.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Feb 2020 11:00:57 -0800 (PST)
Received: from jgg by mlx.ziepe.ca with local (Exim 4.90_1)
 (envelope-from <jgg@ziepe.ca>)
 id 1j6IyO-0005Dy-Tk; Mon, 24 Feb 2020 15:00:56 -0400
Date: Mon, 24 Feb 2020 15:00:56 -0400
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200224190056.GT31668@ziepe.ca>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224182401.353359-2-jean-philippe@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_110100_503279_947F0DA3 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, linux-pci@vger.kernel.org, linux-mm@kvack.org,
 yi.l.liu@intel.com, will@kernel.org, Dimitri Sivanich <sivanich@sgi.com>,
 joro@8bytes.org, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, Arnd Bergmann <arnd@arndb.de>,
 robh+dt@kernel.org, Jonathan.Cameron@huawei.com,
 linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 iommu@lists.linux-foundation.org, Andrew Morton <akpm@linux-foundation.org>,
 robin.murphy@arm.com, christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 07:23:36PM +0100, Jean-Philippe Brucker wrote:
> The new allocation scheme introduced by 2c7933f53f6b ("mm/mmu_notifiers:
> add a get/put scheme for the registration") provides a convenient way
> for users to attach notifier data to an mm. However, it would be even
> better to create this notifier data atomically.
> 
> Since the alloc_notifier() callback only takes an mm argument at the
> moment, some users have to perform the allocation in two times.
> alloc_notifier() initially creates an incomplete structure, which is
> then finalized using more context once mmu_notifier_get() returns. This
> second step requires carrying an initialization lock in the notifier
> data and playing dirty tricks to order memory accesses against live
> invalidation.

This was the intended pattern. Tthere shouldn't be an real issue as
there shouldn't be any data on which to invalidate, ie the later patch
does:

+       list_for_each_entry_rcu(bond, &io_mm->devices, mm_head)

And that list is empty post-allocation, so no 'dirty tricks' required.

The other op callback is release, which also cannot be called as the
caller must hold a mmget to establish the notifier.

So just use the locking that already exists. There is one function
that calls io_mm_get() which immediately calls io_mm_attach, which
immediately grabs the global iommu_sva_lock.

Thus init the pasid for the first time under that lock and everything
is fine.

There is nothing inherently wrong with the approach in this patch, but
it seems unneeded in this case..

Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
