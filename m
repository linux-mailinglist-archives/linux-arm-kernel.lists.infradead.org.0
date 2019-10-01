Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74C35C2DAD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 09:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZpRGsY0Z0i56VN/V7SDvyMf0BHr7kyc8u4IwiBHMfFc=; b=okHQ7q+KQE/pkO
	c7InFUdPILrmYSqN5eb2PeGuMGj3CHrZOl3LJ+MF2EeIZPZjVwb99NngjyufCQRZK3TNKhT2KKlMh
	s00ktZxBLjKIhGezuljHs9JARzOVwAp65cRRhPVzxTB+1RdmkEP975TDUvUTriUwqonv4Gs0SSYpL
	JMzjYfBnOts0sSjgm0LMTOMxNdAIIBr3JrQekunIF3YHTbmD+1qA/qTi8ZXnHu/ccPq/MBGUonIWk
	7Bbm76wyV1LAtAYdOjbgm6Ms9lo2zFuIqbUN+HZWD4KBPasgrZAD08KdIPXyBTDV3pw1Zpg5f12Ha
	kIuEjFMIcRoQtS37xonA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFCDj-0003pe-OV; Tue, 01 Oct 2019 07:05:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFCDX-0003n8-Nx
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 07:05:05 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ukl@pengutronix.de>)
 id 1iFCDQ-0003FK-Mn; Tue, 01 Oct 2019 09:04:56 +0200
Received: from ukl by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ukl@pengutronix.de>)
 id 1iFCDK-0006R1-HW; Tue, 01 Oct 2019 09:04:50 +0200
Date: Tue, 1 Oct 2019 09:04:50 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
To: Fabrice Gasnier <fabrice.gasnier@st.com>
Subject: Re: [PATCH 2/2] pwm: stm32: add power management support
Message-ID: <20191001070450.4zogfryzo7a5ssbd@pengutronix.de>
References: <1569857951-20007-1-git-send-email-fabrice.gasnier@st.com>
 <1569857951-20007-3-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1569857951-20007-3-git-send-email-fabrice.gasnier@st.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_000503_783372_82D0BADA 
