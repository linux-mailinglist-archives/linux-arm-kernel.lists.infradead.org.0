Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD8E1A2B25
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Apr 2020 23:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2R8Wuff1I/0nkzy5v12jc+DRA+wX4X5BH+F0Il93w5w=; b=sKD7blMwzcPe5IMm7sjohMZBe
	jlZ3YXdkNWUszbSZizjjA7PtvOz3j8tUTNPcsgj8ur32kejH5NkQQP5a5EhAyzpdV+uu9KGXqrt5x
	iTl+MOpzY3Vv+MegK+wr3hUabFs3J8OemFSlUtwA/aBuwk95UmJvvag4cd6NmKND6K56nFoWEEX9f
	b6VkaQbh7DPaI0LmMpVcVIwWg5hmYuD/dnNlcYDhIwo1JUOgQhHC68QSGMkDYAQPXQvv6Xot1MX3E
	NtmSePNAYFZqCg7RXCkR46rbitKRKzYS+iADbDU0xlHZW6r4AyA138YZNdBOHLky0UeXwckWSETf8
	spsZL1gzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMIID-0004Go-Ut; Wed, 08 Apr 2020 21:31:29 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMII6-0004Fz-8J
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Apr 2020 21:31:24 +0000
Received: by mail-qk1-x742.google.com with SMTP id z15so1909713qki.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Apr 2020 14:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=3GdzMyIS6o4XfcCDmmix8QiGCsWxtWhkq+gSFrv4xx0=;
 b=JzJ300seGItAe4s4hYjoDFezs3QASPmmf5xei5ZlTmxLpGsIQAK00BuCgHFvJoxGVo
 N+BRcE69RQVLKh8lFXnVaVXQlCGn9x7khIxcoKPntA8mTADLX864yeGMrTHxR3I0ZxZR
 Z2VL5089MVOu6cE+58t+XTY68NHtxSPqXlYekdbu6Y9P9JWR6GsIvccUqUyI4Lepwt7O
 M2QNNW+5kcJndJh2JqVQdWMQ8WPDMXp3wnagXg3ykudRjAQofCbrWIXNfsnJskZJKTH9
 ht2IOtFbV/DFkSGkyP9VoljNRJZXJuSW0uXNoraoMpFLRRfz9e2uBkwF8elAdEQhMhkZ
 jAdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=3GdzMyIS6o4XfcCDmmix8QiGCsWxtWhkq+gSFrv4xx0=;
 b=he2QEr8q2Na8ZlicZgjcLBIYh0IqI+J3yYeSXJtCiQhdJv7TwEEAjBwJREr6DuYhvg
 11vTdr3E/ldFSa4/S966KYb8kv1xcZ3hrDidIauM0O0vw9oLJlsCshbCbneZAiNCq1KB
 COFyPAj/v+MwHyvtWG7tHi2dgiwWj2dp2lIEFORHa+GGQ15RzmmT7ev6gKl5PkKx2mjd
 JODrfMa9OtLkbuMTR7HaVRJbPJ4o2Qw0fa1WL9jbqb+1I/xiNdTcQ6ayk4vIlFWtcoaO
 oh8Q/LlJQz+aB2FhtVwp3KxqXIvJxLp4ZQBeHZA6YF63Iu9TNABfP1zP7muSMiH9a3hv
 NKSA==
X-Gm-Message-State: AGi0PubTw761MFhA8ep3t1qwK02N0Cj2DvZ2EUxYM/IwfFyNOAljqIfz
 l3Btt+uguj2EK4Vg/Pcd78k=
X-Google-Smtp-Source: APiQypLJhVu6+a6yzc2PfuBawKGhlYDBnRoGqlYZgoeoWun0d7hyqhPeyqsJm4dasFSWvKST17vmkQ==
X-Received: by 2002:ae9:f44a:: with SMTP id z10mr9768938qkl.353.1586381480363; 
 Wed, 08 Apr 2020 14:31:20 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id g14sm2773863qtb.24.2020.04.08.14.31.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Apr 2020 14:31:19 -0700 (PDT)
