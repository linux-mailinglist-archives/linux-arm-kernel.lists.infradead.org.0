Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5E00470FC
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 15 Jun 2019 17:41:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fo0hqzWq9cpeAFn+7fNQfsCRCHU9NFWles9Iku8VIu8=; b=JsZ2qiH8Ts4Lr0
	ScxwWihvn1NtCfC17OWvjrdEz3qZfdpg0pdZlKu9SElM2Hm+Njc5Hf65UdJ0Y5mf/kKVzRsbiByJb
	s4QCX8YFm7cDQZqov/D+Os08topAgudZrs7791sb5bf3vuEsZFiJWcm+khkah/3kX7XGqFTSE3S34
	qi6rMss6OlQ0g4q2Mr/jxo8Of92D7f394vMKDrxT7yu2WhLqb8wyZdvilK7o3Pa3C5z+21tYvlV1M
	DlQ3Jjq4sY0a7iH6Cj+Lsb+E2cJcoa6hcbyvN0krRYWAt+GNcO+rPGUv9fUkc1CeBD5aAhzIK3Ad4
	3BFueAapKxnAF6hN4/PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcAoB-0003qn-Jw; Sat, 15 Jun 2019 15:41:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcAnp-0003qB-MI
 for linux-arm-kernel@lists.infradead.org; Sat, 15 Jun 2019 15:41:15 +0000
Received: from ip5f5a6320.dynamic.kabel-deutschland.de ([95.90.99.32]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hcAnn-0002or-84; Sat, 15 Jun 2019 17:41:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Kefeng Wang <wangkefeng.wang@huawei.com>
Subject: Re: [PATCH v2] pwm: rockchip: Use of_clk_get_parent_count()
Date: Sat, 15 Jun 2019 17:41:10 +0200
Message-ID: <5458953.i9kcuLIT7L@diego>
In-Reply-To: <20190527135509.184544-1-wangkefeng.wang@huawei.com>
References: <20190525115941.108309-1-wangkefeng.wang@huawei.com>
 <20190527135509.184544-1-wangkefeng.wang@huawei.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190615_084113_875421_92190600 
X-CRM114-Status: GOOD (  13.24  )
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
Cc: Thierry Reding <thierry.reding@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Montag, 27. Mai 2019, 15:55:09 CEST schrieb Kefeng Wang:
> Use of_clk_get_parent_count() instead of open coding.
> 
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Kefeng Wang <wangkefeng.wang@huawei.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
> v2:
> - add include <linux/of_clk.h>
>  drivers/pwm/pwm-rockchip.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/pwm/pwm-rockchip.c b/drivers/pwm/pwm-rockchip.c
> index 4d99d468df09..d8f23daca290 100644
> --- a/drivers/pwm/pwm-rockchip.c
> +++ b/drivers/pwm/pwm-rockchip.c
> @@ -13,6 +13,7 @@
>  #include <linux/io.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/of_clk.h>
>  #include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/pwm.h>
> @@ -329,8 +330,8 @@ static int rockchip_pwm_probe(struct platform_device *pdev)
>  		}
>  	}
>  
> -	count = of_count_phandle_with_args(pdev->dev.of_node,
> -					   "clocks", "#clock-cells");
> +	count = of_clk_get_parent_count(pdev->dev.of_node);
> +
>  	if (count == 2)
>  		pc->pclk = devm_clk_get(&pdev->dev, "pclk");
>  	else
> 





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