X-CRM114-Status: GOOD (  23.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-pwm@vger.kernel.org, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 thierry.reding@gmail.com, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 benjamin.gaignard@st.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Fabrice,

On Mon, Sep 30, 2019 at 05:39:11PM +0200, Fabrice Gasnier wrote:
> Add suspend/resume PM sleep ops. When going to low power, enforce the PWM
> channel isn't active. Let the PWM consumers disable it during their own
> suspend sequence, see [1]. So, perform a check here, and handle the
> pinctrl states. Also restore the break inputs upon resume, as registers
> content may be lost when going to low power mode.
> =

> [1] https://lkml.org/lkml/2019/2/5/770
> =

> Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  drivers/pwm/pwm-stm32.c | 82 +++++++++++++++++++++++++++++++++++++------=
------
>  1 file changed, 62 insertions(+), 20 deletions(-)
> =

> diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
> index 740e2de..9bcd73a 100644
> --- a/drivers/pwm/pwm-stm32.c
> +++ b/drivers/pwm/pwm-stm32.c
> @@ -12,6 +12,7 @@
>  #include <linux/mfd/stm32-timers.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> +#include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
>  #include <linux/pwm.h>
>  =

> @@ -19,6 +20,12 @@
>  #define CCMR_CHANNEL_MASK  0xFF
>  #define MAX_BREAKINPUT 2
>  =

> +struct stm32_breakinput {
> +	u32 index;
> +	u32 level;
> +	u32 filter;
> +};
> +
>  struct stm32_pwm {
>  	struct pwm_chip chip;
>  	struct mutex lock; /* protect pwm config/enable */
> @@ -26,15 +33,11 @@ struct stm32_pwm {
>  	struct regmap *regmap;
>  	u32 max_arr;
>  	bool have_complementary_output;
> +	struct stm32_breakinput breakinput[MAX_BREAKINPUT];
> +	unsigned int nbreakinput;
>  	u32 capture[4] ____cacheline_aligned; /* DMA'able buffer */
>  };
>  =

> -struct stm32_breakinput {
> -	u32 index;
> -	u32 level;
> -	u32 filter;
> -};
> -
>  static inline struct stm32_pwm *to_stm32_pwm_dev(struct pwm_chip *chip)
>  {
>  	return container_of(chip, struct stm32_pwm, chip);
> @@ -512,15 +515,27 @@ static int stm32_pwm_set_breakinput(struct stm32_pw=
m *priv,
>  	return (bdtr & bke) ? 0 : -EINVAL;
>  }
>  =

> -static int stm32_pwm_apply_breakinputs(struct stm32_pwm *priv,
> +static int stm32_pwm_apply_breakinputs(struct stm32_pwm *priv)
> +{
> +	int i, ret =3D 0;
> +
> +	for (i =3D 0; i < priv->nbreakinput && !ret; i++) {
> +		ret =3D stm32_pwm_set_breakinput(priv,
> +					       priv->breakinput[i].index,
> +					       priv->breakinput[i].level,
> +					       priv->breakinput[i].filter);
> +	}
> +
> +	return ret;
> +}

Can you explain what the effect of this function is? This is something
that is lost during suspend?

I wonder why the patch is so big. There are some rearrangements that
should have no effect and I think it would be beneficial for
reviewability to split this patch in a patch that only does the
restructuring and than on top of that add the PM stuff.

> +
> +static int stm32_pwm_probe_breakinputs(struct stm32_pwm *priv,
>  				       struct device_node *np)
>  {
> -	struct stm32_breakinput breakinput[MAX_BREAKINPUT];
> -	int nb, ret, i, array_size;
> +	int nb, ret, array_size;
>  =

>  	nb =3D of_property_count_elems_of_size(np, "st,breakinput",
>  					     sizeof(struct stm32_breakinput));
> -
>  	/*
>  	 * Because "st,breakinput" parameter is optional do not make probe
>  	 * failed if it doesn't exist.
> @@ -531,20 +546,14 @@ static int stm32_pwm_apply_breakinputs(struct stm32=
_pwm *priv,
>  	if (nb > MAX_BREAKINPUT)
>  		return -EINVAL;
>  =

> +	priv->nbreakinput =3D nb;
>  	array_size =3D nb * sizeof(struct stm32_breakinput) / sizeof(u32);
>  	ret =3D of_property_read_u32_array(np, "st,breakinput",
> -					 (u32 *)breakinput, array_size);
> +					 (u32 *)priv->breakinput, array_size);
>  	if (ret)
>  		return ret;
>  =

> -	for (i =3D 0; i < nb && !ret; i++) {
> -		ret =3D stm32_pwm_set_breakinput(priv,
> -					       breakinput[i].index,
> -					       breakinput[i].level,
> -					       breakinput[i].filter);
> -	}
> -
> -	return ret;
> +	return stm32_pwm_apply_breakinputs(priv);
>  }
>  =

>  static void stm32_pwm_detect_complementary(struct stm32_pwm *priv)
> @@ -614,7 +623,7 @@ static int stm32_pwm_probe(struct platform_device *pd=
ev)
>  	if (!priv->regmap || !priv->clk)
>  		return -EINVAL;
>  =

> -	ret =3D stm32_pwm_apply_breakinputs(priv, np);
> +	ret =3D stm32_pwm_probe_breakinputs(priv, np);
>  	if (ret)
>  		return ret;
>  =

> @@ -647,6 +656,38 @@ static int stm32_pwm_remove(struct platform_device *=
pdev)
>  	return 0;
>  }
>  =

> +static int __maybe_unused stm32_pwm_suspend(struct device *dev)
> +{
> +	struct stm32_pwm *priv =3D dev_get_drvdata(dev);
> +	struct pwm_state state;
> +	unsigned int i;
> +
> +	for (i =3D 0; i < priv->chip.npwm; i++) {
> +		pwm_get_state(&priv->chip.pwms[i], &state);

pwm_get_state is a function designed to be used by PWM consumers. I
would prefer to check the hardware registers here instead.

What if there is no consumer and the PWM just happens to be enabled by
the bootloader? Or is this too minor an issue to be worth consideration?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
