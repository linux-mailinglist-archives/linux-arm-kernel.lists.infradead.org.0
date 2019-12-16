Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BEF311203AA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 12:21:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95FVxvtIkWu3UqVmuFW+W6cHtQLTJUp+zFFYqlcj4t8=; b=EohEdHq5mWANjg
	gc/R4d0V31IoPR+AJqYDN9lNAWsjHyEkMHK9NtK7S21s8LCzgQMiciO4d6zNHr0rIlRPUtrXQzq3V
	AdCOdsr/Cmabs0iKMLegWvmKWjylpAofPmzVAp/HXd6r6blLMFDfb4tSOC9YW0qUrpm6qX/UFA4+A
	lXaFNzysVeF4zm0Ihh6gzDwP2eXvfEF4lGnPkiD3xsw+bEHPTmE7el/XSmgmFDalLlwrA9G1jJkIG
	dkvCGmqkhdg2x+3DHp7TWwgRhUiYY30MZ4k6t/BcIfxseVJZkyOAniW/dBj3NzJdMhShffzsyXj5D
	aKICRF8Zgk+1eUHXUVhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igoRf-0006Lc-Cb; Mon, 16 Dec 2019 11:21:47 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igoQt-0005qe-Dc
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 11:21:01 +0000
Received: from 79.184.253.1.ipv4.supernova.orange.pl (79.184.253.1) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.320)
 id 8f1ea1b690dcc29b; Mon, 16 Dec 2019 12:20:50 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Yangtao Li <tiny.windzz@gmail.com>, daniel.lezcano@linaro.org
Subject: Re: [PATCH] cpuidle: clps711x: convert to
 devm_platform_ioremap_resource
Date: Mon, 16 Dec 2019 12:20:50 +0100
Message-ID: <5309821.Xs2qqjuCkx@kreacher>
In-Reply-To: <20191215130206.30265-1-tiny.windzz@gmail.com>
References: <20191215130206.30265-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_032059_643416_736F78D3 
X-CRM114-Status: GOOD (  11.37  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 shc_work@mail.ru, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sunday, December 15, 2019 2:02:05 PM CET Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
> 
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---
>  drivers/cpuidle/cpuidle-clps711x.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/cpuidle/cpuidle-clps711x.c b/drivers/cpuidle/cpuidle-clps711x.c
> index 6e36740f5719..fc22c59b6c73 100644
> --- a/drivers/cpuidle/cpuidle-clps711x.c
> +++ b/drivers/cpuidle/cpuidle-clps711x.c
> @@ -37,10 +37,7 @@ static struct cpuidle_driver clps711x_idle_driver = {
>  
>  static int __init clps711x_cpuidle_probe(struct platform_device *pdev)
>  {
> -	struct resource *res;
> -
> -	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	clps711x_halt = devm_ioremap_resource(&pdev->dev, res);
> +	clps711x_halt = devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(clps711x_halt))
>  		return PTR_ERR(clps711x_halt);
>  
> 

Daniel, any concerns here?




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
