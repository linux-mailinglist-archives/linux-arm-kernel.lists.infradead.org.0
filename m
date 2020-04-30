Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC17F1C0872
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 22:45:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YszVg3M1is0eyQzPJqA1CUfRkcA83yaFSemE1SYUFhc=; b=CWAlYb+QBAN/1T
	KLVlJOzcdottpBDRtViux37cP9lglaACYiXXzVOgQuRjETslA3FlOJjDNWldGSWrcvUZaVA2aWgNq
	VyGbwrHA3eCP1XMEf86NwztHGx87Yw3bCde84QpGtz0ib6wMSuJnWUDFj3O2pvN/95XrVKGvY/IDr
	Ab827F1Njk7/5DrvPozPrDDVvk6N2fJi2X1tah7cTnvCFqsj2igiauPvGkYmtwbKwSW91o0arAmuN
	QX+vVkvNCwCOTgMGyJrfTrFAFnKZDed2Ma9IgVPsoaDhuOx91aFfk0L9AidNUeDsTyXfdC/Bf6lvC
	DctKtTE7VnIlXI7Gse3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUG37-0006RD-3L; Thu, 30 Apr 2020 20:44:49 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUG14-0005Ev-Dp
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 20:42:44 +0000
IronPort-SDR: 76lkTpPtIMaPqDXdw3Y0L28Q7AIrtS9ykQCZkRghavry//6VMmeiTd5wMV3cSSx2CY9q9Wr1I4
 9DUJmAE5PSkA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2020 13:42:39 -0700
IronPort-SDR: M6oqOMPzyFoVqddYs7RXgFErbffJCDivKopljAfdVamHixYraY4H4gkBAqaneuwRMIgM/plR4C
 XjTmGyPtMWrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,337,1583222400"; d="scan'208";a="433100232"
Received: from jacob-builder.jf.intel.com (HELO jacob-builder) ([10.7.199.155])
 by orsmga005.jf.intel.com with ESMTP; 30 Apr 2020 13:42:39 -0700
Date: Thu, 30 Apr 2020 13:48:42 -0700
From: Jacob Pan <jacob.jun.pan@linux.intel.com>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v6 02/25] iommu/ioasid: Add ioasid references
Message-ID: <20200430134842.74e596b8@jacob-builder>
In-Reply-To: <20200430113931.0fbf7a37@jacob-builder>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-3-jean-philippe@linaro.org>
 <20200430113931.0fbf7a37@jacob-builder>
Organization: OTC
X-Mailer: Claws Mail 3.13.2 (GTK+ 2.24.30; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_134242_647188_963D6315 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Thu, 30 Apr 2020 11:39:31 -0700
Jacob Pan <jacob.jun.pan@linux.intel.com> wrote:

> > -void ioasid_free(ioasid_t ioasid)
> > +bool ioasid_free(ioasid_t ioasid)
> >  {
Sorry I missed this in the last reply.

I think free needs to be unconditional since there is not a good way to
fail it.

Also can we have more symmetric APIs, seems we don't have ioasid_put()
in this patchset.
How about?
ioasid_alloc()
ioasid_free(); //drop reference, mark inactive, but not reclaimed if
		refcount is not zero.
ioasid_get() // returns err if the ioasid is marked inactive by
		ioasid_free()
ioasid_put();// drop reference, reclaim if refcount is 0.

It is similar to get/put/alloc/free pids.



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