Date: Wed, 8 Apr 2020 17:31:03 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 3/3] counter: Add atmel TCB capture counter
Message-ID: <20200408213013.GA30867@icarus>
References: <20200406155320.1291701-1-kamel.bouhara@bootlin.com>
 <20200406155320.1291701-4-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200406155320.1291701-4-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_143122_304019_E046C6F2 
X-CRM114-Status: GOOD (  29.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
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
 Alexandre Belloni <alexandre.belloni@bootlin.com>, linux-iio@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>, linux-input@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8618597434751639350=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============8618597434751639350==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="kfjH4zxOES6UT95V"
Content-Disposition: inline


--kfjH4zxOES6UT95V
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 06, 2020 at 05:53:20PM +0200, Kamel Bouhara wrote:
> This drivers allows to use the capture mode of the Timer Counter Block
> hardware block available in Atmel SoCs through the counter subsystem.
>=20
> Two functions of the counter are supported for the moment: period
> capture and quadrature decoder. The latter is only supported by the
> SAMA5 series of SoCs.
>=20
> For the period capture mode a basic setup has been chosen that will
> reset the counter each time the period is actually reached. Of course
> the device offers much more possibilities.
>=20
> For quadrature mode, both channel 0 and 1 must be configured even if we
> only capture the position (no revolution/rotation).
>=20
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>

Hi Kamel,

Thank you for submitting support for this driver. Since this is a new
counter driver, make sure to create an entry for it in the top-level
MAINTAINERS file so users know who to contact to report bugs and other
issues.

I've written some more comments inline below.

> ---
>  drivers/counter/Kconfig             |  11 +
>  drivers/counter/Makefile            |   1 +
>  drivers/counter/atmel-tcb-capture.c | 388 ++++++++++++++++++++++++++++
>  3 files changed, 400 insertions(+)
>  create mode 100644 drivers/counter/atmel-tcb-capture.c
>=20
> diff --git a/drivers/counter/Kconfig b/drivers/counter/Kconfig
> index c80fa76bb531..c50d7453ec33 100644
> --- a/drivers/counter/Kconfig
> +++ b/drivers/counter/Kconfig
> @@ -70,4 +70,15 @@ config FTM_QUADDEC
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called ftm-quaddec.
> =20
> +config ATMEL_TCB_CAPTURE
> +	tristate "Atmel Timer Counter Capture driver"
> +	depends on HAS_IOMEM && OF
> +	select REGMAP_MMIO
> +	help
> +	  Select this option to enable the Atmel Timer Counter Block
> +	  capture driver.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called atmel-tcb-capture.
> +
>  endif # COUNTER
> diff --git a/drivers/counter/Makefile b/drivers/counter/Makefile
> index 55142d1f4c43..70c5b8924588 100644
> --- a/drivers/counter/Makefile
> +++ b/drivers/counter/Makefile
> @@ -10,3 +10,4 @@ obj-$(CONFIG_STM32_TIMER_CNT)	+=3D stm32-timer-cnt.o
>  obj-$(CONFIG_STM32_LPTIMER_CNT)	+=3D stm32-lptimer-cnt.o
>  obj-$(CONFIG_TI_EQEP)		+=3D ti-eqep.o
>  obj-$(CONFIG_FTM_QUADDEC)	+=3D ftm-quaddec.o
> +obj-$(CONFIG_ATMEL_TCB_CAPTURE)	+=3D atmel-tcb-capture.o
> diff --git a/drivers/counter/atmel-tcb-capture.c b/drivers/counter/atmel-=
tcb-capture.c
> new file mode 100644
> index 000000000000..6ac809503f90
> --- /dev/null
> +++ b/drivers/counter/atmel-tcb-capture.c
> @@ -0,0 +1,388 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/**
> + * Copyright (C) 2020 Atmel
> + *
> + * Author: Kamel Bouhara <kamel.bouhara@bootlin.com>
> + *
> + */
> +#include <linux/clk.h>
> +#include <linux/counter.h>
> +#include <linux/mfd/syscon.h>
> +#include <linux/module.h>
> +#include <linux/mutex.h>
> +#include <linux/of.h>
> +#include <linux/of_device.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +#include <soc/at91/atmel_tcb.h>
> +
> +#define ATMEL_TC_CMR_MASK	(ATMEL_TC_LDRA_RISING | ATMEL_TC_LDRB_FALLING =
| \
> +				 ATMEL_TC_ETRGEDG_RISING | ATMEL_TC_LDBDIS | \
> +				 ATMEL_TC_LDBSTOP)
> +
> +#define ATMEL_TC_QDEN			BIT(8)
> +#define ATMEL_TC_POSEN			BIT(9)
> +
> +struct atmel_tc_data {
> +	const struct atmel_tcb_config *tc_cfg;
> +	struct counter_device counter;
> +	struct regmap *regmap;
> +	int qdec_mode;
> +	int num_channels;
> +	int channel[2];
> +	bool trig_inverted;
> +};
> +
> +enum atmel_tc_count_function {
> +	ATMEL_TC_FUNCTION_INCREASE,
> +	ATMEL_TC_FUNCTION_QUADRATURE,
> +};
> +
> +static enum counter_count_function atmel_tc_count_functions[] =3D {
> +	[ATMEL_TC_FUNCTION_INCREASE] =3D COUNTER_COUNT_FUNCTION_INCREASE,
> +	[ATMEL_TC_FUNCTION_QUADRATURE] =3D COUNTER_COUNT_FUNCTION_QUADRATURE_X4,
> +};
> +
> +enum atmel_tc_synapse_action {
> +	ATMEL_TC_SYNAPSE_ACTION_NONE =3D 0,
> +	ATMEL_TC_SYNAPSE_ACTION_RISING_EDGE,
> +	ATMEL_TC_SYNAPSE_ACTION_FALLING_EDGE,
> +	ATMEL_TC_SYNAPSE_ACTION_BOTH_EDGE
> +};
> +
> +static enum counter_synapse_action atmel_tc_synapse_actions[] =3D {
> +	[ATMEL_TC_SYNAPSE_ACTION_NONE] =3D COUNTER_SYNAPSE_ACTION_NONE,
> +	[ATMEL_TC_SYNAPSE_ACTION_RISING_EDGE] =3D COUNTER_SYNAPSE_ACTION_RISING=
_EDGE,
> +	[ATMEL_TC_SYNAPSE_ACTION_FALLING_EDGE] =3D COUNTER_SYNAPSE_ACTION_FALLI=
NG_EDGE,
> +	[ATMEL_TC_SYNAPSE_ACTION_BOTH_EDGE] =3D COUNTER_SYNAPSE_ACTION_BOTH_EDG=
ES,
> +};
> +
> +static struct counter_signal atmel_tc_count_signals[] =3D {
> +	{
> +		.id =3D 0,
> +		.name =3D "Channel A",
> +	},
> +	{
> +		.id =3D 1,
> +		.name =3D "Channel B",
> +	}
> +};
> +
> +static struct counter_synapse atmel_tc_count_synapses[] =3D {
> +	{
> +		.actions_list =3D atmel_tc_synapse_actions,
> +		.num_actions =3D ARRAY_SIZE(atmel_tc_synapse_actions),
> +		.signal =3D &atmel_tc_count_signals[0]
> +	},
> +	{
> +		.actions_list =3D atmel_tc_synapse_actions,
> +		.num_actions =3D ARRAY_SIZE(atmel_tc_synapse_actions),
> +		.signal =3D &atmel_tc_count_signals[1]
> +	}
> +};
> +
> +static int atmel_tc_count_function_get(struct counter_device *counter,
> +				       struct counter_count *count,
> +				       size_t *function)
> +{
> +	struct atmel_tc_data *const priv =3D counter->priv;
> +
> +	if (priv->qdec_mode)
> +		*function =3D ATMEL_TC_FUNCTION_QUADRATURE;
> +	else
> +		*function =3D ATMEL_TC_FUNCTION_INCREASE;
> +
> +	return 0;
> +}
> +
> +static int atmel_tc_count_function_set(struct counter_device *counter,
> +				       struct counter_count *count,
> +				       size_t function)
> +{
> +	struct atmel_tc_data *const priv =3D counter->priv;
> +	u32 bmr, cmr;
> +
> +	regmap_read(priv->regmap, ATMEL_TC_BMR, &bmr);
> +	regmap_read(priv->regmap, ATMEL_TC_REG(priv->channel[0], CMR), &cmr);
> +
> +	/* Set capture mode */
> +	cmr &=3D ~ATMEL_TC_WAVE;
> +
> +	switch (function) {
> +	case ATMEL_TC_FUNCTION_INCREASE:
> +		priv->qdec_mode =3D 0;
> +		/* Set highest rate based on whether soc has gclk or not */
> +		bmr &=3D ~(ATMEL_TC_QDEN | ATMEL_TC_POSEN);
> +		if (priv->tc_cfg->has_gclk)
> +			cmr |=3D ATMEL_TC_TIMER_CLOCK2;
> +		else
> +			cmr |=3D ATMEL_TC_TIMER_CLOCK1;
> +		/* Setup the period capture mode */
> +		cmr |=3D  ATMEL_TC_CMR_MASK;
> +		cmr &=3D ~(ATMEL_TC_ABETRG | ATMEL_TC_XC0);
> +		break;
> +	case ATMEL_TC_FUNCTION_QUADRATURE:
> +		if (!priv->tc_cfg->has_qdec)
> +			return -ENODEV;

I think returning an -EINVAL here might be better. I can understand that
the system does not have a quadrature encoder device in this case, but
=66rom the user perspective they are requesting to set the function for
the existing counter device. Therefore, if the existing counter device
does not support the requested function, it makes sense to report the
issue as simply an invalid argument (return -EINVAL) for this particular
device.

> +		/* In QDEC mode settings both channels 0 and 1 are required */
> +		if (priv->num_channels < 2 || priv->channel[0] !=3D 0 ||
> +		    priv->channel[1] !=3D 1) {
> +			pr_err("Invalid channels number or id for quadrature mode\n");
> +			return -EINVAL;
> +		}
> +		priv->qdec_mode =3D 1;
> +		bmr |=3D ATMEL_TC_QDEN | ATMEL_TC_POSEN;
> +		cmr |=3D ATMEL_TC_ETRGEDG_RISING | ATMEL_TC_ABETRG | ATMEL_TC_XC0;
> +		break;
> +	}
> +
> +	regmap_write(priv->regmap, ATMEL_TC_BMR, bmr);
> +	regmap_write(priv->regmap, ATMEL_TC_REG(priv->channel[0], CMR), cmr);
> +
> +	/* Enable clock and trigger counter */
> +	regmap_write(priv->regmap, ATMEL_TC_REG(priv->channel[0], CCR),
> +		     ATMEL_TC_CLKEN | ATMEL_TC_SWTRG);
> +
> +	if (priv->qdec_mode) {
> +		regmap_write(priv->regmap,
> +			     ATMEL_TC_REG(priv->channel[1], CMR), cmr);
> +		regmap_write(priv->regmap,
> +			     ATMEL_TC_REG(priv->channel[1], CCR),
> +			     ATMEL_TC_CLKEN | ATMEL_TC_SWTRG);
> +	}
> +
> +	return 0;
> +}
> +
> +static int atmel_tc_count_signal_read(struct counter_device *counter,
> +				      struct counter_signal *signal,
> +				      enum counter_signal_value *val)
> +{
> +	struct atmel_tc_data *const priv =3D counter->priv;
> +	bool sigstatus;
> +	u32 sr;
> +
> +	regmap_read(priv->regmap, ATMEL_TC_REG(priv->channel[0], SR), &sr);
> +
> +	if (priv->trig_inverted)
> +		sigstatus =3D (sr & ATMEL_TC_MTIOB);
> +	else
> +		sigstatus =3D (sr & ATMEL_TC_MTIOA);
> +
> +	*val =3D sigstatus ? COUNTER_SIGNAL_HIGH : COUNTER_SIGNAL_LOW;
> +
> +	return 0;
> +}
> +
> +static int atmel_tc_count_action_get(struct counter_device *counter,
> +				     struct counter_count *count,
> +				     struct counter_synapse *synapse,
> +				     size_t *action)
> +{
> +	struct atmel_tc_data *const priv =3D counter->priv;
> +	u32 cmr;
> +
> +	regmap_read(priv->regmap, ATMEL_TC_REG(priv->channel[0], CMR), &cmr);
> +
> +	*action =3D ATMEL_TC_SYNAPSE_ACTION_NONE;
> +
> +	if (cmr & ATMEL_TC_ETRGEDG_NONE)
> +		*action =3D ATMEL_TC_SYNAPSE_ACTION_NONE;
> +	else if (cmr & ATMEL_TC_ETRGEDG_RISING)
> +		*action =3D ATMEL_TC_SYNAPSE_ACTION_RISING_EDGE;
> +	else if (cmr & ATMEL_TC_ETRGEDG_FALLING)
> +		*action =3D ATMEL_TC_SYNAPSE_ACTION_FALLING_EDGE;
> +	else if (cmr & ATMEL_TC_ETRGEDG_BOTH)
> +		*action =3D ATMEL_TC_SYNAPSE_ACTION_BOTH_EDGE;
> +
> +	return 0;
> +}
> +
> +static int atmel_tc_count_action_set(struct counter_device *counter,
> +				     struct counter_count *count,
> +				     struct counter_synapse *synapse,
> +				     size_t action)
> +{
> +	struct atmel_tc_data *const priv =3D counter->priv;
> +	u32 edge =3D ATMEL_TC_ETRGEDG_NONE;
> +
> +	switch (action) {
> +	case ATMEL_TC_SYNAPSE_ACTION_NONE:
> +		edge =3D ATMEL_TC_ETRGEDG_NONE;
> +		break;
> +	case ATMEL_TC_SYNAPSE_ACTION_RISING_EDGE:
> +		edge =3D ATMEL_TC_ETRGEDG_RISING;
> +		break;
> +	case ATMEL_TC_SYNAPSE_ACTION_FALLING_EDGE:
> +		edge =3D ATMEL_TC_ETRGEDG_FALLING;
> +		break;
> +	case ATMEL_TC_SYNAPSE_ACTION_BOTH_EDGE:
> +		edge =3D ATMEL_TC_ETRGEDG_BOTH;
> +		break;
> +	}
> +
> +	return regmap_write_bits(priv->regmap,
> +				ATMEL_TC_REG(priv->channel[0], CMR),
> +				ATMEL_TC_ETRGEDG, edge);

Are users able to adjust the edges like this even if the device is
configured for QDEC mode? If not, you should return -EINVAL if the
device is in QDEC mode.

> +}
> +
> +static int atmel_tc_count_read(struct counter_device *counter,
> +			       struct counter_count *count,
> +			       unsigned long *val)
> +{
> +	struct atmel_tc_data *const priv =3D counter->priv;
> +	u32 cnt;
> +
> +	regmap_read(priv->regmap, ATMEL_TC_REG(priv->channel[0], CV), &cnt);
> +	*val =3D cnt;
> +
> +	return 0;
> +}
> +
> +static struct counter_count atmel_tc_count =3D {
> +	.id =3D 0,
> +	.name =3D "Timer Counter",
> +	.functions_list =3D atmel_tc_count_functions,
> +	.num_functions =3D ARRAY_SIZE(atmel_tc_count_functions),
> +	.synapses =3D atmel_tc_count_synapses,
> +	.num_synapses =3D ARRAY_SIZE(atmel_tc_count_synapses),
> +};
> +
> +static struct counter_ops atmel_tc_ops =3D {
> +	.signal_read  =3D atmel_tc_count_signal_read,
> +	.count_read   =3D atmel_tc_count_read,
> +	.count_write  =3D NULL,

No need to explicitly set count_write to NULL since it will be NULL by
default in this static structure.

> +	.function_get =3D atmel_tc_count_function_get,
> +	.function_set =3D atmel_tc_count_function_set,
> +	.action_get   =3D atmel_tc_count_action_get,
> +	.action_set   =3D atmel_tc_count_action_set
> +};
> +
> +static const struct atmel_tcb_config tcb_rm9200_config =3D {
> +		.counter_width =3D 16,
> +};
> +
> +static const struct atmel_tcb_config tcb_sam9x5_config =3D {
> +		.counter_width =3D 32,
> +};
> +
> +static const struct atmel_tcb_config tcb_sama5d2_config =3D {
> +		.counter_width =3D 32,
> +		.has_gclk =3D true,
> +		.has_qdec =3D true,
> +};
> +
> +static const struct atmel_tcb_config tcb_sama5d3_config =3D {
> +		.counter_width =3D 32,
> +		.has_qdec =3D true,
> +};
> +
> +static const struct of_device_id atmel_tc_of_match[] =3D {
> +	{ .compatible =3D "atmel,at91rm9200-tcb", .data =3D &tcb_rm9200_config,=
 },
> +	{ .compatible =3D "atmel,at91sam9x5-tcb", .data =3D &tcb_sam9x5_config,=
 },
> +	{ .compatible =3D "atmel,sama5d2-tcb", .data =3D &tcb_sama5d2_config, },
> +	{ .compatible =3D "atmel,sama5d3-tcb", .data =3D &tcb_sama5d3_config, },
> +	{ /* sentinel */ }
> +};
> +
> +static int atmel_tc_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np =3D pdev->dev.of_node;
> +	const struct atmel_tcb_config *tcb_config;
> +	const struct of_device_id *match;
> +	struct atmel_tc_data *priv;
> +	char clk_name[] =3D "t0_clk";
> +	struct regmap *regmap;
> +	struct clk *clk[3];
> +	int channel;
> +	int ret, i;
> +
> +	priv =3D devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
> +	if (!priv)
> +		return -ENOMEM;
> +
> +	platform_set_drvdata(pdev, priv);
> +
> +	match =3D of_match_node(atmel_tc_of_match, np->parent);
> +	tcb_config =3D match->data;
> +	if (!tcb_config) {
> +		dev_err(&pdev->dev, "No matching parent node found\n");
> +		return -ENODEV;
> +	}
> +
> +	regmap =3D syscon_node_to_regmap(np->parent);
> +	if (IS_ERR(priv->regmap))
> +		return PTR_ERR(priv->regmap);
> +
> +	/* max. channels number is 2 when in QDEC mode */
> +	priv->num_channels =3D of_property_count_u32_elems(np, "reg");
> +	if (priv->num_channels < 0) {
> +		dev_err(&pdev->dev, "Invalid or missing channel\n");
> +		return -EINVAL;
> +	}
> +
> +	/* Register channels and initialize clocks */
> +	for (i =3D 0; i < priv->num_channels; i++) {
> +		ret =3D of_property_read_u32_index(np, "reg", i, &channel);
> +		if (ret < 0 || channel > 2)
> +			return -ENODEV;
> +
> +		priv->channel[i] =3D channel;
> +
> +		clk_name[1] +=3D channel;

You're being clever here (not a bad thing) but this looks too easy to
get wrong and confused. I'd much rather see a snprintf here for clarity
and know that nothing funny is going to happen.

> +		clk[i] =3D of_clk_get_by_name(np->parent, clk_name);
> +		if (IS_ERR(clk[i])) {
> +			/* Fallback to t0_clk */
> +			clk[i] =3D of_clk_get_by_name(np->parent, "t0_clk");
> +			if (IS_ERR(clk[i]))
> +				return PTR_ERR(clk[i]);
> +		}
> +
> +		ret =3D clk_prepare_enable(clk[i]);
> +		if (ret)
> +			return ret;
> +
> +		dev_info(&pdev->dev,
> +			 "Initialized capture mode on channel %d\n",
> +			 channel);
> +	}
> +
> +	priv->tc_cfg =3D tcb_config;
> +	priv->regmap =3D regmap;
> +	priv->counter.name =3D dev_name(&pdev->dev);
> +	priv->counter.parent =3D &pdev->dev;
> +	priv->counter.ops =3D &atmel_tc_ops;
> +	priv->counter.num_counts =3D 1;

