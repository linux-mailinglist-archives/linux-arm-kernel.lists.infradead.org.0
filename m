Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAC5421FD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 12:08:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wAlCWVbLeb2Z2VhgcuzHrs7IrXLhGbKajqUOs375FE0=; b=O06I1DIQM9+W/+VbsJP2cvWpg
	dq3pzVRI+2Eo9evgPqd63M0VS3FVXWrnx9eTPFfgNbmjAJvmpwxOB6LuDVlXYtLsqyRrvNkkddDZv
	tOj8idbXboWqtRQPFVW4H8G8zRYwBvSadje/g1oUyHneAsRHAAUYbRR+E+k5obWOMqRKRdsE+pYy0
	M9TKTw1EEh+ihvHtwozVpMW6NR8n9/shGju9GIWWOPPka3zpWqH+0Q3/THPP/fMILDELpETRIP4i7
	ZlF+bkSBp7nKHOZSKkxHLLfbA+JJonV1JY4AucbCfbajsArx59ruaUpAYdhxgX7LITf5a02AIV4cM
	P2mC4mHAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb0B2-0005GU-1D; Wed, 12 Jun 2019 10:08:20 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb0Aq-0005Fk-Gx; Wed, 12 Jun 2019 10:08:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 431AFAF81;
 Wed, 12 Jun 2019 10:08:06 +0000 (UTC)
Message-ID: <0722a6e21b17b1c54c81fb71e3237e60ae4819b6.camel@suse.de>
Subject: Re: [PATCH v3 4/7] cpufreq: add driver for Raspbery Pi
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: stefan.wahren@i2se.com, "Rafael J. Wysocki" <rjw@rjwysocki.net>, Viresh
 Kumar <viresh.kumar@linaro.org>
Date: Wed, 12 Jun 2019 12:08:03 +0200
In-Reply-To: <20190611175839.28351-5-nsaenzjulienne@suse.de>
References: <20190611175839.28351-1-nsaenzjulienne@suse.de>
 <20190611175839.28351-5-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.32.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_030808_860470_C0FD7E60 
