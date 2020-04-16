Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97EFE1AC0D7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 14:13:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P7zKbocQa45Henuo7cUwL45geGKcUKRw5n/AvTFAqKw=; b=gIYlDPrhS4t5Hp
	oSohZ1JqmEVsSz6tOkOcKD7ceTPJC/gekT1YzLTcMgxuzCliLPVmra3FmoZga91tVoeZ+SCDIJpVi
	QMKZTr9i8Ikbnd1mZ3oYXur2jYdPW0iswnH/+4hEiOcU15VjIiZXfUaVVqzdZPrQMHvEmeklADAyf
	7a4sDtE6hrMxyT+mzJq20A9kHqRKzyym9TrHMX+/LOFF7jGy4vKOcHWuk7X78mSPqaDfqiIDZeYR/
	7VXwf9nJ48X5FwZNslmg1/BUy40rArsr+qbcRtzO4iGHjXbBbWg+hnqETewaynIGWKbqW+6/vgAmr
	eSOu6NkgvOrzgZo0nSog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP3On-0002v7-K7; Thu, 16 Apr 2020 12:13:41 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jP3Oe-0002ua-05; Thu, 16 Apr 2020 12:13:32 +0000
Date: Thu, 16 Apr 2020 05:13:31 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200416121331.GA18661@infradead.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
 <20200416085402.GB1286150@myrica>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200416085402.GB1286150@myrica>
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 Christoph Hellwig <hch@infradead.org>, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 10:54:02AM +0200, Jean-Philippe Brucker wrote:
> On Thu, Apr 16, 2020 at 12:28:52AM -0700, Christoph Hellwig wrote:
> > > +	rcu_read_lock();
> > > +	hlist_for_each_entry_rcu(bond, &io_mm->devices, mm_node)
> > > +		io_mm->ops->invalidate(bond->sva.dev, io_mm->pasid, io_mm->ctx,
> > > +				       start, end - start);
> > > +	rcu_read_unlock();
> > > +}
> > 
> > What is the reason that the devices don't register their own notifiers?
> > This kinds of multiplexing is always rather messy, and you do it for
> > all the methods.
> 
> This sends TLB and ATC invalidations through the IOMMU, it doesn't go
> through device drivers

I don't think we mean the same thing, probably because of my rather
imprecise use of the word device.

What I mean is that the mmu_notifier should not be embedded into the
io_mm structure (whch btw, seems to have a way to generic name, just
like all other io_* prefixed names), but instead into the
iommu_bond structure.  That avoid the whole multiplexing layer.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
