Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD9AC17C05D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 15:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uZRoKOb0MawFb61DNHz4hCrcVo4zqQVt2tjxYh0AI1s=; b=btIx++1ZP7Hn3/
	3GFhlvfp5POyfm3+k1l3CgNGFYP0HjOp2/06CWNzso6xhuuspSElGNNkJ/81aQmTh04s9iuY5MJX7
	/IUYLFcG2ygq+VoWTwQ0nZOBwiEqzfVe0j4hEggsUg1/FbqZ3ZB/gbHHfaeikNNyRRv02kwIbzYW7
	FqvzxElOi/xEp4+qGdAeZTOaWnhZcmuoPnpt50BRQhgyoZ/Xe5HSYsjNZ26grqlUEFBaIN6Xy0GlA
	fP+RdpZU3tBlCgv3YW1TfjpdZaGRoldjqFwFkjtbE9WBFIxAHRSXdwfJILSsjwwEHhczSmbHFsV1L
	MclwBCBCJl5jrOHiCRLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAE5J-0001QI-8C; Fri, 06 Mar 2020 14:36:17 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAE59-0001On-79
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 14:36:08 +0000
Received: by mail-wm1-x344.google.com with SMTP id i14so2630240wmb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 06:36:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=IdtX3txS1Rj5y4dz7wIKkSyvH1Rw1XFvTfdagNbM2bU=;
 b=YUvu6JjSjCjKSmfeTWzbk/mitLMbkxf3DfR+DN3duN1k0wQoKseoCpJQmbriD7dA70
 8lgpo6K+CWIlciFI2d54YI7ZPsG+7USrqrtkCgGFribhynpJBKxPSj45NC0zhWSn5/1Z
 QvmV51OgAMAsAphmeqXjhnhQfdicOmQ0U7o3dvPsmvRBEofJYP3mrx+y2ArtO8DyqDRd
 AoHZI/gJNMRX2c9O4/4ju3VY+bc3DPpqGuP494u/tNGEkyfhkaHCaRUslOhxBuZx0TnN
 OtknlK8DNrF218Ds29fpJK9GhchaEDI0LjqY89n2JxWqqXctj4YRUS+77wC9cESbAUFC
 0YDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=IdtX3txS1Rj5y4dz7wIKkSyvH1Rw1XFvTfdagNbM2bU=;
 b=jgZYzHbx7PndY80En8QlTmSUrIdHuZOq1yGB2VgJdzFOBdF1rDX3HbnYXXVQtGk3gH
 I0xK/mzZSkKbqUsXoWggDetGOnoXlI48ls74zOervefFJilmYUrNZ3KuNoQtn4wt0b8y
 fGNXVoIIWSDK1F64tEekUjbnStNW+y9LqZsyZf1YX2j1cUqCAQ3YM65Q+BRNx5uzOGfj
 z8cbt03t3ip304egqSq7RRH/8ts/B4qearN6W4n+6sJKM/SJpwWpBWr3QpLcxCRfcGph
 TBR1OhWMBV49MfiPfknVOF27wYlf5tlzi1q9p6p09kp7BrMxwyII0lpty5ZLyhar2opd
 uBTA==
X-Gm-Message-State: ANhLgQ1d01Hzrg6waj4NRnM7gzkRq8u6g18UvrhCfrIH31W8kcuc/Ilw
 yQNNaoUcj1k4lebaSnyPMdQ/oQ==
X-Google-Smtp-Source: ADFU+vso3XaLrSLsJHyy38nS4lkcofYSES+LpI4xvlFWzpkLgomnvoNduJx+7dNPFwc8Wt+DimCgxg==
X-Received: by 2002:a7b:ca52:: with SMTP id m18mr4589811wml.168.1583505363558; 
 Fri, 06 Mar 2020 06:36:03 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id w8sm15370244wmm.0.2020.03.06.06.36.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 06:36:02 -0800 (PST)
Date: Fri, 6 Mar 2020 15:35:56 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200306143556.GA99609@myrica>
References: <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
 <20200228144844.GQ31668@ziepe.ca> <20200228150427.GF2156@myrica>
 <20200228151339.GS31668@ziepe.ca> <20200306095614.GA50020@myrica>
 <20200306130919.GJ31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306130919.GJ31668@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_063607_294675_E6E84AC6 
