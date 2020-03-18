Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F802189920
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 11:19:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E77JYWPsCaDxmpdlmoIMF2v3x/GN1qBraAJatH+oW+c=; b=Ikio4LEJm98ef4
	C0cAy5DFeposempDVf3tUk+QhFE1hLioBBxpY40h2ArPnICy3cqh2DcljbWNaTegVsp3Z51cj5lux
	t6OLZEm+hPKEHBUVGowQD1m1m6e9iRBpufz87nkgISGccwRDqCT8A0Qqpa/BHP2lCMQJmLCMQQAx1
	DGhaEHXyzwWyExmxBpp0cs6iQ2aWSfIfhYA5jcGX9DP6ZzMLkxyDy9pY2chMudJHoZ+nJ8/Hrjh4O
	ubLFh0tKN+fR1SwC0xzYsCwE16u+pJhmEULfRC9NzrcuQIakGtt+3Cu0qctXbqnSC5EkEy/bnNUIT
	t1v1aZM7rE0/x9u57teg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEVmv-0006Ea-D2; Wed, 18 Mar 2020 10:19:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEVmk-0006DS-Ot
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 10:18:52 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEVme-0005Tb-LH; Wed, 18 Mar 2020 11:18:44 +0100
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1jEVme-0000ds-3Q; Wed, 18 Mar 2020 11:18:44 +0100
Date: Wed, 18 Mar 2020 11:18:44 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Tang Bin <tangbin@cmss.chinamobile.com>
Subject: Re: [PATCH] drivers/i2c/busses/i2c-imx.c:remove duplicate print
 after platform_get_irq()
Message-ID: <20200318101844.55c273zh242ymxcf@pengutronix.de>
References: <20200318100748.17540-1-tangbin@cmss.chinamobile.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200318100748.17540-1-tangbin@cmss.chinamobile.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_031850_813982_88DE36E2 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux@rempel-privat.de, linux-i2c@vger.kernel.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 06:07:48PM +0800, Tang Bin wrote:
> We don't need dev_err() message because when something goes wrong,
> platform_get_irq() has print an error message itself, so we should
> remove duplicate dev_err().
> =

> Signed-off-by: Tang Bin <tangbin@cmss.chinamobile.com>
> ---
>  drivers/i2c/busses/i2c-imx.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
> =

> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index a3b61336f..01fd46682 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -1066,10 +1066,8 @@ static int i2c_imx_probe(struct platform_device *p=
dev)
>  	dev_dbg(&pdev->dev, "<%s>\n", __func__);
>  =

>  	irq =3D platform_get_irq(pdev, 0);
> -	if (irq < 0) {
> -		dev_err(&pdev->dev, "can't get irq number\n");
> +	if (irq < 0)
>  		return irq;
> -	}

Maybe add a comment for the next person who wonders about an error path
without error message? Something like:

	irq =3D platform_get_irq(pdev, 0);
	if (irq < 0)
		/*
		 * platform_get_irq() already issued an error message, so
		 * fail silently here.
		 */
		 return irq;

And to get some extra kudos mention the commit that modified
platform_get_irq() to emit a message in the commit log.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
