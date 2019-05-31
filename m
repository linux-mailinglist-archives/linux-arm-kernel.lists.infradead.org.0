Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC783115C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 17:31:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zWeVBtOixBS27Wj0xAk58C/wPBuSFjk1FQpiiNd17Aw=; b=px4ZDVGG67VIJk
	qt2jdP0qG2kXx4h6ivyPZVYy1xw2I9A6c3dNHefbXjSFt091778OwGBZKCl2gSf9uAvoNTJrNzNZb
	VWmYTgnuq1rKKtkSrJapFMEbESblyFPl7d5+nNRCjuaLDSK2ONtonZLq39AfhZMqELq1iGISCv5YO
	6sditb47CYbsrYZH2Y/dJzwnZC//QS7IMdV+dBo/4XthatQ912WDyeXPe8JLTEPt4e2KjCogOmnod
	CpgJB9oJ3A+TaYD7nsjNNajSGUe/8H05ApLsWG878hYMgKSzcPjYmZ2FX2r9iJpIgGyIZmvHJMvJQ
	8Bb+xOn6G9dTNTAayWvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWjVV-0006Lv-Gp; Fri, 31 May 2019 15:31:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWjVN-0006LT-TE
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 15:31:43 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWjVJ-0000o1-9k; Fri, 31 May 2019 17:31:37 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWjVI-0004Dn-0H; Fri, 31 May 2019 17:31:36 +0200
Date: Fri, 31 May 2019 17:31:35 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH] serial: sa1100: add note about modem control signals
Message-ID: <20190531153135.sboekptwx4jxlpeg@pengutronix.de>
References: <20190531151032.tfrl7yqph6wsg5pl@pengutronix.de>
 <E1hWjO0-00087g-7y@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1hWjO0-00087g-7y@rmk-PC.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_083142_146002_904252EB 
X-CRM114-Status: GOOD (  15.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

On Fri, May 31, 2019 at 04:24:04PM +0100, Russell King wrote:
> As suggested by Uwe, add a note indicating that the modem control
> signals do not support interrupts, which precludes the driver from
> using mctrl_gpio_init().
> =

> Suggested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
> =

> Uwe, something like this?
> =

>  drivers/tty/serial/sa1100.c | 3 +++
>  1 file changed, 3 insertions(+)
> =

> diff --git a/drivers/tty/serial/sa1100.c b/drivers/tty/serial/sa1100.c
> index a6b4309b62fc..d7dbf0576be8 100644
> --- a/drivers/tty/serial/sa1100.c
> +++ b/drivers/tty/serial/sa1100.c
> @@ -949,6 +949,9 @@ static int sa1100_serial_resume(struct platform_devic=
e *dev)
>  static int sa1100_serial_add_one_port(struct sa1100_port *sport, struct =
platform_device *dev)
>  {
>  	sport->port.dev =3D &dev->dev;
> +
> +	// GPIO driver does not support interrupts for these modem
> +	// control signals, so the serial driver polls them.
>  	sport->gpios =3D mctrl_gpio_init_noauto(sport->port.dev, 0);
>  	if (IS_ERR(sport->gpios)) {
>  		int err =3D PTR_ERR(sport->gpios);

I would mention that because of this mctrl_gpio_init cannot be used.
(And I would have expected C-like comments).

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
