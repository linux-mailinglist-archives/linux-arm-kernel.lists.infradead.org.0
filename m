Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ECF0DADA2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 14:58:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OBbWP/RV9QnVOmgln9IQoyqXZi+UX8UF6pHTQUoMnFU=; b=Xj6qaBrCLMSrNB
	Bw1DnapBHRUm6jdhwjvMZFOpM0iiHbyiwqgfmQ6FXaxKCtPb0SsL7a+/3GZPDy+shnb28C0wrEhaU
	tDGUgg62U2UhgqytYeqaE7xFR0iPq8mEKNuyP90IX9+pfFsjWYA5e89soIlvf8BoCiY/X/m6487dU
	VWJQQVw+aaY0mvt4mXQAF0Yov+a5EEVSx0zvJj3sekMXHxbXWGRQE5gxvycjqoXFtWGmHl2yKSBCk
	Rng6wuSThJgpi5MAt4kDgGlzYtXuYE5Ec5zlpLrpLCxIGmo0RI8zA8zir5BxTWVJmEDdEjwbtUQVi
	Lc9sVm7/eaV6xqsGpFIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL5MZ-0007Ei-Lr; Thu, 17 Oct 2019 12:58:43 +0000
Received: from bastet.se.axis.com ([195.60.68.11])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL5Fu-0008NT-OB
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 12:51:52 +0000
Received: from localhost (localhost [127.0.0.1])
 by bastet.se.axis.com (Postfix) with ESMTP id AEC73184A3;
 Thu, 17 Oct 2019 14:51:46 +0200 (CEST)
X-Axis-User: NO
X-Axis-NonUser: YES
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
 by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new, port 10024)
 with LMTP id ORlrqU7P1kMl; Thu, 17 Oct 2019 14:51:45 +0200 (CEST)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
 by bastet.se.axis.com (Postfix) with ESMTPS id E39721816A;
 Thu, 17 Oct 2019 14:51:43 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id C696B1E075;
 Thu, 17 Oct 2019 14:51:43 +0200 (CEST)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id B191E1E074;
 Thu, 17 Oct 2019 14:51:43 +0200 (CEST)
Received: from thoth.se.axis.com (unknown [10.0.2.173])
 by boulder03.se.axis.com (Postfix) with ESMTP;
 Thu, 17 Oct 2019 14:51:43 +0200 (CEST)
Received: from lnxjespern3.se.axis.com (lnxjespern3.se.axis.com [10.88.4.8])
 by thoth.se.axis.com (Postfix) with ESMTP id 97D0F2F9F;
 Thu, 17 Oct 2019 14:51:43 +0200 (CEST)
Received: by lnxjespern3.se.axis.com (Postfix, from userid 363)
 id 92A7C800E1; Thu, 17 Oct 2019 14:51:43 +0200 (CEST)
Date: Thu, 17 Oct 2019 14:51:43 +0200
From: Jesper Nilsson <jesper.nilsson@axis.com>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 27/30] pinctrl: artpec6: use
 devm_platform_ioremap_resource() to simplify code
Message-ID: <20191017125143.yxhwy6lvzfhle7ey@axis.com>
References: <20191017122640.22976-1-yuehaibing@huawei.com>
 <20191017122640.22976-28-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017122640.22976-28-yuehaibing@huawei.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-TM-AS-GCONF: 00
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_055151_126808_48AD6DF7 
X-CRM114-Status: GOOD (  14.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [195.60.68.11 listed in list.dnswl.org]
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
Cc: "alexandre.belloni@bootlin.com" <alexandre.belloni@bootlin.com>,
 "geert+renesas@glider.be" <geert+renesas@glider.be>,
 "narmstrong@baylibre.com" <narmstrong@baylibre.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "baruch@tkos.co.il" <baruch@tkos.co.il>,
 "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>, "wens@csie.org" <wens@csie.org>,
 linux-arm-kernel <linux-arm-kernel@axis.com>,
 "jonathanh@nvidia.com" <jonathanh@nvidia.com>,
 "ludovic.desroches@microchip.com" <ludovic.desroches@microchip.com>,
 "agross@kernel.org" <agross@kernel.org>,
 "bcm-kernel-feedback-list@broadcom.com"
 <bcm-kernel-feedback-list@broadcom.com>,
 "rjui@broadcom.com" <rjui@broadcom.com>,
 "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
 "haojian.zhuang@gmail.com" <haojian.zhuang@gmail.com>,
 "vz@mleia.com" <vz@mleia.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Lars Persson <larper@axis.com>,
 "linux-tegra@vger.kernel.org" <linux-tegra@vger.kernel.org>,
 Jesper Nilsson <jespern@axis.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sbranden@broadcom.com" <sbranden@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>,
 "linux-oxnas@groups.io" <linux-oxnas@groups.io>,
 "afaerber@suse.de" <afaerber@suse.de>, "daniel@zonque.org" <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 02:26:37PM +0200, YueHaibing wrote:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Acked-by: Jesper Nilsson <jesper.nilsson@axis.com>

> ---
>  drivers/pinctrl/pinctrl-artpec6.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/pinctrl/pinctrl-artpec6.c b/drivers/pinctrl/pinctrl-artpec6.c
> index e3239cf..986e04a 100644
> --- a/drivers/pinctrl/pinctrl-artpec6.c
> +++ b/drivers/pinctrl/pinctrl-artpec6.c
> @@ -936,7 +936,6 @@ static void artpec6_pmx_reset(struct artpec6_pmx *pmx)
>  static int artpec6_pmx_probe(struct platform_device *pdev)
>  {
>  	struct artpec6_pmx *pmx;
> -	struct resource *res;
>  
>  	pmx = devm_kzalloc(&pdev->dev, sizeof(*pmx), GFP_KERNEL);
>  	if (!pmx)
> @@ -944,8 +943,7 @@ static int artpec6_pmx_probe(struct platform_device *pdev)
>  
>  	pmx->dev = &pdev->dev;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	pmx->base = devm_ioremap_resource(&pdev->dev, res);
> +	pmx->base = devm_platform_ioremap_resource(pdev, 0);
>  
>  	if (IS_ERR(pmx->base))
>  		return PTR_ERR(pmx->base);
> -- 
> 2.7.4
> 
> 

/^JN - Jesper Nilsson
-- 
               Jesper Nilsson -- jesper.nilsson@axis.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
