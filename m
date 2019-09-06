Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DDAABB27
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 16:40:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HkM5tkwjkjwXSHurmSZAfZH9DKog/dTKmzKUz9G+2ow=; b=XZOiECq2FJ4ibR
	8DMAJUJ5j7neMLewm2PiM/EDx7vfWfzhetgovEDZWCb81GZm+8AByaY2DOsyWbl3/pfpCKe6mV5zQ
	iKZ+aFKzZ4HPPh+u55NIwJXld2fi2YyEuiAFZTfyBxxsxuou/yNF/9pLFqQIGVIOkbCYYdB+vSE77
	zTsi53r+fCDW6XFcrvAfa2ITYIfLvoxosga4ahvNHwv2npjZ1h+6Udvn+I7AIseKsYdKIcDOgX3zA
	PE3cyNE7wwL5bEii8Sl0WuFAXtuZjmy5rdaD14fnuto3J20/6FmuuZraap2eDm47A4+vfDva+8Z15
	FPDWGhamGzetg3JcXUXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6FPC-0002EX-Sq; Fri, 06 Sep 2019 14:40:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6FOy-0002DT-2D
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Sep 2019 14:39:53 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1i6FOm-0005ih-UF; Fri, 06 Sep 2019 16:39:40 +0200
Received: from ore by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <ore@pengutronix.de>)
 id 1i6FOk-0008Ns-3e; Fri, 06 Sep 2019 16:39:38 +0200
Date: Fri, 6 Sep 2019 16:39:38 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: Biwen Li <biwen.li@nxp.com>
Subject: Re: [v2] ACPI: support for NXP i2c controller
Message-ID: <20190906143938.weqs6rvdvlnrzpau@pengutronix.de>
References: <20190906075319.21244-1-biwen.li@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906075319.21244-1-biwen.li@nxp.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:09:03 up 111 days, 20:27, 66 users,  load average: 0.07, 0.06,
 0.01
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: ore@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_073952_112181_7FE08EBC 
X-CRM114-Status: GOOD (  17.61  )
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
Cc: wsa@the-dreams.de, s.hauer@pengutronix.de, udit.kumar@nxp.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, leoyang.li@nxp.com,
 linux-acpi@vger.kernel.org, andy.shevchenko@gmail.com,
 meenakshi.aggarwal@nxp.com, linux-i2c@vger.kernel.org, chuanhua.han@nxp.com,
 rafael@kernel.org, shawnguo@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Sep 06, 2019 at 03:53:19PM +0800, Biwen Li wrote:
> From: Chuanhua Han <chuanhua.han@nxp.com>
> 
> Enable NXP i2c controller to boot with ACPI
> 
> Signed-off-by: Meenakshi Aggarwal <meenakshi.aggarwal@nxp.com>
> Signed-off-by: Udit Kumar <udit.kumar@nxp.com>
> Signed-off-by: Chuanhua Han <chuanhua.han@nxp.com>
> Signed-off-by: Biwen Li <biwen.li@nxp.com>

for i2c-imx.c:
Acked-by: Oleksij Rempel <o.rempel@pengutronix.de>
Tested on iMX6Q SabreSD
Tested-by: Oleksij Rempel <o.rempel@pengutronix.de>

