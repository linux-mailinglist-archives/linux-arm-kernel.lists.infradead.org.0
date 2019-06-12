Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C508342969
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 16:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jf01Nr9bBX9ztWZRbhXpvTBeE1V84JPq7Y8VNWqMrL8=; b=Z94L71c/Ds6XKk
	kaL0wpLZMK+82gxHJ1DwQK1I3rst5ufWha2DoZf58W5aWXcSYUD7uMPM5m72cG8yd0qcJz0FGr0Ug
	pt1MazaKYIGbirseTzhZudZ7B5rLefkAd8s2iTL9cFgA3MvAg/N7G2J64xBhRYXp/UW50RwuVoKoM
	u4jY17Qvqm1xEJn8shR9ktVEpDjT68l+up9+iUP5VcJsDMzgcHphRDFiL4ly31KxTSUeCJXHLNuYh
	N3Ee5Y5XAq5cMnZ9Ozi/wAQQbaLyrptlKGyy7NUamfx1kJzPQhprweTxVqT0sbw+bPwf2ozKT8Rw8
	63qtFMdrrnF7HDNGrSGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb4LK-0003ba-4Y; Wed, 12 Jun 2019 14:35:14 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb4Kr-0003Uc-4z
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 14:34:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AEE27337;
 Wed, 12 Jun 2019 07:34:44 -0700 (PDT)
Received: from redmoon (unknown [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC4F73F557;
 Wed, 12 Jun 2019 07:34:42 -0700 (PDT)
Date: Wed, 12 Jun 2019 15:34:40 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: "Z.q. Hou" <zhiqiang.hou@nxp.com>
Subject: Re: [PATCHv5 17/20] PCI: mobiveil: Complete initialization of host
 even if no PCIe link
Message-ID: <20190612143440.GC15747@redmoon>
References: <20190412083635.33626-1-Zhiqiang.Hou@nxp.com>
 <20190412083635.33626-18-Zhiqiang.Hou@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190412083635.33626-18-Zhiqiang.Hou@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_073445_264022_3CE31FE2 
X-CRM114-Status: GOOD (  17.20  )
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

On Fri, Apr 12, 2019 at 08:36:54AM +0000, Z.q. Hou wrote:
> From: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> 
> Sometimes there is not a PCIe Endpoint stalled in the slot,
> so do not exit when the PCIe link is not up. And degrade the
> print level of link up info.

So what's the point of probing if the link does not initialize ?

Lorenzo

> Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
> Reviewed-by: Minghuan Lian <Minghuan.Lian@nxp.com>
> Reviewed-by: Subrahmanya Lingappa <l.subrahmanya@mobiveil.co.in>
> ---
> V5:
>  - Corrected and retouched the subject and changelog.
> 
>  drivers/pci/controller/pcie-mobiveil.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-mobiveil.c b/drivers/pci/controller/pcie-mobiveil.c
> index 1ee3ea2570c0..8dc87c7a600e 100644
> --- a/drivers/pci/controller/pcie-mobiveil.c
> +++ b/drivers/pci/controller/pcie-mobiveil.c
> @@ -560,7 +560,7 @@ static int mobiveil_bringup_link(struct mobiveil_pcie *pcie)
>  		usleep_range(LINK_WAIT_MIN, LINK_WAIT_MAX);
>  	}
>  
> -	dev_err(&pcie->pdev->dev, "link never came up\n");
> +	dev_info(&pcie->pdev->dev, "link never came up\n");
>  
>  	return -ETIMEDOUT;
>  }
> @@ -926,10 +926,8 @@ static int mobiveil_pcie_probe(struct platform_device *pdev)
>  	bridge->swizzle_irq = pci_common_swizzle;
>  
>  	ret = mobiveil_bringup_link(pcie);
> -	if (ret) {
> +	if (ret)
>  		dev_info(dev, "link bring-up failed\n");
> -		goto error;
> -	}
>  
>  	/* setup the kernel resources for the newly added PCIe root bus */
>  	ret = pci_scan_root_bus_bridge(bridge);
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
