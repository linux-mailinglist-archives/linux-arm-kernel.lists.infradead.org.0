Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FF1131279
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:03:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dp8IARdaYIHQK3dvz7I8SGduKWO2wHoBALGWVLQ3vwQ=; b=tNRR+CjUYwxySWOYlIusEsRzM
	vmfDl+a5cY7OxOJGOyPn+N5iZPuhMFp6/03HTmjgNd+nXEZtxRG3591GAwEjPpHyEOLeosd+cWVss
	jrWxb5UY02wKcQNUXP+XJ2T10pNQv1H9sF9f8mI7EA9ZF8YPOgeu39LdcA/+B/p3hGXan4JD9OiuK
	mPXIvozCS9lJk8am/f2+yg6HDBEwvo+oauuZ/HJCtrobeyCjehs+eNuzCGclgDms0xZnrl81Jfl0v
	pl/p52qDq8gHzfcPAT2YFIw752jSAni7hfbfr1s1D5vJ0o+LR8Cy8AxH+L4mKqGlu19wTOjdCmwbL
	SLx65i/ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioS2I-0007bk-FB; Mon, 06 Jan 2020 13:03:10 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioS2B-0007bL-LG
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:03:05 +0000
Received: by mail-wm1-x344.google.com with SMTP id c127so11920861wme.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 Jan 2020 05:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=M8GI+fkA1y42UGVxNrVQWD5XfAcMVjkAxvyUEI9AIOk=;
 b=IDMf9BrlhhP6zdH8G8vu3nv5nR0+x2eipT+s/hzJAi2grFqcm7pgsZ8kLyjH5LpHBE
 3iGzdBfKx1R832ExYtz3dX0PJxrfZg8FmLFg/xhW5vi/YOMEVwjjl2BSrb7WUhJb9lHJ
 fVfZ5pk4/JH4w3ZYRnm5G1n8wZdSV9b1wlDgjtWCJDxbCabvX15GjEfw4LNtzzUr1ujy
 G7CH3tLp8gZdmqrReHcUeGCuw2nUINr7E5N7Z2txcYBuG1qptTLQIwbmgvptLkamVV8K
 oG9mprNaqTMo1Kd7F7aZJGx0AEV8Q8HIGDHPNhiQYjun59Na46r0qeu727xCKAmkADiq
 8qnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=M8GI+fkA1y42UGVxNrVQWD5XfAcMVjkAxvyUEI9AIOk=;
 b=CXtdpvwl/mqDXKzvG9iMVVz+4CBkDR55E/MXRG1RfV5CLbbgJLfgEupxe2aIZVE6LY
 4BUo4Z6tcYJu/i6/Z1xkJQWH1Uaa9QceatNcT9Icq1vZiiBeXImLeUqlOWCJGOYcop3d
 i2/SI5uOxNuUg3rwkXPX3WfRBBBgFtYe/iX5nz+8M2wBHi5RPR8qlcx/fEFohdu6cyJn
 7LSiZown3KIuHXcIa+ZnTZRIEp1K2DD89Al5M4DExtNdck0MNANd7X9UcvmXHebNm20K
 nwdrXdbf5PRrNYXgcLD8NOdrZ7e6ZQkad1C3mAuADTDv737NZGsMIYPF0MojYmbrCU5C
 Xghw==
X-Gm-Message-State: APjAAAWREzY+D/3eYh9IIIXVvCt40ouxBw/B0xmT1QmLQ+CEmbmtiPtU
 KLj8XgRew08a4ZHpFJ78up8=
X-Google-Smtp-Source: APXvYqxV85cN6XfSONWL5wpazI7NzUpWYQj5b+2RCtV9KdhuUAw+P8D2rs7n5IfIuXN6C9dM4w808A==
X-Received: by 2002:a1c:770e:: with SMTP id t14mr36873421wmi.101.1578315781745; 
 Mon, 06 Jan 2020 05:03:01 -0800 (PST)
Received: from localhost (p2E5BEF3F.dip0.t-ipconnect.de. [46.91.239.63])
 by smtp.gmail.com with ESMTPSA id y139sm24047581wmd.24.2020.01.06.05.03.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 05:03:00 -0800 (PST)
Date: Mon, 6 Jan 2020 14:02:59 +0100
From: Thierry Reding <thierry.reding@gmail.com>
To: Vidya Sagar <vidyas@nvidia.com>
Subject: Re: [PATCH V2 3/5] PCI: tegra: Add support for PCIe endpoint mode in
 Tegra194
