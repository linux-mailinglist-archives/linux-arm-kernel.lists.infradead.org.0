Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3283D112570
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 09:41:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XPPS7aaEjPYHx+zNNKYciZlIPymNicaddmJkB7+ZpSw=; b=o0fTsfGlQIwCbQ
	vQMq3EGIS/NBtNwO4W1GktOyXwRpWqaIuQSk/kQ4zO+fB4IqaNoTtTV5O0WnrF5E2sgDMakgQGt0i
	jAEiagwpq/FqOEZ1a6LelKqtYs4sHgm1hOEfvt8Y9wto8vVcIctmUzR0rM0/otjwmNn5SFSa8V8AH
	Imq+a65KJN8ZTpgsCW89qx19YocYLS7/LBvKvJwE6ZheiKDsqgxYt5++Hane8vBhb4finQthnxMlB
	OQlFqIDE0vS25svr3MhNjneI11gWosZptJxUnv5jGpnBMcnC94PSX1IBBzjN61Wm12UFhk1dhMaTJ
	sNq/VyTulx1iwoQouldg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQDS-0004Bd-EM; Wed, 04 Dec 2019 08:40:58 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQDK-0004AU-MO; Wed, 04 Dec 2019 08:40:52 +0000
Received: from localhost (lfbn-1-1480-129.w90-65.abo.wanadoo.fr
 [90.65.102.129])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 7C3FD200016;
 Wed,  4 Dec 2019 08:40:36 +0000 (UTC)
Date: Wed, 4 Dec 2019 09:40:36 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Mao Wenan <maowenan@huawei.com>
Subject: Re: [PATCH v2 -next] rtc: mt6397: drop free_irq of devm_xx allocated
 irq
Message-ID: <20191204084036.GK909634@piout.net>
References: <20191204063444.GF1765@kadam>
 <20191204072826.117432-1-maowenan@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191204072826.117432-1-maowenan@huawei.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_004050_869645_8996B611 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 -0.1 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.178.232 listed in wl.mailspike.net]
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
Cc: linux-rtc@vger.kernel.org, a.zummo@towertech.it, sean.wang@mediatek.com,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Hulk Robot <hulkci@huawei.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, matthias.bgg@gmail.com,
 eddie.huang@mediatek.com, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04/12/2019 15:28:26+0800, Mao Wenan wrote:
> rtc->irq is requested by devm_request_threaded_irq,
> and request_threaded_irq. IRQs requested with this
> function will be automatically freed on driver detach.
> This patch remove unused error label as well.
> 
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Mao Wenan <maowenan@huawei.com>
> ---
>  v2: remove error label as Dan Carpenter suggest.
>  drivers/rtc/rtc-mt6397.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
> index 5249fc99fd5f..14f3c4915260 100644
> --- a/drivers/rtc/rtc-mt6397.c
> +++ b/drivers/rtc/rtc-mt6397.c
> @@ -287,13 +287,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
>  	rtc->rtc_dev->ops = &mtk_rtc_ops;
>  
>  	ret = rtc_register_device(rtc->rtc_dev);
> -	if (ret)
> -		goto out_free_irq;
> -
> -	return 0;
> -
> -out_free_irq:
> -	free_irq(rtc->irq, rtc);
>  	return ret;

Maybe return rtc_register_device(rtc->rtc_dev); 

>  }
>  
> -- 
> 2.20.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