> ---
> Change in v2:
> 	- Simplify code
> 	- Adjust header file order
> 	- Not use ACPI_PTR()
> 
>  drivers/acpi/acpi_apd.c      |  7 +++++++
>  drivers/i2c/busses/i2c-imx.c | 17 +++++++++++++----
>  2 files changed, 20 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/acpi/acpi_apd.c b/drivers/acpi/acpi_apd.c
> index 7cd0c9ac71ea..71511ae2dfcd 100644
> --- a/drivers/acpi/acpi_apd.c
> +++ b/drivers/acpi/acpi_apd.c
> @@ -160,11 +160,17 @@ static const struct apd_device_desc hip08_i2c_desc = {
>  	.setup = acpi_apd_setup,
>  	.fixed_clk_rate = 250000000,
>  };
> +
>  static const struct apd_device_desc thunderx2_i2c_desc = {
>  	.setup = acpi_apd_setup,
>  	.fixed_clk_rate = 125000000,
>  };
>  
> +static const struct apd_device_desc nxp_i2c_desc = {
> +	.setup = acpi_apd_setup,
> +	.fixed_clk_rate = 350000000,
> +};
> +
>  static const struct apd_device_desc hip08_spi_desc = {
>  	.setup = acpi_apd_setup,
>  	.fixed_clk_rate = 250000000,
> @@ -238,6 +244,7 @@ static const struct acpi_device_id acpi_apd_device_ids[] = {
>  	{ "HISI02A1", APD_ADDR(hip07_i2c_desc) },
>  	{ "HISI02A2", APD_ADDR(hip08_i2c_desc) },
>  	{ "HISI0173", APD_ADDR(hip08_spi_desc) },
> +	{ "NXP0001", APD_ADDR(nxp_i2c_desc) },
>  #endif
>  	{ }
>  };
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 15f6cde6452f..a3b61336fe55 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -20,6 +20,7 @@
>   *
>   */
>  
> +#include <linux/acpi.h>
>  #include <linux/clk.h>
>  #include <linux/completion.h>
>  #include <linux/delay.h>
> @@ -255,6 +256,12 @@ static const struct of_device_id i2c_imx_dt_ids[] = {
>  };
>  MODULE_DEVICE_TABLE(of, i2c_imx_dt_ids);
>  
> +static const struct acpi_device_id i2c_imx_acpi_ids[] = {
> +	{"NXP0001", .driver_data = (kernel_ulong_t)&vf610_i2c_hwdata},
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(acpi, i2c_imx_acpi_ids);
> +
>  static inline int is_imx1_i2c(struct imx_i2c_struct *i2c_imx)
>  {
>  	return i2c_imx->hwdata->devtype == IMX1_I2C;
> @@ -1048,14 +1055,13 @@ static const struct i2c_algorithm i2c_imx_algo = {
>  
>  static int i2c_imx_probe(struct platform_device *pdev)
>  {
> -	const struct of_device_id *of_id = of_match_device(i2c_imx_dt_ids,
> -							   &pdev->dev);
>  	struct imx_i2c_struct *i2c_imx;
>  	struct resource *res;
>  	struct imxi2c_platform_data *pdata = dev_get_platdata(&pdev->dev);
>  	void __iomem *base;
>  	int irq, ret;
>  	dma_addr_t phy_addr;
> +	const struct imx_i2c_hwdata *match;
>  
>  	dev_dbg(&pdev->dev, "<%s>\n", __func__);
>  
> @@ -1075,8 +1081,9 @@ static int i2c_imx_probe(struct platform_device *pdev)
>  	if (!i2c_imx)
>  		return -ENOMEM;
>  
> -	if (of_id)
> -		i2c_imx->hwdata = of_id->data;
> +	match = device_get_match_data(&pdev->dev);
> +	if (match)
> +		i2c_imx->hwdata = match;
>  	else
>  		i2c_imx->hwdata = (struct imx_i2c_hwdata *)
>  				platform_get_device_id(pdev)->driver_data;
> @@ -1089,6 +1096,7 @@ static int i2c_imx_probe(struct platform_device *pdev)
>  	i2c_imx->adapter.nr		= pdev->id;
>  	i2c_imx->adapter.dev.of_node	= pdev->dev.of_node;
>  	i2c_imx->base			= base;
> +	ACPI_COMPANION_SET(&i2c_imx->adapter.dev, ACPI_COMPANION(&pdev->dev));
>  
>  	/* Get I2C clock */
>  	i2c_imx->clk = devm_clk_get(&pdev->dev, NULL);
> @@ -1247,6 +1255,7 @@ static struct platform_driver i2c_imx_driver = {
>  		.name = DRIVER_NAME,
>  		.pm = &i2c_imx_pm_ops,
>  		.of_match_table = i2c_imx_dt_ids,
> +		.acpi_match_table = i2c_imx_acpi_ids,
>  	},
>  	.id_table = imx_i2c_devtype,
>  };
> -- 
> 2.17.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
