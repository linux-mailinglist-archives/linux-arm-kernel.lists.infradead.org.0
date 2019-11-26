Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65117109DC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 Nov 2019 13:19:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dGlACr7s5gd3mIYp9bpX8zRS11aEBfQfL/JBlRI2yFs=; b=KzM6DGvip6iUj5E5VPmSR5pME
	WRuksHrvPPORKajVah/mhDig8nv0FbsSq+HrGBqLvvGMMoiao8s/L5TlbyB6U7I48noditN+78EFj
	F0T3ESlQShIlae47LSgw3IYiiTBprq2M5sPKhy55GJ/sLTVI9lWGewMFdLjJIEiCXnty6OwoRPzHn
	3etwb4+Q/tkfw6dujKmJ/zFk8Fy7VUgQx3kx40VGA5PNRJaeiBlL9aFfJaVQFDM6TYjk63Cm3Q8pA
	Grqe0orVk5jwy1gnyW6qEnYjOtboqy8YdTAfWCx3N5C8OBGdSeEONZ9caMNAZFsv4ss5U0YM8GZtK
	SHDIhbTPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZZoC-0005fs-Kt; Tue, 26 Nov 2019 12:19:08 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZnq-000568-4W; Tue, 26 Nov 2019 12:18:48 +0000
Received: by mail-ot1-x344.google.com with SMTP id 23so13925242otf.2;
 Tue, 26 Nov 2019 04:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=GPjIoPKAdBU2rhij0XkCzvo+ahx+quTsSMqV7wK7Go4=;
 b=kXH19YTYWBb/zAuzTG2D+tFgg9MZ74NGM3I9FEiCDfBIv4BipMdk0YtT7FQh0nx5du
 5PsAvauJPiHo77O5deZ5/3NbsAg0+Gdmezpq8R3AStdJGmuATFgOVZok7YMKr9sqs8bm
 HXUzJ+zkd2cmITUiWpjDt4aoRMoDG4XqMfmhVeppEEFlKLejOy8ykHb+qo0LUaA7+U1s
 M+CvJ/EWC9H+Teu1OtUwbORx5axg9qB3wN8xa2iq7JvgnMsGc/itO705yS1BuWj/YNDJ
 OhokstKZZ0/DL6vn1/DLgvxJ0tVhmUCiFP8sb881PmusrfoU0XCHQQcFCCDncHkUSvLB
 UDxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=GPjIoPKAdBU2rhij0XkCzvo+ahx+quTsSMqV7wK7Go4=;
 b=ngXEKZ+cYlR6WRwoeUwMEKH0uM3EuX+1cDXGp3IvimnLQlcf8besZfwWm24iTkk4V2
 fRt1icwjvyB4um+z/Xi4QYTNH/3HxvX688GDCt2B1asdSFjr5boquMf47l/ELWnVyL7S
 h33FkIB1hnLKTrfERdTMza5r47KxpGKf6zQraXrO08qszvBKl3pyyCATAGKEoagFYwMe
 Mi5GViV3orZ8b/JhPZh8R86ZeB0df7ZZrBQvJyL3K/7GIPizYapJXQVqsbIGbgMBaCg7
 l1Snpbm5+g+/ZjK+GHu9zOFbVv8GzkaKfR9ZIILvrEuMnxSu9VRNQz1ziH6xi93QBvqW
 N30A==
X-Gm-Message-State: APjAAAUWpuAlCo0EItHD75i3KXrBga+o/dUxkIxw1xRr7ocHbU1DCI7I
 x9uWj2hfzTX+Kl0hLlvoVCw=
X-Google-Smtp-Source: APXvYqz/ELJmUcs3pP92+oVmdlJk7E+Dzm6ctuvIFTGCxQmgLgtcI9qH8dxQ7s2bJR6TaZ355x0psQ==
X-Received: by 2002:a9d:470f:: with SMTP id a15mr24541053otf.290.1574770724780; 
 Tue, 26 Nov 2019 04:18:44 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id
 j8sm3567921otj.42.2019.11.26.04.18.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 26 Nov 2019 04:18:43 -0800 (PST)
Subject: Re: [PATCH v1 2/4] watchdog: populate reboot mode node in toprgu node
 of MTK RGU (Reset Generation Unit)
To: freddy.hsin@mediatek.com, sre@kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, wim@linux-watchdog.org,
 matthias.bgg@gmail.com, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org
References: <1574746490-625-1-git-send-email-freddy.hsin@mediatek.com>
 <1574746490-625-3-git-send-email-freddy.hsin@mediatek.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <ca66e52e-df80-388e-3018-7bf35aef5f43@roeck-us.net>
Date: Tue, 26 Nov 2019 04:18:41 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1574746490-625-3-git-send-email-freddy.hsin@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_041846_187465_E37B62BC 
X-CRM114-Status: GOOD (  16.96  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Chang-An.Chen@mediatek.com, wsd_upstream@mediatek.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/25/19 9:34 PM, freddy.hsin@mediatek.com wrote:
> From: Freddy Hsin <freddy.hsin@mediatek.com>
> 
> of_platform_population should be added in the probe function of
> toprgu driver, or the reboot mode driver will not be probed
> 
> Signed-off-by: Freddy Hsin <freddy.hsin@mediatek.com>
> ---
>   drivers/watchdog/mtk_wdt.c |    3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/watchdog/mtk_wdt.c b/drivers/watchdog/mtk_wdt.c
> index 9c3d003..2fb2614 100644
> --- a/drivers/watchdog/mtk_wdt.c
> +++ b/drivers/watchdog/mtk_wdt.c
> @@ -20,6 +20,7 @@
>   #include <linux/types.h>
>   #include <linux/watchdog.h>
>   #include <linux/delay.h>
> +#include <linux/of_platform.h>
>   
>   #define WDT_MAX_TIMEOUT		31
>   #define WDT_MIN_TIMEOUT		1
> @@ -167,6 +168,8 @@ static int mtk_wdt_probe(struct platform_device *pdev)
>   	if (IS_ERR(mtk_wdt->wdt_base))
>   		return PTR_ERR(mtk_wdt->wdt_base);
>   
> +	of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
> +

This seems just wrong. Such a driver should not be a child of the watchdog driver.

Guenter

>   	mtk_wdt->wdt_dev.info = &mtk_wdt_info;
>   	mtk_wdt->wdt_dev.ops = &mtk_wdt_ops;
>   	mtk_wdt->wdt_dev.timeout = WDT_MAX_TIMEOUT;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