Use ARRAY_SIZE here so that future reviewers will know that num_counts
matches what's in the atmel_tc_count array without having to check so
themselves.

William Breathitt Gray

> +	priv->counter.counts =3D &atmel_tc_count;
> +	priv->counter.num_signals =3D ARRAY_SIZE(atmel_tc_count_signals);
> +	priv->counter.signals =3D atmel_tc_count_signals;
> +	priv->counter.priv =3D priv;
> +
> +	ret =3D devm_counter_register(&pdev->dev, &priv->counter);
> +	if (ret < 0) {
> +		for (i =3D 0; i < priv->num_channels; i++)
> +			clk_disable_unprepare(clk[i]);
> +		return ret;
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id atmel_tc_dt_ids[] =3D {
> +	{ .compatible =3D "atmel,tcb-capture", },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, atmel_tc_dt_ids);
> +
> +static struct platform_driver atmel_tc_driver =3D {
> +	.probe =3D atmel_tc_probe,
> +	.driver =3D {
> +		.name =3D "atmel-tcb-capture",
> +		.of_match_table =3D atmel_tc_dt_ids,
> +	},
> +};
> +module_platform_driver(atmel_tc_driver);
> +
> +MODULE_AUTHOR("Kamel Bouhara <kamel.bouhara@bootlin.com>");
> +MODULE_DESCRIPTION("Atmel TCB Capture driver");
> +MODULE_LICENSE("GPL v2");
> --=20
> 2.25.0
>=20

--kfjH4zxOES6UT95V
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6OQpcACgkQhvpINdm7
VJKzkxAA4oyTS1HWLdtrt93Ob0L8o+GxCg4KuvOHneTy0bYwFMJDTZud2/NJYSc+
llrmcb8Xdka5Kgwse5Pnt0nS58o8jSfuiam13YfdWtwVeB/a1XhOMx52gdpwzHb/
D8fWlGJUFp1Ww3NOtHUMg0pOKhpFJVC6i2Wa4SRQMfsRADqvtn6J3mLWELFfFpM3
bIfNyKpr0Fc1ves7afgFWFFinQna8ncGjbKg3mAQbcmZnLy5n+HFG1VfFPvG/VEX
PSwoUH1tacJDbs9Bb0O/M8tD9Ze3IYbmbDYT35gj1hrgF9gCWjhfPKwBCPimDUpX
bmuaeHySlWubcIYd9jPLQH91cRSLyQYT14oM05wL5BOGgJwsvISI92UxvhSKwuFQ
P2KJi3JftsvhDsRFCBqxD8jpKkiF5OjmOEZaY3CBgnU5fOGN9AGJMR4pNxTpF+Up
dJdTccgE7mHn/oNDAuLmRFXVMByUKbhTYhdNnq8fPSzd2rHzz1ba+VLTR8Kivrr2
VuksUS6TXVJOxYu6wwVOM9FftTGQehDDYuPxuL9qJjJZsiKxbNN4YmBdRyn/NBmB
ISPx274bpYpbMoPb0diDs1KZt10BsDnsK8jkDlreIPv0DCxkzUxRSZ71sXDF+/wy
lDyk+0yzHj/8TSPV71A0iJegA3GRYqjL8KmGLmqKqeiJJmmQxMk=
=7F1P
-----END PGP SIGNATURE-----

--kfjH4zxOES6UT95V--


--===============8618597434751639350==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============8618597434751639350==--

