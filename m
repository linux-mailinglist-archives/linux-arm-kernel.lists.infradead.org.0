Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C46BDC26
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 12:26:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoeEodrvgs/KH8VCqNo0WG+BZj58LuU+yY8R5V9cVl4=; b=FaXkraSN4uY0on
	3tTV7jx4pCrSGsB5IjHOXAEdsZG1+r3os6HcVVdy6P2Tcgd6QfqVxdGYloWkQwGshL7rsVJLEGlGo
	jiflp7e/7yMP+lEz3345gl+JHK183fId1Y9FCghjYkZ3Jveukh6UGyI5VVPj9OfSLUI1laAZq58rL
	wgPH9mawZMoAO+8aqrSXWfG/mJFbpVmEppJl3dxNKy3SGaicUvZnNmn9nfiTUcdagy+8fLkNcfhoY
	VuX8TiTpDN+P/l8/rf7Y4E5fkHTAibtbFblQl3T/4OAR3H1tZPgWUWYmhX0p6ZGiIXZ59tU+8gNl6
	lNsKDQ6fFKtkOfe04qHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD4Ue-0001sZ-4F; Wed, 25 Sep 2019 10:25:56 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD4TF-0001rw-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 10:24:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CA9F31570;
 Wed, 25 Sep 2019 03:24:25 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 421EE3F694;
 Wed, 25 Sep 2019 03:24:25 -0700 (PDT)
Date: Wed, 25 Sep 2019 11:24:23 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 02/11] PCI: altera: Use pci_parse_request_of_pci_ranges()
Message-ID: <20190925102423.GR9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-3-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924214630.12817-3-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_032430_924488_B447DF94 
X-CRM114-Status: GOOD (  20.02  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pci@vger.kernel.org,
 rfi@lists.rocketboards.org, Bjorn Helgaas <bhelgaas@google.com>,
 Ley Foon Tan <lftan@altera.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:46:21PM -0500, Rob Herring wrote:
> Convert altera host bridge to use the common
> pci_parse_request_of_pci_ranges().
> 
> Cc: Ley Foon Tan <lftan@altera.com>
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Cc: rfi@lists.rocketboards.org
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/pci/controller/pcie-altera.c | 38 ++--------------------------
>  1 file changed, 2 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-altera.c b/drivers/pci/controller/pcie-altera.c
> index d2497ca43828..2ed00babff5a 100644
> --- a/drivers/pci/controller/pcie-altera.c
> +++ b/drivers/pci/controller/pcie-altera.c
> @@ -670,39 +670,6 @@ static void altera_pcie_isr(struct irq_desc *desc)
>  	chained_irq_exit(chip, desc);
>  }
>  
> -static int altera_pcie_parse_request_of_pci_ranges(struct altera_pcie *pcie)
> -{
> -	int err, res_valid = 0;
> -	struct device *dev = &pcie->pdev->dev;
> -	struct resource_entry *win;
> -
> -	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &pcie->resources, NULL);
> -	if (err)
> -		return err;
> -
> -	err = devm_request_pci_bus_resources(dev, &pcie->resources);
> -	if (err)
> -		goto out_release_res;
> -
> -	resource_list_for_each_entry(win, &pcie->resources) {
> -		struct resource *res = win->res;
> -
> -		if (resource_type(res) == IORESOURCE_MEM)
> -			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
> -	}
> -
> -	if (res_valid)
> -		return 0;
> -
> -	dev_err(dev, "non-prefetchable memory resource required\n");
> -	err = -EINVAL;
> -
> -out_release_res:
> -	pci_free_resource_list(&pcie->resources);
> -	return err;
> -}
> -
>  static int altera_pcie_init_irq_domain(struct altera_pcie *pcie)
>  {
>  	struct device *dev = &pcie->pdev->dev;
> @@ -833,9 +800,8 @@ static int altera_pcie_probe(struct platform_device *pdev)
>  		return ret;
>  	}
>  
> -	INIT_LIST_HEAD(&pcie->resources);
> -
> -	ret = altera_pcie_parse_request_of_pci_ranges(pcie);
> +	ret = pci_parse_request_of_pci_ranges(dev, &pcie->resources,

Does it matter that we now map any given IO ranges whereas we didn't
previously?

As far as I can tell there are no users that pass an IO range, if they
did then with the existing code the probe would fail and they'd get
a "I/O range found for %pOF. Please provide an io_base pointer...".
However with the new code if any IO range was given (which would
probably represent a misconfiguration), then we'd proceed to map the
IO range. When that IO is used, who knows what would happen.

I wonder if there is a better way for a host driver to indicate that
it doesn't support IO?

Thanks,

Andrew Murray

> +					      NULL);
>  	if (ret) {
>  		dev_err(dev, "Failed add resources\n");
>  		return ret;
> -- 
> 2.20.1
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
