Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B9F1A6EE5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 00:09:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHtdY/uU6i8Ze3Ky+chRHv85Xt2HAvDXIxdFd3++sFc=; b=BXXxpzeokbO7jL
	O1YJdGaYkB66/rpcPQWXJ1mAgDRexq5KdRBxTH9mBu3lK4s4TzjqOEPWR0wJ5F0LMu8w503iGgoS2
	ELyxwLrMcWz80EVfrqilx3RnUFkjfrGtJflkaAdCkaTiBy2SDNHhChO2HIi8d/QdUeSBRRhRkxzpg
	J/6O2RBrDUBjAKkQ9Rrw7OC7MXmm/HCL80Dz780WebbhKdC19e+Rg7KMWO+Afy/cSF/4sqLVjVHvn
	j4OK08NfiCe8+2pulXMkybOj8r7IdAOefK+6Ak1vADBS3tc6oA7gHizYSPOtqs4KL6/WkowCCHjeX
	xJO4eX1o0iF2efn41AvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jO7G7-0008SC-S3; Mon, 13 Apr 2020 22:08:51 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jO7G0-0008Ri-Ri
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Apr 2020 22:08:46 +0000
X-Originating-IP: 86.202.105.35
Received: from localhost (lfbn-lyo-1-9-35.w86-202.abo.wanadoo.fr
 [86.202.105.35])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 8F425C0005;
 Mon, 13 Apr 2020 22:08:32 +0000 (UTC)
Date: Tue, 14 Apr 2020 00:08:32 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Diego Elio =?iso-8859-1?Q?Petten=F2?= <flameeyes@flameeyes.com>
Subject: Re: [PATCH 1/4] at76c50x-usb: update dead links.
Message-ID: <20200413220832.GA34509@piout.net>
References: <20200413170031.13104-1-flameeyes@flameeyes.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200413170031.13104-1-flameeyes@flameeyes.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_150845_030377_3AAC052E 
X-CRM114-Status: GOOD (  15.26  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/04/2020 18:00:31+0100, Diego Elio Petten=F2 wrote:
> Update wiki TODO link, and point at an actually-existing page for the
> firmware download.
> =

> Signed-off-by: Diego Elio Petten=F2 <flameeyes@flameeyes.com>
> ---
>  drivers/net/wireless/atmel/at76c50x-usb.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> =

> diff --git a/drivers/net/wireless/atmel/at76c50x-usb.c b/drivers/net/wire=
less/atmel/at76c50x-usb.c
> index 3b2680772f03..36e667d9f5cb 100644
> --- a/drivers/net/wireless/atmel/at76c50x-usb.c
> +++ b/drivers/net/wireless/atmel/at76c50x-usb.c
> @@ -10,14 +10,14 @@
>   * Copyright (c) 2007 Kalle Valo <kalle.valo@iki.fi>
>   * Copyright (c) 2010 Sebastian Smolorz <sesmo@gmx.net>
>   *
> - * This file is part of the Berlios driver for WLAN USB devices based on=
 the
> + * This file is part of the driver for WLAN USB devices based on the
>   * Atmel AT76C503A/505/505A.
>   *
>   * Some iw_handler code was taken from airo.c, (C) 1999 Benjamin Reed
>   *
>   * TODO list is at the wiki:
>   *
> - * http://wireless.kernel.org/en/users/Drivers/at76c50x-usb#TODO
> + * https://wireless.wiki.kernel.org/en/users/drivers/at76c50x-usb#TODO
>   */
>  =

>  #include <linux/init.h>
> @@ -1621,7 +1621,7 @@ static struct fwentry *at76_load_firmware(struct us=
b_device *udev,
>  		dev_err(&udev->dev, "firmware %s not found!\n",
>  			fwe->fwname);
>  		dev_err(&udev->dev,
> -			"you may need to download the firmware from http://developer.berlios.=
de/projects/at76c503a/\n");
> +			"you may need to download the firmware from http://www.thekelleys.org=
.uk/atmel/\n");

Maybe it is worth having those as part of linux-firmware instead.

>  		goto exit;
>  	}
>  =

> -- =

> 2.26.0
> =


-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
