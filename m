Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B33CF31699
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 23:27:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vyj/dkgZHuxanimx1HO3U/C+vszGtI5Yh5paEN1eASY=; b=SjRKW+p1DPIFav
	d5lY98CCFdXnQjfJd/RBS9JtsvkvpxKYL7SYGom3TfEahi7Ot6uV1THk095cohTNhgGM6xN3AZNww
	qnrhW7S+HUOY9YJelcUOs9YOPZ4LmRvwO+N75jWkYCwYTKsjZz2hqAlvqI8zTUpLiQ71o58Xq1rCO
	E1PCXzz/f+Etn8NgW5bipb9/3qzT2GS/7h02saK4McO4W8yLGmv6YEi710Jw2KsNj7eXdvvY/rYc0
	MNKQDnmQviFDd1FND19jZeD4er4N9Fb+ESzWeMEz1nxS8ZQK/lK0g2Zs/NzPZ1+021n/oN8qAre4x
	e+ZOgGawEEX/OboMjlXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWp3T-0001zt-HM; Fri, 31 May 2019 21:27:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWp3N-0001zY-3T
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 21:27:10 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWp3I-0001Yq-TQ; Fri, 31 May 2019 23:27:04 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1hWp3G-0006ye-EM; Fri, 31 May 2019 23:27:02 +0200
Date: Fri, 31 May 2019 23:27:02 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: [PATCH v2] serial: sa1100: add note about modem control signals
Message-ID: <20190531212702.cmqbaqwdybgkb3ug@pengutronix.de>
References: <20190531155700.crrawgf3iot2sm2t@shell.armlinux.org.uk>
 <E1hWjyQ-0008Ni-8V@rmk-PC.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <E1hWjyQ-0008Ni-8V@rmk-PC.armlinux.org.uk>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_142709_312547_8C01230E 
X-CRM114-Status: GOOD (  16.88  )
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

On Fri, May 31, 2019 at 05:01:42PM +0100, Russell King wrote:
> As suggested by Uwe, add a note indicating that the modem control
> signals do not support interrupts, which precludes the driver from
> using mctrl_gpio_init().
> =

> Suggested-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>
> Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> ---
>  drivers/tty/serial/sa1100.c | 4 ++++
>  1 file changed, 4 insertions(+)
> =

> diff --git a/drivers/tty/serial/sa1100.c b/drivers/tty/serial/sa1100.c
> index 97bdfeccbea9..8e618129e65c 100644
> --- a/drivers/tty/serial/sa1100.c
> +++ b/drivers/tty/serial/sa1100.c
> @@ -860,6 +860,10 @@ static int sa1100_serial_resume(struct platform_devi=
ce *dev)
>  static int sa1100_serial_add_one_port(struct sa1100_port *sport, struct =
platform_device *dev)
>  {
>  	sport->port.dev =3D &dev->dev;
> +
> +	// mctrl_gpio_init() requires that the GPIO driver supports interrupts,
> +	// but we need to support GPIO drivers for hardware that has no such
> +	// interrupts.  Use mctrl_gpio_init_noauto() instead.

I hope it's not an impostor who claimed to be Linus to spread deviance
from K&R :-)

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

If you want to, squash this in the commit that introduced
mctrl_gpio_init_noauto while keeping my Ack on the resulting patch.

Best regards
Uwe

>  	sport->gpios =3D mctrl_gpio_init_noauto(sport->port.dev, 0);
>  	if (IS_ERR(sport->gpios)) {
>  		int err =3D PTR_ERR(sport->gpios);
> -- =

> 2.7.4
> =

> =


-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
