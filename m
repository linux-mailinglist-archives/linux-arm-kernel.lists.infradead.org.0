Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C169173A07
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 15:40:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mszm6KU1qeu78M4+6fN+DncxmDSUHBUgkFggzVa8glM=; b=tiDMmHq1BcdXOh
	OUCCOXaljo9M4JloWeQCvTSc7vmRtFYvyoCfSVMnK5aWFFN0nBy3/VYpGNeGAaSVNi85xlmUGhhf9
	bFB3mBm1VcvPXHEUPCrYeYdw8JbYtTmBj7ZhrHW9A42+7BwPSWFUvK69J1B+X8pr4BTJIL6m6wZ3J
	q8o7hbI4C4IYPRsHS1C8z6nCTYRNyRhNLWjdn7to6hnOBTdHWsnB3mrU9RL5FYAopdo/X34z6G97m
	zBnj3cb5Uu7vZD2npvijUaYvcLMuhrrZeED2rItLtvGNVJko5yanLKKF6miUojtYGKGn6CZI6I6y0
	AQuWgcig2jnI+VafZbZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7go1-0007Ih-70; Fri, 28 Feb 2020 14:39:57 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7gnu-0007HL-1L
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 14:39:51 +0000
Received: by mail-wr1-x442.google.com with SMTP id v2so3145945wrp.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 28 Feb 2020 06:39:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0bZtBK6HC94nIEacPL+V6SajMXEMTp9BAFVguJlaz+Q=;
 b=v7jFCl7OdeBWLjzPqqQAjqPrO/bujVk3YQ+hyShHLUfXRhZTEjht+G1EeKmiALwmrF
 +K7WW2uAYpZmtBzezuv2w6JdJBKpUdrsVHMYifTW3ola4TSC2f9DFxhquGsIb9CwsYcj
 I013dyyZ6/sIBNapnY1ANl/WmtPXa7OasfQA2NEYVXDTycNT7T/szrd8fPkyKttzDOhS
 AkrRy0wJlbcKiLL14UW8NPqnhuTmdqHG+yqHosj5GBL25ODsv4IeTcjj/P24pxnowkqO
 vgOp2+gPP2nbd/AjqXRm5VyhdRF+ZL9iukIU6Y4I/BilXyOX38XdNblyty+GogNj1crk
 MH+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0bZtBK6HC94nIEacPL+V6SajMXEMTp9BAFVguJlaz+Q=;
 b=sOOnn6Ol3Z3qVvJ9RhFbjaDXV2D76gupStoGvcli9RgdEhMyFWv4AEqCOta/v+J4zT
 tCLVHEmNXVD3mhuWziLtF6WZPpNFkEpSKjipJpNAaQ5u27yy65AK8g+GdUH1HeFFiCzh
 5E9HprlbLrH2JhFXAWI8+IEaGGgbUx00xcLtVRN0pC2fuJKFvJey00CVcr2VmLg54Zgs
 60H0N4bn33NUQQmzVjakvNaCNeRVf3LWnTa7QpYKkS55hVTb1B28XJnfRYj/r2jUEcqD
 1muEHI+6o497rFcN1LewNJis8Sj0Fsv2bvoTl1NIJaDP4IZkOdAV6kioSjrAExH7/zjm
 9wFg==
X-Gm-Message-State: APjAAAX8Ggs9C7rdsKJHXiB1GC2ch0VhqPIIcEUSw8ElRCGUrPsNL7N9
 F5SRmWrTneAozolqIHD6mKg3cQ==
X-Google-Smtp-Source: APXvYqy36tgbgxq6aX9f3yrenPgU8REug1w3SCjW1FgRUfJhNgTMxVBJWR+Ek+IeYzLIg7r0rI/Bvg==
X-Received: by 2002:adf:ec0e:: with SMTP id x14mr4896046wrn.270.1582900782663; 
 Fri, 28 Feb 2020 06:39:42 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id a7sm2294800wmj.12.2020.02.28.06.39.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Feb 2020 06:39:42 -0800 (PST)
Date: Fri, 28 Feb 2020 15:39:35 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200228143935.GA2156@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca> <20200225092439.GB375953@myrica>
 <20200225140814.GW31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225140814.GW31668@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_063950_094471_8658AFF2 
