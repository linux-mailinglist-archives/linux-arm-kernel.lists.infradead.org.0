Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96DC1729CD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 21:56:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=zDAcrocLr4+35co1rLIuyqEXf/tnkiejvv2iTjfbhb0=; b=qhV2q6f+eIKhIJ
	T4eXLB9xhEaxJ11mLS0h0Q0NyZSz/huNU4QhvZfoYsoADXqMFZPg/0SNsTcYIL3jDOFfWg/Tb5w+P
	5/c07R3AeVgcwUmHnRnSPWVwumbxAPSzIdi4TutegJRidUFjxIC8LZo7qAuuc11SBQA8CrOBbP85T
	41AFDW/EoYDnazplBYNnbvhVGbglS9JtmeP60cXkfaLrIyFOlZDvrogQxbx/tsIhyfXkhZRCkjhAt
	T6YY579X3oSELmkyQKgDkViLoM1RHNYX0qulXQW8tT5VIC8oPVle3jdlhoAYwScl4qfRxUqJmZKfY
	qwDykLgUpKteEXcQ5tUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7QCI-0000ty-BV; Thu, 27 Feb 2020 20:55:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7QC7-0000tL-7w
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 20:55:44 +0000
Received: from localhost (mobile-166-175-186-165.mycingular.net
 [166.175.186.165])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2A6272468E;
 Thu, 27 Feb 2020 20:55:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582836942;
 bh=uo4pZ8pLnVJHt+X+KMHCkfw/S+qxfnVMzkyq2/sf/Q8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=1eIeXpS8HUAIuUBh9/tzJuBcJ+ccfhZwy41bHiqBUgYJacHs6Foi3Fg+K1o0I5KxN
 l5ZbqG+I0Te3bfwhBiAh3/eAUDZf/RsiG2jjBDNWyh3sOrAlZIAHTZEx57qWphCB27
 kuhWQ9DqHskFidgv7Jb6SxLtKoRz7JESO1q4DHg8=
Date: Thu, 27 Feb 2020 14:55:40 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH v4 25/26] PCI/ATS: Export symbols of PRI functions
Message-ID: <20200227205540.GA131096@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200224182401.353359-26-jean-philippe@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_125543_310789_4FC67E08 
X-CRM114-Status: GOOD (  13.83  )
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

Subject could be simply "PCI/ATS: Export PRI functions"

On Mon, Feb 24, 2020 at 07:24:00PM +0100, Jean-Philippe Brucker wrote:
> The SMMUv3 driver uses pci_{enable,disable}_pri() and related
> functions. Export those functions to allow the driver to be built as a
> module.
> 
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  drivers/pci/ats.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
> index bbfd0d42b8b9..fc8fc6fc8bd5 100644
> --- a/drivers/pci/ats.c
> +++ b/drivers/pci/ats.c
> @@ -197,6 +197,7 @@ void pci_pri_init(struct pci_dev *pdev)
>  	if (status & PCI_PRI_STATUS_PASID)
>  		pdev->pasid_required = 1;
>  }
> +EXPORT_SYMBOL_GPL(pci_pri_init);
>  
>  /**
>   * pci_enable_pri - Enable PRI capability
> @@ -243,6 +244,7 @@ int pci_enable_pri(struct pci_dev *pdev, u32 reqs)
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(pci_enable_pri);
>  
>  /**
>   * pci_disable_pri - Disable PRI capability
> @@ -322,6 +324,7 @@ int pci_reset_pri(struct pci_dev *pdev)
>  
>  	return 0;
>  }
> +EXPORT_SYMBOL_GPL(pci_reset_pri);
>  
>  /**
>   * pci_prg_resp_pasid_required - Return PRG Response PASID Required bit
> @@ -337,6 +340,7 @@ int pci_prg_resp_pasid_required(struct pci_dev *pdev)
>  
>  	return pdev->pasid_required;
>  }
> +EXPORT_SYMBOL_GPL(pci_prg_resp_pasid_required);
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
