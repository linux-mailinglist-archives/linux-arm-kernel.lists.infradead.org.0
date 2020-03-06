Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C82117B9AA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 10:56:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=57IL4mMhcO/l+NJMXWdkE09Kjc2bU3Zee/plgOIIRUs=; b=NSIB7njb2BeTuu
	fGsorG5VBmvbTmRqeaPpCxtXihwHN6kVJ9kKdN4HLIXKnO/NlWhVJhvjM1qRf0iXf2vHd5wi0RrzA
	xu+8HdhITDgJIG9DQtXWWoEk67dfBunaRVsJorB7g07g55up2VYlf8FBso9FHjEEVC5xCebN0rHog
	MilPfl6YSw+uVcjf+6BTzMNvQeCxcLJ5QbUvvlEDg/yiljG3lla0pLbVflLy8F4NpQQCDWyqzj/v6
	2hs6Rm4uFGthN8U0kHtco8JU/qkSJ+7iiA+WQzVAjxi5T2CeFqh0McO4sOd38AKxiQuVLOluOlp+m
	S/OFyPQcoDBOuepJ6sGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jA9iZ-0007f6-UE; Fri, 06 Mar 2020 09:56:31 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jA9iS-0007ek-DB
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Mar 2020 09:56:25 +0000
Received: by mail-wm1-x344.google.com with SMTP id g134so1653349wme.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Mar 2020 01:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=7WA8KxQFlE6B8qCgTFRQ+YrpY3GYXgfg/QOgK1f77sM=;
 b=Z+vSL2j8scoLCGNkZyokN15xJq1aniWOej9xa0jO1y/7aiSn6wUVH8PGc2mmDoSxkx
 hKYfJxAN6zemdGqm+/m/AwAvjWPnxYO3i8iNXAcdbEHhdhF9uUqrEmLCTqWr8lqHMzAU
 5/u3kcwg3w6H2MZgNCyva5KikrewAvfB8ctsMOZd35NBMW7AF0sSL8FLlPXq2+tABW5v
 3eEcsqfJCErJCgsWy2UZ9D2YLRkwKUkct1WRvgXbWkdGsl+/AqLCS6/4rzZZzbeHMXAb
 aQFr7GnLr8aSRBGzmvQjRCLEcf731bgNW+CD7gus6HHQ+MyynH9kPWMxpkl+lZZbqIIM
 Kw5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=7WA8KxQFlE6B8qCgTFRQ+YrpY3GYXgfg/QOgK1f77sM=;
 b=WaNhwC1KIuQOXKltwBb/X53kC6dyU/uSR0hc32SCEWw408SBUgXr6PNO0FP8k3xLPG
 mpYDIQOrgZME5nCuCW8bTReUbwawob3Rf/X38Chvx73M04JxuuFOLiAlmXIcG6MROina
 HXPnxpnA9sFfgnmKip6rkQmTH/3KAfcICaz/wOhgIR9PZl3PxMMD2C7dDj6xVD4XifWp
 yoFFmkraLhZqlssouIvmt4mtnObK+MnG9bDN0d1s8dH53XouTNc4L8CRDFQih/3BCJWs
 tJswoeQ1OrMjd5/X/yOyIVtnEONb1pRyzkZ6DDdzGZUTezGEtf8fGx8z0mZ71WOd3069
 +OYA==
X-Gm-Message-State: ANhLgQ3CSHZEN+pnr+Wn3w7Uw53F6YT3V64SHbM8RZiQFI900Rh4uiMR
 sw9To+4gW9k4QNpsFd3GlgSLag==
X-Google-Smtp-Source: ADFU+vuU7aA2moxG0tbzibZ6qR77dGIj+dzVr37QpTQa4MjhQ67tVPECKIRxafVKMX7XzMD/CpXXyA==
X-Received: by 2002:a7b:cd11:: with SMTP id f17mr3243910wmj.6.1583488582036;
 Fri, 06 Mar 2020 01:56:22 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id m25sm12484502wml.35.2020.03.06.01.56.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 01:56:21 -0800 (PST)
Date: Fri, 6 Mar 2020 10:56:14 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200306095614.GA50020@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca> <20200228143935.GA2156@myrica>
 <20200228144844.GQ31668@ziepe.ca> <20200228150427.GF2156@myrica>
 <20200228151339.GS31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200228151339.GS31668@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_015624_449227_F6B11454 
X-CRM114-Status: GOOD (  22.64  )
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

On Fri, Feb 28, 2020 at 11:13:40AM -0400, Jason Gunthorpe wrote:
> On Fri, Feb 28, 2020 at 04:04:27PM +0100, Jean-Philippe Brucker wrote:
> > On Fri, Feb 28, 2020 at 10:48:44AM -0400, Jason Gunthorpe wrote:
> > > On Fri, Feb 28, 2020 at 03:39:35PM +0100, Jean-Philippe Brucker wrote:
> > > > > > +	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head) {
> > > > > > +		/*
> > > > > > +		 * To ensure that we observe the initialization of io_mm fields
> > > > > > +		 * by io_mm_finalize() before the registration of this bond to
> > > > > > +		 * the list by io_mm_attach(), introduce an address dependency
> > > > > > +		 * between bond and io_mm. It pairs with the smp_store_release()
> > > > > > +		 * from list_add_rcu().
> > > > > > +		 */
> > > > > > +		io_mm = rcu_dereference(bond->io_mm);
> > > > > 
> > > > > A rcu_dereference isn't need here, just a normal derference is fine.
> > > > 
> > > > bond->io_mm is annotated with __rcu (for iommu_sva_get_pasid_generic(),
> > > > which does bond->io_mm under rcu_read_lock())
> > > 
> > > I'm surprised the bond->io_mm can change over the lifetime of the
> > > bond memory..
> > 
> > The normal lifetime of the bond is between device driver calls to bind()
> > and unbind(). If the mm exits early, though, we clear bond->io_mm. The
> > bond is then stale but can only be freed when the device driver releases
> > it with unbind().
> 
> I usually advocate for simple use of these APIs. The mm_notifier_get()
> should happen in bind() and the matching put should happen in the
> call_rcu callbcak that does the kfree.

I tried to keep it simple like that: normally mmu_notifier_get() is called
in bind(), and mmu_notifier_put() is called in unbind(). 

Multiple device drivers may call bind() with the same mm. Each bind()
calls mmu_notifier_get(), obtains the same io_mm, and returns a new bond
(a device<->mm link). Each bond is freed by calling unbind(), which calls
mmu_notifier_put().

That's the most common case. Now if the process is killed and the mm
disappears, we do need to avoid use-after-free caused by DMA of the
mappings and the page tables. So the release() callback, before doing
invalidate_all, stops DMA and clears the page table pointer on the IOMMU
side. It detaches all bonds from the io_mm, calling mmu_notifier_put() for
each of them. After release(), bond objects still exists and device
drivers still need to free them with unbind(), but they don't point to an
io_mm anymore.

> Then you can never get a stale
> pointer. Don't worry about exit_mmap().
> 
> release() is an unusual callback and I see alot of places using it
> wrong. The purpose of release is to invalidate_all, that is it.
> 
> Also, confusingly release may be called multiple times in some
> situations, so it shouldn't disturb anything that might impact a 2nd
> call.

I hadn't realized that. The current implementation should be safe against
it, as release() is a nop if the io_mm doesn't have bonds anymore. Do you
have an example of such a situation?  I'm trying to write tests for this
kind of corner cases.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
