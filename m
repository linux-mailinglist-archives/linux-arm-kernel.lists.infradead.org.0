Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F25EBDC43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 12:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6LIOyD5zcwG7yjTqeyOOnlu8z6Z9hDO2lQLPxU3HYU=; b=r5B4HEd7rj+HkY
	M9wz4YQ9Qklf2ChtWc0o8lqsjQe0s1lolFccs7Ut1pc9XmS1n3OcgdHv//QbYBIUSxUD6l7bJUaRg
	FNeOtUdPfgDTnabhwOz9ioYQ9n1FBGiRkEcBJxwys66S/XOccjcGIzG7hj986HYEMu9p9mDAG5qLa
	unvca4drk9X6G3+XJePqvAGdQvT5XRA8QAT/U05jJImA76DcS/+lJW9wzvY/8xf2OLmeupAs/Dffe
	6XvDjCgA9jceSuOXglzcE59nBD+MqdcivLa/C0e5vnGO0ivVHj//O1mpAFJudgUir37T4nbvXIjK/
	33LKtskG1v0qsNJ3f54A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iD4gr-0006m1-JG; Wed, 25 Sep 2019 10:38:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iD4gK-0006kq-8N
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 10:38:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 44E331570;
 Wed, 25 Sep 2019 03:37:55 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B14223F694;
 Wed, 25 Sep 2019 03:37:54 -0700 (PDT)
Date: Wed, 25 Sep 2019 11:37:53 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 05/11] PCI: versatile: Use
 pci_parse_request_of_pci_ranges()
Message-ID: <20190925103752.GS9720@e119886-lin.cambridge.arm.com>
References: <20190924214630.12817-1-robh@kernel.org>
 <20190924214630.12817-6-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924214630.12817-6-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_033800_752241_21DFAD5E 
X-CRM114-Status: GOOD (  21.55  )
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
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 04:46:24PM -0500, Rob Herring wrote:
> Convert ARM Versatile host bridge to use the common
> pci_parse_request_of_pci_ranges().
> 
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  drivers/pci/controller/pci-versatile.c | 62 +++++---------------------
>  1 file changed, 11 insertions(+), 51 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-versatile.c b/drivers/pci/controller/pci-versatile.c
> index f59ad2728c0b..237b1abb26f2 100644
> --- a/drivers/pci/controller/pci-versatile.c
> +++ b/drivers/pci/controller/pci-versatile.c
> @@ -62,60 +62,12 @@ static struct pci_ops pci_versatile_ops = {
>  	.write	= pci_generic_config_write,
>  };
>  
> -static int versatile_pci_parse_request_of_pci_ranges(struct device *dev,
> -						     struct list_head *res)
> -{
> -	int err, mem = 1, res_valid = 0;
> -	resource_size_t iobase;
> -	struct resource_entry *win, *tmp;
> -
> -	err = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff, res, &iobase);
> -	if (err)
> -		return err;
> -
> -	err = devm_request_pci_bus_resources(dev, res);
> -	if (err)
> -		goto out_release_res;
> -
> -	resource_list_for_each_entry_safe(win, tmp, res) {
> -		struct resource *res = win->res;
> -
> -		switch (resource_type(res)) {
> -		case IORESOURCE_IO:
> -			err = devm_pci_remap_iospace(dev, res, iobase);
> -			if (err) {
> -				dev_warn(dev, "error %d: failed to map resource %pR\n",
> -					 err, res);
> -				resource_list_destroy_entry(win);
> -			}
> -			break;
> -		case IORESOURCE_MEM:
> -			res_valid |= !(res->flags & IORESOURCE_PREFETCH);
> -
> -			writel(res->start >> 28, PCI_IMAP(mem));
> -			writel(PHYS_OFFSET >> 28, PCI_SMAP(mem));
> -			mem++;
> -
> -			break;
> -		}
> -	}
> -
> -	if (res_valid)
> -		return 0;
> -
> -	dev_err(dev, "non-prefetchable memory resource required\n");
> -	err = -EINVAL;
> -
> -out_release_res:
> -	pci_free_resource_list(res);
> -	return err;
> -}
> -
>  static int versatile_pci_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct resource *res;
> -	int ret, i, myslot = -1;
> +	struct resource_entry *entry;
> +	int ret, i, myslot = -1, mem = 0;

I think 'mem' should be initialised to 1, at least that's what the original
code did. However I'm not sure why it should start from 1.

Thanks,

Andrew Murray

>  	u32 val;
>  	void __iomem *local_pci_cfg_base;
>  	struct pci_bus *bus, *child;
> @@ -141,10 +93,18 @@ static int versatile_pci_probe(struct platform_device *pdev)
>  	if (IS_ERR(versatile_cfg_base[1]))
>  		return PTR_ERR(versatile_cfg_base[1]);
>  
> -	ret = versatile_pci_parse_request_of_pci_ranges(dev, &pci_res);
> +	ret = pci_parse_request_of_pci_ranges(dev, &pci_res, NULL);
>  	if (ret)
>  		return ret;
>  
> +	resource_list_for_each_entry(entry, &pci_res) {
> +		if (resource_type(entry->res) == IORESOURCE_MEM) {
> +			writel(entry->res->start >> 28, PCI_IMAP(mem));
> +			writel(PHYS_OFFSET >> 28, PCI_SMAP(mem));
> +			mem++;
> +		}
> +	}
> +
>  	/*
>  	 * We need to discover the PCI core first to configure itself
>  	 * before the main PCI probing is performed
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
