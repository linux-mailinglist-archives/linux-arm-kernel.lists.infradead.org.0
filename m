Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53CC48A1C6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 16:59:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkAFjLis2uxU1YH1T/lcg/kLxapMWVtcP2ysiSReJ/E=; b=l8CbHwqOup7y36
	ejNSuV1iWCpUuiqULqKEJFK5QP+JSdD8DbZ3l1vrMHmbBqOGDJMjKwSdTjwW8m2VejQ3+c2rtNyKh
	Z+EyZsZqjJeO3+TBINifXKxTdt4m+Wd0hQwxEjbGXnttsmvOZAfhClN8HznhXOLFjqkdEQQ51bKO1
	mZqjzmtzo4JOqYwja1nCxylH8OEeCU4lUSqQLvMoyLw+Y0OA8wlHmdnw27+lFr/YAi4dTtfH09C+n
	bQhx5F8C6fzszRlvkvkqXnbHQ9XxLVge+RIhdeqJD5+74rKlixipCduh5CZMHiWeZzhDf753knsD/
	pITeoO7vW/JP0pd5rEOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxBnU-0003rD-NQ; Mon, 12 Aug 2019 14:59:44 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBnK-0003qd-0Q
 for linux-arm-kernel@bombadil.infradead.org; Mon, 12 Aug 2019 14:59:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QNpzkg1uPJbCffqVBxWwoKvRb4/zkNtXhYxQCQjxzH0=; b=CC+8UdPfAW2c+kRjH7FggGFem
 BUQnvYXTYPN7Koi2VfaisuUntb3Kty5oQXuDSBgJFR/9IBF7vopKfSbcCzuW9A2EDU5m2GqUsNeDo
 Q9WL0FO/X1clzGh7zwWJOXBKKd2SbpFBP9yyYeO6hCeMA9Bxn7gbybbmBi6X57NTyvjPiJOiv/L7i
 Q9CcXgGYiqprfLI/jCH7dxU9V+m6wLRCodoUWlWgZCsv2vSaY4ys1PG7/JiqjuNu9FVTjwohOxGeh
 jCOWpNC39m+kyxIAluiwJKySCS7OpxeMSa5AAR0ccRfjdfgQ+lo8ASH0U5TtTKIgKcv2jxkTKVKQY
 hgK4YsZcw==;
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxBnZ-0000UN-2t
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 14:59:51 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 11982FF807;
 Mon, 12 Aug 2019 14:58:53 +0000 (UTC)
Date: Mon, 12 Aug 2019 16:58:53 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Subject: Re: [PATCH] usb: gadget: atmel_usba_udc: Mark expected switch
 fall-through
Message-ID: <20190812145853.GP3600@piout.net>
References: <20190805184842.GA8627@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805184842.GA8627@embeddedor>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_155949_147181_B66F1CFD 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.7 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Cristian Birsan <cristian.birsan@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/08/2019 13:48:42-0500, Gustavo A. R. Silva wrote:
> Mark switch cases where we are expecting to fall through.
> 
> This patch fixes the following warning (Building: at91_dt_defconfig arm):
> 
> drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement may fall through [-Wimplicit-fallthrough=]
> 
> Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

> ---
>  drivers/usb/gadget/udc/atmel_usba_udc.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
> index 503d275bc4c4..86ffc8307864 100644
> --- a/drivers/usb/gadget/udc/atmel_usba_udc.c
> +++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
> @@ -327,6 +327,7 @@ static int usba_config_fifo_table(struct usba_udc *udc)
>  	switch (fifo_mode) {
>  	default:
>  		fifo_mode = 0;
> +		/* fall through */
>  	case 0:
>  		udc->fifo_cfg = NULL;
>  		n = 0;
> -- 
> 2.22.0
> 

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
