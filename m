Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6016219B13B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 18:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4nCCOAugD3WGrKY67t1iHAUB1QAhJgknvOogGjod51o=; b=RMgYRLRNml+n9R
	aW4HKwP8mjnCucgX6qtI/T1aOfWYf7zrZlJN1p6/yYbzRAfp4/dGu3iB12khrDkN/9uWQOGPLz3lJ
	VBJj91ie2onQ/p9sB3nbx05/dQfaW/rgSQbzdN7/QGZyLM+SgOzBMwE8vTxnslPOnBYWFDVGjZiJi
	R1tpkzLA3CYOmYU19S2Y3GuxX/NUuzkN7S2H7xNLXLHvT9TKKx5FZ2Dxc+nzktWD5XxtGemUH5Edg
	SXoHlWgN51fbQItSEsDrboaLI/mk6VMVM7rfDWICKEh4Ee1q1N1hcQoyWmOKRVIqDfx71FevVGZrj
	ZV3wzfDsd7w8N/SLRgng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJgK0-0006To-LG; Wed, 01 Apr 2020 16:34:32 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJgJu-0006SX-D8; Wed, 01 Apr 2020 16:34:28 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1jJgJl-0003TS-Fj; Wed, 01 Apr 2020 18:34:17 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: =?ISO-8859-1?Q?Myl=E8ne?= Josserand <mylene.josserand@collabora.com>
Subject: Re: [PATCH v2 1/2] soc: rockchip: Register a soc_device to retrieve
 revision
Date: Wed, 01 Apr 2020 18:34:16 +0200
Message-ID: <5143930.cPWVAAQKI9@diego>
In-Reply-To: <20200401153513.423683-2-mylene.josserand@collabora.com>
References: <20200401153513.423683-1-mylene.josserand@collabora.com>
 <20200401153513.423683-2-mylene.josserand@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_093426_595527_DC694538 
X-CRM114-Status: GOOD (  23.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org,
 geert@linux-m68k.org, kernel@collabora.com, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Myl=E8ne,

Am Mittwoch, 1. April 2020, 17:35:12 CEST schrieb Myl=E8ne Josserand:
> Determine which revision of rk3288 by checking the HDMI version.
> According to the Rockchip BSP kernel/u-boot, on rk3288w, the HDMI
> revision equals 0x1A which is not the case for the rk3288.
> =

> As these SOC have some differences, this driver will help us
> to know on which revision we are by using 'soc_device' registration
> to be able to use 'soc_device_match' to detect rk3288/rk3288w.
> =

> Signed-off-by: Myl=E8ne Josserand <mylene.josserand@collabora.com>

I like your new approach quite a lot :-)

There are some things we need to take into account though, see below.


> ---
>  drivers/soc/rockchip/Makefile |   1 +
>  drivers/soc/rockchip/rk3288.c | 125 ++++++++++++++++++++++++++++++++++
>  2 files changed, 126 insertions(+)
>  create mode 100644 drivers/soc/rockchip/rk3288.c
> =

> diff --git a/drivers/soc/rockchip/Makefile b/drivers/soc/rockchip/Makefile
> index afca0a4c4b72..9dbf12913512 100644
> --- a/drivers/soc/rockchip/Makefile
> +++ b/drivers/soc/rockchip/Makefile
> @@ -2,5 +2,6 @@
>  #
>  # Rockchip Soc drivers
>  #
> +obj-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3288.o
>  obj-$(CONFIG_ROCKCHIP_GRF) +=3D grf.o
>  obj-$(CONFIG_ROCKCHIP_PM_DOMAINS) +=3D pm_domains.o
> diff --git a/drivers/soc/rockchip/rk3288.c b/drivers/soc/rockchip/rk3288.c

I'd really like this to be a soc.c instead of rk3288.c ;-)


