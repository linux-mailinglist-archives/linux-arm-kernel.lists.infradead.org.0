Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D1B01CD2C9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 09:39:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRgvuBJPzQktfYyeqnA50naF/B8Ae1mrQMrbsgb6oj4=; b=sZtiDwgj18M/J6
	ktPUnhNr+WMSo760UTJRE5/6d+AuUJscQa6G51Fdi+MEoqVQGdl/aLug2GV72Yu9nfDpvOkMhlrKh
	U3HnjJTkE4hJPBHohPF1qunjuBfUYnNildxDEoZYpNknzZLP45U1AUg+EVJ4SjkgxFVLWauGAnCDA
	0X3nSYKRgTIbdgXm+NRSse4mZyHN1Pvr9wGgfQhl+VKXgH2BnsvcsYxlEbNBgYaeZsfAC9aRV+2Sc
	yEPVo8tQeYu26W0Qx2N7kzkypIk93GnlIS/eQRVb7/a9ZMXIm00hy/mzeUBL8ub2hciwUV8GdS2rL
	Kpr1AL/57b9Nl8ulyFyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY31n-0003JY-Ki; Mon, 11 May 2020 07:39:07 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY31Z-0002oo-CL
 for linux-arm-kernel@bombadil.infradead.org; Mon, 11 May 2020 07:38:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
 Sender:Reply-To:Content-ID:Content-Description;
 bh=CUGcXyzDtZr9pBKzkVbxT0ln+7bj8sPWsUONT3Nw9cM=; b=HSRuVAthf8xVw98uChHFCuGYq2
 TbkC3rarJ9rY61zmkK2RzmakCJt+PRPxalokvcgP6OphwCE/iizFB90CxKNAL918k+vKhf14Gr4v1
 EC1FBfOzXBpRidTc9gJfqipgA9Q355LvYs3TyC1NZ9WTJKSd9OQlhjv2Wacir6N//SCIyWRavQU8m
 6k3Eal+AVNNlh09GofgdGQ3spNHPt2B16dHE61nMYl46wtTrFHkz9PZkzZIFEew7VSsvFpVFJ3aJ7
 v3GgqyHq0flsMpUGM6xKwn89Y2Wo7kpdFoPMkVqzTIwQc7Dx7v3hzDBn3PsoC0OtcLAgH5Rz2Pqzm
 EXPAuGCA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2r1-0006VH-Lo
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 07:28:02 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jY2qt-00029y-0t; Mon, 11 May 2020 09:27:51 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jY2qp-00065h-6l; Mon, 11 May 2020 09:27:47 +0200
Date: Mon, 11 May 2020 09:27:47 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH] tty: serial: imx: Add return value check for
 platform_get_irq()
Message-ID: <20200511072747.2vyavydpfa47kbuy@pengutronix.de>
References: <1589180996-618-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589180996-618-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
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
Cc: linux-serial@vger.kernel.org, gregkh@linuxfoundation.org,
 s.hauer@pengutronix.de, linux-kernel@vger.kernel.org, Linux-imx@nxp.com,
 kernel@pengutronix.de, jslaby@suse.com, shawnguo@kernel.org,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Anson,

On Mon, May 11, 2020 at 03:09:56PM +0800, Anson Huang wrote:
> RX irq is required, so add return value check for platform_get_irq().
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/tty/serial/imx.c | 2 ++
>  1 file changed, 2 insertions(+)
> =

> diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
> index f4d6810..f4023d9 100644
> --- a/drivers/tty/serial/imx.c
> +++ b/drivers/tty/serial/imx.c
> @@ -2252,6 +2252,8 @@ static int imx_uart_probe(struct platform_device *p=
dev)
>  		return PTR_ERR(base);
>  =

>  	rxirq =3D platform_get_irq(pdev, 0);
> +	if (rxirq < 0)
> +		return rxirq;
>  	txirq =3D platform_get_irq_optional(pdev, 1);
>  	rtsirq =3D platform_get_irq_optional(pdev, 2);

I'm not sure we need such a check as devm_request_irq fails if the
return value of platform_get_irq() is bogus.

But if we decide this construct is good enough, the error reporting
needs some love as currently it emits two error messages which is
confusing.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
