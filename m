Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E28341C3E58
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kKBL++DDFymH87fOFB4ujbfEjVr6cw6bQ1P8fNHyp8I=; b=SRBbYSsxBCB1EJ
	9fVCYwqAbgzk/KAZPEFQRkIYBfHd8r1GN06epTuc9BRyqPaF7i1ffHWKllxyo4egrni/OU+pBLhSZ
	cYiLhxFI863kIZ57DzT0NW2IT39GXw+odEhk4qsVTr1cPb2YmKYRJMOHRdrfAbBDf6tvNDKs03MCb
	7oLUqxVAkeQWZkytmDldJzhJBlsfABAEmyKYeKHTC+55SgMVW25hSQKZcQdIWny3vJgYNY94hXfVy
	8wECxKAiP7aULDnEyr3/aMhVs3W8+CRtOFhDl9KeIaVMnmK4j9Pvnjv2+YhGnHfJ1BsG75PQWxE+l
	Vdmc4GgMNTUH3Xb1f+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcs4-0005W2-2s; Mon, 04 May 2020 15:19:04 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcrw-0004WV-Vg
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:18:58 +0000
IronPort-SDR: lj5FkKNo9zEqrE85XTy0RONPdM0KuvPo+cMaJ13RB/bxOBZsqI8hjgJExselTNWJ+OvTB+EGSQ
 9uP87AQG1S6w==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 08:16:50 -0700
IronPort-SDR: lbqFDd9ohl9UbGCAK3Z4qWu4DHUOOqZWdbnTKo7EqSLIl5b7BXj9EsadFkTvIWkTXLcabMfBey
 htWBEGm4tgiA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="295526651"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga008.jf.intel.com with ESMTP; 04 May 2020 08:16:49 -0700
Date: Mon, 4 May 2020 08:22:54 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v6 02/25] iommu/ioasid: Add ioasid references
Message-ID: <20200504082254.58fc6365@jacob-builder>
In-Reply-To: <20200504143932.GC170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-3-jean-philippe@linaro.org>
 <20200430113931.0fbf7a37@jacob-builder>
 <20200430134842.74e596b8@jacob-builder>
 <20200504143932.GC170104@myrica>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_081857_076611_ABF30709 
X-CRM114-Status: GOOD (  18.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, jgg@ziepe.ca, linux-pci@vger.kernel.org,
 joro@8bytes.org, Jonathan.Cameron@huawei.com, robin.murphy@arm.com,
 fenghua.yu@intel.com, hch@infradead.org, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, zhangfei.gao@linaro.org,
 catalin.marinas@arm.com, felix.kuehling@amd.com, xuzaibo@huawei.com,
 will@kernel.org, christian.koenig@amd.com,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 4 May 2020 16:39:32 +0200
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> On Thu, Apr 30, 2020 at 01:48:42PM -0700, Jacob Pan wrote:
> > On Thu, 30 Apr 2020 11:39:31 -0700
> > Jacob Pan <jacob.jun.pan@linux.intel.com> wrote:
> >   
> > > > -void ioasid_free(ioasid_t ioasid)
> > > > +bool ioasid_free(ioasid_t ioasid)
> > > >  {  
> > Sorry I missed this in the last reply.
> > 
> > I think free needs to be unconditional since there is not a good
> > way to fail it.
> > 
> > Also can we have more symmetric APIs, seems we don't have
> > ioasid_put() in this patchset.  
> 
> Yes I was thinking of renaming ioasid_free() to ioasid_put() but got
> lazy. 
> 
> > How about?
> > ioasid_alloc()
> > ioasid_free(); //drop reference, mark inactive, but not reclaimed if
> > 		refcount is not zero.
> > ioasid_get() // returns err if the ioasid is marked inactive by
> > 		ioasid_free()  
> 
> How does the caller know that the ioasid is in active/inactive state,
> and not freed/reallocated?
> 
In inactive state, callers of ioasid_find(), ioasid_get() would all
fail. Only ioasid_put can still operate on it.

In freed state (i.e. not allocated), it will be the same as above with
the exception that ioasid_put has no effect.

> > ioasid_put();// drop reference, reclaim if refcount is 0.  
> 
> I'll add ioasid_put() for now. I'd like to avoid introducing the
> inactive state in this patch,
Sounds good. I just wanted to consult with you about the above APIs. I
will introduce the state when we have a real use.

> so shall I change the calls in the
> Intel driver to ioasid_put(), and not introduce a new ioasid_free()
> for the moment?
> 
Sounds good. 

> Thanks,
> Jean
> 

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
