Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24291E839D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 09:56:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l8Z0Ors3dW0vBE+IEf7tfHYL1W3K+OD1xnhB2u63EGw=; b=Jzhvvj2pyoL+/R
	Rz4QufJu7SAzw13dSD3ioFA+rOyEKaikO1AkfYqFllTvyfka48h4xM+2Mmuk2vVWxwknylg/TCQqx
	mZF8EPIpWatp3iwRpvYyEDNSt6XJWrt915tyJ7XPFQy89Lo7G0ZL7IsYGk8YIOS6m4X3knpI38B0G
	XNCnZ0dri22Wo3ztZZhjes8QlT385ge29VCAGxBQQfZ9InqHHta81WXhu28cTpRUo8z45NOI65K5c
	Q39kMb9jEovAgX83Y/gTmHVB8v50XPt1VanVD8fiZBA8HsvfeQpA7693D7kDIYsnJpf3O00C2dA3d
	U0FTM9f8hW2E90YtEK6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPNIV-0000Yj-E2; Tue, 29 Oct 2019 08:56:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPNII-0000XF-GD
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 08:56:04 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iPNI4-0000wX-1e; Tue, 29 Oct 2019 09:55:48 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iPNI1-0006qC-Cj; Tue, 29 Oct 2019 09:55:45 +0100
Date: Tue, 29 Oct 2019 09:55:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>
Subject: Re: [PATCH 1/3] input: edt-ft5x06: Add support for regulator
Message-ID: <20191029085545.cw5c24gi76gbfdhy@pengutronix.de>
References: <20191029005806.3577376-1-megous@megous.com>
 <20191029005806.3577376-2-megous@megous.com>
 <20191029041233.GD57214@dtor-ws>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191029041233.GD57214@dtor-ws>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 09:53:29 up 164 days, 15:11, 100 users,  load average: 0.00, 0.01,
 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_015602_541077_36B5CB47 
X-CRM114-Status: GOOD (  18.83  )
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@bootlin.com>,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 linux-kernel@vger.kernel.org, linux-sunxi@googlegroups.com,
 Rob Herring <robh+dt@kernel.org>, linux-input@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dmitry,

On 19-10-28 21:12, Dmitry Torokhov wrote:
> On Tue, Oct 29, 2019 at 01:58:04AM +0100, Ondrej Jirman wrote:
> > From: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> > =

> > Add the support for enabling optional regulator that may be used as VCC
> > source.
> > =

> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > Signed-off-by: Myl=E8ne Josserand <mylene.josserand@bootlin.com>
> =

> Applied, thank you.

What happens with my vdd patches?

Regards,
  Marco

> =

> > ---
> >  drivers/input/touchscreen/edt-ft5x06.c | 30 ++++++++++++++++++++++++++
> >  1 file changed, 30 insertions(+)
> > =

> > diff --git a/drivers/input/touchscreen/edt-ft5x06.c b/drivers/input/tou=
chscreen/edt-ft5x06.c
> > index 5525f1fb1526..d61731c0037d 100644
> > --- a/drivers/input/touchscreen/edt-ft5x06.c
> > +++ b/drivers/input/touchscreen/edt-ft5x06.c
> > @@ -28,6 +28,7 @@
> >  #include <linux/input/mt.h>
> >  #include <linux/input/touchscreen.h>
> >  #include <asm/unaligned.h>
> > +#include <linux/regulator/consumer.h>
> >  =

> >  #define WORK_REGISTER_THRESHOLD		0x00
> >  #define WORK_REGISTER_REPORT_RATE	0x08
> > @@ -88,6 +89,7 @@ struct edt_ft5x06_ts_data {
> >  	struct touchscreen_properties prop;
> >  	u16 num_x;
> >  	u16 num_y;
> > +	struct regulator *vcc;
> >  =

> >  	struct gpio_desc *reset_gpio;
> >  	struct gpio_desc *wake_gpio;
> > @@ -1036,6 +1038,13 @@ edt_ft5x06_ts_set_regs(struct edt_ft5x06_ts_data=
 *tsdata)
> >  	}
> >  }
> >  =

> > +static void edt_ft5x06_disable_regulator(void *arg)
> > +{
> > +	struct edt_ft5x06_ts_data *data =3D arg;
> > +
> > +	regulator_disable(data->vcc);
> > +}
> > +
> >  static int edt_ft5x06_ts_probe(struct i2c_client *client,
> >  					 const struct i2c_device_id *id)
> >  {
> > @@ -1064,6 +1073,27 @@ static int edt_ft5x06_ts_probe(struct i2c_client=
 *client,
> >  =

> >  	tsdata->max_support_points =3D chip_data->max_support_points;
> >  =

> > +	tsdata->vcc =3D devm_regulator_get(&client->dev, "vcc");
> > +	if (IS_ERR(tsdata->vcc)) {
> > +		error =3D PTR_ERR(tsdata->vcc);
> > +		if (error !=3D -EPROBE_DEFER)
> > +			dev_err(&client->dev,
> > +				"failed to request regulator: %d\n", error);
> > +		return error;
> > +	}
> > +
> > +	error =3D regulator_enable(tsdata->vcc);
> > +	if (error < 0) {
> > +		dev_err(&client->dev, "failed to enable vcc: %d\n", error);
> > +		return error;
> > +	}
> > +
> > +	error =3D devm_add_action_or_reset(&client->dev,
> > +					 edt_ft5x06_disable_regulator,
> > +					 tsdata);
> > +	if (error)
> > +		return error;
> > +
> >  	tsdata->reset_gpio =3D devm_gpiod_get_optional(&client->dev,
> >  						     "reset", GPIOD_OUT_HIGH);
> >  	if (IS_ERR(tsdata->reset_gpio)) {
> > -- =

> > 2.23.0
> > =

> =

> -- =

> Dmitry
> =


-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
