Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA8A16648A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:25:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O7wQE4BKfuKLqyMWmVq5PxSuXoDFQwaj+II8FAVrsKQ=; b=BYHyhkA1bNiVcs
	sYZy7wIUhgMSnW/bLIiC9h2yXIHWIodaZkzdEd/MP+chjN0CI4iVXH57yOCLko7Xock2VHBT2hHxn
	o5+VSZUIFm/Lc0qBkI4EFTCD8EIlA5v2SpG86yOacSOj5kVGt3ArQf0KIiV9YOcBPObjkLRZcgqr6
	RCKSQvKFUK/rGRpqKwFOl1Ld8l7f0hL951QThIPZMizoEF51Ao2SbfLR//sUiAtmcQm1ELTx8lDFY
	0Wz7epG+Sm3SA5V2AqNPXo8dAlWULFWUgGa1GeCK+8wrBGbaSM1iGNJcFBGQVfhBpKCPKqE6PYm5i
	JIF0K8teoaSemfRTAaYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pZe-0005Si-9P; Thu, 20 Feb 2020 17:25:18 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pYG-0003pZ-CW
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:23:54 +0000
Received: by mail-wm1-x342.google.com with SMTP id a9so2929675wmj.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:23:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=DP+WeV+eCsLNcM+0j7VvT82QxXGphPuPG6yUJrTyu2U=;
 b=R78Qigu18fQdSDHxyFt+gW5wubpXXtRHLj65ytZxFXLLy3m/Co+0ptUws9rqJFpJTg
 5+KMf7B15USerdDLnaoM9irKTCXrd4+J95sO5zPCYQiTRs1Gx8H+H+x3G2CiCAvuyJu5
 /U/9vm5hgp+xuWqrMkrMZg0yyxMQOx5fXOOBCnAmpu0LyPxTUnE7Woy2rl4jTb9Ms9hr
 BzKxrwajcq3cp0lXRn35Sj3uf/H+DPPJh2HtZNdDHWmp+kfRaedRNapGWL/oRqlgLd9B
 vgTlVOzYwGfyHr6qIwYaKx8aSkCjt4Qex3WgH9VjUUnUTQGJ47QI/fkm1+Agh9LLL/qK
 l0SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=DP+WeV+eCsLNcM+0j7VvT82QxXGphPuPG6yUJrTyu2U=;
 b=eYrRQR+Fg8GS3XmMNQP5keqYmcPP3uPkrWIz80tETtL4b+aQSReeoni89KPsXdT10D
 Eep3Wd7DMzRSeW6nHpzCCcI07prjPPUbB56bLqg7w1NHwtrIL7dk3bK6Rd3dq8UGQKVp
 nrpW9nfBYlwHA+g+1U4E5QT3K6zTTCz304UfYtro9nIe68QWFUsjnn6uYTA3PHLr5taq
 ENZpqSXt3DLXWP/jWxCwFGxMsj57K+GWj7NwCcHAgXSacEsLfFg47RGMLw1diJm6SmvB
 4xFcB5Gw0K4C79RJniId5NvTiZEwNirX7IEOoCxNdBr1CCBBai8vW4CB8Z8s8m5sEzLf
 BVhA==
X-Gm-Message-State: APjAAAVLTsGiSdsX8mCb/fEduvG8UMbq64tJSNAWJ2RRGxT9Kp0CYC8m
 wYUS71Ch3IPiDTbykGnwBU/+mg==
X-Google-Smtp-Source: APXvYqwoOtD3d5ksvVjxWcwZ0/DxwY7u+cyjGgOanzGPTjCQXXfMerwF375wbaNtGgrElDDsrXncyg==
X-Received: by 2002:a1c:b789:: with SMTP id h131mr5560317wmf.148.1582219430876; 
 Thu, 20 Feb 2020 09:23:50 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
 by smtp.gmail.com with ESMTPSA id c77sm5261153wmd.12.2020.02.20.09.23.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 09:23:50 -0800 (PST)
Date: Thu, 20 Feb 2020 17:23:48 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 03/13] PCI: mobiveil: Collect the interrupt related
 operations into a function
