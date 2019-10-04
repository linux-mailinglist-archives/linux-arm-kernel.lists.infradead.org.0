Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5861CC539
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 23:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/cxcXhn2GmMJsgQve0S7MlVNA+l3T9rugQPqF5GP9wk=; b=A5JZOKNkFbM9dB
	oT/7A4+Sly6NXNakPSP1s82R/grz4z+YPe+1v8gW0VFWLkEhYQllGgj9+Zg9+01ssAJ/3XeDYKZBi
	uzROLhZVnXfLtOckPj2ugF7VyGC6QXgHBqvPnD9ET0U7OVbZ4qUmAlNhyysXJxyvv9xVBRGgLR4Yp
	+p+CXo+OxaWJwqJPxpT1CSHt17zbQmcOmAdYW/r2O4Ratu3YSxvvRTaFJoBhYxRxEnsqcpHuv2HPv
	nwyMherQHR4zXn/J541EYZ4kLHbee0ENNWw23dDKRx8XRzNfZ/g0LTAsIveJRnkAa8SNtWKXX37bu
	1o4xa8x6veroTvmKRlYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGVT1-0004Nu-2J; Fri, 04 Oct 2019 21:50:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGVSs-0004Mq-Ny; Fri, 04 Oct 2019 21:50:20 +0000
Received: from 94.112.246.102.static.b2b.upcbusiness.cz ([94.112.246.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iGVSP-0006tk-DS; Fri, 04 Oct 2019 23:49:49 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 09/15] thermal: rockchip: use
 devm_platform_ioremap_resource() to simplify code
Date: Fri, 04 Oct 2019 23:49:47 +0200
Message-ID: <6308452.QoXZFhLlpT@phil>
In-Reply-To: <20190904122939.23780-10-yuehaibing@huawei.com>
References: <20190904122939.23780-1-yuehaibing@huawei.com>
 <20190904122939.23780-10-yuehaibing@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_145018_931625_DE586394 
X-CRM114-Status: GOOD (  13.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: mans@mansr.com, mmayer@broadcom.com, eric@anholt.net,
 miquel.raynal@bootlin.com, linux-stm32@st-md-mailman.stormreply.com,
 amit.kucheria@verdurent.com, f.fainelli@gmail.com, daniel.lezcano@linaro.org,
 phil@raspberrypi.org, linux-rockchip@lists.infradead.org, agross@kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-msm@vger.kernel.org,
 rui.zhang@intel.com, david.hernandezsanchez@st.com, alexandre.torgue@st.com,
 marc.w.gonzalez@free.fr, rjui@broadcom.com, edubezval@gmail.com,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 gregory.0xf0@gmail.com, matthias.bgg@gmail.com, horms+renesas@verge.net.au,
 talel@amazon.com, linux-arm-kernel@lists.infradead.org, sbranden@broadcom.com,
 wsa+renesas@sang-engineering.com, gregkh@linuxfoundation.org,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, wahrenst@gmx.net,
 mcoquelin.stm32@gmail.com, jun.nie@linaro.org, computersforpeace@gmail.com,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Mittwoch, 4. September 2019, 14:29:33 CEST schrieb YueHaibing:
> Use devm_platform_ioremap_resource() to simplify the code a bit.
> This is detected by coccinelle.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  drivers/thermal/rockchip_thermal.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> 
> diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
> index 343c2f5..044e6eb 100644
> --- a/drivers/thermal/rockchip_thermal.c
> +++ b/drivers/thermal/rockchip_thermal.c
> @@ -1219,7 +1219,6 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
>  	struct device_node *np = pdev->dev.of_node;
>  	struct rockchip_thermal_data *thermal;
>  	const struct of_device_id *match;
> -	struct resource *res;
>  	int irq;
>  	int i;
>  	int error;
> @@ -1245,8 +1244,7 @@ static int rockchip_thermal_probe(struct platform_device *pdev)
>  	if (!thermal->chip)
>  		return -EINVAL;
>  
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	thermal->regs = devm_ioremap_resource(&pdev->dev, res);
> +	thermal->regs = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(thermal->regs))
>  		return PTR_ERR(thermal->regs);
>  
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
