Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78A0F1A887B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 20:05:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Tr0uUY6zAggwp/sxme7BF3ejgcbeqjmsH9SKjPp6poQ=; b=D7Bt45LCErg2RPZIv0SYh7/i7
	GULCxldJwjnQ899puXh1yzxHoYG6nKkjr2oWYCMpkGs4dkmMTzPijUgld7GVAMuJPvfoSmjfyhntF
	S34IHySfkuw7T0iDXb/+9CazZBnGWcUHuzw32eCgl2pJd/JVDXdkuyOhbIzrKI+d8st7P4b2U7YNI
	VZ6eZfEs6P9a0K9aTtejtfvwi9XS9vRBhYK6DU86icnvhdCGts9614bqciKDSjAumEXygZdJuLsXq
	tTUs1FkI6E1GHZFzedeg66J3yEiNadOQ7Er6RgjTzlmZwlhYVGxwVcSrx2yEqBfSYwgUPvmCLsbU8
	BeSffl0RA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOPvb-0005DU-Ud; Tue, 14 Apr 2020 18:04:55 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOPuV-0004Qr-Ob
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 18:03:49 +0000
IronPort-SDR: OQZSf81Jvli4lHRFavbUVVQaIgQP6nTwV+4HPC6TaalkJ8BPNEu6mSBX3W7R/iLQD3vDcBGs4U
 qCtIul4SAq8A==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2020 11:03:34 -0700
IronPort-SDR: SFfWWKn9a+9EaRfpA/3Wbs/x3kQaNMzka6GrGJ2jeWBmbZqBLlTRxdEhB2Ad2MBBRdX9vd5tu9
 ICwTpVsFz5Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,383,1580803200"; d="scan'208";a="271475675"
Received: from swwoldee-mobl1.amr.corp.intel.com (HELO [10.251.15.118])
 ([10.251.15.118])
 by orsmga002.jf.intel.com with ESMTP; 14 Apr 2020 11:03:28 -0700
Subject: Re: [PATCH v5 23/25] PCI/ATS: Add PRI stubs
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-mm@kvack.org
References: <20200414170252.714402-1-jean-philippe@linaro.org>
 <20200414170252.714402-24-jean-philippe@linaro.org>
From: "Kuppuswamy, Sathyanarayanan"
 <sathyanarayanan.kuppuswamy@linux.intel.com>
Message-ID: <b595b3a1-7444-eeac-412a-85d453c32095@linux.intel.com>
Date: Tue, 14 Apr 2020 11:03:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200414170252.714402-24-jean-philippe@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_110348_042525_B3142D4C 
X-CRM114-Status: GOOD (  15.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
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
Cc: kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com, jgg@ziepe.ca,
 Jonathan.Cameron@huawei.com, Bjorn Helgaas <bhelgaas@google.com>,
 zhangfei.gao@linaro.org, xuzaibo@huawei.com, will@kernel.org,
 christian.koenig@amd.com, baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 4/14/20 10:02 AM, Jean-Philippe Brucker wrote:
> The SMMUv3 driver, which can be built without CONFIG_PCI, will soon gain
> support for PRI.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
> unused PRI and PASID stubs") to re-introduce the PRI stubs, and avoid
> adding more #ifdefs to the SMMU driver.
> 
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
Reviewed-by: Kuppuswamy Sathyanarayanan 
<sathyanarayanan.kuppuswamy@linux.intel.com>
> ---
>   include/linux/pci-ats.h | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
> index f75c307f346de..e9e266df9b37c 100644
> --- a/include/linux/pci-ats.h
> +++ b/include/linux/pci-ats.h
> @@ -28,6 +28,14 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs);
>   void pci_disable_pri(struct pci_dev *pdev);
>   int pci_reset_pri(struct pci_dev *pdev);
>   int pci_prg_resp_pasid_required(struct pci_dev *pdev);
> +#else /* CONFIG_PCI_PRI */
> +static inline int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
> +{ return -ENODEV; }
> +static inline void pci_disable_pri(struct pci_dev *pdev) { }
> +static inline int pci_reset_pri(struct pci_dev *pdev)
> +{ return -ENODEV; }
> +static inline int pci_prg_resp_pasid_required(struct pci_dev *pdev)
> +{ return 0; }
>   #endif /* CONFIG_PCI_PRI */
>   
>   #ifdef CONFIG_PCI_PASID
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
