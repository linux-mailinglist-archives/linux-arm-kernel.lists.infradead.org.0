Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E9C163061
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 20:41:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bQ8bX/KNzZSm90s0yGs7MABDC4fytZW69oHFJ7UvlXM=; b=i553v9KJ47Bpps
	YbqyblGkKTmY1XPRwScMwTxPz7YPyETO6XbjjRBjqZ/DYahzPuM/XBEVe2eyS1H3cK9pKN8dgw6Rf
	u34w+4DcmQjQCPZl0D2xC8RKq4aeiynVSLE2KVyrdeJF0n+M+2xGQ2gx1hVkrvxmWoQlLLpUzrm5L
	RBuql6pVI8QM9+Sl2/svNB1mYdOLw34ilG7FqRjXK8vj/sdwi7k8myTEv2dzRYfqgxEuknZd2U+fD
	pplyTMhv4nb/QGC9Omay9feLyiv7hjN1352ls6mF+hlY0urWj72eQoPzryKX1IJqa9oEduAnXONo3
	VmanbS/cH6SvYXf3ZqtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j48kT-0007W8-W5; Tue, 18 Feb 2020 19:41:38 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j48k8-0007IO-0A
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 19:41:18 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id A034EE0005;
 Tue, 18 Feb 2020 19:41:02 +0000 (UTC)
Date: Tue, 18 Feb 2020 20:41:02 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Corentin Labbe <clabbe@baylibre.com>
Subject: Re: [PATCH 09/20] usb: gadget: lpc32xx_udc: remove useless cast for
 driver.name
Message-ID: <20200218194102.GE3385@piout.net>
References: <1582054383-35760-1-git-send-email-clabbe@baylibre.com>
 <1582054383-35760-10-git-send-email-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1582054383-35760-10-git-send-email-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_114116_208495_EB1F7A9A 
X-CRM114-Status: GOOD (  13.20  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: balbi@kernel.org, linux-kernel@vger.kernel.org, mathias.nyman@intel.com,
 gregkh@linuxfoundation.org, linux-usb@vger.kernel.org, vz@mleia.com,
 ludovic.desroches@microchip.com, stern@rowland.harvard.edu,
 slemieux.tyco@gmail.com, b-liu@ti.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/02/2020 19:32:52+0000, Corentin Labbe wrote:
> device_driver name is const char pointer, so it not useful to cast
> driver_name (which is already const char).
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/usb/gadget/udc/lpc32xx_udc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
> index d14b2bb3f67c..cb997b82c008 100644
> --- a/drivers/usb/gadget/udc/lpc32xx_udc.c
> +++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
> @@ -3267,7 +3267,7 @@ static struct platform_driver lpc32xx_udc_driver = {
>  	.suspend	= lpc32xx_udc_suspend,
>  	.resume		= lpc32xx_udc_resume,
>  	.driver		= {
> -		.name	= (char *) driver_name,
> +		.name	= driver_name,
>  		.of_match_table = of_match_ptr(lpc32xx_udc_of_match),
>  	},
>  };
> -- 
> 2.24.1
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
