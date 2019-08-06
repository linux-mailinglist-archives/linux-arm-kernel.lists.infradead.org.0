Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB4783A22
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 22:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XF6gdqAJJJrICt9mRAksK0789CeVcco+igwYbNhzT5I=; b=FA8beWn/lUP/Iu
	NBFXGDkq+JzbOC7qURaqQ1MZQoAjyLasRF04GFaAh1Cf4vEXSiF58oVgElM3aMC+HOY+tZIBd1PYV
	Db6eox6FwLkol0nACBiCgyxSJGizkurWQA61ulUWfwgNUVmg9M7RAT9Br78Rqq8zXfqtnxUsJQkEr
	uyreia6NZ+p2caBuV/6F1bmsqXCziI1LfCrdoMwtcD9kYcpF2MDukjAsFpcOW1YMmJiUyLA80S0+P
	tDHcjzirEvfPQoZR6xPx+uH31+2u6g4SV60v0F2qcbGVErMUco4DZ0isGdVbFJfe1COSHX0Cry53b
	IuSwQc2N79rl5GrzlC+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv5qi-0007yw-Ps; Tue, 06 Aug 2019 20:14:25 +0000
Received: from mail-oi1-x244.google.com ([2607:f8b0:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv5qU-0007yb-1f
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 20:14:11 +0000
Received: by mail-oi1-x244.google.com with SMTP id w196so47160822oie.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 06 Aug 2019 13:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DHPLsakTg1F9PtegMLuUGuWnfD3D92bcDfRxNDjqJI4=;
 b=k8lxIrEwMdAN3Wz6Y91EdQtfNt6sY0pqfBSAdqSvEzioqIOdX2BHS9WAp37OFMe8VC
 3DDmsgXtIP2U5GVRbF6C0SwdLYAY7Q0PtWLJRi72ukPxIDwY93uptRkBPV+R+vw+SxCr
 3ZO6rdzbJbR3aNRIn9OkujG2f/Map30fxD0yQU/QUESsylr+TWLQNrivWc7mfV11RwQd
 62BcPfSxpEsd5Hm0yLW6XFPp4qzAIYQ6qc42vFvr3XINFlv/vvLwLreEcOYBkXEKT5Hz
 A3pR5L0+wLEVOBQF444i1ErkjW/CROHv2Uj5nNJnm1xXPrXgkDpYZcJlzK+GT2CXp97p
 ArdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DHPLsakTg1F9PtegMLuUGuWnfD3D92bcDfRxNDjqJI4=;
 b=U8mlb41m+7foPM4qN09BI2UQg9sveccsRY2Idnrb+PYD3Q3CEWcGwF2xtZ94yJhXCM
 LPhHOBgig7apD0fhUG2GKZcJKeOPZRtDTLBzi83RyhYgxpQiVQ65A07HKZEEwHOmpVxL
 xxfPyB7JcUJ1LCTPknn4aEGeNTk/zGLsJPnXZneEXBwgbTdwspbXdHU6ATcvXE3D5zTS
 Ke6v2vEbPk/J21W8ko9GSxcSqs2SLAAy5uCvRSYojo05u/CLMeYYRBqbdQU6GlWfUwhd
 vdbCSUkbGdY21nMejbqVocIeTPF8j4SIeDMWzlplQwO6YATnFa0kSv4f2qvfL2/g9ApV
 YYbA==
X-Gm-Message-State: APjAAAUKNPs8+HkbI0UjTcQIYNl2XskgB2fBxq3tOivPZqPEyWRBkjl1
 hAe8m87e6z6pTmwB8TsFPhQ85ydDiv/jU3o5M5o=
X-Google-Smtp-Source: APXvYqzpsRU4U1y4gTKmBv9/Rt7TEBY/Ggbjy+Jkbq/7IroTE6LpnfiJJQOcHRvZJijSwJPaBPod6NihIbdweNp8v7s=
X-Received: by 2002:a02:ca19:: with SMTP id i25mr6227780jak.6.1565122449379;
 Tue, 06 Aug 2019 13:14:09 -0700 (PDT)
MIME-Version: 1.0
References: <20190731195713.3150463-1-arnd@arndb.de>
 <20190731195713.3150463-9-arnd@arndb.de>
In-Reply-To: <20190731195713.3150463-9-arnd@arndb.de>
From: Sylvain Lemieux <slemieux.tyco@gmail.com>
Date: Tue, 6 Aug 2019 16:13:58 -0400
Message-ID: <CA+rxa6ovZ+ghiHyGQXepx0pEo465WHEP3TJq+dcnZyx2weE0uw@mail.gmail.com>
Subject: Re: [PATCH 08/14] net: lpc-enet: allow compile testing
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_131410_084976_326CA910 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (slemieux.tyco[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Jason Cooper <jason@lakedaemon.net>, "David S. Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Gregory Clement <gregory.clement@bootlin.com>,
 USB list <linux-usb@vger.kernel.org>, Russell King <linux@armlinux.org.uk>,
 Vladimir Zapolskiy <vz@mleia.com>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, soc@kernel.org,
 Alan Stern <stern@rowland.harvard.edu>, Guenter Roeck <linux@roeck-us.net>,
 linux-serial@vger.kernel.org, Networking <netdev@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Acked-by: Sylvain Lemieux <slemieux.tyco@gmail.com>

On Wed, Jul 31, 2019 at 4:01 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> The lpc-enet driver can now be built on all platforms, so
> allow compile testing as well.
>
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> ---
>  drivers/net/ethernet/nxp/Kconfig   | 2 +-
>  drivers/net/ethernet/nxp/lpc_eth.c | 1 +
>  2 files changed, 2 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/nxp/Kconfig b/drivers/net/ethernet/nxp/Kconfig
> index 261f107e2be0..418afb84c84b 100644
> --- a/drivers/net/ethernet/nxp/Kconfig
> +++ b/drivers/net/ethernet/nxp/Kconfig
> @@ -1,7 +1,7 @@
>  # SPDX-License-Identifier: GPL-2.0-only
>  config LPC_ENET
>          tristate "NXP ethernet MAC on LPC devices"
> -        depends on ARCH_LPC32XX
> +        depends on ARCH_LPC32XX || COMPILE_TEST
>          select PHYLIB
>          help
>           Say Y or M here if you want to use the NXP ethernet MAC included on
> diff --git a/drivers/net/ethernet/nxp/lpc_eth.c b/drivers/net/ethernet/nxp/lpc_eth.c
> index 0893b77c385d..34fdf2100772 100644
> --- a/drivers/net/ethernet/nxp/lpc_eth.c
> +++ b/drivers/net/ethernet/nxp/lpc_eth.c
> @@ -14,6 +14,7 @@
>  #include <linux/crc32.h>
>  #include <linux/etherdevice.h>
>  #include <linux/module.h>
> +#include <linux/of.h>
>  #include <linux/of_net.h>
>  #include <linux/phy.h>
>  #include <linux/platform_device.h>
> --
> 2.20.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
