Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FB6AF2B78
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 10:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnDPtawiy1YqBOZynTYkpuwvlkHzVplWF4XW9uxOaH0=; b=m1XnOdL4ikuZ5e
	8JTjIdjtlegRRiIy9wlHIFMTS0ErQ8lzqztDCFvbVlGcZ67jzz3zSOGi8FjfDt0fPYDzL6KTJb/69
	wEhP7Tmyn5HPLwQiGoCTDrMtZeycrsS8oM9yljVSMNaYDw2KZ0vhkbQbOhE29jw0wd6HROTj4rWq8
	k6FSSTRvlyG5hlHubRhdcOjfv52D4e85FfYb2rVQgkNa2BPvKnlA5QaZIeCbLDE4BV5LLKsSEyINL
	Ofo1gZ5VL9p0xUOHuuTZqIoPXHBCagqyEeAFGOaXTLoYFZBsC4CIUM9qa37c2RcHhnB3j/dHLLGb7
	tky9w9YoWFzOhLjUwF0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSeTU-0002Um-Vy; Thu, 07 Nov 2019 09:53:08 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSeTO-0002TV-3n
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 09:53:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D10846A;
 Thu,  7 Nov 2019 01:52:57 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D62023F71A;
 Thu,  7 Nov 2019 01:52:56 -0800 (PST)
Date: Thu, 7 Nov 2019 09:52:54 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: Re: [PATCH 1/2] PCI: uniphier: Set mode register to host mode
Message-ID: <20191107095254.GU9723@e119886-lin.cambridge.arm.com>
References: <1573102695-7018-1-git-send-email-hayashi.kunihiko@socionext.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573102695-7018-1-git-send-email-hayashi.kunihiko@socionext.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_015302_197562_E9BACAB8 
X-CRM114-Status: GOOD (  16.26  )
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

On Thu, Nov 07, 2019 at 01:58:14PM +0900, Kunihiko Hayashi wrote:
> In order to avoid effect of the initial mode depending on SoCs,
> this patch sets the mode register to host(RC) mode.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  drivers/pci/controller/dwc/pcie-uniphier.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
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

Reviewed-by: Andrew Murray <andrew.murray@arm.com>

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
