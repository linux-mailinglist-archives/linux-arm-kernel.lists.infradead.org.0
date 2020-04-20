Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 009B11B1424
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 20:15:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R2cV4/5TvTmg11+MgNWSPkfJr9gh3zuo/OuMyV8ChQs=; b=WObYFHhwFoLO2E
	+YQO03vh1gFNoCkzWQDWawsmM1xy7//yQUXPXsQ1jBCnVQZzaJOPriEuPLXgHso9qG7PW9Wl7m3tK
	oEcixbRy/yk++EPVhJXmRgNy3t25ekO2V5PN7Pe/pPcbWNQmXxW+0xhwiWsM/nnJQoNcd+Vy2VQgN
	cbaK9rKP5gpCA3lE/mnb3xrt3UpPaVwVU2+JEPPGVO8GBnwWQCvZbxUPpkyAwkT+rkEM/doHZqS74
	pQz7ctLe59Rxtehhr6sTGcR7AtrU9M3jr0zEeTMQYRiB+K13tcKfWz65OJLBKZQMcazGxxz0On41N
	vuyFR1SWnyGI4uj9hlLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQaxH-0000I4-JI; Mon, 20 Apr 2020 18:15:39 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQax1-0000GJ-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 18:15:25 +0000
IronPort-SDR: 83cOqUu3MjiiGIsxNxilspPE9S8N/9c7TXQCa4wIFzngnQkcCax8YnuLldArH0C2Il0GLx5BR1
 lCrgkQWeFxhg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Apr 2020 11:15:21 -0700
IronPort-SDR: 8fT09weErfTNfN3mfjnYSebk8Nn+HR58tGa0lnQIUlEHvLqz6923WibZ88j62ipIrGurCIktai
 4d4uQqkvArDA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,407,1580803200"; d="scan'208";a="246960869"
Received: from romley-ivt3.sc.intel.com ([172.25.110.60])
 by fmsmga008.fm.intel.com with ESMTP; 20 Apr 2020 11:15:21 -0700
Date: Mon, 20 Apr 2020 11:14:37 -0700
From: Fenghua Yu <fenghua.yu@intel.com>
To: Jacob Pan <jacob.jun.pan@linux.intel.com>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200420181437.GA229170@romley-ivt3.sc.intel.com>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
 <20200416085402.GB1286150@myrica>
 <20200416121331.GA18661@infradead.org>
 <20200420074213.GA3180232@myrica> <20200420135727.GO26002@ziepe.ca>
 <20200420104850.60531cb6@jacob-builder>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420104850.60531cb6@jacob-builder>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_111523_633256_9438D7DD 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com, "Raj,
 Ashok" <ashok.raj@intel.com>, Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, christian.koenig@amd.com,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 10:48:50AM -0700, Jacob Pan wrote:
> On Mon, 20 Apr 2020 10:57:27 -0300
> Jason Gunthorpe <jgg@ziepe.ca> wrote:
> 
> > On Mon, Apr 20, 2020 at 09:42:13AM +0200, Jean-Philippe Brucker wrote:
> > > On Thu, Apr 16, 2020 at 05:13:31AM -0700, Christoph Hellwig wrote:  
> > > > On Thu, Apr 16, 2020 at 10:54:02AM +0200, Jean-Philippe Brucker
> > > > wrote:  
> > > > > On Thu, Apr 16, 2020 at 12:28:52AM -0700, Christoph Hellwig
> > > > > wrote:  
> > > > > > > +	rcu_read_lock();
> > > > > > > +	hlist_for_each_entry_rcu(bond, &io_mm->devices,
> > > > > > > mm_node)
> > > > > > > +		io_mm->ops->invalidate(bond->sva.dev,
> > > > > > > io_mm->pasid, io_mm->ctx,
> > > > > > > +				       start, end - start);
> > > > > > > +	rcu_read_unlock();
> > > > > > > +}  
> > > > > > 
> > > > > > What is the reason that the devices don't register their own
> > > > > > notifiers? This kinds of multiplexing is always rather messy,
> > > > > > and you do it for all the methods.  
> > > > > 
> > > > > This sends TLB and ATC invalidations through the IOMMU, it
> > > > > doesn't go through device drivers  
> > > > 
> > > > I don't think we mean the same thing, probably because of my
> > > > rather imprecise use of the word device.
> > > > 
> > > > What I mean is that the mmu_notifier should not be embedded into
> > > > the io_mm structure (whch btw, seems to have a way to generic
> > > > name, just like all other io_* prefixed names), but instead into
> > > > the iommu_bond structure.  That avoid the whole multiplexing
> > > > layer.  
> > > 
> > > Right, I can see the appeal. I still like having a single mmu
> > > notifier per mm because it ensures we allocate a single PASID per
> > > mm (as required by x86). I suppose one alternative is to maintain a
> > > hashtable of mm->pasid, to avoid iterating over all bonds during
> > > allocation.  
> > 
> > I've been getting rid of hash tables like this.. Adding it to the
> > mm_struct does seem reasonable, I think PASID is a pretty broad
> > concept now.
> > 
> Agreed, perhaps Fenghua can consider that in his patchset. It would
> help align life cycles as well.
> https://lkml.org/lkml/2020/3/30/910>

Seems we depend on each other: my patch defines pasid in mm_struct.
I can free PASID in your detach() function.

Thanks.

-Fenghua

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