> new file mode 100644
> index 000000000000..83379ba2b31b
> --- /dev/null
> +++ b/drivers/soc/rockchip/rk3288.c
> @@ -0,0 +1,125 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright 2020 Collabora Ltd
> + * Author: Mylene Josserand <mylene.josserand@collabora.com>
> + */
> +
> +#include <linux/init.h>
> +#include <linux/io.h>
> +#include <linux/of_address.h>
> +#include <linux/sys_soc.h>
> +#include <linux/slab.h>
> +#include <linux/platform_device.h>
> +#include <linux/of.h>
> +
> +#define RK3288_HDMI_REV_REG	0x04
> +#define RK3288W_HDMI_REV	0x1A
> +
> +enum rk3288_soc_rev {
> +	RK3288_SOC_REV_NOT_DETECT,
> +	RK3288_SOC_REV_RK3288,
> +	RK3288_SOC_REV_RK3288W,
> +};
> +
> +static int rk3288_revision(void)
> +{
> +	static int revision =3D RK3288_SOC_REV_NOT_DETECT;
> +	struct device_node *dn;
> +	void __iomem *hdmi_base;
> +
> +	if (revision !=3D RK3288_SOC_REV_NOT_DETECT)
> +		return revision;
> +
> +	dn =3D of_find_compatible_node(NULL, NULL, "rockchip,rk3288-dw-hdmi");
> +	if (!dn) {
> +		pr_err("%s: Couldn't find HDMI node\n", __func__);
> +		return -EINVAL;
> +	}
> +
> +	hdmi_base =3D of_iomap(dn, 0);
> +	of_node_put(dn);
> +
> +	if (!hdmi_base) {
> +		pr_err("%s: Couldn't map %pOF regs\n", __func__,
> +		       hdmi_base);
> +		return -ENXIO;
> +	}

The possible problem I see here is clocking and power-domain of the hdmi
controller in corner-cases. In the past we already had a lot of fun with
kexec, which also indicates that people actually use kexec productively.

So while all clocks are ungated and all power-domains are powered on first
boot, on a system without graphics the pclk+power-domain could be off when
doing a kexec into a second kernel, which then would probably hang here.


Of course with the hdmi-pclk being sourced from hclk_vio we run into a
chicken-egg-problem, as we need pclk_hdmi_ctrl to register hclk_vio at all.

So I guess one way out of this could be to
- amend rk3288_clk_shutdown() to also ungate the hdmi-pclk on shutdown
- add a shutdown mechanism to the power-domain driver so that it can
  enable PD_VIO on shutdown

> +
> +	if (readl_relaxed(hdmi_base + RK3288_HDMI_REV_REG)
> +	    =3D=3D RK3288W_HDMI_REV)

nit: a nicer look would be something like
	val =3D readl_relaxed(hdmi_base + RK3288_HDMI_REV_REG);
	if (val =3D=3D RK3288W_HDMI_REV)

> +		revision =3D RK3288_SOC_REV_RK3288W;
> +	else
> +		revision =3D RK3288_SOC_REV_RK3288;
> +
> +	iounmap(hdmi_base);
> +
> +	return revision;
> +}
> +
> +static const char *rk3288_socinfo_revision(u32 rev)
> +{
> +	const char *soc_rev;
> +
> +	switch (rev) {
> +	case RK3288_SOC_REV_RK3288:
> +		soc_rev =3D "RK3288";
> +		break;
> +
> +	case RK3288_SOC_REV_RK3288W:
> +		soc_rev =3D "RK3288w";

can we maybe use lower-case letters for all here?

> +		break;
> +
> +	case RK3288_SOC_REV_NOT_DETECT:
> +		soc_rev =3D "";
> +		break;
> +
> +	default:
> +		soc_rev =3D "unknown";
> +		break;
> +	}
> +
> +	return kstrdup_const(soc_rev, GFP_KERNEL);
> +}
> +
> +static const struct of_device_id rk3288_soc_match[] =3D {
> +	{ .compatible =3D "rockchip,rk3288", },
> +	{ }
> +};
> +
> +static int __init rk3288_soc_init(void)

as noted at the top, I'd really like to see this more generalized so that
other socs can just hook in there with a revision callback in a
rockchip_soc_data struct.


> +{
> +	struct soc_device_attribute *soc_dev_attr;
> +	struct soc_device *soc_dev;
> +	struct device_node *np;
> +
> +	np =3D of_find_matching_node(NULL, rk3288_soc_match);
> +	if (!np)
> +		return -ENODEV;
> +
> +	soc_dev_attr =3D kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> +	if (!soc_dev_attr)
> +		return -ENOMEM;
> +
> +	soc_dev_attr->family =3D "Rockchip";
> +	soc_dev_attr->soc_id =3D "RK32xx";

nit: rk3288 instead of "32xx" please

> +
> +	np =3D of_find_node_by_path("/");
> +	of_property_read_string(np, "model", &soc_dev_attr->machine);
> +	of_node_put(np);
> +
> +	soc_dev_attr->revision =3D rk3288_socinfo_revision(rk3288_revision());
> +
> +	soc_dev =3D soc_device_register(soc_dev_attr);
> +	if (IS_ERR(soc_dev)) {
> +		kfree_const(soc_dev_attr->revision);
> +		kfree_const(soc_dev_attr->soc_id);
> +		kfree(soc_dev_attr);
> +		return PTR_ERR(soc_dev);
> +	}
> +
> +	dev_info(soc_device_to_device(soc_dev), "Rockchip %s %s detected\n",
> +		 soc_dev_attr->soc_id, soc_dev_attr->revision);

nit: dev_dbg should be enough, that information doesn't really matter for
most people, as it's only relevant to clock internals.


Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
