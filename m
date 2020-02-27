Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DBBF1729CE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 21:56:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=7tg72wpNWB0whF7pBAxghoKyYTZklJQHpnneDyjXdIk=; b=hqAO8+u8JBwqWO
	7HtQOgUYemk6IHYJ43gTPn8qwOC3eqhbUoxtuo2L0j+lBTqu27VB9+EwZn5xxMIa7aeSg3qohn8dq
	nd+ThwXGVeK2Fe3cz5RtZO8Tgdt7EDvWSh+fzC99D42iVcdfKDLq8lBkCr1+gioESWVn4HKcS6fTI
	WEJdMBduHG5knL3pN7NxQ4wlxPfHaYd49mOJnwRb9thUz8/XifIJSXA3SIJ+O+yIYndrUBUG6+3dv
	0gyuSZ9sVjvul2wiZDya7rpoHeOPfhh7B0kdGMit2zigSueQiVGQGHzbOYyfoon7OGIBfcjsrKSIQ
	vbwlk9IXXjqiQu8jFZwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7QCZ-000152-Ch; Thu, 27 Feb 2020 20:56:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7QCK-00013B-CU
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 20:55:57 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C83ED2468E;
 Thu, 27 Feb 2020 20:55:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582836956;
 bh=mGZf4nreP1kLtOs7P+f9h+8BDVGo9bsN87tYjSdZFZk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=N8ERNRm8Ml+eL2KAwMkCrdz7z8d89W/UaFjFnl/ihldRxJobDPgykvzz30oaRDx/x
 p07rXmQLCmbkc/uCwN2pZGMFwcB0WV5HHEOlnsDTUMKOP0cYK+2FpvDTrvH4UiCEgr
 b5EDbMuOMKzTjanCN7qZpeSpTsKDWpkixrxmGUV4=
Date: Thu, 27 Feb 2020 14:55:54 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 24/26] PCI/ATS: Add PRI stubs
Message-ID: <20200227205554.GA131305@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224182401.353359-25-jean-philippe@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_125556_447908_9325E0C4 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, kevin.tian@intel.com,
 jacob.jun.pan@linux.intel.com, linux-pci@vger.kernel.org, joro@8bytes.org,
 Jonathan.Cameron@huawei.com, robin.murphy@arm.com, linux-mm@kvack.org,
 iommu@lists.linux-foundation.org, robh+dt@kernel.org, yi.l.liu@intel.com,
 catalin.marinas@arm.com, zhangfei.gao@linaro.org, will@kernel.org,
 christian.koenig@amd.com, linux-arm-kernel@lists.infradead.org,
 baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 24, 2020 at 07:23:59PM +0100, Jean-Philippe Brucker wrote:
> The SMMUv3 driver, which can be built without CONFIG_PCI, will soon gain
> support for PRI.  Partially revert commit c6e9aefbf9db ("PCI/ATS: Remove
> unused PRI and PASID stubs") to re-introduce the PRI stubs, and avoid
> adding more #ifdefs to the SMMU driver.
> 
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  include/linux/pci-ats.h | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
> index f75c307f346d..e9e266df9b37 100644
> --- a/include/linux/pci-ats.h
> +++ b/include/linux/pci-ats.h
> @@ -28,6 +28,14 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs);
>  void pci_disable_pri(struct pci_dev *pdev);
>  int pci_reset_pri(struct pci_dev *pdev);
>  int pci_prg_resp_pasid_required(struct pci_dev *pdev);
> +#else /* CONFIG_PCI_PRI */
> +static inline int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
> +{ return -ENODEV; }
> +static inline void pci_disable_pri(struct pci_dev *pdev) { }
> +static inline int pci_reset_pri(struct pci_dev *pdev)
> +{ return -ENODEV; }
> +static inline int pci_prg_resp_pasid_required(struct pci_dev *pdev)
> +{ return 0; }
>  #endif /* CONFIG_PCI_PRI */
>  
>  #ifdef CONFIG_PCI_PASID
> -- 
> 2.25.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
