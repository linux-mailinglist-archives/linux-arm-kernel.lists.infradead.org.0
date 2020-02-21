Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB66167D38
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 13:15:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yYiORXCSCQ/XjQ4R9VmStHQZc88nIn9r+VCB2lHwWdI=; b=bE4Rd+MZAb134e
	ubZngMkYXmi//PDJatJK1X44mZmHiLb6rdcu4phQ+OmhdiU7N4S0zPsgo7EOuQdm2VUtjLeY+zExB
	015qJEZTvcoRs5fLq/cW30yxiQ8xbUaAYED+NqpHi2f83NcxvAPD1TmPHaFHKZrRJnOnVVbPCIup6
	EBFUNqNh3oxOPyaX4o+UCHAzGEyYoT/KgG/kGgJcLTDCidICiFubKiIN7S3wmuw0VTmSmbsV7SCId
	HurorbIWPZHTIwk2+oP0yspfe87yNdFmk0cxfOapVjPKaNpvfAWpgcwQZk4X1eoDrnaSrhzhiibiH
	Hwhjcg37+1wkqFQB5khw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j57DH-0004bw-EP; Fri, 21 Feb 2020 12:15:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j57D4-0004bO-4p
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 12:15:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DF9630E;
 Fri, 21 Feb 2020 04:15:09 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C3EB43F68F;
 Fri, 21 Feb 2020 04:15:06 -0800 (PST)
Date: Fri, 21 Feb 2020 12:15:01 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 02/13] PCI: mobiveil: Move the host initialization
 into a function
Message-ID: <20200221121501.GA12711@e121166-lin.cambridge.arm.com>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-3-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-3-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_041510_279045_38B24EF1 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, Xiaowei.Bao@nxp.com,
 m.karthikeyan@mobiveil.co.in, arnd@arndb.de, linux-pci@vger.kernel.org,
 l.subrahmanya@mobiveil.co.in, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, Minghuan.Lian@nxp.com,
 robh+dt@kernel.org, Mingkai.Hu@nxp.com, catalin.marinas@arm.com,
 bhelgaas@google.com, andrew.murray@arm.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:06:33PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Move the host initialization related operations into a new
> routine such that it can be reused by other incoming platform's
> PCIe host driver, in which the Mobiveil GPEX is integrated.
> 
> Change the subject and change log slightly.
> Change the function mobiveil_pcie_host_probe to static.
> Add back the comments that was lost in v9.

I removed the paragraph above since it is a leftover and
does not belong in the commit log.

Lorenzo

> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> ---
> V10:
>  - Refined the subject and change log.
>  - Changed the mobiveil_pcie_host_probe() to a static function.
>  - Added back the lost comments.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 39 +++++++++++++++-----------
>  1 file changed, 23 insertions(+), 16 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index d4de560cd711..01df04ea5b48 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -873,27 +873,15 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
>  	return 0;
>  }
>  
> -static int mobiveil_pcie_probe(struct platform_device *pdev)
> +static int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  {
> -	struct mobiveil_pcie *pcie;
> +	struct mobiveil_root_port *rp = &pcie->rp;
> +	struct pci_host_bridge *bridge = rp->bridge;
> +	struct device *dev = &pcie->pdev->dev;
>  	struct pci_bus *bus;
>  	struct pci_bus *child;
> -	struct pci_host_bridge *bridge;
> -	struct device *dev = &pdev->dev;
> -	struct mobiveil_root_port *rp;
>  	int ret;
>  
> -	/* allocate the PCIe port */
> -	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
> -	if (!bridge)
> -		return -ENOMEM;
> -
> -	pcie = pci_host_bridge_priv(bridge);
> -	rp = &pcie->rp;
> -	rp->bridge = bridge;
> -
> -	pcie->pdev = pdev;
> -
>  	ret = mobiveil_pcie_parse_dt(pcie);
>  	if (ret) {
>  		dev_err(dev, "Parsing DT failed, ret: %x\n", ret);
> @@ -956,6 +944,25 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int mobiveil_pcie_probe(struct platform_device *pdev)
> +{
> +	struct mobiveil_pcie *pcie;
> +	struct pci_host_bridge *bridge;
> +	struct device *dev = &pdev->dev;
> +
> +	/* allocate the PCIe port */
> +	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*pcie));
> +	if (!bridge)
> +		return -ENOMEM;
> +
> +	pcie = pci_host_bridge_priv(bridge);
> +	pcie->rp.bridge = bridge;
> +
> +	pcie->pdev = pdev;
> +
> +	return mobiveil_pcie_host_probe(pcie);
> +}
> +
>  static const struct of_device_id mobiveil_pcie_of_match[] = {
>  	{.compatible = "mbvl,gpex40-pcie",},
>  	{},
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
