Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31A3D19C09B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 13:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PsPGpIDEfEIErJnnDQXlh3OPmeO3RCZ6+ie2Et3y0dM=; b=QbgTCeqXjiskkj
	db2gKZn2AhLJjHsDx3HLhjlZ0+YcdXCiuQu4OMc9pCDveBSt32oNFvMcHKAOtr4PtLlenq3LJxhLf
	7mumWGPJL+b5lyqXh1sM7wbH0fYh3hFT6NtHqA4bVWu1v8F9ixQIAbuSeiHwp599P1hfoxkwrCDAY
	gYHqlIZUusiIFU+kYf/PQSOcwixXE5AWqoLBsa+8SBHGJTtzK3Su0acRT6nfFqMKm8LRvBpDDEpnE
	E1bXlZOwfcYHKeUkA9IxJC2ySwh/AdCY3swx6T5l9Olv9jZZ+7sYvplNvvKOiuUL8fkXl2RvPUAMf
	jAJS+SaarMlNlSixc24Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJyV9-0003zV-RR; Thu, 02 Apr 2020 11:59:15 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJyUs-0003sW-Pd
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 11:59:00 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id AE629C0007;
 Thu,  2 Apr 2020 11:58:51 +0000 (UTC)
Date: Thu, 2 Apr 2020 13:58:51 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] ALSA:atmel:Use platform_get_irq_optional()
Message-ID: <20200402115851.GG3683@piout.net>
References: <20200402112135.18604-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402112135.18604-1-tangbin@cmss.chinamobile.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_045858_962202_A7C5159C 
X-CRM114-Status: GOOD (  14.64  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org, tiwai@suse.com,
 ludovic.desroches@microchip.com, perex@perex.cz,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02/04/2020 19:21:35+0800, Tang Bin wrote:
> In order to simply code,because platform_get_irq() already has
> dev_err() message.
> 

But what I see is a dev_dbg message so your patch actually changes the
behaviour when debugging is not enabled.

> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
>  sound/atmel/ac97c.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/atmel/ac97c.c b/sound/atmel/ac97c.c
> index a1dce9725..25cfd5710 100644
> --- a/sound/atmel/ac97c.c
> +++ b/sound/atmel/ac97c.c
> @@ -715,7 +715,7 @@ static int atmel_ac97c_probe(struct platform_device *pdev)
>  		return -ENXIO;
>  	}
>  
> -	irq = platform_get_irq(pdev, 0);
> +	irq = platform_get_irq_optional(pdev, 0);
>  	if (irq < 0) {
>  		dev_dbg(&pdev->dev, "could not get irq: %d\n", irq);
>  		return irq;
> -- 
> 2.20.1.windows.1
> 
> 
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
