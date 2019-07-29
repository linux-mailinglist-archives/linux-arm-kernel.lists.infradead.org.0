Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ACF578735
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 10:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+SmU3s8bxWHHDZe3RFwd+qXRf/0LefG5j/9fTuGyhL4=; b=oSH7ghIAeDMA2L
	eujaR5399jI6RXbwwRYXsQoaCbSCfc5y+zVazYG7cyh9d3BLbfkEfleQAyQkbyzR1TurPWJTeQtXz
	qqwD/w04LCzzdkR18ZUPDRTkkpm4X5/z27vj6hup8n6QmTk8pTrZCQs2SIN4zL4w5kSeKu4Jrj7c2
	CBgdTWvMCr7nzr/QtRS7RgKZ78QUWbiKP9EWrbY1bABtjBv1qcjTa8OfGHxoR/npO+M59qH8TaiUp
	oEbyplKRVL+8QrphnvD/HHAyXw/MQ/g9HwG6YoLjk480KGLcQq1ulltC09+jeqh4gOCtalZgu1xlR
	gUJNsmjx+NTr9A5fvkgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs0uF-00057b-Ae; Mon, 29 Jul 2019 08:21:19 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs0u0-000576-A1
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 08:21:06 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id 5FE39FB03;
 Mon, 29 Jul 2019 10:12:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3avP_g3MYwj1; Mon, 29 Jul 2019 10:12:22 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 9C4E846BAF; Mon, 29 Jul 2019 10:12:21 +0200 (CEST)
Date: Mon, 29 Jul 2019 10:12:21 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Anson.Huang@nxp.com
Subject: Re: [PATCH 4/6] thermal: qoriq: Add clock operations
Message-ID: <20190729081221.GA2523@bogon.m.sigxcpu.org>
References: <20190705045612.27665-1-Anson.Huang@nxp.com>
 <20190705045612.27665-4-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190705045612.27665-4-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_012104_672948_D439CCA5 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, ccaione@baylibre.com, mturquette@baylibre.com,
 angus@akkea.ca, leonard.crestez@nxp.com, festevam@gmail.com,
 linux-clk@vger.kernel.org, abel.vesa@nxp.com, andrew.smirnov@gmail.com,
 daniel.lezcano@linaro.org, Linux-imx@nxp.com, rui.zhang@intel.com,
 devicetree@vger.kernel.org, linux-pm@vger.kernel.org, s.hauer@pengutronix.de,
 edubezval@gmail.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 sboyd@kernel.org, linux-kernel@vger.kernel.org, kernel@pengutronix.de,
 shawnguo@kernel.org, l.stach@pengutronix.de
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Anson,
On Fri, Jul 05, 2019 at 12:56:10PM +0800, Anson.Huang@nxp.com wrote:
> From: Anson Huang <Anson.Huang@nxp.com>
> =

> Some platforms like i.MX8MQ has clock control for this module,
> need to add clock operations to make sure the driver is working
> properly.
> =

> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
>  drivers/thermal/qoriq_thermal.c | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
> =

> diff --git a/drivers/thermal/qoriq_thermal.c b/drivers/thermal/qoriq_ther=
mal.c
> index 2b2f79b..0813c1b 100644
> --- a/drivers/thermal/qoriq_thermal.c
> +++ b/drivers/thermal/qoriq_thermal.c
> @@ -2,6 +2,7 @@
>  //
>  // Copyright 2016 Freescale Semiconductor, Inc.
>  =

> +#include <linux/clk.h>
>  #include <linux/module.h>
>  #include <linux/platform_device.h>
>  #include <linux/err.h>
> @@ -72,6 +73,7 @@ struct qoriq_sensor {
>  =

>  struct qoriq_tmu_data {
>  	struct qoriq_tmu_regs __iomem *regs;
> +	struct clk *clk;
>  	bool little_endian;
>  	struct qoriq_sensor	*sensor[SITES_MAX];
>  };
> @@ -208,6 +210,19 @@ static int qoriq_tmu_probe(struct platform_device *p=
dev)
>  		return PTR_ERR(data->regs);
>  	}
>  =

> +	data->clk =3D devm_clk_get(&pdev->dev, NULL);
> +	if (IS_ERR(data->clk)) {
> +		if (PTR_ERR(data->clk) =3D=3D -EPROBE_DEFER)
> +			return -EPROBE_DEFER;
> +		data->clk =3D NULL;
> +	}

Wouldn't devm_clk_get_optional make more sense?

> +
> +	ret =3D clk_prepare_enable(data->clk);
> +	if (ret) {
> +		dev_err(&pdev->dev, "Failed to enable clock\n");
> +		return ret;
> +	}
> +
>  	qoriq_tmu_init_device(data);	/* TMU initialization */
>  =

>  	ret =3D qoriq_tmu_calibration(pdev);	/* TMU calibration */
> @@ -235,6 +250,8 @@ static int qoriq_tmu_remove(struct platform_device *p=
dev)
>  	/* Disable monitoring */
>  	tmu_write(data, TMR_DISABLE, &data->regs->tmr);
>  =

> +	clk_disable_unprepare(data->clk);
> +
>  	platform_set_drvdata(pdev, NULL);
>  =

>  	return 0;
> @@ -250,14 +267,21 @@ static int __maybe_unused qoriq_tmu_suspend(struct =
device *dev)
>  	tmr &=3D ~TMR_ME;
>  	tmu_write(data, tmr, &data->regs->tmr);
>  =

> +	clk_disable_unprepare(data->clk);
> +
>  	return 0;
>  }
>  =

>  static int __maybe_unused qoriq_tmu_resume(struct device *dev)
>  {
>  	u32 tmr;
> +	int ret;
>  	struct qoriq_tmu_data *data =3D dev_get_drvdata(dev);
>  =

> +	ret =3D clk_prepare_enable(data->clk);
> +	if (ret)
> +		return ret;
> +
>  	/* Enable monitoring */
>  	tmr =3D tmu_read(data, &data->regs->tmr);
>  	tmr |=3D TMR_ME;

Apart from that it looks like what Fabio sent and what i tested so

Reviewed-by: Guido G=FCnther <agx@sigxcpu.org>

Cheers,
 -- Guido

> -- =

> 2.7.4
> =

> =

> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
