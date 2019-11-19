Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75E4101A08
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 08:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cPF0eK6ADkR52sOUtvRXyMlI9XWYNUov5ec6Cwvi8XI=; b=fJw4wqBOCqHTqj
	/7lok511M8148D9OxNe7hvoJODRFLJ+FPinML+5KXYwx0hMlq6JFCInWAQaVxMELxsPB9EJpQVhm0
	wAKOANdQsNq8sBqNm9KlIZdpA4LXk6esi9NpII/gvlNW3EeDFDGJo0uNmmHxqi25t3DEaTbw8XSJ8
	YvhErMZ0P9KD6p8OY/eDFePwHIo1nCJjcHFTiO9ZpW8Fn2dCA9nRnMiL+vX2fb824hgjnc33/i943
	Y5Op7ZTmTBXz3RKHpy6p504I0ltCKesTOniApJgNjfogz/OHz4/hVQXwsMNH2lzoJXEoakDFhIb/j
	61JTyLcaAgqu0lui0oFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWxeC-0007cd-D3; Tue, 19 Nov 2019 07:10:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWxe0-0007bq-IQ
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 07:09:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iWxdt-00041U-2G; Tue, 19 Nov 2019 08:09:41 +0100
Received: from ukl by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iWxdp-0002Xl-Np; Tue, 19 Nov 2019 08:09:37 +0100
Date: Tue, 19 Nov 2019 08:09:37 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: Re: [PATCH] clk: imx8m: Suppress bind attrs
Message-ID: <20191119070937.bcvezx5mwkqqymfo@pengutronix.de>
References: <9f2ac65bab203a943de947465d6534980585e144.1574116045.git.leonard.crestez@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9f2ac65bab203a943de947465d6534980585e144.1574116045.git.leonard.crestez@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_230948_608165_E4D9072E 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 19, 2019 at 12:28:16AM +0200, Leonard Crestez wrote:
> The clock drivers on imx8m series are registered as platform devices and
> this opens the possibility of reloading the driver at runtime:
> =

> This doesn't actually work: clocks are never removed and attempting to
> bind again results in registration errors and a crash.
> =

> Fix this by explicitly suppressing bind attrs like several other
> drivers.
> =

> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
> =

> ---
> No cc: stable because because there are likely many other opportunities
> to crash the system by echoing random stuff in sysfs as root.
> =

>  drivers/clk/imx/clk-imx8mm.c | 1 +
>  drivers/clk/imx/clk-imx8mn.c | 1 +
>  drivers/clk/imx/clk-imx8mq.c | 1 +
>  3 files changed, 3 insertions(+)
> =

> diff --git a/drivers/clk/imx/clk-imx8mm.c b/drivers/clk/imx/clk-imx8mm.c
> index 9246e89bb5fd..3cb75ad4270d 100644
> --- a/drivers/clk/imx/clk-imx8mm.c
> +++ b/drivers/clk/imx/clk-imx8mm.c
> @@ -619,9 +619,10 @@ MODULE_DEVICE_TABLE(of, imx8mm_clk_of_match);
>  =

>  static struct platform_driver imx8mm_clk_driver =3D {
>  	.probe =3D imx8mm_clocks_probe,
>  	.driver =3D {
>  		.name =3D "imx8mm-ccm",
> +		.suppress_bind_attrs =3D true,

Maybe add a comment similar to the motivation in the commit log here?
(And of course in the other files, too.)

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
