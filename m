Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08A721EE964
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 19:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mb/A8HrHL16RqCP+CayhWb6hc+3m56DzU0e5EeV09CY=; b=QAGWCi1S1D9ZaP12z1fGTlW0i
	EHaoiJegoQdsMVUF+N4eFX/re9buYCBfU5CTIZ1abws7bvmimNhyNYYzUKKNlpUcsodvq2LVv98YA
	SG0nzXVGh+2U+UhQ7Rtz5uN8jeJ3fJnHCFJSLo13I8GSvLcEOh+HsvVRM86Q1oQ1Yzp2b7EV28kEa
	+sE6BKVFeA5vsdKm5zqvDXTCOqxCxhBn70K07fsWjmRCvVfNWCPjursdjvrSRWPLJWdSSvQINN/QV
	4eFqaLm6/83TczORanp8lmBTQ18pAqcAY15HJtpCyxJtq5vL4fs7nPfDbHaiaTCFfHbqErZuVHB1X
	gzBkTb5CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgtdU-0002YA-Cu; Thu, 04 Jun 2020 17:26:36 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgtd6-0002Qh-La; Thu, 04 Jun 2020 17:26:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D195FAFBB;
 Thu,  4 Jun 2020 17:26:13 +0000 (UTC)
Message-ID: <faacbc33174e77500e04e609a654c5810045cb42.camel@suse.de>
Subject: Re: [PATCH v3 004/105] clk: bcm: Add BCM2711 DVP driver
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Maxime Ripard <maxime@cerno.tech>, Eric Anholt <eric@anholt.net>
Date: Thu, 04 Jun 2020 19:26:07 +0200
In-Reply-To: <6615a61b8af240e3d10f8890e4b2462ccdaac9b9.1590594512.git-series.maxime@cerno.tech>
References: <cover.aaf2100bd7da4609f8bcb8216247d4b4e4379639.1590594512.git-series.maxime@cerno.tech>
 <6615a61b8af240e3d10f8890e4b2462ccdaac9b9.1590594512.git-series.maxime@cerno.tech>