Message-ID: <20200106130259.GB1955714@ulmo>
References: <20200103124404.20662-1-vidyas@nvidia.com>
 <20200103124404.20662-4-vidyas@nvidia.com>
MIME-Version: 1.0
In-Reply-To: <20200103124404.20662-4-vidyas@nvidia.com>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_050303_722738_A1E688E2 
X-CRM114-Status: GOOD (  25.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mmaddireddy@nvidia.com, kthota@nvidia.com, gustavo.pimentel@synopsys.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 robh+dt@kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 andrew.murray@arm.com, jonathanh@nvidia.com,
 linux-arm-kernel@lists.infradead.org, sagar.tv@gmail.com
Content-Type: multipart/mixed; boundary="===============5089334730572424351=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============5089334730572424351==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Y7xTucakfITjPcLV"
Content-Disposition: inline


--Y7xTucakfITjPcLV
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Jan 03, 2020 at 06:14:02PM +0530, Vidya Sagar wrote:
> Add support for the endpoint mode of Synopsys DesignWare core based
> dual mode PCIe controllers present in Tegra194 SoC.
>=20
> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
> ---
> V2:
> * Addressed Bjorn's review comments
> * Made changes as part of addressing review comments for other patches
>=20
>  drivers/pci/controller/dwc/Kconfig         |  30 +-
>  drivers/pci/controller/dwc/pcie-tegra194.c | 782 ++++++++++++++++++++-
>  2 files changed, 796 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/con=
troller/dwc/pcie-tegra194.c
[...]
> @@ -411,11 +466,66 @@ static irqreturn_t tegra_pcie_rp_irq_handler(struct=
 tegra_pcie_dw *pcie)
>  	return IRQ_HANDLED;
>  }
> =20
> +static irqreturn_t tegra_pcie_ep_irq_handler(struct tegra_pcie_dw *pcie)
> +{
> +	struct dw_pcie_ep *ep =3D &pcie->pci.ep;
> +	int spurious =3D 1;
> +	u32 val, tmp;
> +
> +	val =3D appl_readl(pcie, APPL_INTR_STATUS_L0);
> +	if (val & APPL_INTR_STATUS_L0_LINK_STATE_INT) {
> +		val =3D appl_readl(pcie, APPL_INTR_STATUS_L1_0_0);
> +		appl_writel(pcie, val, APPL_INTR_STATUS_L1_0_0);
> +		if (val & APPL_INTR_STATUS_L1_0_0_HOT_RESET_DONE) {
> +			/* clear any stale PEX_RST interrupt */
> +			if (!kfifo_put(&pcie->event_fifo, EP_HOT_RST_DONE)) {
> +				dev_err(pcie->dev, "EVENT FIFO is full\n");
> +				return IRQ_HANDLED;
> +			}
> +			wake_up(&pcie->wq);
> +		}

Overall this patch looks a little cluttered. A few blank lines before
and after (or between) block statements would help make this more
readable, in my opinion.

> +		if (val & APPL_INTR_STATUS_L1_0_0_RDLH_LINK_UP_CHGED) {
> +			tmp =3D appl_readl(pcie, APPL_LINK_STATUS);
> +			if (tmp & APPL_LINK_STATUS_RDLH_LINK_UP) {
> +				dev_info(pcie->dev, "Link is up with Host\n");

Do we want this to be an info message? Looks to me like this is mostly
useful for debug purposes, as a quick way to check if the link is up.
For production use, this would perhaps be better to expose as a sysfs
attribute so that userspace can query it at runtime rather than search
through kernel logs.

> +				dw_pcie_ep_linkup(ep);
> +			}
> +		}
> +		spurious =3D 0;
> +	}
> +
> +	if (val & APPL_INTR_STATUS_L0_PCI_CMD_EN_INT) {
> +		val =3D appl_readl(pcie, APPL_INTR_STATUS_L1_15);
> +		appl_writel(pcie, val, APPL_INTR_STATUS_L1_15);
> +		if (val & APPL_INTR_STATUS_L1_15_CFG_BME_CHGED) {
> +			if (!kfifo_put(&pcie->event_fifo, EP_BME_CHANGE)) {
> +				dev_err(pcie->dev, "EVENT FIFO is full\n");
> +				return IRQ_HANDLED;
> +			}
> +			wake_up(&pcie->wq);
> +		}
> +		spurious =3D 0;
> +	}
> +
> +	if (spurious) {
> +		dev_warn(pcie->dev, "Random interrupt (STATUS =3D 0x%08X)\n",
> +			 val);
> +		appl_writel(pcie, val, APPL_INTR_STATUS_L0);
> +	}
> +
> +	return IRQ_HANDLED;
> +}
> +
>  static irqreturn_t tegra_pcie_irq_handler(int irq, void *arg)
>  {
>  	struct tegra_pcie_dw *pcie =3D arg;
> =20
> -	return tegra_pcie_rp_irq_handler(pcie);
> +	if (pcie->mode =3D=3D DW_PCIE_RC_TYPE)
> +		return tegra_pcie_rp_irq_handler(pcie);
> +	else if (pcie->mode =3D=3D DW_PCIE_EP_TYPE)
> +		return tegra_pcie_ep_irq_handler(pcie);
> +
> +	return IRQ_NONE;
>  }

