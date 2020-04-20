Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D3841B1360
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u7bNizxiDy9WW9NWu3C3xoBdpXbxjUXETjs4mMHPqao=; b=HJgdGe6hpGJw3r
	69WWWusf4Jp8ndpzU4wUxTu5iC245l45wa9bxyikIS9p/KPJBykP9Wec97vdxiaW5H2q6eRQ0lFc3
	7AQbSWs9yjO0UK5Oyv7K1JlfKedMiI13CUcQCVj6KjMTGVmfAhAi2NSsTq34SuNSakr4R/oYTLWlp
	RO6tAH7hGF4mQEAPH0i858nLEWGX2twa8efOuC1v0TKjixgmQqlc7dkuOeeFZBzobrApt/FTcwiGx
	bYIQ71hh/YAH3JNONN17vT83zCBJ+k1LQ90+PFDd5HTVtXCsi9FNctZ2RvepDl8fxs3Q8pKHk4XXZ
	DQq4Q1mWn2oHfe77GECg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaRt-0004fL-OH; Mon, 20 Apr 2020 17:43:13 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQaRi-0004eJ-Lp
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:43:04 +0000
IronPort-SDR: YHQp9mQ60ucbISkXhiwHM9dL71FgaYaomfe0esi3G9cwR7tzdXJSst0beOGp/nI7cgKZ7+7QUZ
 YQQ875RrlRCQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 10:42:53 -0700
IronPort-SDR: eM/j/RrA0dBjUaYVKE+3++Tb85wNGqjGC5Sdurj8El2Xw1ycvBFzcuEk1vr5nmoJeb1Oix9ZJQ
 KqoHCv3cjXTw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="246953658"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by fmsmga008.fm.intel.com with ESMTP; 20 Apr 2020 10:42:53 -0700
Date: Mon, 20 Apr 2020 10:48:50 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200420104850.60531cb6@jacob-builder>
In-Reply-To: <20200420135727.GO26002@ziepe.ca>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
 <20200416085402.GB1286150@myrica>
 <20200416121331.GA18661@infradead.org>
 <20200420074213.GA3180232@myrica> <20200420135727.GO26002@ziepe.ca>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_104302_732831_EFCEC6C6 
X-CRM114-Status: GOOD (  19.06  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jean-Philippe Brucker <jean-philippe@linaro.org>, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, "Raj, Ashok" <ashok.raj@intel.com>,
 devicetree@vger.kernel.org, linux-pci@vger.kernel.org, joro@8bytes.org,
 Jonathan.Cameron@huawei.com, robin.murphy@arm.com, "Yu,
 Fenghua" <fenghua.yu@intel.com>, Christoph Hellwig <hch@infradead.org>,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 20 Apr 2020 10:57:27 -0300
Jason Gunthorpe <jgg@ziepe.ca> wrote:

> On Mon, Apr 20, 2020 at 09:42:13AM +0200, Jean-Philippe Brucker wrote:
> > On Thu, Apr 16, 2020 at 05:13:31AM -0700, Christoph Hellwig wrote:  
> > > On Thu, Apr 16, 2020 at 10:54:02AM +0200, Jean-Philippe Brucker
> > > wrote:  
> > > > On Thu, Apr 16, 2020 at 12:28:52AM -0700, Christoph Hellwig
> > > > wrote:  
> > > > > > +	rcu_read_lock();
> > > > > > +	hlist_for_each_entry_rcu(bond, &io_mm->devices,
> > > > > > mm_node)
> > > > > > +		io_mm->ops->invalidate(bond->sva.dev,
> > > > > > io_mm->pasid, io_mm->ctx,
> > > > > > +				       start, end - start);
> > > > > > +	rcu_read_unlock();
> > > > > > +}  
> > > > > 
> > > > > What is the reason that the devices don't register their own
> > > > > notifiers? This kinds of multiplexing is always rather messy,
> > > > > and you do it for all the methods.  
> > > > 
> > > > This sends TLB and ATC invalidations through the IOMMU, it
> > > > doesn't go through device drivers  
> > > 
> > > I don't think we mean the same thing, probably because of my
> > > rather imprecise use of the word device.
> > > 
> > > What I mean is that the mmu_notifier should not be embedded into
> > > the io_mm structure (whch btw, seems to have a way to generic
> > > name, just like all other io_* prefixed names), but instead into
> > > the iommu_bond structure.  That avoid the whole multiplexing
> > > layer.  
> > 
> > Right, I can see the appeal. I still like having a single mmu
> > notifier per mm because it ensures we allocate a single PASID per
> > mm (as required by x86). I suppose one alternative is to maintain a
> > hashtable of mm->pasid, to avoid iterating over all bonds during
> > allocation.  
> 
> I've been getting rid of hash tables like this.. Adding it to the
> mm_struct does seem reasonable, I think PASID is a pretty broad
> concept now.
> 
Agreed, perhaps Fenghua can consider that in his patchset. It would
help align life cycles as well.
https://lkml.org/lkml/2020/3/30/910

> Jason

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
