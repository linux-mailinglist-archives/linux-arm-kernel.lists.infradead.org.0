Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1A6A1C3E60
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 17:21:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n6n/PaS5A1WtShf540Dnb3eoHmvD2PCC+BN3R5uznEI=; b=cmJGjJVRtPjOfq
	lE4u01CsDnMvfxgAkYXjpi8p7Dbn7ko78pou2ht+5IWwXPCgQCABEnkMLOqpOVU5cv63DIbhSOpPQ
	pqZoYapCadfHYVH5h2Y1aJTp8MPdxsqceGCMQ349/sbb5IcKkmuMW0PWRDO+IL7G7aZjVUz6Wc5EG
	kvrwXqVSf5qa6PPC12xhGDdxGfbnmPk+mA52nWIUjvs7NQuZSK5i8+qOZ9ic+7kBURKmtdF7RdXwt
	78OxLWYM7m2NLRol/QCDnxMogBlpfkwY93Cr3MfIwLOLzsU5lHP6lhmvjImBMEC1f1OVIJyrWtzwu
	9B53FTCyPLidYtQ4MXxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcuB-0000JO-1d; Mon, 04 May 2020 15:21:15 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVctw-0000BE-R1
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 15:21:02 +0000
IronPort-SDR: AI4vFMDrLFcB9KTXiUyvS/rCIrzoG82LVFr+k9agSeRtaQEabeE+muhe0l01Eyxcgu6fV6njgj
 rzMyES4yWFlA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2020 08:20:59 -0700
IronPort-SDR: DhyAxpzPRY/Tebzamw5nV/OXd83VAZRNIf4QKSKn9BLW4Q4E1kjVLjHW+nXqmurbxOZK0rot2h
 utpob8xZoQVQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,352,1583222400"; d="scan'208";a="460700180"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by fmsmga005.fm.intel.com with ESMTP; 04 May 2020 08:20:58 -0700
Date: Mon, 4 May 2020 08:27:03 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v6 02/25] iommu/ioasid: Add ioasid references
Message-ID: <20200504082703.2ecc03c1@jacob-builder>
In-Reply-To: <20200504142548.GB170104@myrica>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-3-jean-philippe@linaro.org>
 <20200430113931.0fbf7a37@jacob-builder>
 <20200504142548.GB170104@myrica>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_082100_907726_6C91A014 
X-CRM114-Status: GOOD (  18.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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

On Mon, 4 May 2020 16:25:48 +0200
Jean-Philippe Brucker <jean-philippe@linaro.org> wrote:

> On Thu, Apr 30, 2020 at 11:39:31AM -0700, Jacob Pan wrote:
> > > +/**
> > > + * ioasid_get - obtain a reference to the IOASID
> > > + */
> > > +void ioasid_get(ioasid_t ioasid)  
> > why void? what if the ioasid is not valid.  
> 
> My intended use was for the caller to get an additional reference when
> they're already holding one. So this should always succeed and I'd
> prefer a WARN_ON if the ioasid isn't valid rather than returning an
> error. But if you intend to add a state to ioasids between dropping
> refcount and free, then a return value makes sense.
> 
Yes, a WARN_ON will do. No need for return value for now.

> Thanks,
> Jean
> 
> >   
> > > +{
> > > +	struct ioasid_data *ioasid_data;
> > > +
> > > +	spin_lock(&ioasid_allocator_lock);
> > > +	ioasid_data = xa_load(&active_allocator->xa, ioasid);
> > > +	if (ioasid_data)
> > > +		refcount_inc(&ioasid_data->refs);
> > > +	spin_unlock(&ioasid_allocator_lock);
> > > +}
> > > +EXPORT_SYMBOL_GPL(ioasid_get);
> > > +
> > >  /**
> > >   * ioasid_free - Free an IOASID
> > >   * @ioasid: the ID to remove
> > > + *
> > > + * Put a reference to the IOASID, free it when the number of
> > > references drops to
> > > + * zero.
> > > + *
> > > + * Return: %true if the IOASID was freed, %false otherwise.
> > >   */
> > > -void ioasid_free(ioasid_t ioasid)
> > > +bool ioasid_free(ioasid_t ioasid)
> > >  {
> > > +	bool free = false;
> > >  	struct ioasid_data *ioasid_data;
> > >  
> > >  	spin_lock(&ioasid_allocator_lock);
> > > @@ -360,6 +383,10 @@ void ioasid_free(ioasid_t ioasid)
> > >  		goto exit_unlock;
> > >  	}
> > >  
> > > +	free = refcount_dec_and_test(&ioasid_data->refs);
> > > +	if (!free)
> > > +		goto exit_unlock;
> > > +  
> > Just FYI, we may need to add states for the IOASID, i.g. mark the
> > IOASID inactive after free. And prohibit ioasid_get() after freed.
> > For VT-d, this is useful when KVM queries the IOASID.
> >   
> > >  	active_allocator->ops->free(ioasid,
> > > active_allocator->ops->pdata); /* Custom allocator needs
> > > additional steps to free the xa element */ if
> > > (active_allocator->flags & IOASID_ALLOCATOR_CUSTOM) { @@ -369,6
> > > +396,7 @@ void ioasid_free(ioasid_t ioasid) 
> > >  exit_unlock:
> > >  	spin_unlock(&ioasid_allocator_lock);
> > > +	return free;
> > >  }
> > >  EXPORT_SYMBOL_GPL(ioasid_free);
> > >    
> > 
> > [Jacob Pan]  

[Jacob Pan]

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
