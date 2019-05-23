Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA7A8278E9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 11:10:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=usdz4vL5GRHiqFElplfItozTYsasMg7Ap8iESAi9lug=; b=nHDl0GnVCc3aGW
	MgMc1LlhzYE99YH3Uxv3/i1Ct28rKFnI6RUlWezYMLhsmXJn8a3eDNSvEpFExwVXM63fH8toqPBLk
	rvlaY00KhB94M0Kvbhi8s1zFpbykogmI+7DWgAbPwYYjIFAtPdmCYkQwLOL7jnmMGSMYMxotisi3J
	lMfQjAlEAKZcHkQPU8DuKIwJmCNsCgf+ZmMqSsGWqkSxpr6MqkL+dD55GQArSLaajycAZopW3n0ew
	360MIwZWljv/FABUcgv6sim6L/KZJZddc+30A5XJw3gNFpk8EWjMxM1B9gMEnvYLHPbKqFgSK/z+g
	kApsk/m3IpaCsshOJShQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTjk8-0007Tp-O3; Thu, 23 May 2019 09:10:32 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTjjz-0007SQ-J4
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 09:10:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=gvMc8e1blxSFjrQAJfdsPT3oO6xm8lpzhMKEL0P1bLs=; b=BQAIxqLQooHeCeK5WVsEqQJZK
 kU0lC15VHB4iOLCjEo0UuhKfX4y3viK6OP2dG0YQ9oOblQk2b4q3HSwNPIMmny14TRWG4UCozKlA5
 LSeXNBB/Cx6oiH5VNEEfnZAY/pKVf0akXlbK3NNsibQl2F/PxFqGh/k4so0wtQH01qhLM1Fbq75Ne
 YKz05O5L1cM3FGJVNtTd0z8KF/MEl/sHFwI0BNvvLltd0H58QCZ9AjfNFLqy7MuRGwJdTx2ONuCFP
 WONoC+lPgkCDImHd509WqDqdqe4Yw1v/jnV0G0nl6/IYVwSU4Mq57bogLMImeNpQCiBDUfMUt+oha
 dwaTv+zrQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:38254)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hTjjQ-0004gL-Ex; Thu, 23 May 2019 10:09:48 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.89)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hTjjK-0007V5-1i; Thu, 23 May 2019 10:09:42 +0100
Date: Thu, 23 May 2019 10:09:41 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Anson Huang <anson.huang@nxp.com>
Subject: Re: [PATCH V6 1/2] soc: imx: Add SCU SoC info driver support
Message-ID: <20190523090941.zd4rbvcimgit5lq5@shell.armlinux.org.uk>
References: <1558586911-29309-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558586911-29309-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_021023_784426_71762DD2 
X-CRM114-Status: GOOD (  17.10  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 04:53:46AM +0000, Anson Huang wrote:
> Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce
> driver dependency into Kconfig as CONFIG_IMX_SCU must be
> selected to support i.MX SCU SoC driver, also need to use
> platform driver model to make sure IMX_SCU driver is probed
> before i.MX SCU SoC driver.

This seems buggy...

> +static int imx_scu_soc_probe(struct platform_device *pdev)
> +{
> +	struct soc_device_attribute *soc_dev_attr;
> +	struct soc_device *soc_dev;
> +	u32 id, val;
> +	int ret;
> +
> +	ret = imx_scu_get_handle(&soc_ipc_handle);
> +	if (ret)
> +		return ret;
> +
> +	soc_dev_attr = devm_kzalloc(&pdev->dev, sizeof(*soc_dev_attr),
> +				    GFP_KERNEL);
> +	if (!soc_dev_attr)
> +		return -ENOMEM;
> +
> +	soc_dev_attr->family = "Freescale i.MX";
> +
> +	ret = of_property_read_string(of_root,
> +				      "model",
> +				      &soc_dev_attr->machine);
> +	if (ret)
> +		return ret;
> +
> +	id = imx_scu_soc_id();
> +
> +	/* format soc_id value passed from SCU firmware */
> +	val = id & 0x1f;
> +	soc_dev_attr->soc_id = val ? kasprintf(GFP_KERNEL, "0x%x", val)
> +			       : "unknown";

soc_id can either be an allocated string, or it can be a static string
of "unknown".

> +	if (!soc_dev_attr->soc_id)
> +		return -ENOMEM;
> +
> +	/* format revision value passed from SCU firmware */
> +	val = (id >> 5) & 0xf;
> +	val = (((val >> 2) + 1) << 4) | (val & 0x3);
> +	soc_dev_attr->revision = val ? kasprintf(GFP_KERNEL,
> +						 "%d.%d",
> +						 (val >> 4) & 0xf,
> +						 val & 0xf) : "unknown";

revision here is the same.

> +	if (!soc_dev_attr->revision) {
> +		ret = -ENOMEM;
> +		goto free_soc_id;
> +	}
> +
> +	soc_dev = soc_device_register(soc_dev_attr);
> +	if (IS_ERR(soc_dev)) {
> +		ret = PTR_ERR(soc_dev);
> +		goto free_revision;
> +	}
> +
> +	return 0;
> +
> +free_revision:
> +	kfree(soc_dev_attr->revision);
> +free_soc_id:
> +	kfree(soc_dev_attr->soc_id);

Yet here you blindly kfree(), which means you could be doing in effect
kfree("unknown") - which will likely result in a kernel oops.

Either always make revision/soc_id an allocated string, or use some
static storage for the strings (they're only small, static storage is
likely to be much more efficient in this case, and there can only be
one of these in any case.)

> +	return ret;
> +}
> +
> +static struct platform_driver imx_scu_soc_driver = {
> +	.driver = {
> +		.name = IMX_SCU_SOC_DRIVER_NAME,
> +	},
> +	.probe = imx_scu_soc_probe,
> +};
> +
> +static int __init imx_scu_soc_init(void)
> +{
> +	struct platform_device *imx_scu_soc_pdev;
> +	struct device_node *np;
> +	int ret;
> +
> +	np = of_find_compatible_node(NULL, NULL, "fsl,imx-scu");
> +	if (!np)
> +		return -ENODEV;
> +
> +	of_node_put(np);
> +
> +	ret = platform_driver_register(&imx_scu_soc_driver);
> +	if (ret)
> +		return ret;
> +
> +	imx_scu_soc_pdev =
> +		platform_device_register_simple(IMX_SCU_SOC_DRIVER_NAME,
> +						-1,
> +						NULL,
> +						0);
> +	if (IS_ERR(imx_scu_soc_pdev))
> +		platform_driver_unregister(&imx_scu_soc_driver);
> +
> +	return PTR_ERR_OR_ZERO(imx_scu_soc_pdev);
> +}
> +device_initcall(imx_scu_soc_init);
> -- 
> 2.7.4
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
