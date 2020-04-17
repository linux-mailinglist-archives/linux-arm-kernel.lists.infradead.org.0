Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED93E1ADEF7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 16:06:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yYma8xKHiv8eoalFBVNEX0OQE4sYVbobAH5tj4SU0yw=; b=mXQPlBP5rbhJA6kCcHg0I4E+S
	IDFu3hrQPdXcT09vjdQgjvWZJu6m/rEhFjMm05JrYRZRBbTJpe0Dd/exJZvwwguv+q8LsIG6rKjbk
	FpF3FE8UMIMFLTq9XvjsHYt6HJs/tEyriDUTtryM0tLYfFhW+Hmzo7krEjFBVdTpGOornT50YfnaT
	gLhpCBohu5jYXOIg7W1e68608SBiEVOrGVj1z3awVVrc2BOLlPsxupNXiwhQqpSAVYhSZMIIMRtFj
	eqgpxB0W+q1ML7yml+xfTaTX0G+hSNWpvER4/G4VLQhIjJ8mZCQpDF2m6pomj+DERPSHPPJlKIcPt
	I5hUFPg3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPRdJ-0000D4-NT; Fri, 17 Apr 2020 14:06:17 +0000
Received: from mail-qv1-xf41.google.com ([2607:f8b0:4864:20::f41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPRdB-0000C6-3u
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 14:06:11 +0000
Received: by mail-qv1-xf41.google.com with SMTP id bu9so889346qvb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Apr 2020 07:06:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=byjXXlwkj7++kRiK3dcEn1IJ9IIvK0hRBWVMCqMzrE4=;
 b=m95tbyoDqSBezeeAiLIvAWespz0NCaUcXZM6pvnnse9k3KtOtFU1etiv/bwNoP7EMM
 OZ6ieuzJREdhQpdkG644O0Q1R6PFcSwYNCgz0mXcF8IeroLaOxgRCdUJZsC1jBZ54n6X
 V/JQoVzhSD2Nw4muBSlL/kQxEsF1ltCpwfdsua8I6Qijbaz+jdaGMdgR6JYpi/AGmZtV
 5FJnKAbI+8ab0YVVc7NlTudylFaA+gB8HMhEgtAEf165CM7cMfOL1Ea8Fhd1xHvJ/A/C
 CaoPG7LAJ6TPJ5IZAANIy5I9KYVHKkdxrTNAdjnam6D5pIgSiuicTBqnBArk3nWynXny
 /DVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=byjXXlwkj7++kRiK3dcEn1IJ9IIvK0hRBWVMCqMzrE4=;
 b=YZwl2hrJ/CiI34KM2Q1BJLewmQ4PicNeB02esgrJF8J48AUIYmuCpvAzOouS9mI3S5
 MS/zCHFfCXW5MmT4wd1o4iDtLb6DLiR35bQ2Nw4du7H0WSntTN7A/O1FMAUQkaltJClv
 +01SnrCHH+EBz2PL5j3H5axCPuv9EduvnBmJW+2m8ILUnpPC7E/bErCC1kmQPcWrnLCU
 7fXxrRsaqFpTuAYj9XIPO5Yh8U3iNieAith84djiS+KY/+r1FdjNbNSJ2CtNMBvmvskX
 Ff9XaBFSPh9gQ/ckr1q5xAuf7N1JHxZFZ1LtAKJYmKZb1MvBsQWd+aDgg9Sq6JPINnX5
 Pbkw==
X-Gm-Message-State: AGi0PubCVbClaJDfEYPtr8KtOPZazhcJJ8PixEKZNDVD4wlAmf4iFeMO
 5w3BiQ8ZPjtoFILT//UPoI4=
X-Google-Smtp-Source: APiQypLCopMdceyPCz2ZqFwfaPzSoKxC//CP+sdepDKmfMsohuz77jf4+dyvEovFLPusUWD8JmRm/g==
X-Received: by 2002:a05:6214:28d:: with SMTP id
 l13mr1528962qvv.181.1587132367061; 
 Fri, 17 Apr 2020 07:06:07 -0700 (PDT)
Received: from icarus (072-189-064-225.res.spectrum.com. [72.189.64.225])
 by smtp.gmail.com with ESMTPSA id 195sm16090712qkd.6.2020.04.17.07.06.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 07:06:05 -0700 (PDT)
Date: Fri, 17 Apr 2020 10:06:03 -0400
From: William Breathitt Gray <vilhelm.gray@gmail.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>, jic23@kernel.org
Subject: Re: [PATCH v3 3/3] counter: Add microchip TCB capture counter
Message-ID: <20200417140603.GC94725@icarus>
References: <20200415130455.2222019-1-kamel.bouhara@bootlin.com>
 <20200415130455.2222019-4-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
In-Reply-To: <20200415130455.2222019-4-kamel.bouhara@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_070609_164422_BB3C2180 
X-CRM114-Status: GOOD (  30.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [vilhelm.gray[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: multipart/mixed; boundary="===============4654168779583304634=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4654168779583304634==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="da4uJneut+ArUgXk"
Content-Disposition: inline


--da4uJneut+ArUgXk
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 15, 2020 at 03:04:55PM +0200, Kamel Bouhara wrote:
> This drivers allows to use the capture mode of the Timer Counter Block
> hardware block available in Microchip SoCs through the counter subsystem.
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

Thank you for all the changes Kamel, I satisfied with this patch now.

Signed-off-by: William Breathitt Gray <vilhelm.gray@gmail.com>

> ---
> Changes from v3:
>  - Updated the brand name: s/atmel/microchip/.
>  - Removed useless blank line
>  - Added an explicit clock removing path using devm_add_action_or_reset
>=20
> Changes from v2:
>  - Updated return code to -EINVAL when user is requesting qdec mode on
>    a counter device not supporting it.
>  - Added an error case returning -EINVAL when action edge is performed in
>    qdec mode.
>  - Removed no need to explicity setting ops to NULL from static struct as
>    it is the default value.
>  - Changed confusing code by using snprintf for the sake of clarity.
>  - Changed code to use ARRAY_SIZE so that future reviewers will know
>    that num_counts matches what's in the atmel_tc_count array without
>    having to check so themselves.
>=20
>  drivers/counter/Kconfig                 |  11 +
>  drivers/counter/Makefile                |   1 +
>  drivers/counter/microchip-tcb-capture.c | 397 ++++++++++++++++++++++++
>  3 files changed, 409 insertions(+)
>  create mode 100644 drivers/counter/microchip-tcb-capture.c
>=20
> diff --git a/drivers/counter/Kconfig b/drivers/counter/Kconfig
> index c80fa76bb531..2de53ab0dd25 100644
> --- a/drivers/counter/Kconfig
> +++ b/drivers/counter/Kconfig
> @@ -70,4 +70,15 @@ config FTM_QUADDEC
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called ftm-quaddec.
> =20
> +config MICROCHIP_TCB_CAPTURE
> +	tristate "Microchip Timer Counter Capture driver"
> +	depends on HAS_IOMEM && OF
> +	select REGMAP_MMIO
> +	help
> +	  Select this option to enable the Microchip Timer Counter Block
> +	  capture driver.
> +
> +	  To compile this driver as a module, choose M here: the
> +	  module will be called microchip-tcb-capture.
> +
>  endif # COUNTER
> diff --git a/drivers/counter/Makefile b/drivers/counter/Makefile
> index 55142d1f4c43..0a393f71e481 100644
> --- a/drivers/counter/Makefile
> +++ b/drivers/counter/Makefile
> @@ -10,3 +10,4 @@ obj-$(CONFIG_STM32_TIMER_CNT)	+=3D stm32-timer-cnt.o
>  obj-$(CONFIG_STM32_LPTIMER_CNT)	+=3D stm32-lptimer-cnt.o
>  obj-$(CONFIG_TI_EQEP)		+=3D ti-eqep.o
>  obj-$(CONFIG_FTM_QUADDEC)	+=3D ftm-quaddec.o
> +obj-$(CONFIG_MICROCHIP_TCB_CAPTURE)	+=3D microchip-tcb-capture.o
> diff --git a/drivers/counter/microchip-tcb-capture.c b/drivers/counter/mi=
crochip-tcb-capture.c
> new file mode 100644
> index 000000000000..f7b7743ddb94
> --- /dev/null
> +++ b/drivers/counter/microchip-tcb-capture.c
> @@ -0,0 +1,397 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/**
> + * Copyright (C) 2020 Microchip
> + *
> + * Author: Kamel Bouhara <kamel.bouhara@bootlin.com>
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
> +struct mchp_tc_data {
> +	const struct atmel_tcb_config *tc_cfg;
> +	struct counter_device counter;
> +	struct regmap *regmap;
> +	int qdec_mode;
> +	int num_channels;
> +	int channel[2];
> +	bool trig_inverted;
> +};
> +
> +enum mchp_tc_count_function {
> +	MCHP_TC_FUNCTION_INCREASE,
> +	MCHP_TC_FUNCTION_QUADRATURE,
> +};
> +
> +static enum counter_count_function mchp_tc_count_functions[] =3D {
> +	[MCHP_TC_FUNCTION_INCREASE] =3D COUNTER_COUNT_FUNCTION_INCREASE,
> +	[MCHP_TC_FUNCTION_QUADRATURE] =3D COUNTER_COUNT_FUNCTION_QUADRATURE_X4,
> +};
> +
> +enum mchp_tc_synapse_action {
> +	MCHP_TC_SYNAPSE_ACTION_NONE =3D 0,
> +	MCHP_TC_SYNAPSE_ACTION_RISING_EDGE,
> +	MCHP_TC_SYNAPSE_ACTION_FALLING_EDGE,
> +	MCHP_TC_SYNAPSE_ACTION_BOTH_EDGE
> +};
> +
> +static enum counter_synapse_action mchp_tc_synapse_actions[] =3D {
> +	[MCHP_TC_SYNAPSE_ACTION_NONE] =3D COUNTER_SYNAPSE_ACTION_NONE,
> +	[MCHP_TC_SYNAPSE_ACTION_RISING_EDGE] =3D COUNTER_SYNAPSE_ACTION_RISING_=
EDGE,
> +	[MCHP_TC_SYNAPSE_ACTION_FALLING_EDGE] =3D COUNTER_SYNAPSE_ACTION_FALLIN=
G_EDGE,
> +	[MCHP_TC_SYNAPSE_ACTION_BOTH_EDGE] =3D COUNTER_SYNAPSE_ACTION_BOTH_EDGE=
S,
> +};
> +
> +static struct counter_signal mchp_tc_count_signals[] =3D {
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
> +static struct counter_synapse mchp_tc_count_synapses[] =3D {
> +	{
> +		.actions_list =3D mchp_tc_synapse_actions,
> +		.num_actions =3D ARRAY_SIZE(mchp_tc_synapse_actions),
> +		.signal =3D &mchp_tc_count_signals[0]
> +	},
> +	{
> +		.actions_list =3D mchp_tc_synapse_actions,
> +		.num_actions =3D ARRAY_SIZE(mchp_tc_synapse_actions),
> +		.signal =3D &mchp_tc_count_signals[1]
> +	}
> +};
> +
> +static int mchp_tc_count_function_get(struct counter_device *counter,
> +				      struct counter_count *count,
> +				      size_t *function)
> +{
> +	struct mchp_tc_data *const priv =3D counter->priv;
> +
> +	if (priv->qdec_mode)
> +		*function =3D MCHP_TC_FUNCTION_QUADRATURE;
> +	else
> +		*function =3D MCHP_TC_FUNCTION_INCREASE;
> +
> +	return 0;
> +}
> +
> +static int mchp_tc_count_function_set(struct counter_device *counter,
> +				      struct counter_count *count,
> +				      size_t function)
> +{
> +	struct mchp_tc_data *const priv =3D counter->priv;
> +	u32 bmr, cmr;
> +
> +	regmap_read(priv->regmap, ATMEL_TC_BMR, &bmr);
> +	regmap_read(priv->regmap, ATMEL_TC_REG(priv->channel[0], CMR), &cmr);
> +
> +	/* Set capture mode */
> +	cmr &=3D ~ATMEL_TC_WAVE;
> +
> +	switch (function) {
> +	case MCHP_TC_FUNCTION_INCREASE:
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
> +	case MCHP_TC_FUNCTION_QUADRATURE:
> +		if (!priv->tc_cfg->has_qdec)
> +			return -EINVAL;
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
> +static int mchp_tc_count_signal_read(struct counter_device *counter,
> +				     struct counter_signal *signal,
> +				     enum counter_signal_value *val)
> +{
> +	struct mchp_tc_data *const priv =3D counter->priv;
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
> +static int mchp_tc_count_action_get(struct counter_device *counter,
> +				    struct counter_count *count,
> +				    struct counter_synapse *synapse,
> +				    size_t *action)
> +{
> +	struct mchp_tc_data *const priv =3D counter->priv;
> +	u32 cmr;
> +
> +	regmap_read(priv->regmap, ATMEL_TC_REG(priv->channel[0], CMR), &cmr);
> +
> +	*action =3D MCHP_TC_SYNAPSE_ACTION_NONE;
> +
> +	if (cmr & ATMEL_TC_ETRGEDG_NONE)
> +		*action =3D MCHP_TC_SYNAPSE_ACTION_NONE;
> +	else if (cmr & ATMEL_TC_ETRGEDG_RISING)
> +		*action =3D MCHP_TC_SYNAPSE_ACTION_RISING_EDGE;
> +	else if (cmr & ATMEL_TC_ETRGEDG_FALLING)
> +		*action =3D MCHP_TC_SYNAPSE_ACTION_FALLING_EDGE;
> +	else if (cmr & ATMEL_TC_ETRGEDG_BOTH)
> +		*action =3D MCHP_TC_SYNAPSE_ACTION_BOTH_EDGE;
> +
> +	return 0;
> +}
> +
> +static int mchp_tc_count_action_set(struct counter_device *counter,
> +				    struct counter_count *count,
> +				    struct counter_synapse *synapse,
> +				    size_t action)
> +{
> +	struct mchp_tc_data *const priv =3D counter->priv;
> +	u32 edge =3D ATMEL_TC_ETRGEDG_NONE;
> +
> +	/* QDEC mode is rising edge only */
> +	if (priv->qdec_mode)
> +		return -EINVAL;
> +
> +	switch (action) {
> +	case MCHP_TC_SYNAPSE_ACTION_NONE:
> +		edge =3D ATMEL_TC_ETRGEDG_NONE;
> +		break;
> +	case MCHP_TC_SYNAPSE_ACTION_RISING_EDGE:
> +		edge =3D ATMEL_TC_ETRGEDG_RISING;
> +		break;
> +	case MCHP_TC_SYNAPSE_ACTION_FALLING_EDGE:
> +		edge =3D ATMEL_TC_ETRGEDG_FALLING;
> +		break;
> +	case MCHP_TC_SYNAPSE_ACTION_BOTH_EDGE:
> +		edge =3D ATMEL_TC_ETRGEDG_BOTH;
> +		break;
> +	}
> +
> +	return regmap_write_bits(priv->regmap,
> +				ATMEL_TC_REG(priv->channel[0], CMR),
> +				ATMEL_TC_ETRGEDG, edge);
> +}
> +
> +static int mchp_tc_count_read(struct counter_device *counter,
> +			      struct counter_count *count,
> +			      unsigned long *val)
> +{
> +	struct mchp_tc_data *const priv =3D counter->priv;
> +	u32 cnt;
> +
> +	regmap_read(priv->regmap, ATMEL_TC_REG(priv->channel[0], CV), &cnt);
> +	*val =3D cnt;
> +
> +	return 0;
> +}
> +
> +static struct counter_count mchp_tc_counts[] =3D {
> +	{
> +		.id =3D 0,
> +		.name =3D "Timer Counter",
> +		.functions_list =3D mchp_tc_count_functions,
> +		.num_functions =3D ARRAY_SIZE(mchp_tc_count_functions),
> +		.synapses =3D mchp_tc_count_synapses,
> +		.num_synapses =3D ARRAY_SIZE(mchp_tc_count_synapses),
> +	},
> +};
> +
> +static struct counter_ops mchp_tc_ops =3D {
> +	.signal_read  =3D mchp_tc_count_signal_read,
> +	.count_read   =3D mchp_tc_count_read,
> +	.function_get =3D mchp_tc_count_function_get,
> +	.function_set =3D mchp_tc_count_function_set,
> +	.action_get   =3D mchp_tc_count_action_get,
> +	.action_set   =3D mchp_tc_count_action_set
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
> +static void mchp_tc_clk_remove(void *ptr)
> +{
> +	clk_disable_unprepare((struct clk *)ptr);
> +}
> +
> +static int mchp_tc_probe(struct platform_device *pdev)
> +{
> +	struct device_node *np =3D pdev->dev.of_node;
> +	const struct atmel_tcb_config *tcb_config;
> +	const struct of_device_id *match;
> +	struct mchp_tc_data *priv;
> +	char clk_name[7];
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
> +		snprintf(clk_name, sizeof(clk_name), "t%d_clk", channel);
> +
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
> +		ret =3D devm_add_action_or_reset(&pdev->dev,
> +					       mchp_tc_clk_remove,
> +					       clk[i]);
> +		if (ret)
> +			return ret;
> +
> +		dev_dbg(&pdev->dev,
> +			"Initialized capture mode on channel %d\n",
> +			channel);
> +	}
> +
> +	priv->tc_cfg =3D tcb_config;
> +	priv->regmap =3D regmap;
> +	priv->counter.name =3D dev_name(&pdev->dev);
> +	priv->counter.parent =3D &pdev->dev;
> +	priv->counter.ops =3D &mchp_tc_ops;
> +	priv->counter.num_counts =3D ARRAY_SIZE(mchp_tc_counts);
> +	priv->counter.counts =3D mchp_tc_counts;
> +	priv->counter.num_signals =3D ARRAY_SIZE(mchp_tc_count_signals);
> +	priv->counter.signals =3D mchp_tc_count_signals;
> +	priv->counter.priv =3D priv;
> +
> +	return devm_counter_register(&pdev->dev, &priv->counter);
> +}
> +
> +static const struct of_device_id mchp_tc_dt_ids[] =3D {
> +	{ .compatible =3D "microchip,tcb-capture", },
> +	{ /* sentinel */ },
> +};
> +MODULE_DEVICE_TABLE(of, mchp_tc_dt_ids);
> +
> +static struct platform_driver mchp_tc_driver =3D {
> +	.probe =3D mchp_tc_probe,
> +	.driver =3D {
> +		.name =3D "microchip-tcb-capture",
> +		.of_match_table =3D mchp_tc_dt_ids,
> +	},
> +};
> +module_platform_driver(mchp_tc_driver);
> +
> +MODULE_AUTHOR("Kamel Bouhara <kamel.bouhara@bootlin.com>");
> +MODULE_DESCRIPTION("Microchip TCB Capture driver");
> +MODULE_LICENSE("GPL v2");
> --=20
> 2.25.0
>=20

--da4uJneut+ArUgXk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEEk5I4PDJ2w1cDf/bghvpINdm7VJIFAl6Zt8sACgkQhvpINdm7
VJIpyRAAlvBFLRJ1ap7U89bhUzG8kA9Wpwt2nJtM7Dk+EuF/qvVDooRg6tszIzhe
VdMpnNeLbVCQg571GcqwpU4m0wiFCgza+5qnZzfRPBmNwyIQTVLaW8rnEc6Jk/Fs
JcqIhq5/eRbKp3toaREMRJ/sJeKn4Qo3as/6x5kOORgf2YqUya9qc854fnszlF2R
9nwiBsXU5de9TWsQAM4JsIb5kcZGN8daHkFcMqGTOZlKfIpkNeNQf/cQUZEXwBf2
6TqFqFpyzw58mTrJZP5FrIL/cU8bJ+116B8P40YulvVAVmBq6ksOalGIqoPL4Sc4
F/ziNp3oTAbk6DR5A9UpfsKTmfok3s2QEr0DI+puNiOKjg1VGS/CP2yh6h0S0f+z
43ysoUiAXEh42D4DedU0Cjg5pFTlJ5Xe8dZ61iKfHyf5w9QXnFlOSxhKQyomsY2M
uWzDvqr4ofL+4QGplMkAlALrfcNr4IlWPMkxOgOCZL9FF/KVO/imzHdVthToNf2g
1j7NKW/Skg9N4BtfsuDVbIQ4DpTDrQrkiOy3K/wuVZseOrI6DOgrUXGfvxQCt1Rb
lW20q0PmPJdRR9nR5vad0BHpr+1eiHIjnAGuYYl2qlxhD2/zMQd1vrfwR/E4Bqtp
hSCXi957RvV++8oWR9dXDzQH9FDLToR0YKdAs0IDKb59AfPrXcM=
=0lFp
-----END PGP SIGNATURE-----

--da4uJneut+ArUgXk--


--===============4654168779583304634==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4654168779583304634==--