X-CRM114-Status: GOOD (  26.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 Dimitri Sivanich <sivanich@sgi.com>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-pci@vger.kernel.org,
 robin.murphy@arm.com, linux-mm@kvack.org, iommu@lists.linux-foundation.org,
 robh+dt@kernel.org, catalin.marinas@arm.com, zhangfei.gao@linaro.org,
 Andrew Morton <akpm@linux-foundation.org>, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 09:09:19AM -0400, Jason Gunthorpe wrote:
> On Fri, Mar 06, 2020 at 10:56:14AM +0100, Jean-Philippe Brucker wrote:
> > I tried to keep it simple like that: normally mmu_notifier_get() is called
> > in bind(), and mmu_notifier_put() is called in unbind(). 
> > 
> > Multiple device drivers may call bind() with the same mm. Each bind()
> > calls mmu_notifier_get(), obtains the same io_mm, and returns a new bond
> > (a device<->mm link). Each bond is freed by calling unbind(), which calls
> > mmu_notifier_put().
> > 
> > That's the most common case. Now if the process is killed and the mm
> > disappears, we do need to avoid use-after-free caused by DMA of the
> > mappings and the page tables. 
> 
> This is why release must do invalidate all - but it doesn't need to do
> any more - as no SPTE can be established without a mmget() - and
> mmget() is no longer possible past release.

In our case we don't have SPTEs, the whole pgd is shared between MMU and
IOMMU (isolated using PASID tables).

Taking the concrete example of the crypto accelerator:

1. A process opens a queue in the accelerator. That queue is bound to the
   address space: a PASID is allocated for the mm, and mm->pgd is written
   into the IOMMU PASID table.
2. The process queues some work and waits. In the background, the
   accelerators performs DMA on the process address space, by using the
   mm's PASID.
3. Now the process gets killed, and release() is called.

At this point no one told the device to stop working on this queue, it may
still be doing DMA on this address space. So the first thing we do is
notify the device driver that the bond is going away, and that it must
stop the queue and flush remaining DMA transactions for this PASID.

Then we also clear the pgd from the IOMMU PASID table. If we only did
invalidate-all and somehow the queue wasn't properly stopped, concurrent
DMA would immediately form new IOTLB entries since the page tables haven't
been wiped at this point. And later, it would use-after-free page tables
and mappings. Whereas with a clear pgd it would just generate IOMMU fault
events, which are undesirable but harmless.

Thanks,
Jean

> > So the release() callback, before doing invalidate_all, stops DMA
> > and clears the page table pointer on the IOMMU side. It detaches all
> > bonds from the io_mm, calling mmu_notifier_put() for each of
> > them. After release(), bond objects still exists and device drivers
> > still need to free them with unbind(), but they don't point to an
> > io_mm anymore.
> 
> Why is so much work needed in release? It really should just be
> invalidate all, usually trying to sort out all the locking for the
> more complicated stuff is not worthwhile.
> 
> If other stuff is implicitly relying on the mm being alive and release
> to fence against that then it is already racy. If it doesn't, then why
> bother doing complicated work in release?
> 
> > > Then you can never get a stale
> > > pointer. Don't worry about exit_mmap().
> > > 
> > > release() is an unusual callback and I see alot of places using it
> > > wrong. The purpose of release is to invalidate_all, that is it.
> > > 
> > > Also, confusingly release may be called multiple times in some
> > > situations, so it shouldn't disturb anything that might impact a 2nd
> > > call.
> > 
> > I hadn't realized that. The current implementation should be safe against
> > it, as release() is a nop if the io_mm doesn't have bonds anymore. Do you
> > have an example of such a situation?  I'm trying to write tests for this
> > kind of corner cases.
> 
> Hmm, let me think. Ah, you have to be using mmu_notifier_unregister()
> to get that race. This is one of the things that get/put don't suffer
> from - but they conversely don't guarantee that release() will be
> called, so it is up to the caller to ensure everything is fenced
> before calling put.
> 
> Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
