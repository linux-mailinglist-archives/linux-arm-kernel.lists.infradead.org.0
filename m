Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D1031C3135
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 May 2020 03:53:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oHcjlM1arstwIsxsjdq62SEYozfN8+Mnw0pQoek/sTc=; b=GXgpKAGAZNYjZXp5coJJC93Tr
	LTxHg3dHvuQPJpPoiMJIzVtcNF3RfsE9Sm7s3fJIkie8CNdVW+Ea/x1Ngzs1dH7zSftg0tg7grON1
	SLFX5/+UBCJzVFLrMRwfKnqiv3U4jyGFAN+y5eZHX3AbtwJ+3trciJRhi4V1MLW+G7Puvh7sWvYZQ
	lYqCIsfgby89TtOHY1oCFtqVsYawbMr5HqqNhKPAUAWPI4t8YqeMkcAtb+SfY9pcKzSKIYX/hnuCP
	8yTS+mPAoSFvXBs5ond4/RWfg9y1Ek5R3vePCoaD+vJXwf2Km/HIKBriULSm/Hfqi5ZJgmWSDN8HZ
	PdBtr9CxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVQIE-0001eS-8t; Mon, 04 May 2020 01:53:14 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVQI7-0001cH-TZ
 for linux-arm-kernel@lists.infradead.org; Mon, 04 May 2020 01:53:09 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id 9683FB5E5B4FEA773DF0;
 Mon,  4 May 2020 09:52:54 +0800 (CST)
Received: from [127.0.0.1] (10.67.101.242) by DGGEMS407-HUB.china.huawei.com
 (10.3.19.207) with Microsoft SMTP Server id 14.3.487.0; Mon, 4 May 2020
 09:52:45 +0800
Subject: Re: [PATCH v6 01/25] mm: Add a PASID field to mm_struct
To: Jean-Philippe Brucker <jean-philippe@linaro.org>,
 <iommu@lists.linux-foundation.org>, <devicetree@vger.kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-pci@vger.kernel.org>,
 <linux-mm@kvack.org>
References: <20200430143424.2787566-1-jean-philippe@linaro.org>
 <20200430143424.2787566-2-jean-philippe@linaro.org>
From: Xu Zaibo <xuzaibo@huawei.com>
Message-ID: <ffe0aca4-575b-98d3-0ba5-88d5e6eb29fe@huawei.com>
Date: Mon, 4 May 2020 09:52:44 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <20200430143424.2787566-2-jean-philippe@linaro.org>
X-Originating-IP: [10.67.101.242]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_185308_130925_513A4506 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: fenghua.yu@intel.com, kevin.tian@intel.com, jacob.jun.pan@linux.intel.com,
 jgg@ziepe.ca, catalin.marinas@arm.com, joro@8bytes.org, robin.murphy@arm.com,
 hch@infradead.org, zhangfei.gao@linaro.org, Jonathan.Cameron@huawei.com,
 felix.kuehling@amd.com, will@kernel.org, christian.koenig@amd.com,
 baolu.lu@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 2020/4/30 22:34, Jean-Philippe Brucker wrote:
> Some devices can tag their DMA requests with a 20-bit Process Address
> Space ID (PASID), allowing them to access multiple address spaces. In
> combination with recoverable I/O page faults (for example PCIe PRI),
> PASID allows the IOMMU to share page tables with the MMU.
>
> To make sure that a single PASID is allocated for each address space, as
> required by Intel ENQCMD, store the PASID in the mm_struct. The IOMMU
> driver is in charge of serializing modifications to the PASID field.
>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> ---
> For the field's validity I'm thinking invalid PASID = 0. In ioasid.h we
> define INVALID_IOASID as ~0U, but I think we can now change it to 0,
> since Intel is now also reserving PASID #0 for Transactions without
> PASID and AMD IOMMU uses GIoV for this too.
> ---
>   include/linux/mm_types.h | 4 ++++
>   1 file changed, 4 insertions(+)
>
> diff --git a/include/linux/mm_types.h b/include/linux/mm_types.h
> index 4aba6c0c2ba80..8db6472758175 100644
> --- a/include/linux/mm_types.h
> +++ b/include/linux/mm_types.h
> @@ -534,6 +534,10 @@ struct mm_struct {
>   		atomic_long_t hugetlb_usage;
>   #endif
>   		struct work_struct async_put_work;
> +#ifdef CONFIG_IOMMU_SUPPORT
> +		/* Address space ID used by device DMA */
> +		unsigned int pasid;
> +#endif
Maybe '#ifdef CONFIG_IOMMU_SVA ... #endif' is more reasonable?

Thanks,
Zaibo

.
>   	} __randomize_layout;
>   
>   	/*



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
