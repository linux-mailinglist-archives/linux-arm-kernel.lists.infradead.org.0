Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECFA21B221E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 10:55:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SCz9AHyoog7L7sqmjkLIQXF2u7RjKkCiWX6D2UAqEtA=; b=Bm187r5+DlP4/R
	v5e9JM3EBIvRSmXoxiychOZZmOkjqFss/POXfzlnXvxqdYGAHbx15arr+wZeQZjkfKoSyBujRM/5g
	h5EpW5OqvF5wgqbkscgACBSiLaF4MbWUPYMdIYz0TJ9r+Xet0SDegq1b3iDF7VYdXT1Rgo/HJmMRL
	Zu9P+xnvyTH5j7cW7bBbkwFUx9Rf1ummDSUMroPA9rMNlw42T34rEz/ogpRYbWEdN/2vTNVgdkhIE
	NIOBBBRanFGgQ9b+7SaWY5MWKjZu/E/Rh2ucWU+KxlHTACKvUt3LIRz3rWx0od9KTin4v6xr8fxDB
	MMwAwiGwrpMZ/SZ/ahZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQogs-0005Ht-Nc; Tue, 21 Apr 2020 08:55:38 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jQogf-0005Gs-NA; Tue, 21 Apr 2020 08:55:25 +0000
Date: Tue, 21 Apr 2020 01:55:25 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Fenghua Yu <fenghua.yu@intel.com>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200421085525.GA6900@infradead.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
 <20200416085402.GB1286150@myrica>
 <20200416121331.GA18661@infradead.org>
 <20200420074213.GA3180232@myrica> <20200420135727.GO26002@ziepe.ca>
 <20200420104850.60531cb6@jacob-builder>
 <20200420181437.GA229170@romley-ivt3.sc.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420181437.GA229170@romley-ivt3.sc.intel.com>
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
 Jacob Pan <jacob.jun.pan@linux.intel.com>, "Raj, Ashok" <ashok.raj@intel.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 christian.koenig@amd.com, Christoph Hellwig <hch@infradead.org>,
 Jason Gunthorpe <jgg@ziepe.ca>, iommu@lists.linux-foundation.org,
 catalin.marinas@arm.com, zhangfei.gao@linaro.org, xuzaibo@huawei.com,
 will@kernel.org, linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 11:14:37AM -0700, Fenghua Yu wrote:
> > Agreed, perhaps Fenghua can consider that in his patchset. It would
> > help align life cycles as well.
> > https://lkml.org/lkml/2020/3/30/910>
> 
> Seems we depend on each other: my patch defines pasid in mm_struct.
> I can free PASID in your detach() function.

Looks like this should go into the same series.  I also don't see any
good reason to have the pasid in the x86-specific context vs the common
mm_struct.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
