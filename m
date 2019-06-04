Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E0FC34B06
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:54:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZCP/nEXdWkcy5nasnXZQcngsHFCYcSDXKYDXddf3WYQ=; b=loucFggK6IfU3y
	CbYPdDMVHyjJX1pTvjEbGySTS+Yo0JbFWSiKPSy4ZzvhxK0JMx93+0YO+EezqqqWRUz94ZQnqUBIf
	523OGBLCxqkYwpy0S1ilEEqeTeybaZh8cz3gY5UqtZkFGhYNkDCcTSmTBHi0otGEgrmxP8owdUBK3
	LjKdBHy4In888YeiFtHdvsRWkZbU4K9+i4D+4b1Hv6DgLN+bSZKzehoyrBMFerS0FSeE3BW9k89es
	G5ekdM8n/Hfyztgx/fQtdYfbNTbmwmRFYF5480UhSvdo49DB1aGdQPxQXO9fzOLwaxY24WBYuWGet
	hBm1rE0oeSL126dS4xHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYApo-0004aU-JS; Tue, 04 Jun 2019 14:54:44 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYApd-0004VN-6j
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:54:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1559660071; bh=95GYOgwl829tExfkDRtkMvcWLHLqIMDdOvd0ItQBRPA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lQ08PYzAowbpDALh/bdzfBKo2Glb31I+mPrDYyfuk3YUz7jUjP2TtF05N7MRU/ABy
 ys6ZI84RcheuM7k2KhWKh1CcT2ElO9D+OfXrBtTR/YWsT7VFHVOTIUXA0gPdGnbJtF
 tNWOQaooGXJWtgGvUEWRkvO6/e0ePeOF9ehbh9GQ=
Date: Tue, 4 Jun 2019 16:54:30 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Subject: Re: [PATCH v3 03/12] media: rc: sunxi: Add A31 compatible
Message-ID: <20190604145430.xqufpyosetgb4bo7@core.my.home>
Mail-Followup-To: =?utf-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
References: <20190528161440.27172-1-peron.clem@gmail.com>
 <20190528161440.27172-4-peron.clem@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190528161440.27172-4-peron.clem@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_075433_422163_D5043A1F 
X-CRM114-Status: GOOD (  15.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-sunxi@googlegroups.com,
 linux-kernel@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 06:14:31PM +0200, Cl=E9ment P=E9ron wrote:
> Allwiner A31 has a different memory mapping so add the compatible
> we will need it later.
> =

> Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> ---
>  drivers/media/rc/sunxi-cir.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> =

> diff --git a/drivers/media/rc/sunxi-cir.c b/drivers/media/rc/sunxi-cir.c
> index d02dcb6fd0a5..0504ebfc831f 100644
> --- a/drivers/media/rc/sunxi-cir.c
> +++ b/drivers/media/rc/sunxi-cir.c
> @@ -343,6 +343,11 @@ static const struct sunxi_ir_quirks sun5i_a13_ir_qui=
rks =3D {
>  	.fifo_size =3D 64,
>  };
>  =

> +static const struct sunxi_ir_quirks sun6i_a31_ir_quirks =3D {
> +	.has_reset =3D true,
> +	.fifo_size =3D 64,
> +};
> +

BTW, H6 BSP uses FIFO size 40:

https://github.com/orangepi-xunlong/OrangePiH6_Linux4_9/blob/master/drivers=
/media/rc/sunxi-ir-dev.c#L290

Have you tried filling the fifo with over 40 words on H6, to see if it work=
s?

I know it's docummented as having 64 words in the manual, so maybe Allwiner
just didn't care enough to make the driver configurable, and the H6
FIFO really has that depth.

regards,
	o.

>  static const struct of_device_id sunxi_ir_match[] =3D {
>  	{
>  		.compatible =3D "allwinner,sun4i-a10-ir",
> @@ -352,6 +357,10 @@ static const struct of_device_id sunxi_ir_match[] =
=3D {
>  		.compatible =3D "allwinner,sun5i-a13-ir",
>  		.data =3D &sun5i_a13_ir_quirks,
>  	},
> +	{
> +		.compatible =3D "allwinner,sun6i-a31-ir",
> +		.data =3D &sun6i_a31_ir_quirks,
> +	},
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, sunxi_ir_match);
> -- =

> 2.20.1
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