User-Agent: Evolution 3.36.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_102613_216001_391417B3 
X-CRM114-Status: GOOD (  21.24  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============1177871083860030140=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============1177871083860030140==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-lPBuLBa/wxwh1MLkx6OO"


--=-lPBuLBa/wxwh1MLkx6OO
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Maxime,

On Wed, 2020-05-27 at 17:47 +0200, Maxime Ripard wrote:
> The HDMI block has a block that controls clocks and reset signals to the
> HDMI0 and HDMI1 controllers.

Why not having two separate drivers?

> Let's expose that through a clock driver implementing a clock and reset
> provider.
>=20
> Cc: Michael Turquette <mturquette@baylibre.com>
> Cc: Stephen Boyd <sboyd@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Cc: devicetree@vger.kernel.org
> Reviewed-by: Stephen Boyd <sboyd@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  drivers/clk/bcm/Kconfig           |  11 +++-
>  drivers/clk/bcm/Makefile          |   1 +-
>  drivers/clk/bcm/clk-bcm2711-dvp.c | 127 +++++++++++++++++++++++++++++++-
>  3 files changed, 139 insertions(+)
>  create mode 100644 drivers/clk/bcm/clk-bcm2711-dvp.c
>=20
> diff --git a/drivers/clk/bcm/Kconfig b/drivers/clk/bcm/Kconfig
> index 8c83977a7dc4..784f12c72365 100644
> --- a/drivers/clk/bcm/Kconfig
> +++ b/drivers/clk/bcm/Kconfig
> @@ -1,4 +1,15 @@
>  # SPDX-License-Identifier: GPL-2.0-only
> +
> +config CLK_BCM2711_DVP
> +	tristate "Broadcom BCM2711 DVP support"
> +	depends on ARCH_BCM2835 ||COMPILE_TEST
> +	depends on COMMON_CLK
> +	default ARCH_BCM2835
> +	select RESET_SIMPLE
> +	help
> +	  Enable common clock framework support for the Broadcom BCM2711
> +	  DVP Controller.
> +
>  config CLK_BCM2835
>  	bool "Broadcom BCM2835 clock support"
>  	depends on ARCH_BCM2835 || ARCH_BRCMSTB || COMPILE_TEST
> diff --git a/drivers/clk/bcm/Makefile b/drivers/clk/bcm/Makefile
> index 0070ddf6cdd2..2c1349062147 100644
> --- a/drivers/clk/bcm/Makefile
> +++ b/drivers/clk/bcm/Makefile
> @@ -6,6 +6,7 @@ obj-$(CONFIG_CLK_BCM_KONA)	+=3D clk-kona-setup.o
>  obj-$(CONFIG_CLK_BCM_KONA)	+=3D clk-bcm281xx.o
>  obj-$(CONFIG_CLK_BCM_KONA)	+=3D clk-bcm21664.o
>  obj-$(CONFIG_COMMON_CLK_IPROC)	+=3D clk-iproc-armpll.o clk-iproc-pll.o
> clk-iproc-asiu.o
> +obj-$(CONFIG_CLK_BCM2835)	+=3D clk-bcm2711-dvp.o
>  obj-$(CONFIG_CLK_BCM2835)	+=3D clk-bcm2835.o
>  obj-$(CONFIG_CLK_BCM2835)	+=3D clk-bcm2835-aux.o
>  obj-$(CONFIG_CLK_RASPBERRYPI)	+=3D clk-raspberrypi.o
> diff --git a/drivers/clk/bcm/clk-bcm2711-dvp.c b/drivers/clk/bcm/clk-bcm2=
711-
> dvp.c
> new file mode 100644
> index 000000000000..c1c4b5857d32
> --- /dev/null
> +++ b/drivers/clk/bcm/clk-bcm2711-dvp.c
> @@ -0,0 +1,127 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// Copyright 2020 Cerno
> +
> +#include <linux/clk-provider.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/reset-controller.h>
> +#include <linux/reset/reset-simple.h>
> +
> +#define DVP_HT_RPI_SW_INIT	0x04
> +#define DVP_HT_RPI_MISC_CONFIG	0x08
> +
> +#define NR_CLOCKS	2
> +#define NR_RESETS	6
> +
> +struct clk_dvp {
> +	struct clk_hw_onecell_data	*data;
> +	struct reset_simple_data	reset;
> +};
> +
> +static const struct clk_parent_data clk_dvp_parent =3D {
> +	.index	=3D 0,
> +};
> +
> +static int clk_dvp_probe(struct platform_device *pdev)
> +{
> +	struct clk_hw_onecell_data *data;
> +	struct resource *res;
> +	struct clk_dvp *dvp;
> +	void __iomem *base;
> +	int ret;
> +
> +	dvp =3D devm_kzalloc(&pdev->dev, sizeof(*dvp), GFP_KERNEL);
> +	if (!dvp)
> +		return -ENOMEM;
> +	platform_set_drvdata(pdev, dvp);
> +
> +	dvp->data =3D devm_kzalloc(&pdev->dev,
> +				 struct_size(dvp->data, hws, NR_CLOCKS),
> +				 GFP_KERNEL);
> +	if (!dvp->data)
> +		return -ENOMEM;
> +	data =3D dvp->data;
> +
> +	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	base =3D devm_ioremap_resource(&pdev->dev, res);

I think the cool function to use these days is
devm_platform_get_and_ioremap_resource().

Regards,
Nicolas

> +	if (IS_ERR(base))
> +		return PTR_ERR(base);
> +
> +	dvp->reset.rcdev.owner =3D THIS_MODULE;
> +	dvp->reset.rcdev.nr_resets =3D NR_RESETS;
> +	dvp->reset.rcdev.ops =3D &reset_simple_ops;
> +	dvp->reset.rcdev.of_node =3D pdev->dev.of_node;
> +	dvp->reset.membase =3D base + DVP_HT_RPI_SW_INIT;
> +	spin_lock_init(&dvp->reset.lock);
> +
> +	ret =3D reset_controller_register(&dvp->reset.rcdev);
> +	if (ret)
> +		return ret;
> +
> +	data->hws[0] =3D clk_hw_register_gate_parent_data(&pdev->dev,
> +							"hdmi0-108MHz",
> +							&clk_dvp_parent, 0,
> +							base +
> DVP_HT_RPI_MISC_CONFIG, 3,
> +							CLK_GATE_SET_TO_DISABLE,
> +							&dvp->reset.lock);
> +	if (IS_ERR(data->hws[0])) {
> +		ret =3D PTR_ERR(data->hws[0]);
> +		goto unregister_reset;
> +	}
> +
> +	data->hws[1] =3D clk_hw_register_gate_parent_data(&pdev->dev,
> +							"hdmi1-108MHz",
> +							&clk_dvp_parent, 0,
> +							base +
> DVP_HT_RPI_MISC_CONFIG, 4,
> +							CLK_GATE_SET_TO_DISABLE,
> +							&dvp->reset.lock);
> +	if (IS_ERR(data->hws[1])) {
> +		ret =3D PTR_ERR(data->hws[1]);
> +		goto unregister_clk0;
> +	}
> +
> +	data->num =3D NR_CLOCKS;
> +	ret =3D of_clk_add_hw_provider(pdev->dev.of_node, of_clk_hw_onecell_get=
,

> +				     data);
> +	if (ret)
> +		goto unregister_clk1;
> +
> +	return 0;
> +
> +unregister_clk1:
> +	clk_hw_unregister_gate(data->hws[1]);
> +
> +unregister_clk0:
> +	clk_hw_unregister_gate(data->hws[0]);
> +
> +unregister_reset:
> +	reset_controller_unregister(&dvp->reset.rcdev);
> +	return ret;
> +};
> +
> +static int clk_dvp_remove(struct platform_device *pdev)
> +{
> +	struct clk_dvp *dvp =3D platform_get_drvdata(pdev);
> +	struct clk_hw_onecell_data *data =3D dvp->data;
> +
> +	clk_hw_unregister_gate(data->hws[1]);
> +	clk_hw_unregister_gate(data->hws[0]);
> +	reset_controller_unregister(&dvp->reset.rcdev);
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id clk_dvp_dt_ids[] =3D {
> +	{ .compatible =3D "brcm,brcm2711-dvp", },
> +	{ /* sentinel */ }
> +};
> +
> +static struct platform_driver clk_dvp_driver =3D {
> +	.probe	=3D clk_dvp_probe,
> +	.remove	=3D clk_dvp_remove,
> +	.driver	=3D {
> +		.name		=3D "brcm2711-dvp",
> +		.of_match_table	=3D clk_dvp_dt_ids,
> +	},
> +};
> +module_platform_driver(clk_dvp_driver);


--=-lPBuLBa/wxwh1MLkx6OO
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl7ZLq8ACgkQlfZmHno8
x/6woAf9He9cZYeL4fiweKGtSwB5ZNhTx7awC6UNWL/E+YIzVoDuIb+gqe31BkE0
ooZ7fIEybz0SXP6sqWm7V813jg7Mgsn93NXZlK5aHQ3avRB4uLse4NcASz7b5gTu
ZtXxL7ULQdBpGlACncdzzq+JlvrkiNy54a3AvZdCjy4u6RewoPrLU5+yWYNC15LF
LQn1NOv4Hq3llEIgpO9cDva7YESfGnsJRHLvGceayptvAjMaLagzsc43C0rltyJ6
2QYjBT7duCsYtA20CZ9WCBwL10hgU7Uenwb9bo2XA7+7ZTP4R/fAx6NAe+nVnQSX
l916sTFCkkBnPd5rMvnk+TeZ3DPUqg==
=ShOF
-----END PGP SIGNATURE-----

--=-lPBuLBa/wxwh1MLkx6OO--



--===============1177871083860030140==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============1177871083860030140==--


