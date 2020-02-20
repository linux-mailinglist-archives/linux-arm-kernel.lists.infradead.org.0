Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BA9166498
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:26:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FbacVs8mqmh7GM4WWX1TP8biQvB8f+cTktNtYk7La44=; b=tPUipyU+Y3p7R4
	5HxlzJ6bYuwqUC34bc6lgUkjPMOW5Muc5+3jGMsNcW2jEGkps9qVXRBgTTb+SM2jIBDZYU7BHIoUg
	eD6Wi1fXmjJ5KNtk0q6rJTT1AtdEmfDsq55VNByObhjWmnv/nvjrsgKey3mTBNAIcAb9Xh6WxvUE9
	KFghHyT3JK6qZjx1bTyyxqTK+HvGMjTdvPXGphA3aXvTNBjDRKlNgz69Mvz5GBooykNnq8sely8VP
	rcMxvU/MqIUVerlT0mpDUjqCQQVbgUKL/lTn3bpLMy31iFvk6fDOS1UUZGrptGFQssJS5mh+o/9e6
	L8MWameBNz0OF8D5iFPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pai-0007Xk-99; Thu, 20 Feb 2020 17:26:24 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pZp-0005qU-Ur
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:25:34 +0000
Received: by mail-wm1-x342.google.com with SMTP id c84so2940414wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6yo/wEFYTgODGKnbWEUDj+nf8O3PSpjHxesG5sknQ/A=;
 b=KYzgbjNX1K0CzUdOqySZxyADNE1VkZOd+lFmYKJzXNKvDdxhmo4+L5Z+A9zUWAZm6Y
 MXOaTeHGZYDQeZuL9/XRuAHG6o5QpfwBWIuhIi5k5Fh112a1u4Fy+65475Ko8TjrjHTu
 FgBtGghky4L0w6i64qMwjwuWxgYOPPL2kH1i7YYoOQOnEglhbyux1AeBVzsvu79Qb9yH
 cVXsZLya4qevlYaCviYxBRU7Rp93DncQYLGRYjBwiKZSlR8z36kiIve9ZIjVmQdw3uaF
 Q0wZ0sFjblB5LjlFdl3ZxALrBPX/05fn/MH2oRzRc5ZYx3PmJCjJ7Q8CsgXrKtlI95ne
 kXwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6yo/wEFYTgODGKnbWEUDj+nf8O3PSpjHxesG5sknQ/A=;
 b=EE/HoxOVwBUEYh65JmJToXPQVIkJboXmoU42n8SXfDA6hgvDDOWSHX0+sWCYP4J+OG
 zem0kTkw7AFZqcKFUuG7aX20Igb3UMUrsYvIDlIWt2+1lVSbF7bEcZW0l6qqSyWgykL2
 JXKWEKM8TdzvR91ZBVUiBCF7GFn+lChmws6E0tjPE6md6bmQOuq1TKkkrVKJt25pKPKS
 opycrXgYpiwAFID/nAE1xxjttMn7eErVBF70KIDhrysXA67TDZLvDpsBwr27RWDx0Xyk
 4uI7bK4oS5zQ78h1U0DzdnNJbvC5yBBp6m9ysQ0Kr2Bh3d4cuZIkthjHYX8aNZCNBboZ
 NJ/g==
X-Gm-Message-State: APjAAAWiILGpHzHWgAjXK/9FhENnFioK4XumUBiHBFSn8I53bJO/qPPu
 NuIxuHMd19YJOlPJyhg62kcp1g==
X-Google-Smtp-Source: APXvYqxFOHbigA4u8XgOj9oDgXx9MToMJN0LilNw8H81qX/4WzYdOGoBOHPXL6cb43VJZ9gbrJzAmQ==
X-Received: by 2002:a7b:c8c5:: with SMTP id f5mr5442945wml.44.1582219528295;
 Thu, 20 Feb 2020 09:25:28 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
 by smtp.gmail.com with ESMTPSA id r1sm267897wrx.11.2020.02.20.09.25.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 09:25:27 -0800 (PST)
Date: Thu, 20 Feb 2020 17:25:25 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 05/13] PCI: mobiveil: Add callback function for
 interrupt initialization
Message-ID: <20200220172525.GG19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-6-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-6-Zhiqiang.Hou@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_092530_295927_72AEBDC8 
X-CRM114-Status: GOOD (  17.46  )
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

On Thu, Feb 13, 2020 at 12:06:36PM +0800, Zhiqiang Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> The Mobiveil GPEX internal MSI/INTx controller may not be used
> by other platforms in which the Mobiveil GPEX is integrated.
> This patch is to allow these platforms to implement their
> specific interrupt initialization.
> 
> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> ---
> V10:
>  - Introduced a helper function mobiveil_pcie_integrated_interrupt_init().
> 
>  drivers/pci/controller/mobiveil/pcie-mobiveil-host.c | 12 +++++++++++-
>  drivers/pci/controller/mobiveil/pcie-mobiveil.h      |  7 +++++++
>  2 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> index ea90d2f8692e..53ab8412a1de 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil-host.c
> @@ -499,7 +499,7 @@ static int mobiveil_pcie_init_irq_domain(struct mobiveil_pcie *pcie)
>  	return 0;
>  }
>  
> -static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
> +static int mobiveil_pcie_integrated_interrupt_init(struct mobiveil_pcie *pcie)
>  {
>  	struct platform_device *pdev = pcie->pdev;
>  	struct device *dev = &pdev->dev;
> @@ -539,6 +539,16 @@ static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
>  	return 0;
>  }
>  
> +static int mobiveil_pcie_interrupt_init(struct mobiveil_pcie *pcie)
> +{
> +	struct mobiveil_root_port *rp = &pcie->rp;
> +
> +	if (rp->ops->interrupt_init)
> +		return rp->ops->interrupt_init(pcie);
> +
> +	return mobiveil_pcie_integrated_interrupt_init(pcie);
> +}
> +
>  int mobiveil_pcie_host_probe(struct mobiveil_pcie *pcie)
>  {
>  	struct mobiveil_root_port *rp = &pcie->rp;
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> index 81ffbbd48c08..0e6b5468c026 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> @@ -130,10 +130,17 @@ struct mobiveil_msi {			/* MSI information */
>  	DECLARE_BITMAP(msi_irq_in_use, PCI_NUM_MSI);
>  };
>  
> +struct mobiveil_pcie;
> +
> +struct mobiveil_rp_ops {
> +	int (*interrupt_init)(struct mobiveil_pcie *pcie);
> +};
> +
>  struct mobiveil_root_port {
>  	char root_bus_nr;
>  	void __iomem *config_axi_slave_base;	/* endpoint config base */
>  	struct resource *ob_io_res;
> +	struct mobiveil_rp_ops *ops;
>  	int irq;
>  	raw_spinlock_t intx_mask_lock;
>  	struct irq_domain *intx_domain;
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
