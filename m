Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82D5020828
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 15:28:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vM/aRcClYhp+bDfd3P/MZp3RbFWVNy3uhfI6PnOZUiU=; b=HUzXZYpMfllGaL
	jxUMvD34P2dTIMOSzM/yfd1FLarfJN5GOT5AvVx4wHBCMuFOzPgk9iQGk5C+u4tXK+SCqZF4Hfhp4
	6NU6YxADJvOsfXqHY8ueihQLELNHzsIGrLoiKvABAFxBoOHBl8hx6iJgNtwaZwALVZHTN5dFr5OIK
	ir5TcOlUMZfRmgEnhJWmXUTKyNYDP/MhecT/h1OkmVBVa+NepFemtEPpEz0MPkQt6T8cdfNl8ghJd
	q5Zsmmgm0VMka25kfma8KX/IRD7X9OTuwQl7J3xOVUvq2rPbNIvdItuIKJfkdehIdIjAq+niFh8dg
	wQN+zhCH9ZWgcYPzIZdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRGQk-0003Eg-Hb; Thu, 16 May 2019 13:28:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRGQb-0003Be-AW
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 13:28:12 +0000
Received: from localhost (50-82-73-190.client.mchsi.com [50.82.73.190])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7720C20815;
 Thu, 16 May 2019 13:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558013288;
 bh=Zv6ZRln99gohm9loMinCpGMe8ABSvr0R7QAANxBD+kc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jBfwdHcf4Po3DSORzgMh2uiY9Ul04pxKYbhMY/zaWlfmyGmYMrWktAkYMR3/g+Zl5
 QD+ntDpAEK1xbh69SJsqqUrJOze0M+lq5CE9k5BEH4i1YZ48kZLzEOp3Uq2M+X0e1Q
 by/MDglHyhTFkXEIUWDjKZbIxkpBNpeq0mzZ2ocE=
Date: Thu, 16 May 2019 08:28:07 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V6 02/15] PCI/PME: Export pcie_pme_disable_msi() &
 pcie_pme_no_msi() APIs
Message-ID: <20190516132807.GB101793@google.com>
References: <20190513050626.14991-1-vidyas@nvidia.com>
 <20190513050626.14991-3-vidyas@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513050626.14991-3-vidyas@nvidia.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_062809_406578_63E10629 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, linux-pci@vger.kernel.org,
 catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, kthota@nvidia.com, thierry.reding@gmail.com,
 gustavo.pimentel@synopsys.com, jingoohan1@gmail.com,
 linux-tegra@vger.kernel.org, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 13, 2019 at 10:36:13AM +0530, Vidya Sagar wrote:
> Export pcie_pme_disable_msi() & pcie_pme_no_msi() APIs to enable drivers
> using these APIs be able to build as loadable modules.
> 
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>

Nak, as-is.

1) The argument for why this is needed is unconvincing.  If device
advertises MSI support, we should be able to use it.

2) If it turns out we really need this, it should be some sort of
per-device setting rather than a global thing like this.

> ---
> Changes since [v5]:
> * Corrected inline implementation of pcie_pme_no_msi() API
> 
> Changes since [v4]:
> * None
> 
> Changes since [v3]:
> * None
> 
> Changes since [v2]:
> * Exported pcie_pme_no_msi() API after making pcie_pme_msi_disabled a static
> 
> Changes since [v1]:
> * This is a new patch in v2 series
> 
>  drivers/pci/pcie/pme.c     | 14 +++++++++++++-
>  drivers/pci/pcie/portdrv.h | 14 ++------------
>  2 files changed, 15 insertions(+), 13 deletions(-)
> 
> diff --git a/drivers/pci/pcie/pme.c b/drivers/pci/pcie/pme.c
> index 54d593d10396..d5e0ea4a62fc 100644
> --- a/drivers/pci/pcie/pme.c
> +++ b/drivers/pci/pcie/pme.c
> @@ -25,7 +25,19 @@
>   * that using MSI for PCIe PME signaling doesn't play well with PCIe PME-based
>   * wake-up from system sleep states.
>   */
> -bool pcie_pme_msi_disabled;
> +static bool pcie_pme_msi_disabled;
> +
> +void pcie_pme_disable_msi(void)
> +{
> +	pcie_pme_msi_disabled = true;
> +}
> +EXPORT_SYMBOL_GPL(pcie_pme_disable_msi);
> +
> +bool pcie_pme_no_msi(void)
> +{
> +	return pcie_pme_msi_disabled;
> +}
> +EXPORT_SYMBOL_GPL(pcie_pme_no_msi);
>  
>  static int __init pcie_pme_setup(char *str)
>  {
> diff --git a/drivers/pci/pcie/portdrv.h b/drivers/pci/pcie/portdrv.h
> index 944827a8c7d3..1d441fe26c51 100644
> --- a/drivers/pci/pcie/portdrv.h
> +++ b/drivers/pci/pcie/portdrv.h
> @@ -129,18 +129,8 @@ void pcie_port_bus_unregister(void);
>  struct pci_dev;
>  
>  #ifdef CONFIG_PCIE_PME
> -extern bool pcie_pme_msi_disabled;
> -
> -static inline void pcie_pme_disable_msi(void)
> -{
> -	pcie_pme_msi_disabled = true;
> -}
> -
> -static inline bool pcie_pme_no_msi(void)
> -{
> -	return pcie_pme_msi_disabled;
> -}
> -
> +void pcie_pme_disable_msi(void);
> +bool pcie_pme_no_msi(void);
>  void pcie_pme_interrupt_enable(struct pci_dev *dev, bool enable);
>  #else /* !CONFIG_PCIE_PME */
>  static inline void pcie_pme_disable_msi(void) {}
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
