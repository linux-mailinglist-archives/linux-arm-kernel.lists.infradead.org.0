Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AE51D5B57
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 23:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=pNYuFwBWK72qPlTBkeOOZltUtFrPO4Eo1RkCEd9P6AU=; b=jXLmIO9ySZB5+9
	mOHSGqfpAHO1teeKgENqZD7DQyzAQ02hOU7oY2Dv43T8gtJRVaQja9rEcUZ7co/AsA0SPLip3Jvyy
	9aUPdL0JshRgPnKocwF6MGsavvyeEu+v5qYEb6uaCdWfcmgCande0/aBAMhUA44DM2+Lb/bB19Dhj
	eP6c/IUujsEMZ/jkSRAgXzwsh6izLacVGeRSgb5nv9zpTidwGvyClY8XVhSlTBwUGylScX2BaXUoF
	RQNl/H6WOnf8C8lsAsyKUs5+2dxy3dwyp5lX46y4u0tYGOhQ/KEonvQ3ca7wz9z1kjmS3YLKTYOgn
	b8zjSOmBhIi27uqXlz6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZhj3-0002o1-IQ; Fri, 15 May 2020 21:18:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZhip-0002nA-Qz
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 21:18:28 +0000
Received: from localhost (mobile-166-175-190-200.mycingular.net
 [166.175.190.200])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 99B7F205CB;
 Fri, 15 May 2020 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589577503;
 bh=ZQ43XWvnomP6iief7qgRRbmyG/Bi9bziKV7eLxey5z8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=iYw1rXpYC7+iTiovQH69ZJN7ikDy6fxVEhYEdV1ssHJazsWRNLymxAPARP3cwPsrF
 MgKv6QPMsHDyZenI3gXiYZA2LWLuoVh7agD+i9unX1itmKntZUFYS9KRoZeKACj6y1
 SvAGo7FPYdfzQx+wZlqZKyL/uju5rWadJrrwKKik=
Date: Fri, 15 May 2020 16:18:20 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: Re: [PATCH 1/4] PCI/ATS: Only enable ATS for trusted devices
Message-ID: <20200515211820.GA545575@bjorn-Precision-5520>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200515104359.1178606-2-jean-philippe@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_141823_912665_5C5448AA 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alex.williamson@redhat.com, ashok.raj@intel.com, linux-pci@vger.kernel.org,
 joro@8bytes.org, robin.murphy@arm.com, iommu@lists.linux-foundation.org,
 bhelgaas@google.com, will@kernel.org, dwmw2@infradead.org,
 linux-arm-kernel@lists.infradead.org, baolu.lu@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 15, 2020 at 12:43:59PM +0200, Jean-Philippe Brucker wrote:
> Add pci_ats_supported(), which checks whether a device has an ATS
> capability, and whether it is trusted.  A device is untrusted if it is
> plugged into an external-facing port such as Thunderbolt and could be
> spoof an existing device to exploit weaknesses in the IOMMU
> configuration.  PCIe ATS is one such weaknesses since it allows
> endpoints to cache IOMMU translations and emit transactions with
> 'Translated' Address Type (10b) that partially bypass the IOMMU
> translation.
> 
> The SMMUv3 and VT-d IOMMU drivers already disallow ATS and transactions
> with 'Translated' Address Type for untrusted devices.  Add the check to
> pci_enable_ats() to let other drivers (AMD IOMMU for now) benefit from
> it.
> 
> By checking ats_cap, the pci_ats_supported() helper also returns whether
> ATS was globally disabled with pci=noats, and could later include more
> things, for example whether the whole PCIe hierarchy down to the
> endpoint supports ATS.
> 
> Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
>  include/linux/pci-ats.h |  3 +++
>  drivers/pci/ats.c       | 18 +++++++++++++++++-
>  2 files changed, 20 insertions(+), 1 deletion(-)
> 
> diff --git a/include/linux/pci-ats.h b/include/linux/pci-ats.h
> index d08f0869f1213e..f75c307f346de9 100644
> --- a/include/linux/pci-ats.h
> +++ b/include/linux/pci-ats.h
> @@ -6,11 +6,14 @@
>  
>  #ifdef CONFIG_PCI_ATS
>  /* Address Translation Service */
> +bool pci_ats_supported(struct pci_dev *dev);
>  int pci_enable_ats(struct pci_dev *dev, int ps);
>  void pci_disable_ats(struct pci_dev *dev);
>  int pci_ats_queue_depth(struct pci_dev *dev);
>  int pci_ats_page_aligned(struct pci_dev *dev);
>  #else /* CONFIG_PCI_ATS */
> +static inline bool pci_ats_supported(struct pci_dev *d)
> +{ return false; }
>  static inline int pci_enable_ats(struct pci_dev *d, int ps)
>  { return -ENODEV; }
>  static inline void pci_disable_ats(struct pci_dev *d) { }
> diff --git a/drivers/pci/ats.c b/drivers/pci/ats.c
> index 390e92f2d8d1fc..15fa0c37fd8e44 100644
> --- a/drivers/pci/ats.c
> +++ b/drivers/pci/ats.c
> @@ -30,6 +30,22 @@ void pci_ats_init(struct pci_dev *dev)
>  	dev->ats_cap = pos;
>  }
>  
> +/**
> + * pci_ats_supported - check if the device can use ATS
> + * @dev: the PCI device
> + *
> + * Returns true if the device supports ATS and is allowed to use it, false
> + * otherwise.
> + */
> +bool pci_ats_supported(struct pci_dev *dev)
> +{
> +	if (!dev->ats_cap)
> +		return false;
> +
> +	return !dev->untrusted;
> +}
> +EXPORT_SYMBOL_GPL(pci_ats_supported);
> +
>  /**
>   * pci_enable_ats - enable the ATS capability
>   * @dev: the PCI device
> @@ -42,7 +58,7 @@ int pci_enable_ats(struct pci_dev *dev, int ps)
>  	u16 ctrl;
>  	struct pci_dev *pdev;
>  
> -	if (!dev->ats_cap)
> +	if (!pci_ats_supported(dev))
>  		return -EINVAL;
>  
>  	if (WARN_ON(dev->ats_enabled))
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
