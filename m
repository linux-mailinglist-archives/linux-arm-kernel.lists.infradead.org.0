Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DA02A0662
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 17:33:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zI+sERvCmu+sbgBn9JyH8f3g1V/4Q/nRxtyQ41c0pwc=; b=NoU5YHBto6Ismv
	bdit0Ud/e3S68X+bc4NP4N6EKlkz5TNq8LnkHOL9BTQ7YpsL1gJCAH0GQqwgGuabYOVNzZwF4jbKP
	PPlEeXxMVn2/z2pME1uN6HbU3AHnOFVZnxadr0OrnJ0C5iu1ZFdymSabrtFgenohW/E766MK/xu32
	YTA5XdXUQ8PceqIrL2+xYMUTlpNiNZ2qosCRSQ8wenNUTdaFsgJ0EAoe5LuZrmO4OJdxHFu1mASfZ
	zO3g7BszN5UGDjzD9/kNlhZ8HeXnheua8nHb5n1XX+EofOAzSnic1p7kzcz8F2DFAYwLyJa8naV35
	V6oARG2JL8LbRYI939fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zwS-0007WP-QS; Wed, 28 Aug 2019 15:33:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zwG-0007Vm-9H; Wed, 28 Aug 2019 15:32:49 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B538D28;
 Wed, 28 Aug 2019 08:32:46 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 27B523F59C;
 Wed, 28 Aug 2019 08:32:45 -0700 (PDT)
Date: Wed, 28 Aug 2019 16:32:44 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] PCI: rockchip: Properly handle optional regulators
Message-ID: <20190828153243.GZ14582@e119886-lin.cambridge.arm.com>
References: <20190828150737.30285-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190828150737.30285-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_083248_416896_C8651502 
X-CRM114-Status: GOOD (  22.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>, Vidya Sagar <vidyas@nvidia.com>,
 linux-rockchip@lists.infradead.org, Bjorn Helgaas <bhelgaas@google.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 05:07:37PM +0200, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> regulator_get_optional() can fail for a number of reasons besides probe
> deferral. It can for example return -ENOMEM if it runs out of memory as
> it tries to allocate data structures. Propagating only -EPROBE_DEFER is
> problematic because it results in these legitimately fatal errors being
> treated as "regulator not specified in DT".
> 
> What we really want is to ignore the optional regulators only if they
> have not been specified in DT. regulator_get_optional() returns -ENODEV
> in this case, so that's the special case that we need to handle. So we
> propagate all errors, except -ENODEV, so that real failures will still
> cause the driver to fail probe.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> ---
>  drivers/pci/controller/pcie-rockchip-host.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
> index 8d20f1793a61..ef8e677ce9d1 100644
> --- a/drivers/pci/controller/pcie-rockchip-host.c
> +++ b/drivers/pci/controller/pcie-rockchip-host.c
> @@ -608,29 +608,29 @@ static int rockchip_pcie_parse_host_dt(struct rockchip_pcie *rockchip)
>  
>  	rockchip->vpcie12v = devm_regulator_get_optional(dev, "vpcie12v");
>  	if (IS_ERR(rockchip->vpcie12v)) {
> -		if (PTR_ERR(rockchip->vpcie12v) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie12v) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie12v);
>  		dev_info(dev, "no vpcie12v regulator found\n");

In the event that -ENODEV is returned - we don't set vpcie12v to NULL, however
it seems that this is OK as vpcie12v is tested with IS_ERR before use everywhere
else in this file.

By the way it looks like this patch pattern could be applied right across the
kernel, there are also others in PCI: pci-imx6 and pcie-histb.c - not sure if
you wanted to fix those up too.

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

>  	}
>  
>  	rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");
>  	if (IS_ERR(rockchip->vpcie3v3)) {
> -		if (PTR_ERR(rockchip->vpcie3v3) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie3v3) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie3v3);
>  		dev_info(dev, "no vpcie3v3 regulator found\n");
>  	}
>  
>  	rockchip->vpcie1v8 = devm_regulator_get_optional(dev, "vpcie1v8");
>  	if (IS_ERR(rockchip->vpcie1v8)) {
> -		if (PTR_ERR(rockchip->vpcie1v8) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie1v8) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie1v8);
>  		dev_info(dev, "no vpcie1v8 regulator found\n");
>  	}
>  
>  	rockchip->vpcie0v9 = devm_regulator_get_optional(dev, "vpcie0v9");
>  	if (IS_ERR(rockchip->vpcie0v9)) {
> -		if (PTR_ERR(rockchip->vpcie0v9) == -EPROBE_DEFER)
> -			return -EPROBE_DEFER;
> +		if (PTR_ERR(rockchip->vpcie0v9) != -ENODEV)
> +			return PTR_ERR(rockchip->vpcie0v9);
>  		dev_info(dev, "no vpcie0v9 regulator found\n");
>  	}
>  
> -- 
> 2.22.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
