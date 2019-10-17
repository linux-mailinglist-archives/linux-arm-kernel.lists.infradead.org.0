Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D18DA9BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 12:19:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTEZ7TFSdwxSitl1JMPHWyjv/s5/WAU0U4zt9hONXBc=; b=nInYQlyUfDVymh
	Vz8W4hRHja+l7kimvAXNGL8tkFaX77QNj/yfwMTA74fB1rUoLb8yIc9Lzjf0tGrzw0iCr38naT1St
	LOK6ir35DEEQ8/e6ULHTRiK8JJqpEdxzePS5OGyQ7hx8frIkv/cURiLzw57BF+x+xfg3m79aY6CBO
	eGGdU9zk+MedwiDYMVh/4fXiAErCN9i1UwAShUMChOioR1cF7YBNrqM4281ogBzyVVhXLzMkr+b7Q
	0N/SR+iE10ZWYhd/AhDclVKXJVEvOtdPI3agdtNcsRKPUBKiR5a6H9n8j+Q49c4+XXqJKlWHnbkJ1
	HXyMhgfSxOrDCvkZFl/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL2sA-00015B-KD; Thu, 17 Oct 2019 10:19:10 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL2rx-00012K-7d
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 10:18:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7D311BC0;
 Thu, 17 Oct 2019 03:18:46 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6F40F3F718;
 Thu, 17 Oct 2019 03:18:45 -0700 (PDT)
Date: Thu, 17 Oct 2019 11:18:43 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Ben Dooks (Codethink)" <ben.dooks@codethink.co.uk>
Subject: Re: [PATCH] PCI: mvebu: mvebu_pcie_map_registers __iomem fix
Message-ID: <20191017101843.GC9589@e121166-lin.cambridge.arm.com>
References: <20191015161148.4413-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191015161148.4413-1-ben.dooks@codethink.co.uk>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_031857_317683_08A1E33B 
X-CRM114-Status: GOOD (  16.45  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: linux-kernel@lists.codethink.co.uk, Jason Cooper <jason@lakedaemon.net>,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Oct 15, 2019 at 05:11:48PM +0100, Ben Dooks (Codethink) wrote:
> Fix the return type of mvebu_pcie_map_registers in the
> error path to have __iomem on it. Fixes the following
> sparse warning:
> 
> drivers/pci/controller/pci-mvebu.c:716:31: warning: incorrect type in return expression (different address spaces)
> drivers/pci/controller/pci-mvebu.c:716:31:    expected void [noderef] <asn:2> *
> drivers/pci/controller/pci-mvebu.c:716:31:    got void *
> 
> Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
> ---
> Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>
> Cc: Jason Cooper <jason@lakedaemon.net>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: linux-pci@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/pci/controller/pci-mvebu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied to pci/misc, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/pci-mvebu.c b/drivers/pci/controller/pci-mvebu.c
> index ed032e9a3156..153a64676bc9 100644
> --- a/drivers/pci/controller/pci-mvebu.c
> +++ b/drivers/pci/controller/pci-mvebu.c
> @@ -713,7 +713,7 @@ static void __iomem *mvebu_pcie_map_registers(struct platform_device *pdev,
>  
>  	ret = of_address_to_resource(np, 0, &regs);
>  	if (ret)
> -		return ERR_PTR(ret);
> +		return (void __iomem *)ERR_PTR(ret);
>  
>  	return devm_ioremap_resource(&pdev->dev, &regs);
>  }
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
