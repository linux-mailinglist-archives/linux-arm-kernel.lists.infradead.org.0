Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD55FD07AD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  9 Oct 2019 08:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=VuMhZ2fWsd8S3XWDam7mMN1GLpFlfWyRgsLipsx2s8E=; b=QtLuF12vEoPodI
	0aYiSkrk7bqd4lrnrCTW7Nh2n33JY8oeGBibV8ydlijrsugCGeyNAE5KG+wUW7eAqlc+Y25E3fORD
	CXZ080h7jp/pCGTqAt0b+ZR4GpG0Vh7BCZaltPAtkIseDzKpg+QXNRduvO+4wbcY+noIa7ZvhacJ3
	QzGDZlG7+BAm+tGUPhwBnoh72T9dxSZbZlqv7fJseSQXyPTIDlGEvG48HvUSyITkoAUPVCSa4MuO1
	kBaXrz+V8gE1juQ64069snCo8EHGkWZHc9hi/5jQiuvSVQfOlUsvONIeTeohkiQSgughNKDnapXxw
	1YMUvDoApP+nQbuQZidA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iI5ql-0002hN-Kh; Wed, 09 Oct 2019 06:53:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iI5qe-0002gZ-RQ
 for linux-arm-kernel@lists.infradead.org; Wed, 09 Oct 2019 06:53:26 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iI5qZ-0006pi-5k; Wed, 09 Oct 2019 08:53:19 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iI5qV-0002hI-D8; Wed, 09 Oct 2019 08:53:15 +0200
Date: Wed, 9 Oct 2019 08:53:15 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>, Stephen Boyd <swboyd@chromium.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH] tty: serial: imx: Only get second/third IRQ when there
 is more than one IRQ
Message-ID: <20191009065315.wgdvmkv6skteyul4@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1570601911-9162-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_235324_884951_4774185A 
X-CRM114-Status: GOOD (  16.56  )
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
Cc: kernel@pengutronix.de, shawnguo@kernel.org, s.hauer@pengutronix.de,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>, linux-kernel@vger.kernel.org,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Linux-imx@nxp.com,
 linux-serial@vger.kernel.org, jslaby@suse.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello,

On Wed, Oct 09, 2019 at 02:18:31PM +0800, Anson Huang wrote:
> All i.MX SoCs except i.MX1 have ONLY 1 IRQ, so it is better to check
> the IRQ count before getting second/third IRQ to avoid below error
> message during probe:
> =

> [    0.726219] imx-uart 30860000.serial: IRQ index 1 not found
> [    0.731329] imx-uart 30860000.serial: IRQ index 2 not found

This message was introduced in commit
7723f4c5ecdb8d832f049f8483beb0d1081cedf6 for 5.4-rc1. I added the
involved people to the recipents of this mail.

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/tty/serial/imx.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index 504d81c..081fa82 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -2198,6 +2198,7 @@ static int imx_uart_probe(struct platform_device *p=
dev)
>  	u32 ucr1;
>  	struct resource *res;
>  	int txirq, rxirq, rtsirq;
> +	int irq_count;
>  =

>  	sport =3D devm_kzalloc(&pdev->dev, sizeof(*sport), GFP_KERNEL);
>  	if (!sport)
> @@ -2220,9 +2221,17 @@ static int imx_uart_probe(struct platform_device *=
pdev)
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  =

> +	irq_count =3D platform_irq_count(pdev);
> +	if (irq_count < 0)
> +		return irq_count;
> +
>  	rxirq =3D platform_get_irq(pdev, 0);
> -	txirq =3D platform_get_irq(pdev, 1);
> -	rtsirq =3D platform_get_irq(pdev, 2);
> +	if (irq_count > 1) {
> +		txirq =3D platform_get_irq(pdev, 1);
> +		rtsirq =3D platform_get_irq(pdev, 2);
> +	} else {
> +		txirq =3D rtsirq =3D -ENXIO;
> +	}

The patch is fine given the changed behaviour of platform_get_irq. I
wonder if it is sensible to introduce a variant of platform_get_irq (say
platform_get_irq_nowarn) that behaves like __platform_get_irq does
today. Then the imx driver would just call platform_get_irq_nowarn
without having to check the number of available irqs first.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
