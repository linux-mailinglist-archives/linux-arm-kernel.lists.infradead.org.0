Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87A2117AA9D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Mar 2020 17:36:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdqdDShfiJRHBIY7iUQpMmphCo3MdDKCgqhXIyAeomw=; b=aWcsJKLJvtcAgp
	u/xwSyDTqbTC+XC7AGOoNQBH6X64a55mNLVAljJymWy6H/txaRe0hxfuUMROWoWXcXN/JcUshG5mK
	2wCr2EQk07w3hSKFS/3QKahOM5ovwcjj3ZO+dpC0NeblFPM83T76UUTCJ+A1XovUvYMZVQK+9hxW+
	+ftHpiNtE0XOB8bq7cEjFbthjy28bcGWjjSRkIouF9QrL1uw1N3aNCHI/+Vp2uA68H14ibTk+hYiF
	woi5nAVLQ2Yut6Vc/+1PQmmnLRAmkh8tAMdxuryDsOuCZbNGrz4TUXzslb18iGgxVzVQELTD5b36l
	fEaZ0KYVsye1RKmBMwtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9tUE-0006iY-Lm; Thu, 05 Mar 2020 16:36:38 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1j9tU5-0006i6-Lu; Thu, 05 Mar 2020 16:36:29 +0000
Date: Thu, 5 Mar 2020 08:36:29 -0800
From: Christoph Hellwig <hch@infradead.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 01/26] mm/mmu_notifiers: pass private data down to
 alloc_notifier()
Message-ID: <20200305163629.GA14299@infradead.org>
References: <20200224182401.353359-1-jean-philippe@linaro.org>
 <20200224182401.353359-2-jean-philippe@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224182401.353359-2-jean-philippe@linaro.org>
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
 joro@8bytes.org, Jason Gunthorpe <jgg@ziepe.ca>, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, devicetree@vger.kernel.org, kevin.tian@intel.com,
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
> -static struct mmu_notifier *gru_alloc_notifier(struct mm_struct *mm)
> +static struct mmu_notifier *gru_alloc_notifier(struct mm_struct *mm, void *privdata)

Pleae don't introduce any > 80 char lines.  Not here, and not anywhere
else in this patch or the series.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
