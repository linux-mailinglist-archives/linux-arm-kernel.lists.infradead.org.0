Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03E7B1A1379
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 20:20:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YUcxgHT8j5pYQzUF/fa7HjJwfJwAfSPVJ8QMLogZJew=; b=WCSB1LozSjf2gz
	eIL9xYhUDx9fm1hoUlAGpG1G10tB/V27UzJVw7nwLJaRjNESgYjtJSx7MZ6TR6sjOafkYCSfhF0wm
	crShu1cEhzU2SRAQRodVSYKmGMnzTcBy61Q9MRmv58hEJ9BJvyV+whn0hsxHH8V7K59xhNzRpWeUJ
	qMgB1wL+MmBzYYxfvCwmvaCu9le06uRwWoSUU02sTI5QIlo+dIDv6tweOADsp1gM5SXIKRDaK4KNR
	GTejoZrqRr4kpwP/Yt8tpp9vI9Q/TrK1YldW5KXzb+Xwf6sZBQMsXv6p5lCwju4qVqnjOVswZLUWx
	9QvL8fHkp42lQX8yDjvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLspl-0005if-N1; Tue, 07 Apr 2020 18:20:25 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLspe-0002lo-PI
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 18:20:20 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id 6FAD8804D5;
 Tue,  7 Apr 2020 20:18:06 +0200 (CEST)
Date: Tue, 7 Apr 2020 20:18:05 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] video: fbdev: don't print error message on
 platform_get_irq() failure
Message-ID: <20200407181805.GC6356@ravnborg.org>
References: <20200406053450.8380-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200406053450.8380-1-tangbin@cmss.chinamobile.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=XpTUx2N9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=R5C9hjxsAAAA:8
 a=X_j5bIVzEBSOzoI8NEYA:9 a=CjuIK1q_8ugA:10 a=KpS7wOGxO9l4JKx0McS0:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_112019_005108_405377F2 
X-CRM114-Status: GOOD (  14.16  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, b.zolnierkie@samsung.com,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 ludovic.desroches@microchip.com, linux-fbdev@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tang Bin

On Mon, Apr 06, 2020 at 01:34:50PM +0800, Tang Bin wrote:
> The platform_get_irq() can print error message,so remove the redundant
> dev_err() here.
> 
> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
>  drivers/video/fbdev/atmel_lcdfb.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/video/fbdev/atmel_lcdfb.c b/drivers/video/fbdev/atmel_lcdfb.c
> index d567f5d56..1e2521925 100644
> --- a/drivers/video/fbdev/atmel_lcdfb.c
> +++ b/drivers/video/fbdev/atmel_lcdfb.c
> @@ -1114,7 +1114,6 @@ static int __init atmel_lcdfb_probe(struct platform_device *pdev)
>  
>  	sinfo->irq_base = platform_get_irq(pdev, 0);
>  	if (sinfo->irq_base < 0) {
> -		dev_err(dev, "unable to get irq\n");
>  		ret = sinfo->irq_base;
>  		goto stop_clk;
>  	}

Thanks, applied to drm-misc-next. The fix will appear in kernel 5.8

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
