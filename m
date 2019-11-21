Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55178105775
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 17:50:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMTDifTTU3YPdnOwJ7W6MD7n2JrhzoY1R3e6VMBQgs4=; b=Dn+AmMZrBnpqyN
	9NIBm9/PQQpyublQ8++Gfo09iCQOVrWw4R6v5Yker/Ceuz4MARr4PuZT+gsZmEdPZr2jyRognRK2k
	lnUgFjOx9odfOhta7RNrNNj1Zx0H8bSuUWfUHYgmLwFPB5VwCGxnEpuopmP0NXQOw77f0X83HRn9D
	N1K0bcfFqB27msta36mXc/vY2SA5v9p2K4N24S9ypyO5lD6eD6FAJB/YhE0hnqTGvHuuRYeuQ8Ajt
	RP+/aZqpmoETvoIJtSV2wlr82u11n6fQs1owOgl4fWwN4VGILCHtNc/mnIKuKua6U/lybwn9D3Gf5
	ddvubS0e4YQcXWIY5gog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXpeX-0006HG-Cm; Thu, 21 Nov 2019 16:49:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXpeL-0006Gq-K1
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 16:49:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BA4C7328;
 Thu, 21 Nov 2019 08:49:44 -0800 (PST)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A062D3F52E;
 Thu, 21 Nov 2019 08:49:43 -0800 (PST)
Date: Thu, 21 Nov 2019 16:49:41 +0000
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 1/2] PCI: uniphier: Set mode register to host mode
Message-ID: <20191121164941.GB14229@e121166-lin.cambridge.arm.com>
References: <1573102695-7018-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573102695-7018-1-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_084945_702727_3B2CAA93 
X-CRM114-Status: GOOD (  15.59  )
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
Cc: Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Andrew Murray <andrew.murray@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 01:58:14PM +0900, Kunihiko Hayashi wrote:
> In order to avoid effect of the initial mode depending on SoCs,
> this patch sets the mode register to host(RC) mode.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-uniphier.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)

Applied to pci/uniphier, thanks.

Lorenzo

> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
> index 3f30ee4..8fd7bad 100644
> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
> @@ -33,6 +33,10 @@
>  #define PCL_PIPEMON			0x0044
>  #define PCL_PCLK_ALIVE			BIT(15)
>  
> +#define PCL_MODE			0x8000
> +#define PCL_MODE_REGEN			BIT(8)
> +#define PCL_MODE_REGVAL			BIT(0)
> +
>  #define PCL_APP_READY_CTRL		0x8008
>  #define PCL_APP_LTSSM_ENABLE		BIT(0)
>  
> @@ -85,6 +89,12 @@ static void uniphier_pcie_init_rc(struct uniphier_pcie_priv *priv)
>  {
>  	u32 val;
>  
> +	/* set RC MODE */
> +	val = readl(priv->base + PCL_MODE);
> +	val |= PCL_MODE_REGEN;
> +	val &= ~PCL_MODE_REGVAL;
> +	writel(val, priv->base + PCL_MODE);
> +
>  	/* use auxiliary power detection */
>  	val = readl(priv->base + PCL_APP_PM0);
>  	val |= PCL_SYS_AUX_PWR_DET;
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