X-CRM114-Status: GOOD (  22.26  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: linux-arm-kernel@lists.infradead.org, f.fainelli@gmail.com,
 ptesarik@suse.com, sboyd@kernel.org, mturquette@baylibre.com,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org, eric@anholt.net,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, mbrugger@suse.de, ssuloev@orpaltech.com
Content-Type: multipart/mixed; boundary="===============4035150333691300343=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============4035150333691300343==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-NucUMhJDBaNTXXV5xvf1"


--=-NucUMhJDBaNTXXV5xvf1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 2019-06-11 at 19:58 +0200, Nicolas Saenz Julienne wrote:
> Raspberry Pi's firmware offers and interface though which update it's
> performance requirements. It allows us to request for specific runtime
> frequencies, which the firmware might or might not respect, depending on
> the firmware configuration and thermals.
>=20
> As the maximum and minimum frequencies are configurable in the firmware
> there is no way to know in advance their values. So the Raspberry Pi
> cpufreq driver queries them, builds an opp frequency table to then
> launch cpufreq-dt.
>=20
> Also, as the firmware interface might be configured as a module, making
> the cpu clock unavailable during init, this implements a full fledged
> driver, as opposed to most drivers registering cpufreq-dt, which only
> make use of an init routine.
>=20
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Acked-by: Eric Anholt <eric@anholt.net>
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> ---

Changes since v2:
  - Round OPP rates

> Changes since v1:
>   - Remove compatible checks
>   - Add module support, now full fledged driver
>   - Use NULL in clk_get()
>=20
>  drivers/cpufreq/Kconfig.arm           |  8 +++
>  drivers/cpufreq/Makefile              |  1 +
>  drivers/cpufreq/raspberrypi-cpufreq.c | 97 +++++++++++++++++++++++++++
>  3 files changed, 106 insertions(+)
>  create mode 100644 drivers/cpufreq/raspberrypi-cpufreq.c
>=20
> diff --git a/drivers/cpufreq/Kconfig.arm b/drivers/cpufreq/Kconfig.arm
> index 6f65b7f05496..56c31a78c692 100644
> --- a/drivers/cpufreq/Kconfig.arm
> +++ b/drivers/cpufreq/Kconfig.arm
> @@ -142,6 +142,14 @@ config ARM_QCOM_CPUFREQ_HW
>  	  The driver implements the cpufreq interface for this HW engine.
>  	  Say Y if you want to support CPUFreq HW.
> =20
> +config ARM_RASPBERRYPI_CPUFREQ
> +	tristate "Raspberry Pi cpufreq support"
> +	depends on CLK_RASPBERRYPI || COMPILE_TEST
> +	help
> +	  This adds the CPUFreq driver for Raspberry Pi
> +
> +	  If in doubt, say N.
> +
>  config ARM_S3C_CPUFREQ
>  	bool
>  	help
> diff --git a/drivers/cpufreq/Makefile b/drivers/cpufreq/Makefile
> index 7bcda2273d0c..5a6c70d26c98 100644
> --- a/drivers/cpufreq/Makefile
> +++ b/drivers/cpufreq/Makefile
> @@ -65,6 +65,7 @@ obj-$(CONFIG_ARM_PXA2xx_CPUFREQ)	+=3D pxa2xx-cpufreq.o
>  obj-$(CONFIG_PXA3xx)			+=3D pxa3xx-cpufreq.o
>  obj-$(CONFIG_ARM_QCOM_CPUFREQ_HW)	+=3D qcom-cpufreq-hw.o
>  obj-$(CONFIG_ARM_QCOM_CPUFREQ_KRYO)	+=3D qcom-cpufreq-kryo.o
> +obj-$(CONFIG_ARM_RASPBERRYPI_CPUFREQ) 	+=3D raspberrypi-cpufreq.o
>  obj-$(CONFIG_ARM_S3C2410_CPUFREQ)	+=3D s3c2410-cpufreq.o
>  obj-$(CONFIG_ARM_S3C2412_CPUFREQ)	+=3D s3c2412-cpufreq.o
>  obj-$(CONFIG_ARM_S3C2416_CPUFREQ)	+=3D s3c2416-cpufreq.o
> diff --git a/drivers/cpufreq/raspberrypi-cpufreq.c
> b/drivers/cpufreq/raspberrypi-cpufreq.c
> new file mode 100644
> index 000000000000..2bc7d9734272
> --- /dev/null
> +++ b/drivers/cpufreq/raspberrypi-cpufreq.c
> @@ -0,0 +1,97 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Raspberry Pi cpufreq driver
> + *
> + * Copyright (C) 2019, Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> + */
> +
> +#include <linux/clk.h>
> +#include <linux/cpu.h>
> +#include <linux/cpufreq.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/pm_opp.h>
> +
> +#define RASPBERRYPI_FREQ_INTERVAL	100000000
> +
> +static struct platform_device *cpufreq_dt;
> +
> +static int raspberrypi_cpufreq_probe(struct platform_device *pdev)
> +{
> +	struct device *cpu_dev;
> +	unsigned long min, max;
> +	unsigned long rate;
> +	struct clk *clk;
> +	int ret;
> +
> +	cpu_dev =3D get_cpu_device(0);
> +	if (!cpu_dev) {
> +		pr_err("Cannot get CPU for cpufreq driver\n");
> +		return -ENODEV;
> +	}
> +
> +	clk =3D clk_get(cpu_dev, NULL);
> +	if (IS_ERR(clk)) {
> +		dev_err(cpu_dev, "Cannot get clock for CPU0\n");
> +		return PTR_ERR(clk);
> +	}
> +
> +	/*
> +	 * The max and min frequencies are configurable in the Raspberry Pi
> +	 * firmware, so we query them at runtime.
> +	 */
> +	min =3D roundup(clk_round_rate(clk, 0), RASPBERRYPI_FREQ_INTERVAL);
> +	max =3D roundup(clk_round_rate(clk, ULONG_MAX),
> RASPBERRYPI_FREQ_INTERVAL);
> +	clk_put(clk);
> +
> +	for (rate =3D min; rate <=3D max; rate +=3D RASPBERRYPI_FREQ_INTERVAL) =
{
> +		ret =3D dev_pm_opp_add(cpu_dev, rate, 0);
> +		if (ret)
> +			goto remove_opp;
> +	}
> +
> +	cpufreq_dt =3D platform_device_register_simple("cpufreq-dt", -1, NULL, =
0);
> +	ret =3D PTR_ERR_OR_ZERO(cpufreq_dt);
> +	if (ret) {
> +		dev_err(cpu_dev, "Failed to create platform device, %d\n", ret);
> +		goto remove_opp;
> +	}
> +
> +	return 0;
> +
> +remove_opp:
> +	dev_pm_opp_remove_all_dynamic(cpu_dev);
> +
> +	return ret;
> +}
> +
> +static int raspberrypi_cpufreq_remove(struct platform_device *pdev)
> +{
> +	struct device *cpu_dev;
> +
> +	cpu_dev =3D get_cpu_device(0);
> +	if (cpu_dev)
> +		dev_pm_opp_remove_all_dynamic(cpu_dev);
> +
> +	platform_device_unregister(cpufreq_dt);
> +
> +	return 0;
> +}
> +
> +/*
> + * Since the driver depends on clk-raspberrypi, which may return
> EPROBE_DEFER,
> + * all the activity is performed in the probe, which may be defered as w=
ell.
> + */
> +static struct platform_driver raspberrypi_cpufreq_driver =3D {
> +	.driver =3D {
> +		.name =3D "raspberrypi-cpufreq",
> +	},
> +	.probe          =3D raspberrypi_cpufreq_probe,
> +	.remove		=3D raspberrypi_cpufreq_remove,
> +};
> +module_platform_driver(raspberrypi_cpufreq_driver);
> +
> +MODULE_AUTHOR("Nicolas Saenz Julienne <nsaenzjulienne@suse.de");
> +MODULE_DESCRIPTION("Raspberry Pi cpufreq driver");
> +MODULE_LICENSE("GPL");
> +MODULE_ALIAS("platform:raspberrypi-cpufreq");


--=-NucUMhJDBaNTXXV5xvf1
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl0AzwMACgkQlfZmHno8
x/7XDwf6AmOp4z2If+9JyAnF9u7fjckQxW95msPdhyTenwMrGgbDfyVj1e/ll9jI
rMRHVydv8Gi6mLQGb+GfY8z1awOkFZRHILG+cH82iyGCabWQKH/V9tFqvG4lLM/C
lsTtGHKqW0yGn+dmw0A/Yj8CWPluaXEqqCVR3fWZEPwngqLPOuJOupRs2HkggRPa
izeC8yLovNBlFT4DjQx7wnjDfoSYJfxDwGRwhiDVh8VCujVb6nqG+1d4nuKfIkCb
J/SjEzmAMsGsoFtHKMEFbhXegEDPUU1eAIwTzckWPc/XxuzMvtseqfYYYzKoBuzo
JfWawUIVoLH7JtMssfg8ViI4fOkoFw==
=oVAV
-----END PGP SIGNATURE-----

--=-NucUMhJDBaNTXXV5xvf1--



--===============4035150333691300343==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============4035150333691300343==--


