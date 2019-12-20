Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 026261277DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:17:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sT/IYZ48YMRA5asEJQgzVgZJuAmfVya2GnzzvQHyDmE=; b=HuOmzeNnNuFjLj
	Vat7Wj9rNeDZgn7PiPOUAg+GPF+eApzIPxUcf//7BrIh474BzyceSFbiFu3W0sbAvtqsfgdHMYsHN
	d6rgEZLUFZTO9brZoDsrJgOjihbHkTCl/elUfJJQihPSZcbSDmVseHry+sqjIFFSF2Q7u1DSFbjiY
	3qincalmgrJaoK4X+3nDZMZLFNStOLQ4zWMyWj8PKM+ebpZ2YL15IHCtBmzqboqwG/+HGoBqP9iK0
	5qYYnvVV1muKqrlZuTFe4zE2v84vpYFB51VV8JDXvNYmGNzfqB4oRy/PkI8BJE+CokT5x7Humb1d9
	cCZ8JQoGX/+qLkwjUJ+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEPY-0002MH-AR; Fri, 20 Dec 2019 09:17:28 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEPN-0002LI-V5
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:17:19 +0000
Received: from 79.184.253.1.ipv4.supernova.orange.pl (79.184.253.1) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.320)
 id b0db5a8dbd577916; Fri, 20 Dec 2019 10:17:15 +0100
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Yangtao Li <tiny.windzz@gmail.com>
Subject: Re: [PATCH] cpuidle: clps711x: convert to
 devm_platform_ioremap_resource
Date: Fri, 20 Dec 2019 10:17:15 +0100
Message-ID: <1695381.X16qlkCt6g@kreacher>
In-Reply-To: <20191215130206.30265-1-tiny.windzz@gmail.com>
References: <20191215130206.30265-1-tiny.windzz@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_011718_158031_5E08D5F5 
X-CRM114-Status: GOOD (  10.85  )
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
Cc: linux-kernel@vger.kernel.org, daniel.lezcano@linaro.org,
 linux-arm-kernel@lists.infradead.org, shc_work@mail.ru,
 linux-pm@vger.kernel.org
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

Applied as 5.6 material, thanks!





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