Message-ID: <20200220172348.GF19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-4-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-4-Zhiqiang.Hou@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092352_445702_6B399D57 
X-CRM114-Status: GOOD (  18.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 m.karthikeyan@mobiveil.co.in, arnd@arndb.de, linux-pci@vger.kernel.org,
 l.subrahmanya@mobiveil.co.in, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, leoyang.li@nxp.com, Minghuan.Lian@nxp.com,
 robh+dt@kernel.org, Mingkai.Hu@nxp.com, Xiaowei.Bao@nxp.com,
 catalin.marinas@arm.com, bhelgaas@google.com, andrew.murray@arm.com,
 shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 12:06:34PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Collect the interrupt initialization related operations into
> a new function such that it is more readable.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> ---
> V10:
>  - Refined the subject and change log.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 65 +++++++++++++++++---------
>  1 file changed, 42 insertions(+), 23 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 01df04ea5b48..9449528bb14f 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -454,12 +454,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  		return PTR_ERR(pcie->csr_axi_slave_base);
>  	pcie->pcie_reg_base = res->start;
>  
> -	/* map MSI config resource */
> -	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
> -	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
> -	if (IS_ERR(pcie->apb_csr_base))
> -		return PTR_ERR(pcie->apb_csr_base);
> -
>  	/* read the number of windows requested */
>  	if (of_property_read_u32(node, "apio-wins", &pcie->apio_wins))
>  		pcie->apio_wins = MAX_PIO_WINDOWS;
> @@ -467,12 +461,6 @@ static int mobiveil_pcie_parse_dt(struct mobiveil_pcie *pcie)
>  	if (of_property_read_u32(node, "ppio-wins", &pcie->ppio_wins))
>  		pcie->ppio_wins = MAX_PIO_WINDOWS;
>  
> -	rp->irq = platform_get_irq(pdev, 0);
> -	if (rp->irq <= 0) {
> -		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
> -		return -ENODEV;
> -	}
> -
>  	return 0;
>  }
>  
> @@ -618,9 +606,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  	pab_ctrl |= (1 << AMBA_PIO_ENABLE_SHIFT) | (1 << PEX_PIO_ENABLE_SHIFT);
>  	mobiveil_csr_writel(pcie, pab_ctrl, PAB_CTRL);
>  
> -	mobiveil_csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
> -			    PAB_INTP_AMBA_MISC_ENB);
> -
>  	/*
>  	 * program PIO Enable Bit to 1 and Config Window Enable Bit to 1 in
>  	 * PAB_AXI_PIO_CTRL Register
> @@ -670,9 +655,6 @@ static int mobiveil_host_init(struct mobiveil_pcie *pcie)
>  	value |= (PCI_CLASS_BRIDGE_PCI << 16);
>  	mobiveil_csr_writel(pcie, value, PAB_INTP_AXI_PIO_CLASS);
>  
> -	/* setup MSI hardware registers */
> -	mobiveil_pcie_enable_msi(pcie);
> -
>  	return 0;
>  }
>  
> @@ -873,6 +855,46 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
>  	return 0;
>  }
>  
> +static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
> +{
> +	struct platform_device *pdev = pcie->pdev;
> +	struct device *dev = &pdev->dev;
> +	struct mobiveil_root_port *rp = &pcie->rp;
> +	struct resource *res;
> +	int ret;
> +
> +	/* map MSI config resource */
> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "apb_csr");
> +	pcie->apb_csr_base = devm_pci_remap_cfg_resource(dev, res);
> +	if (IS_ERR(pcie->apb_csr_base))
> +		return PTR_ERR(pcie->apb_csr_base);
> +
> +	/* setup MSI hardware registers */
> +	mobiveil_pcie_enable_msi(pcie);
> +
> +	rp->irq = platform_get_irq(pdev, 0);
> +	if (rp->irq <= 0) {
> +		dev_err(dev, "failed to map IRQ: %d\n", rp->irq);
> +		return -ENODEV;
> +	}
> +
> +	/* initialize the IRQ domains */
> +	ret = mobiveil_pcie_init_irq_domain(pcie);
> +	if (ret) {
> +		dev_err(dev, "Failed creating IRQ Domain\n");
> +		return ret;
> +	}
> +
> +	irq_set_chained_handler_and_data(rp->irq, mobiveil_pcie_isr, pcie);
> +
> +	/* Enable interrupts */
> +	mobiveil_csr_writel(pcie, (PAB_INTP_INTX_MASK | PAB_INTP_MSI_MASK),
> +			    PAB_INTP_AMBA_MISC_ENB);
> +
> +
> +	return 0;
> +}
> +
>  static int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  {
>  	struct mobiveil_root_port *rp = &pcie->rp;
> @@ -906,15 +928,12 @@ static int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  		return ret;
>  	}
>  
> -	/* initialize the IRQ domains */
> -	ret = mobiveil_pcie_init_irq_domain(pcie);
> +	ret = mobiveil_pcie_interrupt_init(pcie);
>  	if (ret) {
> -		dev_err(dev, "Failed creating IRQ Domain\n");
> +		dev_err(dev, "Interrupt init failed\n");
>  		return ret;
>  	}
>  
> -	irq_set_chained_handler_and_data(rp->irq, mobiveil_pcie_isr, pcie);
> -
>  	/* Initialize bridge */
>  	bridge->dev.parent = dev;
>  	bridge->sysdata = pcie;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
