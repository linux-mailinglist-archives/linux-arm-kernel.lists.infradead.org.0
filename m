Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03801DC594
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 14:58:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSEKT2V52jY5JFv1qY5l07UGk3j11Ee5RxI7EnDrTVE=; b=la17hznSmxnURW
	10CCaBDG3Zy0t7auNIvX1Cn5sGY+WSsqOYHFyiUPC4VAqCVQrnH7UQPsbAx+WZznUawfeJFHbP18T
	HLaXaadJugoD1LXPxgB/1/GJNrzAU2VWzfxYKLYf4zZQv/7VVJDp9EVqhEBEHW1ZlpQHL2txrO5/C
	S2/Qy6GgelbNMPS8PH5EgqC5TEPp/P5NIRu4tyiPueDCeFiX+wwzJ/DcH6mUfE6w/NLH/pbQ+uMYJ
	Q+P9tyyqpnkLCOFNfnNabG8DbMVZ2CXMcvzbDP6W7Idodmimyzwv0jf2FqpO0mniUYf5T8QV7VM9h
	uQdbG9pmOl9qctjdb25w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLRpo-000137-E9; Fri, 18 Oct 2019 12:58:24 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLRpZ-0000zb-RY; Fri, 18 Oct 2019 12:58:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E20083BB;
 Fri, 18 Oct 2019 05:57:58 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 428BD3F6C4;
 Fri, 18 Oct 2019 05:57:58 -0700 (PDT)
Date: Fri, 18 Oct 2019 13:57:56 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 06/25] PCI: faraday: Use pci_parse_request_of_pci_ranges
Message-ID: <20191018125756.GH47056@e119886-lin.cambridge.arm.com>
References: <20191016200647.32050-1-robh@kernel.org>
 <20191016200647.32050-7-robh@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191016200647.32050-7-robh@kernel.org>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_055809_976673_910920CF 
X-CRM114-Status: GOOD (  19.49  )
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
Cc: Heiko Stuebner <heiko@sntech.de>,
 Karthikeyan Mitran <m.karthikeyan@mobiveil.co.in>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-rockchip@lists.infradead.org,
 bcm-kernel-feedback-list@broadcom.com,
 Linus Walleij <linus.walleij@linaro.org>, Ray Jui <rjui@broadcom.com>,
 Hou Zhiqiang <Zhiqiang.Hou@nxp.com>, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org, Scott Branden <sbranden@broadcom.com>,
 Jingoo Han <jingoohan1@gmail.com>, rfi@lists.rocketboards.org,
 linux-renesas-soc@vger.kernel.org, Tom Joseph <tjoseph@cadence.com>,
 Simon Horman <horms@verge.net.au>,
 Srinath Mannam <srinath.mannam@broadcom.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 Ley Foon Tan <lftan@altera.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 16, 2019 at 03:06:28PM -0500, Rob Herring wrote:
> Convert the Faraday host bridge to use the common
> pci_parse_request_of_pci_ranges().
> 
> There's no need to assign the resources to a temporary list first. Just
> use bridge->windows directly and remove all the temporary list handling.
> 
> Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
> Cc: Andrew Murray <andrew.murray@arm.com>
> Cc: Bjorn Helgaas <bhelgaas@google.com>
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
> v2:
> - New patch
> 

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  drivers/pci/controller/pci-ftpci100.c | 51 ++++++---------------------
>  1 file changed, 11 insertions(+), 40 deletions(-)
> 
> diff --git a/drivers/pci/controller/pci-ftpci100.c b/drivers/pci/controller/pci-ftpci100.c
> index bf5ece5d9291..12bc7daef5b5 100644
> --- a/drivers/pci/controller/pci-ftpci100.c
> +++ b/drivers/pci/controller/pci-ftpci100.c
> @@ -430,10 +430,8 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  	const struct faraday_pci_variant *variant =
>  		of_device_get_match_data(dev);
>  	struct resource *regs;
> -	resource_size_t io_base;
>  	struct resource_entry *win;
>  	struct faraday_pci *p;
> -	struct resource *mem;
>  	struct resource *io;
>  	struct pci_host_bridge *host;
>  	struct clk *clk;
> @@ -441,7 +439,6 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  	unsigned char cur_bus_speed = PCI_SPEED_33MHz;
>  	int ret;
>  	u32 val;
> -	LIST_HEAD(res);
> 
>  	host = devm_pci_alloc_host_bridge(dev, sizeof(*p));
>  	if (!host)
> @@ -480,44 +477,20 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  	if (IS_ERR(p->base))
>  		return PTR_ERR(p->base);
> 
> -	ret = devm_of_pci_get_host_bridge_resources(dev, 0, 0xff,
> -						    &res, &io_base);
> +	ret = pci_parse_request_of_pci_ranges(dev, &host->windows, NULL);
>  	if (ret)
>  		return ret;
> 
> -	ret = devm_request_pci_bus_resources(dev, &res);
> -	if (ret)
> -		return ret;
> -
> -	/* Get the I/O and memory ranges from DT */
> -	resource_list_for_each_entry(win, &res) {
> -		switch (resource_type(win->res)) {
> -		case IORESOURCE_IO:
> -			io = win->res;
> -			io->name = "Gemini PCI I/O";
> -			if (!faraday_res_to_memcfg(io->start - win->offset,
> -						   resource_size(io), &val)) {
> -				/* setup I/O space size */
> -				writel(val, p->base + PCI_IOSIZE);
> -			} else {
> -				dev_err(dev, "illegal IO mem size\n");
> -				return -EINVAL;
> -			}
> -			ret = devm_pci_remap_iospace(dev, io, io_base);
> -			if (ret) {
> -				dev_warn(dev, "error %d: failed to map resource %pR\n",
> -					 ret, io);
> -				continue;
> -			}
> -			break;
> -		case IORESOURCE_MEM:
> -			mem = win->res;
> -			mem->name = "Gemini PCI MEM";
> -			break;
> -		case IORESOURCE_BUS:
> -			break;
> -		default:
> -			break;
> +	win = resource_list_get_entry_of_type(&host->windows, IORESOURCE_IO);
> +	if (win) {
> +		io = win->res;
> +		if (!faraday_res_to_memcfg(io->start - win->offset,
> +					   resource_size(io), &val)) {
> +			/* setup I/O space size */
> +			writel(val, p->base + PCI_IOSIZE);
> +		} else {
> +			dev_err(dev, "illegal IO mem size\n");
> +			return -EINVAL;
>  		}
>  	}
> 
> @@ -569,7 +542,6 @@ static int faraday_pci_probe(struct platform_device *pdev)
>  	if (ret)
>  		return ret;
> 
> -	list_splice_init(&res, &host->windows);
>  	ret = pci_scan_root_bus_bridge(host);
>  	if (ret) {
>  		dev_err(dev, "failed to scan host: %d\n", ret);
> @@ -581,7 +553,6 @@ static int faraday_pci_probe(struct platform_device *pdev)
> 
>  	pci_bus_assign_resources(p->bus);
>  	pci_bus_add_devices(p->bus);
> -	pci_free_resource_list(&res);
> 
>  	return 0;
>  }
> --
> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
