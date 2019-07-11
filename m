Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E667465298
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 09:44:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vZN1O3LjJ5IF5im6mLoAvujmUzUOjtb/T4tCF0Hd7eM=; b=NS+gvvmvKUKpn6H0iBU6LP6i5l
	mywLtEQzHGkx7jec1R6/KY7iKoGMEm2hhBwt3u0rW3f3UXHL0aKneEclA3UlRKRNuHJA44loIWtRn
	mXH/57BiCEmPJ3lcqKo2VC4ZyiBG7CldZyC+Rcpoumj62DKlGtSdsnpHcWpN7iBOKT/F7/IB/MIPf
	KI9V3SWJK1Us00u6EjN+LvzahMdVyaJIIht8ru4gHgU42iqskxX2ZkCWqpGyFPpZwrFDM+y/csT7T
	uSYdySUJ7VV9FnZW/4ZnBlNLrqEss9bcQ0Yr/lnwCQ9wZvFGPFgEJIOX4N9ZcNuCKplaMi7z9L9tT
	2fdZyS+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlTkH-00037I-NL; Thu, 11 Jul 2019 07:44:01 +0000
Received: from guitar.tcltek.co.il ([192.115.133.116] helo=mx.tkos.co.il)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlTk2-00036V-RU
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 07:43:49 +0000
Received: from tarshish (unknown [10.0.8.4])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx.tkos.co.il (Postfix) with ESMTPS id 834F344039B;
 Thu, 11 Jul 2019 10:43:39 +0300 (IDT)
References: <20190711064019.60916-1-yuehaibing@huawei.com>
User-agent: mu4e 1.0; emacs 26.1
From: Baruch Siach <baruch@tkos.co.il>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH] watchdog: digicolor_wdt: remove unused variable 'ret'
In-reply-to: <20190711064019.60916-1-yuehaibing@huawei.com>
Date: Thu, 11 Jul 2019 10:43:39 +0300
Message-ID: <874l3tow2c.fsf@tarshish>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_004347_116044_5B08BF0C 
X-CRM114-Status: GOOD (  10.43  )
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
Cc: linux-watchdog@vger.kernel.org, linux-kernel@vger.kernel.org,
 wsa+renesas@sang-engineering.com, linux@roeck-us.net, wim@linux-watchdog.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi YueHaibing,

On Thu, Jul 11 2019, YueHaibing wrote:
> commit cdad26977e3f ("watchdog: digicolor_wdt: drop
> warning after registering device") left this unused
> variable, it can be removed.
>
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: YueHaibing <yuehaibing@huawei.com>

Third time's a charm:

https://patchwork.kernel.org/patch/11037487/
https://patchwork.kernel.org/patch/11038317/

baruch

>  drivers/watchdog/digicolor_wdt.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/watchdog/digicolor_wdt.c b/drivers/watchdog/digicolor_wdt.c
> index 33cda95..073d378 100644
> --- a/drivers/watchdog/digicolor_wdt.c
> +++ b/drivers/watchdog/digicolor_wdt.c
> @@ -118,7 +118,6 @@ static int dc_wdt_probe(struct platform_device *pdev)
>  {
>  	struct device *dev = &pdev->dev;
>  	struct dc_wdt *wdt;
> -	int ret;
>  
>  	wdt = devm_kzalloc(dev, sizeof(struct dc_wdt), GFP_KERNEL);
>  	if (!wdt)

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
