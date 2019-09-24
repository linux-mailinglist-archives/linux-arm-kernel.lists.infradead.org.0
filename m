Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCBF4BCDC1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 24 Sep 2019 18:50:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PvvcKbo7vgn2dEqsanaGFtDobj0jx1KaZ18zaloh814=; b=lgz8gHOIhlavAe
	ETCPjfd/BmyUQ8ngjYF2jvGk+6Dq76BfRpDabhD3wUo4TypNXdV7uMtkY07SwPFRHDdXMg7Smr7NT
	yj7t8iOxI376/HFFuCcpa7/YZPcWI9DX6ONSWHGqEY0MxTUapRbvH/alWrRE6a9iZuonGCnE6Q2uO
	UKCtun5vjFB3OkWi9fV73Kh+AhZW28fOfPYw2DGerqqcxbi39LTa5xUhSj7/z2hteeaWwt+X+NAHJ
	oulfD0HUOM6CPO/nl4nQLSDpaWmJowyr8WSAHIOS3J6yOXIfUX6m77013ZpxHw1bskoXbPcGmCbI1
	zltv9Yxcsm+6seymnCpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCo16-0007BY-N5; Tue, 24 Sep 2019 16:50:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCo0i-0007Am-BJ
 for linux-arm-kernel@lists.infradead.org; Tue, 24 Sep 2019 16:49:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5p3njTKWFRYupYw459OU2KEBGMe4KVPB8kNFlMTX+bc=; b=Pth/OiJMOveJCcFuddDEm0HpW
 4Yh3FrHr8zb6gXGvfKJnx09Z6yIZLxFUFxvLZxhXyJ43W+XdJSPTNF49lQelgnYCVhovfM+5CBXK0
 coDKyxLrfnGpLLi+IStI8D6XraT3hSWV43coFMrvNMKz/DtLfAg6KjVAys1X0f2AeVxU8c652KDLI
 M3BO3+8QY7gMNgeR0nQUa8zb460X1YXJuDx0VK0gpIyXuN0cmjiGNjc59bSn26mUgksRbgJxfhYnz
 +5AacAbswG+2yAq+zxyrjE+5ycvMAVdE2UL9aT9cR8j0aPkdTi3HWcJg0c2BgHOb+rdZfYZJ/Lgp9
 2IBYMkVng==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:43574)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iCo0Q-0002zh-1B; Tue, 24 Sep 2019 17:49:38 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iCo0I-0001QH-GV; Tue, 24 Sep 2019 17:49:30 +0100
Date: Tue, 24 Sep 2019 17:49:30 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Xiaowei Bao <xiaowei.bao@nxp.com>
Subject: Re: [PATCH 4/6] PCI: mobiveil: Add workaround for unsupported
 request error
Message-ID: <20190924164930.GZ25745@shell.armlinux.org.uk>
References: <20190916021742.22844-1-xiaowei.bao@nxp.com>
 <20190916021742.22844-5-xiaowei.bao@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190916021742.22844-5-xiaowei.bao@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_094956_388025_EDC31A3D 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-pci@vger.kernel.org, Zhiqiang.Hou@nxp.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, Minghuan.Lian@nxp.com, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, bhelgaas@google.com,
 andrew.murray@arm.com, kishon@ti.com, shawnguo@kernel.org, mingkai.hu@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Sep 16, 2019 at 10:17:40AM +0800, Xiaowei Bao wrote:
> Errata: unsupported request error on inbound posted write
> transaction, PCIe controller reports advisory error instead
> of uncorrectable error message to RC.
> 
> Signed-off-by: Xiaowei Bao <xiaowei.bao@nxp.com>
> ---
>  drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c | 13 +++++++++++++
>  drivers/pci/controller/mobiveil/pcie-mobiveil.h           |  4 ++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c b/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
> index 7bfec51..5bc9ed7 100644
> --- a/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
> +++ b/drivers/pci/controller/mobiveil/pcie-layerscape-gen4-ep.c
> @@ -49,6 +49,19 @@ static void ls_pcie_g4_ep_init(struct mobiveil_pcie_ep *ep)
>  	struct mobiveil_pcie *mv_pci = to_mobiveil_pcie_from_ep(ep);
>  	int win_idx;
>  	u8 bar;
> +	u32 val;
> +
> +	/*
> +	 * Errata: unsupported request error on inbound posted write
> +	 * transaction, PCIe controller reports advisory error instead
> +	 * of uncorrectable error message to RC.
> +	 * workaround: set the bit20(unsupported_request_Error_severity) with
> +	 * value 1 in uncorrectable_Error_Severity_Register, make the
> +	 * unsupported request error generate the fatal error.
> +	 */
> +	val =  csr_readl(mv_pci, CFG_UNCORRECTABLE_ERROR_SEVERITY);
> +	val |= 1 << UNSUPPORTED_REQUEST_ERROR_SHIFT;

	       BIT(UNSUPPORTED_REQUEST_ERROR_SHIFT) ?

> +	csr_writel(mv_pci, val, CFG_UNCORRECTABLE_ERROR_SEVERITY);
>  
>  	ep->bar_num = PCIE_LX2_BAR_NUM;
>  
> diff --git a/drivers/pci/controller/mobiveil/pcie-mobiveil.h b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> index 7308fa4..a40707e 100644
> --- a/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> +++ b/drivers/pci/controller/mobiveil/pcie-mobiveil.h
> @@ -123,6 +123,10 @@
>  #define GPEX_BAR_SIZE_UDW		0x4DC
>  #define GPEX_BAR_SELECT			0x4E0
>  
> +#define CFG_UNCORRECTABLE_ERROR_SEVERITY	0x10c
> +#define UNSUPPORTED_REQUEST_ERROR_SHIFT		20
> +#define CFG_UNCORRECTABLE_ERROR_MASK		0x108
> +
>  /* starting offset of INTX bits in status register */
>  #define PAB_INTX_START			5
>  
> -- 
> 2.9.5
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
