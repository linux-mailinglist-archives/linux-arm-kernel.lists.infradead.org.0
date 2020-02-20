Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D0BB166433
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:19:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u5/gr4+mmK88ggp5V63D2Mm+94rUuPF/NT2mqbXyWXw=; b=dWMwKF6ggT0Xz5
	U8BQDEhQ/mVfmKprRjnnl1paTY+g5qLrMRX5K6FIWf1JF7e/UfphF3ygN/ThhiOGSYOEFEhM9oEvE
	AsQvRk9nBqpK8OWHWtuavw6lvJNn1y/NvuTgYfUSOhEHx4ScrEhiixRom+x/i6Ifo9Z5vcqk1GXbO
	pnou+zdZqfAXdq6C6iGmMuHrZGm1cMagffREIO8zUJJ2TlVg+bsQHoU7W9iFcT6y97jTNe1wNlsmA
	iDspZzkTGQsp4j67ozmdrSDApwqD9or7k9bLGiupwgKk1DGJu5dkkRKfWo2J6H9yIJQCVw7VwJMq5
	0i+RCYTXWAmkCZEFs4KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4pTu-0000UQ-B6; Thu, 20 Feb 2020 17:19:22 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4pTi-0000Tv-Di
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:19:11 +0000
Received: by mail-wr1-x443.google.com with SMTP id z7so5456946wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 09:19:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=thegoodpenguin-co-uk.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=boCKpekBoONnu2x2vJLKUmcg4VOjDu6Z9N8Skkewyns=;
 b=Q13xE83+LcPqrhNEh6NHQ1au8Z2/JdUbzmH/YLYPtNTl7+yBHFo+N44wCR6BcWL64h
 qDDU/nED0VcmMpdOrIIWijZATAFcEesI6K53ZBUyGnTA257zjvpBTObdSBEoIVMFW084
 w3bofiy4YocKcnWyPfO/IjtVY5KJO7gD9ldqZDn/YKapVyXablODffPaZnXim8QAXyod
 JEiGZse4W9m+DuLYCD94g+KYCWiSlC4xLHlwyceulK0sYwmKqDrsQW36S072RVSWko4w
 +A4VFlEdGAzmsR+9xGGvJZM1NjF2F0Rgqp5FcIiEW/YL8oE4/eBhgmdeSIBZ0UBUOOVW
 +3hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=boCKpekBoONnu2x2vJLKUmcg4VOjDu6Z9N8Skkewyns=;
 b=JUQ4asIRcEXVwy3hAvMIc1bX88eINU2K+3q5lqnBHLr5yqLgKwIihApwZ3WvQQnOv4
 ifQzzkIdD9Ja0PiGesh7P29aKuE8PWMNvEAulrtwal5gjOGnaXllSemKh5U3EYYIvbaC
 /Iw4J78AhcSSoz9MT5UQoBZVNewHbuATEBocWacpC/Df23IpCE5fjVsaNL2yjZ2pJXRR
 A6upaPePPL/zYlGxcZ8uZHRSr3mSLUKyy25/XiVC943XqYcfEqpuSwbMAwXTWnhm5SyA
 bNQOT6t/MvL3cTkwqnDncqTFKR/N0ssgwC+pgR/TbwnfFY1A4+10ZPlcrrgI4S+qRjTb
 0qdw==
X-Gm-Message-State: APjAAAV9N3dFPkibOLYXNwaL8uANcRcy/3NbfMaX+aDDoehyXCnFQO3y
 xGxNOBf/uZutFYFBWeoU+ahBVw==
X-Google-Smtp-Source: APXvYqwHG2Hc/+mR7YXbYt7FoyW6wjBkMtpEc3eYy6RMHqggBSxh2ZgyVipp8ipV9eepl//YQQFw3g==
X-Received: by 2002:adf:dfce:: with SMTP id q14mr44306523wrn.324.1582219149052; 
 Thu, 20 Feb 2020 09:19:09 -0800 (PST)
Received: from big-machine ([2a00:23c5:dd80:8400:98d8:49e6:cdcc:25df])
 by smtp.gmail.com with ESMTPSA id q1sm264777wrw.5.2020.02.20.09.19.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 09:19:08 -0800 (PST)
Date: Thu, 20 Feb 2020 17:19:06 +0000
From: Andrew Murray <amurray@thegoodpenguin.co.uk>
To: Zhiqiang Hou <Zhiqiang.Hou@nxp.com>
Subject: Re: [PATCHv10 02/13] PCI: mobiveil: Move the host initialization
 into a function
Message-ID: <20200220171906.GE19388@big-machine>
References: <20200213040644.45858-1-Zhiqiang.Hou@nxp.com>
 <20200213040644.45858-3-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213040644.45858-3-Zhiqiang.Hou@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_091910_460784_1C40F671 
X-CRM114-Status: GOOD (  18.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
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

Are these three lines above supposed to be in the history below the
--- ?

Perhaps Lorenzo can change that when he applies it.

Reviewed-by: Andrew Murray <amurray@thegoodpenguin.co.uk>

> 
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