We already know at probe time whether the controller is in root complex
or endpoint mode, right? Couldn't we just install the correct handler
rather than multiplex here? It's not a very big deal, but given that
these are interrupts, avoiding the additional indirection might be a
good idea.

[...]
> @@ -986,6 +1115,42 @@ static int tegra_pcie_dw_parse_dt(struct tegra_pcie=
_dw *pcie)
>  	pcie->enable_cdm_check =3D
>  		of_property_read_bool(np, "snps,enable-cdm-check");
> =20
> +	if (pcie->mode =3D=3D DW_PCIE_RC_TYPE)
> +		return 0;
> +
> +	/* Endpoint mode specific DT entries */
> +	name =3D devm_kasprintf(pcie->dev, GFP_KERNEL,
> +			      "tegra_pcie_%u_pex_rst_gpio", pcie->cid);
> +	if (!name) {
> +		dev_err(pcie->dev, "Failed to create PERST GPIO string\n");
> +		return -ENOMEM;
> +	}
> +	pcie->pex_rst_gpiod =3D devm_gpiod_get_from_of_node(pcie->dev, np,

If np =3D=3D pcie->dev.of_node, you can simply use devm_gpiod_get() here,
can't you?

[...]
> +static void pex_ep_event_hot_rst_done(struct tegra_pcie_dw *pcie)
> +{
> +	u32 val =3D 0;

The initialization here seems unnecessary.

[...]
> +static int tegra_pcie_ep_raise_legacy_irq(struct tegra_pcie_dw *pcie, u1=
6 irq)
> +{
> +	/* Tegra194 supports only INTA */
> +	if (irq > 1)
> +		return -EINVAL;
> +
> +	appl_writel(pcie, 1, APPL_LEGACY_INTX);
> +	mdelay(1);

Spinning for 1 ms these days is quite a lot. Does this have to be a busy
loop or could you use something like usleep_range(1000, 2000) to allow
the CPU to do something else in the meantime?

Also, does the legacy INTX pulse have to be a whole millisecond wide? Or
could this be shorter? A one millisecond pulse implies a maximum of 1000
interrupts per second, which seems a bit low.

> @@ -1440,6 +2178,12 @@ static int tegra_pcie_dw_probe(struct platform_dev=
ice *pdev)
>  	int ret;
>  	u32 i;
> =20
> +	match =3D of_match_device(of_match_ptr(tegra_pcie_dw_of_match), dev);
> +	if (!match)
> +		return -EINVAL;
> +
> +	data =3D (struct tegra_pcie_dw_of_data *)match->data;

of_device_get_match_data()?

> +
>  	pcie =3D devm_kzalloc(dev, sizeof(*pcie), GFP_KERNEL);
>  	if (!pcie)
>  		return -ENOMEM;
> @@ -1449,6 +2193,7 @@ static int tegra_pcie_dw_probe(struct platform_devi=
ce *pdev)
>  	pci->ops =3D &tegra_dw_pcie_ops;
>  	pp =3D &pci->pp;
>  	pcie->dev =3D &pdev->dev;
> +	pcie->mode =3D (enum dw_pcie_device_mode)data->mode;
> =20
>  	ret =3D tegra_pcie_dw_parse_dt(pcie);
>  	if (ret < 0) {
> @@ -1462,6 +2207,9 @@ static int tegra_pcie_dw_probe(struct platform_devi=
ce *pdev)
>  		return ret;
>  	}
> =20
> +	if (pcie->pex_refclk_sel_gpiod)
> +		gpiod_set_value(pcie->pex_refclk_sel_gpiod, 1);
> +
>  	pcie->pex_ctl_supply =3D devm_regulator_get(dev, "vddio-pex-ctl");
>  	if (IS_ERR(pcie->pex_ctl_supply)) {
>  		ret =3D PTR_ERR(pcie->pex_ctl_supply);
> @@ -1570,11 +2318,24 @@ static int tegra_pcie_dw_probe(struct platform_de=
vice *pdev)
> =20
>  	platform_set_drvdata(pdev, pcie);
> =20
> -	ret =3D tegra_pcie_config_rp(pcie);
> -	if (ret && ret !=3D -ENOMEDIUM)
> -		goto fail;
> -	else
> -		return 0;
> +	switch (pcie->mode) {
> +	case DW_PCIE_RC_TYPE:
> +		ret =3D tegra_pcie_config_rp(pcie);
> +		if (ret && ret !=3D -ENOMEDIUM)
> +			goto fail;
> +		else
> +			return 0;
> +		break;
> +
> +	case DW_PCIE_EP_TYPE:
> +		ret =3D tegra_pcie_config_ep(pcie, pdev);
> +		if (ret < 0)
> +			goto fail;
> +		break;
> +
> +	default:
> +		dev_err(dev, "Invalid PCIe device type %d\n", pcie->mode);
> +	}
> =20
>  fail:
>  	tegra_bpmp_put(pcie->bpmp);
> @@ -1593,6 +2354,8 @@ static int tegra_pcie_dw_remove(struct platform_dev=
ice *pdev)
>  	pm_runtime_put_sync(pcie->dev);
>  	pm_runtime_disable(pcie->dev);
>  	tegra_bpmp_put(pcie->bpmp);
> +	if (pcie->pex_refclk_sel_gpiod)
> +		gpiod_set_value(pcie->pex_refclk_sel_gpiod, 0);
> =20
>  	return 0;
>  }
> @@ -1697,13 +2460,6 @@ static void tegra_pcie_dw_shutdown(struct platform=
_device *pdev)
>  	__deinit_controller(pcie);
>  }
> =20
> -static const struct of_device_id tegra_pcie_dw_of_match[] =3D {
> -	{
> -		.compatible =3D "nvidia,tegra194-pcie",
> -	},
> -	{},
> -};
> -

No need to move this around if you use of_device_get_match_data().

Thierry

>  static const struct dev_pm_ops tegra_pcie_dw_pm_ops =3D {
>  	.suspend_late =3D tegra_pcie_dw_suspend_late,
>  	.suspend_noirq =3D tegra_pcie_dw_suspend_noirq,
> --=20
> 2.17.1
>=20

--Y7xTucakfITjPcLV
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl4TMAEACgkQ3SOs138+
s6FjPw//XT+57TF5ONpPw6K3J7ACQCLYQBoonnQLrysQyLyKegarIe5lPQuP3CL8
g1yJbPO9/UhcFSnnnKN4pJK4n1ps/qa2ksYXwnQpcpdQOKYkw1HyEeBsOt8bq+F2
yAOg0tgbopoJcAMhLqalnBkO+5jeIFbL4GtYLczdE7fN3qaNENV2KF/XoY8M3Pge
DJVaSgx5ZR1vnbxUETxyhv0HhVEv6DGnpfd5kxiTBxpmxaF5wDLnwWamSfy2f6Az
BXX1tYjzXhznORtXF3dewbIeg6QBRRqTrzfPdRAG5pjORWDEg2udIocH/7K1K9/j
Lvgqqyyf0SeUekTZhposrlvJfoBsYOrw1RzVrcV2fMs6vMSMLtTY3p6g6Lo2XxWw
4AfV79c3HGEsymUgwE4BqFUBeWJJJc351+CjNZk2F/niftEj95Wys3p890ujXG0d
YNRaY70/UULt4cFq/IclqwS8JESvxi5weJS703TUW7mYwwMDIkD8m21xn51rU59J
+rElY5MxqoDkNmeeH+6mOuYdW5mi3JOfQ5aHa3fn2dBo6lHKqEi0zA7dke8XBBgY
ORfBbsdWw/Cv1ij1AP6R6MYUk6wGTxHvZg5nZXLyCFPV3b0N7Qmg5+WeAA2ICHvL
hQ1hmgP851CffTmGKTrYEjsBtmazxVpAMU1r3CEQpVviLNqjFz8=
=ZsFl
-----END PGP SIGNATURE-----

--Y7xTucakfITjPcLV--


--===============5089334730572424351==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============5089334730572424351==--

