Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F84C16BD35
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 10:25:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3GulYP9g6esonSH26ScOeo0stZtOAbPliZcTqdlLCEo=; b=rgneZfxchAZwWq
	t2UcHgs1ad4v7FtETODA67j2SIAMkt+uOu3cufoJVVoGzMudsQrKsyyMgJ/9akZHz8KLMABoNc+K5
	HUQzw3XJImdgO3/iNH9Kt99rkmakSpJi/KkzFTMqad7VAYUUJmXi9R4N6NgRmpSVpqOAIg9zinc8D
	h2UZg7/XLd+tiCVUIf+7WJpAKOcKSOBFrmd/AsN4N8cjMvZzh5xlm4KMqzNmQ1zwvZ5cwzb6h7mJ5
	Smcnq5RIEVp8J75gr+x8ZQLdaKEUqnnjZdbx/TFuagAjmIqu3n8bVOq78SDaMtQpYEqgkCmjq+mHT
	UqNitUUgh/Xdi3vcPH3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6WSY-0007Wx-Ra; Tue, 25 Feb 2020 09:24:58 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6WSP-0007Wb-2l
 for linux-arm-kernel@lists.infradead.org; Tue, 25 Feb 2020 09:24:50 +0000
Received: by mail-wr1-x441.google.com with SMTP id t3so13785052wru.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 25 Feb 2020 01:24:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=f/BcuFESeD0nxQhG6MiD0u6r1X/PnHdRmEXqrbWhTtE=;
 b=zl3vF2DlbSqx5eFLLSUdDjI9EBwAJZ4gdDoR9UGpSvUPJOfbkv3eJR3zZrLTOKMU5r
 D1kDFHHNnWKKqrQV7qph5B4gnUnW3MYHNVP9WtLrfnDrCUvQMjwl171h+LwnhrjjAhUL
 ZdjznstMqGMEo0r7R+ZMNgE9YsZkix386pUoowGHr7Xeuj/plf1j8rEUOxYGQi94ARnr
 /AuqGhdu0td5MoZWNt7hEUNQw/YJTSVuPHT+6d5f6XwTZqTqrzty29h/tWMUE+qOVNNo
 O5UynFhd8cMEe83OPT8ZfIyYc0CAYZv4eLxgs1/afMqrI4bm73/HwhckO87ueeMlK+p9
 B/0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=f/BcuFESeD0nxQhG6MiD0u6r1X/PnHdRmEXqrbWhTtE=;
 b=URg9+gFO/XMrp9UiJo2fBkcSem9CsHsfpTemR7R8C3MxT2MoIosd4M5ecTHGfO2C1y
 GnB+UGobvjmbUY9cF6K3lBS37eSNoiXOsCdjW20SrevfukuyVF9L/fVJfVkp0Iq5jbx1
 rD1eU7suo4yGhtxzsqTY+hLM2f2PBcaWGVCFujcWHP8RIa0WZKC1Pf5xKUFuVfT9SgwQ
 vtQzDi8ODal1lDxBrMQ6Ga6XqCfH9z2gqYV4svczA0GoqrQbGcQ6MmquPakmT9pWAFuy
 LHMYue6QEXcfS5KwkIey55LnECRxGhEJ+pAX5kf3YsWThjtaoRwk5lYm32VCc2BucxYT
 Gf7Q==
X-Gm-Message-State: APjAAAWc4B1drJ/jA/8CnGB8Ie7s3OrhYoDx7G5Xba0BPGepwliOx6QC
 cMWIQJOkqLHxJJ8qWG7Kp0fF9A==
X-Google-Smtp-Source: APXvYqzEBhx+1qou+rx6ieuBuVr+WsrtZbhL85bwQfWbU5iCMd2zUrtZQURsgfjNBpo6KHXv5wrHgA==
X-Received: by 2002:adf:9cca:: with SMTP id h10mr1745887wre.390.1582622687476; 
 Tue, 25 Feb 2020 01:24:47 -0800 (PST)
Received: from myrica ([2001:171b:c9a8:fbc0:116c:c27a:3e7f:5eaf])
 by smtp.gmail.com with ESMTPSA id k16sm23442823wru.0.2020.02.25.01.24.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 01:24:46 -0800 (PST)
Date: Tue, 25 Feb 2020 10:24:39 +0100
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200225092439.GB375953@myrica>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
 <20200224190056.GT31668@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224190056.GT31668@ziepe.ca>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_012449_125376_31343A83 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
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

On Mon, Feb 24, 2020 at 03:00:56PM -0400, Jason Gunthorpe wrote:
> On Mon, Feb 24, 2020 at 07:23:36PM +0100, Jean-Philippe Brucker wrote:
> > The new allocation scheme introduced by 2c7933f53f6b ("mm/mmu_notifiers:
> > add a get/put scheme for the registration") provides a convenient way
> > for users to attach notifier data to an mm. However, it would be even
> > better to create this notifier data atomically.
> > 
> > Since the alloc_notifier() callback only takes an mm argument at the
> > moment, some users have to perform the allocation in two times.
> > alloc_notifier() initially creates an incomplete structure, which is
> > then finalized using more context once mmu_notifier_get() returns. This
> > second step requires carrying an initialization lock in the notifier
> > data and playing dirty tricks to order memory accesses against live
> > invalidation.
> 
> This was the intended pattern. Tthere shouldn't be an real issue as
> there shouldn't be any data on which to invalidate, ie the later patch
> does:
> 
> +       list_for_each_entry_rcu(bond, &io_mm->devices, mm_head)
> 
> And that list is empty post-allocation, so no 'dirty tricks' required.

Before introducing this patch I had the following code:

+	list_for_each_entry_rcu(bond, &io_mm->devices, mm_head) {
+		/*
+		 * To ensure that we observe the initialization of io_mm fields
+		 * by io_mm_finalize() before the registration of this bond to
+		 * the list by io_mm_attach(), introduce an address dependency
+		 * between bond and io_mm. It pairs with the smp_store_release()
+		 * from list_add_rcu().
+		 */
+		io_mm = rcu_dereference(bond->io_mm);
+		io_mm->ops->invalidate(bond->sva.dev, io_mm->pasid, io_mm->ctx,
+				       start, end - start);
+	}

(1) io_mm_get() would obtain an empty io_mm from iommu_notifier_get().
(2) then io_mm_finalize() would initialize io_mm->ops, io_mm->ctx, etc.
(3) finally io_mm_attach() would add the bond to io_mm->devices.

Since the above code can run before (2) it needs to observe valid
io_mm->ctx, io_mm->ops initialized by (2) after obtaining the bond
initialized by (3). Which I believe requires the address dependency from
the rcu_dereference() above or some stronger barrier to pair with the
list_add_rcu(). If io_mm->ctx and io_mm->ops are already valid before the
mmu notifier is published, then we don't need that stuff.

That's the main reason I would have liked moving everything to
alloc_notifier(), the locking below isn't a big deal.

> The other op callback is release, which also cannot be called as the
> caller must hold a mmget to establish the notifier.
> 
> So just use the locking that already exists. There is one function
> that calls io_mm_get() which immediately calls io_mm_attach, which
> immediately grabs the global iommu_sva_lock.
> 
> Thus init the pasid for the first time under that lock and everything
> is fine.

I agree with this, can't remember why I used a separate lock for
initialization rather than reusing iommu_sva_lock.

Thanks,
Jean

> 
> There is nothing inherently wrong with the approach in this patch, but
> it seems unneeded in this case..
> 
> Jason

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
