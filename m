Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8321212CE23
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Dec 2019 10:14:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4+M1SkCEmqvCkuCHl6wi5L4AmmRuLNmaRTRoF3eWtM8=; b=GB7S6DJCAuGxXWfM5gncccnO3
	0lkAb+WzsedzH+EZeGK9gtOpA6S4breIzkY/W2tIUq9j6AGLyIQxYeRJfJvH71MEfymiZZ3a3o2Io
	h9FRKk/XkfHAXF2OEWeLqjck3lQvsU2YcwlQhSOmOm4wKC1wtormRu2Fu2zH3BJxw60KVXzZN1szP
	GMTO+WXTbIUy7bXtw0dCxl1VWByKRM1gsohdv5dpOYgwJrDGgUFJsUYULy3HOKDodnPlnBG6R8BJU
	xMAwqKcrkIfyTgR6g3fqIw33twtltgIww62hJL4vq0ATd6zwe1UKW4XnaCSZczEXPSdtus2YMEFBj
	xvNoS9rbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilr8K-0007Qh-GC; Mon, 30 Dec 2019 09:14:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilr7b-0006zy-Qw; Mon, 30 Dec 2019 09:13:57 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 745A8328;
 Mon, 30 Dec 2019 01:13:52 -0800 (PST)
Received: from [10.37.12.68] (unknown [10.37.12.68])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id F31233F703;
 Mon, 30 Dec 2019 01:13:45 -0800 (PST)
Subject: Re: [PATCH 7/9] memory: samsung: exynos5422-dmc: convert to
 devm_platform_ioremap_resource
To: Yangtao Li <tiny.windzz@gmail.com>, ssantosh@kernel.org,
 paul@crapouillou.net, matthias.bgg@gmail.com, rogerq@ti.com,
 tony@atomide.com, kgene@kernel.org, krzk@kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, allison@lohutok.net,
 tglx@linutronix.de, yong.wu@mediatek.com, jroedel@suse.de,
 evgreen@chromium.org, rfontana@redhat.com, digetx@gmail.com,
 pdeschrijver@nvidia.com, john@phrozen.org, alexios.zavras@intel.com,
 sboyd@kernel.org, kstewart@linuxfoundation.org, info@metux.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-omap@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-tegra@vger.kernel.org
References: <20191222185034.4665-1-tiny.windzz@gmail.com>
 <20191222185034.4665-7-tiny.windzz@gmail.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <a331ae9c-ee2c-6c5e-3a61-a50c172359aa@arm.com>
Date: Mon, 30 Dec 2019 09:13:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191222185034.4665-7-tiny.windzz@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191230_011356_188879_818D8E01 
X-CRM114-Status: GOOD (  14.18  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 12/22/19 6:50 PM, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>   drivers/memory/samsung/exynos5422-dmc.c | 7 ++-----
>   1 file changed, 2 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/memory/samsung/exynos5422-dmc.c b/drivers/memory/samsung/exynos5422-dmc.c
> index 47dbf6d1789f..81a1b1d01683 100644
> --- a/drivers/memory/samsung/exynos5422-dmc.c
> +++ b/drivers/memory/samsung/exynos5422-dmc.c
> @@ -1374,7 +1374,6 @@ static int exynos5_dmc_probe(struct platform_device *pdev)
>   	struct device *dev = &pdev->dev;
>   	struct device_node *np = dev->of_node;
>   	struct exynos5_dmc *dmc;
> -	struct resource *res;
>   	int irq[2];
>   
>   	dmc = devm_kzalloc(dev, sizeof(*dmc), GFP_KERNEL);
> @@ -1386,13 +1385,11 @@ static int exynos5_dmc_probe(struct platform_device *pdev)
>   	dmc->dev = dev;
>   	platform_set_drvdata(pdev, dmc);
>   
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	dmc->base_drexi0 = devm_ioremap_resource(dev, res);
> +	dmc->base_drexi0 = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(dmc->base_drexi0))
>   		return PTR_ERR(dmc->base_drexi0);
>   
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> -	dmc->base_drexi1 = devm_ioremap_resource(dev, res);
> +	dmc->base_drexi1 = devm_platform_ioremap_resource(pdev, 1);
>   	if (IS_ERR(dmc->base_drexi1))
>   		return PTR_ERR(dmc->base_drexi1);
>   
> 

Acked-by: Lukasz Luba <lukasz.luba@arm.com>

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
