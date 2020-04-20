Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A1F81B084F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 13:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nln1kOIf1CUIEK2qFPniOkifJaaBFDBcvremwFqBuMs=; b=hIOk6l6ozJw6ob
	dk38X6slD0YaKyQ50kQkXSnVeF9THNN190Cn5YQZCpzRz2kc/tVHR/XpuL+ZNI6kca8rENelse10h
	IdtvzT2C7Pe/FBMKVjE25J9NIO6HXipSsWBWzUZjj9IRXABPl+if18H1Pzq3M/AFyDm5c2p9ahDKL
	nOjGHNy3PlV/wR1+mPR2DrOBXyPDTfByqtNVbcGKVDpVgXxUuV0YjT0w6RoNYVl9Ewcp8lr62K5GW
	G1WEfyiRakAYK2dApAVasCvRNnP61G92STV2Sa8KG8iyppo3+ABznH0SLEqnHoC2PjlOw7ZcvXnmw
	xcgODg4JO4Dae5SVz7kA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQV1E-0007hw-2z; Mon, 20 Apr 2020 11:55:20 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jQV0y-0006P9-DC; Mon, 20 Apr 2020 11:55:04 +0000
Date: Mon, 20 Apr 2020 04:55:04 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Subject: Re: [PATCH v5 02/25] iommu/sva: Manage process address spaces
Message-ID: <20200420115504.GA20664@infradead.org>
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-3-jean-philippe@linaro.org>
 <20200416072852.GA32000@infradead.org>
 <20200416085402.GB1286150@myrica>
 <20200416121331.GA18661@infradead.org>
 <20200420074213.GA3180232@myrica>
 <20200420081034.GA17305@infradead.org>
 <6b195512-fa73-9a49-03d8-1ed92e86f607@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6b195512-fa73-9a49-03d8-1ed92e86f607@amd.com>
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
 jacob.jun.pan@linux.intel.com, devicetree@vger.kernel.org, jgg@ziepe.ca,
 linux-pci@vger.kernel.org, joro@8bytes.org, Jonathan.Cameron@huawei.com,
 robin.murphy@arm.com, Christoph Hellwig <hch@infradead.org>,
 linux-mm@kvack.org, iommu@lists.linux-foundation.org, catalin.marinas@arm.com,
 zhangfei.gao@linaro.org, will@kernel.org, xuzaibo@huawei.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 01:44:56PM +0200, Christian K=F6nig wrote:
> Am 20.04.20 um 10:10 schrieb Christoph Hellwig:
> > On Mon, Apr 20, 2020 at 09:42:13AM +0200, Jean-Philippe Brucker wrote:
> > > Right, I can see the appeal. I still like having a single mmu notifie=
r per
> > > mm because it ensures we allocate a single PASID per mm (as required =
by
> > > x86). I suppose one alternative is to maintain a hashtable of mm->pas=
id,
> > > to avoid iterating over all bonds during allocation.
> > Given that the PASID is a pretty generic and important concept can
> > we just add it directly to the mm_struct and allocate it lazily once
> > we first need it?
> =

> Well the problem is that the PASID might as well be device specific. E.g.
> some devices use 16bit PASIDs, some 15bit, some other only 12bit.
> =

> So what could (at least in theory) happen is that you need to allocate
> different PASIDs for the same process because different devices need one.

This directly contradicts the statement from Jean-Philippe above that
x86 requires a single PASID per mm_struct.  If we may need different
PASIDs for different devices and can actually support this just
allocating one per [device, mm_struct] would make most sense of me, as
it doesn't couple otherwise disjoint state.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
