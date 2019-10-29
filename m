Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CCA9E86CA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 12:27:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPqcdGrGGfjr6vmCQ1n8+S2wrKmerAqePnsesqfIUls=; b=WxQeR1sVZI0cXT
	wDy11VuJ7CiCnmJqrZ42EzB0uuh5rVyTKqdiA530kHJyPQH/+RXZlmOIkBUGtZLamBmyIbNTj0Jax
	tjS+Y63Od+guiNwH7pdNztSaDsA4a46+syT/Psc05eFWAeOkPuk1a03Tg39TsiTKVDAjtoWkup4vJ
	CjnTol6D3AjshlNBIqJPvZWQfJZClGsvNE3pX44UE/fz/OMiD5fz1cRAyPpLtzinWxLivOVR2x0SL
	ZV16KqLgyqgttIoyG6ls1eK+smjLK5FdlwrNdOYV0Gxu5DVFpcpzs5tJppM1Z8hNuw7EmYj8rnjIk
	E7RaWy9e3j7gTOUyUgbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPPeW-0005UZ-JK; Tue, 29 Oct 2019 11:27:08 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPPZ5-0007vB-52
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 11:21:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1572348089; bh=JdWur1bMeHO2JpWgp6+b0/Rbt6VKQR73yvBxM9IXugU=;
 h=Date:From:To:Cc:Subject:References:X-My-GPG-KeyId:From;
 b=YIEuUbSu/F8VLiKeFAf+61/x2w+CZ5vxxDg2CttU/zfL7pXo+3O12XZ3X9Tz3i2kg
 /hXkZX1Uv0KQdTpXOupmwGgb0NY7eOffbcVQpIGC66CKbP9HkkCuLKz1tO1szrxT05
 K7yH53Jtn2cLiVfZPp52mklDpWOlo+NwNQp4DiUk=
Date: Tue, 29 Oct 2019 12:21:29 +0100
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH 1/3] input: edt-ft5x06: Add support for regulator
Message-ID: <20191029112129.t4mxqyybltjbuyhj@core.my.home>
Mail-Followup-To: Marco Felsch <m.felsch@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 =?utf-8?Q?Myl=C3=A8ne?= Josserand <mylene.josserand@bootlin.com>,
 linux-input@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20191029005806.3577376-1-megous@megous.com>
 <20191029005806.3577376-2-megous@megous.com>
 <20191029041233.GD57214@dtor-ws>
 <20191029085545.cw5c24gi76gbfdhy@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029085545.cw5c24gi76gbfdhy@pengutronix.de>
X-My-GPG-KeyId: EBFBDDE11FB918D44D1F56C1F9F0A873BE9777ED
 <https://xff.cz/key.txt>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_042131_396572_33AEC201 
X-CRM114-Status: GOOD (  17.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 =?utf-8?Q?Myl=C3=A8ne?= Josserand <mylene.josserand@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-input@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marco,

On Tue, Oct 29, 2019 at 09:55:45AM +0100, Marco Felsch wrote:
> Hi Dmitry,
> =

> On 19-10-28 21:12, Dmitry Torokhov wrote:
> > On Tue, Oct 29, 2019 at 01:58:04AM +0100, Ondrej Jirman wrote:
> > > From: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> > > =

> > > Add the support for enabling optional regulator that may be used as V=
CC
> > > source.
> > > =

> > > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > > Signed-off-by: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> > =

> > Applied, thank you.
> =

> What happens with my vdd patches?

Sorry for not noticing your patches, I was only aware of Myl=E8ne's older s=
eries.
It looks like you can just skip regulator enable support from your series, =
and
re-send the deep-sleep mechanism and wakeup source patches only.

I'll test it with my board, and give you a tested-by.

thank you and regards,
	o.

> Regards,
>   Marco
> =

> > =

> > > ---
> > >  drivers/input/touchscreen/edt-ft5x06.c | 30 ++++++++++++++++++++++++=
++
> > >  1 file changed, 30 insertions(+)
> > > =

> > > diff --git a/drivers/input/touchscreen/edt-ft5x06.c b/drivers/input/t=
ouchscreen/edt-ft5x06.c
> > > index 5525f1fb1526..d61731c0037d 100644
> > > --- a/drivers/input/touchscreen/edt-ft5x06.c
> > > +++ b/drivers/input/touchscreen/edt-ft5x06.c
> > > @@ -28,6 +28,7 @@
> > >  #include <linux/input/mt.h>
> > >  #include <linux/input/touchscreen.h>
> > >  #include <asm/unaligned.h>
> > > +#include <linux/regulator/consumer.h>
> > >  =

> > >  #define WORK_REGISTER_THRESHOLD		0x00
> > >  #define WORK_REGISTER_REPORT_RATE	0x08
> > > @@ -88,6 +89,7 @@ struct edt_ft5x06_ts_data {
> > >  	struct touchscreen_properties prop;
> > >  	u16 num_x;
> > >  	u16 num_y;
> > > +	struct regulator *vcc;
> > >  =

> > >  	struct gpio_desc *reset_gpio;
> > >  	struct gpio_desc *wake_gpio;
> > > @@ -1036,6 +1038,13 @@ edt_ft5x06_ts_set_regs(struct edt_ft5x06_ts_da=
ta *tsdata)
> > >  	}
> > >  }
> > >  =

> > > +static void edt_ft5x06_disable_regulator(void *arg)
> > > +{
> > > +	struct edt_ft5x06_ts_data *data =3D arg;
> > > +
> > > +	regulator_disable(data->vcc);
> > > +}
> > > +
> > >  static int edt_ft5x06_ts_probe(struct i2c_client *client,
> > >  					 const struct i2c_device_id *id)
> > >  {
> > > @@ -1064,6 +1073,27 @@ static int edt_ft5x06_ts_probe(struct i2c_clie=
nt *client,
> > >  =

> > >  	tsdata->max_support_points =3D chip_data->max_support_points;
> > >  =

> > > +	tsdata->vcc =3D devm_regulator_get(&client->dev, "vcc");
> > > +	if (IS_ERR(tsdata->vcc)) {
> > > +		error =3D PTR_ERR(tsdata->vcc);
> > > +		if (error !=3D -EPROBE_DEFER)
> > > +			dev_err(&client->dev,
> > > +				"failed to request regulator: %d\n", error);
> > > +		return error;
> > > +	}
> > > +
> > > +	error =3D regulator_enable(tsdata->vcc);
> > > +	if (error < 0) {
> > > +		dev_err(&client->dev, "failed to enable vcc: %d\n", error);
> > > +		return error;
> > > +	}
> > > +
> > > +	error =3D devm_add_action_or_reset(&client->dev,
> > > +					 edt_ft5x06_disable_regulator,
> > > +					 tsdata);
> > > +	if (error)
> > > +		return error;
> > > +
> > >  	tsdata->reset_gpio =3D devm_gpiod_get_optional(&client->dev,
> > >  						     "reset", GPIOD_OUT_HIGH);
> > >  	if (IS_ERR(tsdata->reset_gpio)) {
> > > -- =

> > > 2.23.0
> > > =

> > =

> > -- =

> > Dmitry
> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
