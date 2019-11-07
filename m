Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDFACF2BBA
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QkNgV+aidhHVkj3PaSdXPxzxz4oaBxL9GidImnvGA9g=; b=EllQbVaVvu6jzX
	/TTB88TAOoIP6KYadR+gP89A/4kDNDECQ/aObB4J3Rvp6OzzagGMqv0X88viYU7GJQrdhg3njzWNk
	6QdtQqtkPinbGIoZ+0d/TWl86v4LrgCtTATFsCSNmAE+x1H7zkqmkBGSDKVe8KWzS5lk94G65vByi
	wjbBparAPjLCt4C9ZyastPXCtAja+jbRGQ7zZsv4ZAHKScThf6VZBB+UnRooQABmkt7Ud2yffHqRe
	3rO+M0Pv6LPKGsjJbsW+KiD8NQAZ3rdgwLA5EhM+c4AveYMhNevsIgw3ONCDxiIvH8IilWFNmm6V9
	WPqDtDR7ORI8Oo2C8AjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSecP-0008Am-8X; Thu, 07 Nov 2019 10:02:21 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSecF-0008A8-9d
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:02:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A05B146A;
 Thu,  7 Nov 2019 02:02:10 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0535F3F71A;
 Thu,  7 Nov 2019 02:02:09 -0800 (PST)
Date: Thu, 7 Nov 2019 10:02:08 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 2/2] PCI: uniphier: Add checking whether PERST# is
 deasserted
Message-ID: <20191107100207.GV9723@e119886-lin.cambridge.arm.com>
References: <1573102695-7018-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1573102695-7018-2-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573102695-7018-2-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_020211_382094_1915B7A5 
X-CRM114-Status: GOOD (  19.08  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, Jassi Brar <jaswinder.singh@linaro.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 01:58:15PM +0900, Kunihiko Hayashi wrote:
> When PERST# is asserted once, EP configuration will be initialized.

I don't quite understand this - does the EP/RC mode depend on how often
PERST# is toggled?

> If PERST# has been already deasserted, it isn't necessary to assert
> here.

What is the motativation for this patch? Is it to avoid a delay during
boot, or to fix some bug? Isn't it nice to always reset the IP before
use anyway?

> 
> This checks whether PERST# is deasserted using PCL_PINMON register,
> and adds omit controlling PERST#.

Should this read 'and omits controlling PERST#'?

> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-uniphier.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
> index 8fd7bad..1ea4220 100644
> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
> @@ -22,6 +22,9 @@
>  
>  #include "pcie-designware.h"
>  
> +#define PCL_PINMON			0x0028
> +#define PCL_PINMON_PERST_OUT		BIT(16)
> +
>  #define PCL_PINCTRL0			0x002c
>  #define PCL_PERST_PLDN_REGEN		BIT(12)
>  #define PCL_PERST_NOE_REGEN		BIT(11)
> @@ -100,6 +103,11 @@ static void uniphier_pcie_init_rc(struct uniphier_pcie_priv *priv)
>  	val |= PCL_SYS_AUX_PWR_DET;
>  	writel(val, priv->base + PCL_APP_PM0);
>  
> +	/* return if PERST# is already deasserted */

This comment just describes what the following line does which may be
self-explanatory, perhaps a better comment would describe why we avoid
a reset.

Thanks,

Andrew Murray

> +	val = readl(priv->base + PCL_PINMON);
> +	if (val & PCL_PINMON_PERST_OUT)
> +		return;
> +
>  	/* assert PERST# */
>  	val = readl(priv->base + PCL_PINCTRL0);
>  	val &= ~(PCL_PERST_NOE_REGVAL | PCL_PERST_OUT_REGVAL
> -- 
> 2.7.4
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
