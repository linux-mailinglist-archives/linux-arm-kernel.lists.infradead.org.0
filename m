Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29ABE5E656
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 16:18:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rW88stGLfSlB2wxFDzo5tXx6lcZrlssQ903QOxaXEiM=; b=c94hgQkev7c1PQ
	L1txfHlDj5TZT8dtNtaYH1wOBfGImPLe3J8Gz7M3Dx2G/2t0XSVYCpwzonfUIyxFrvSoOQNb16Rgd
	XEn7HPBrvO7n40vkg1SxXb1mJlCUMKv1mxkg/Zfn30YbfxrCzZvPRNGp7XP4EglOy8dfQOaTo8C+S
	CHY81A2WcQyDv16GvvocR1RtatR8kXSj5MuYaNdYPQcxv8vIlLvvN7ri65HFRjBqlA5FsfFcS/us1
	qdtKUxDUYeuDcUc55BeLx9cSGLBSLN/x4yEJCqnMgwZrmOByIou1v1jXAoWVeFj851lMCv4bJy+V7
	PIyPTlF4F95X3Jmgq5ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hig5C-0005XB-N2; Wed, 03 Jul 2019 14:18:02 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hig4W-0005LI-Nx
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 14:17:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 3A2DD2B;
 Wed,  3 Jul 2019 07:17:20 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 363A63F718;
 Wed,  3 Jul 2019 07:17:18 -0700 (PDT)
Date: Wed, 3 Jul 2019 15:17:15 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 03/20] PCI: mobiveil: Correct the returned error number
Message-ID: <20190703141715.GB26804@e121166-lin.cambridge.arm.com>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-4-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412083635.33626-4-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_071721_055534_34256173 
X-CRM114-Status: GOOD (  17.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Xiaowei Bao <xiaowei.bao@nxp.com>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "l.subrahmanya@mobiveil.co.in" <l.subrahmanya@mobiveil.co.in>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Leo Li <leoyang.li@nxp.com>, "M.h. Lian" <minghuan.lian@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Mingkai Hu <mingkai.hu@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "bhelgaas@google.com" <bhelgaas@google.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 12, 2019 at 08:35:30AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> This patch corrects the returned error number by convention,
> and removes an unnecessary error check.

Two distinct changes, two patches, please split and repost.

Lorenzo

> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> ---
> V5:
>  - Corrected and retouched the subject and changelog.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index b87471f08a40..563210e731d3 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -819,7 +819,7 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
>  
>  	if (!pcie->intx_domain) {
>  		dev_err(dev, "Failed to get a INTx IRQ domain\n");
> -		return -ENODEV;
> +		return -ENOMEM;
>  	}
>  
>  	raw_spin_lock_init(&pcie->intx_mask_lock);
> @@ -845,11 +845,9 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	/* allocate the PCIe port */
>  	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
>  	if (!bridge)
> -		return -ENODEV;
> +		return -ENOMEM;
>  
>  	pcie = pci_host_bridge_priv(bridge);
> -	if (!pcie)
> -		return -ENOMEM;
>  
>  	pcie->pdev = pdev;
>  
> @@ -866,7 +864,7 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  						    &pcie->resources, &iobase);
>  	if (ret) {
>  		dev_err(dev, "Getting bridge resources failed\n");
> -		return -ENOMEM;
> +		return ret;
>  	}
>  
>  	/*
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