X-CRM114-Status: GOOD (  29.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
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

On Tue, Feb 25, 2020 at 10:08:14AM -0400, Jason Gunthorpe wrote:
> On Tue, Feb 25, 2020 at 10:24:39AM +0100, Jean-Philippe Brucker wrote:
> > On Mon, Feb 24, 2020 at 03:00:56PM -0400, Jason Gunthorpe wrote:
> > > On Mon, Feb 24, 2020 at 07:23:36PM +0100, Jean-Philippe Brucker wrote:
> > > > The new allocation scheme introduced by 2c7933f53f6b ("mm/mmu_notifiers:
> > > > add a get/put scheme for the registration") provides a convenient way
> > > > for users to attach notifier data to an mm. However, it would be even
> > > > better to create this notifier data atomically.
> > > > 
> > > > Since the alloc_notifier() callback only takes an mm argument at the
> > > > moment, some users have to perform the allocation in two times.
> > > > alloc_notifier() initially creates an incomplete structure, which is
> > > > then finalized using more context once mmu_notifier_get() returns. This
> > > > second step requires carrying an initialization lock in the notifier
> > > > data and playing dirty tricks to order memory accesses against live
> > > > invalidation.
> > > 
> > > This was the intended pattern. Tthere shouldn't be an real issue as
> > > there shouldn't be any data on which to invalidate, ie the later patch
> > > does:
> > > 
> > > +       list_for_each_entry_rcu(bond, &io_mm->devices, mm_head)
> > > 
> > > And that list is empty post-allocation, so no 'dirty tricks' required.
> > 
> > Before introducing this patch I had the following code:
> > 
> > +	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head) {
> > +		/*
> > +		 * To ensure that we observe the initialization of io_mm fields
> > +		 * by io_mm_finalize() before the registration of this bond to
> > +		 * the list by io_mm_attach(), introduce an address dependency
> > +		 * between bond and io_mm. It pairs with the smp_store_release()
> > +		 * from list_add_rcu().
> > +		 */
> > +		io_mm = rcu_dereference(bond->io_mm);
> 
> A rcu_dereference isn't need here, just a normal derference is fine.

bond->io_mm is annotated with __rcu (for iommu_sva_get_pasid_generic(),
which does bond->io_mm under rcu_read_lock())

> 
> > +		io_mm->ops->invalidate(bond->sva.dev, io_mm->pasid, io_mm->ctx,
> > +				       start, end - start);
> > +	}
> > 
> > (1) io_mm_get() would obtain an empty io_mm from iommu_notifier_get().
> > (2) then io_mm_finalize() would initialize io_mm->ops, io_mm->ctx, etc.
> > (3) finally io_mm_attach() would add the bond to io_mm->devices.
> > 
> > Since the above code can run before (2) it needs to observe valid
> > io_mm->ctx, io_mm->ops initialized by (2) after obtaining the bond
> > initialized by (3). Which I believe requires the address dependency from
> > the rcu_dereference() above or some stronger barrier to pair with the
> > list_add_rcu().
> 
> The list_for_each_entry_rcu() is an acquire that already pairs with
> the release in list_add_rcu(), all you need is a data dependency chain
> starting on bond to be correct on ordering.
> 
> But this is super tricky :\
> 
> > If io_mm->ctx and io_mm->ops are already valid before the
> > mmu notifier is published, then we don't need that stuff.
> 
> So, this trickyness with RCU is not a bad reason to introduce the priv
> scheme, maybe explain it in the commit message?

Ok, I've added this to the commit message:

    The IOMMU SVA module, which attaches an mm to multiple devices,
    exemplifies this situation. In essence it does:

            mmu_notifier_get()
              alloc_notifier()
                 A = kzalloc()
              /* MMU notifier is published */
            A->ctx = ctx;                           // (1)
            device->A = A;
            list_add_rcu(device, A->devices);       // (2)

    The invalidate notifier, which may start running before A is fully
    initialized at (1), does the following:

            io_mm_invalidate(A)
              list_for_each_entry_rcu(device, A->devices)
                A = device->A;                      // (3)
                device->invalidate(A->ctx)

    To ensure that an invalidate() thread observes write (1) before (2), it
    needs the address dependency (3). The resulting code is subtle and
    difficult to understand. If instead we fully initialize object A before
    publishing the MMU notifier, we don't need the complexity added by (3).


I'll try to improve the wording before sending next version.

Thanks,
Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
