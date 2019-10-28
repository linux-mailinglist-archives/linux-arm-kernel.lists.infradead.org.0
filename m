Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFC5DE78F7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 20:09:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+X03a4KaspwXUeFTUw4KsJzlasQEusiKtgGiApW+vo=; b=EyMdHwqVsVMTOf
	UXO/Mo+CxndePLX2qzNFxipAa4LVSi2PI2HD/TpfZft2tJXq7bfuA8ALh7tnXgXfXwbRKEvLY4zj/
	hVlFH+TQ6z5UiIFsNCk1stChdUQYvM4WJYQnmGnRMyc90jmPrubkWL28QyQy+eeXHOpbC+beaZBln
	BpW0s5jfslfV0Srag0eRKaLwgxO9kfxWwwHvEa2Cpm7t1H6gjZdSYGYqA9khIlXiZOIQqwidhQWnl
	A0/bq4CbjTCyVOyWCRdIBQTv0bVJG6dMDH1Yp+e/mAsIxoQXiRhpZug1BFxgMyaiiJIF7qJcGQYSX
	Fv+FssBA52OG+RDsPmhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPAOq-0001R9-EB; Mon, 28 Oct 2019 19:09:56 +0000
Received: from coyote.holtmann.net ([212.227.132.17] helo=mail.holtmann.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPAOf-0001Eg-9V
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 19:09:48 +0000
Received: from marcel-macbook.fritz.box (p4FEFC197.dip0.t-ipconnect.de
 [79.239.193.151])
 by mail.holtmann.org (Postfix) with ESMTPSA id 11589CECCF;
 Mon, 28 Oct 2019 20:18:38 +0100 (CET)
Mime-Version: 1.0 (Mac OS X Mail 13.0 \(3594.4.19\))
Subject: Re: [PATCH 2/3] Bluetooth: hci_h5: Add DT support for rtl8723bs
From: Marcel Holtmann <marcel@holtmann.org>
In-Reply-To: <20191026204116.95119-3-bonstra@bonstra.fr.eu.org>
Date: Mon, 28 Oct 2019 20:09:34 +0100
Message-Id: <EEBFA5B4-AF9D-4B41-85E8-C0D304073A4F@holtmann.org>
References: <20191026204116.95119-1-bonstra@bonstra.fr.eu.org>
 <20191026204116.95119-3-bonstra@bonstra.fr.eu.org>
To: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
X-Mailer: Apple Mail (2.3594.4.19)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_120945_484038_935182EF 
X-CRM114-Status: GOOD (  17.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.132.17 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Johan Hedberg <johan.hedberg@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 linux-bluetooth@vger.kernel.org, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Hugo,

> The hci_h5 already supports rtl8723bs devices discovered via ACPI. This
> commit adds support for discovering via device tree for ACPI-less
> platforms.
> 
> Signed-off-by: Hugo Grostabussiat <bonstra@bonstra.fr.eu.org>
> ---
> drivers/bluetooth/hci_h5.c | 40 +++++++++++++++++++++++++++++++++-----
> 1 file changed, 35 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/bluetooth/hci_h5.c b/drivers/bluetooth/hci_h5.c
> index dacf297baf59..49ac03b1a7e3 100644
> --- a/drivers/bluetooth/hci_h5.c
> +++ b/drivers/bluetooth/hci_h5.c
> @@ -11,6 +11,7 @@
> #include <linux/gpio/consumer.h>
> #include <linux/kernel.h>
> #include <linux/mod_devicetable.h>
> +#include <linux/of_device.h>
> #include <linux/serdev.h>
> #include <linux/skbuff.h>
> 
> @@ -782,7 +783,9 @@ static const struct hci_uart_proto h5p = {
> 
> static int h5_serdev_probe(struct serdev_device *serdev)
> {
> -	const struct acpi_device_id *match;
> +	const struct acpi_device_id *acpi_match;
> +	const struct of_device_id *of_match;
> +	const char *cfgname = NULL;
> 	struct device *dev = &serdev->dev;
> 	struct h5 *h5;
> 
> @@ -797,16 +800,27 @@ static int h5_serdev_probe(struct serdev_device *serdev)
> 	serdev_device_set_drvdata(serdev, h5);
> 
> 	if (has_acpi_companion(dev)) {

then move const struct acpi_device_id *match here in the local focus.

> -		match = acpi_match_device(dev->driver->acpi_match_table, dev);
> -		if (!match)
> +		acpi_match = acpi_match_device(
> +				dev->driver->acpi_match_table, dev);
> +		if (!acpi_match)
> 			return -ENODEV;
> 
> -		h5->vnd = (const struct h5_vnd *)match->driver_data;
> -		h5->id  = (char *)match->id;
> +		h5->vnd = (const struct h5_vnd *)acpi_match->driver_data;
> +		h5->id  = (char *)acpi_match->id;
> 
> 		if (h5->vnd->acpi_gpio_map)
> 			devm_acpi_dev_add_driver_gpios(dev,
> 						       h5->vnd->acpi_gpio_map);
> +	} else if (dev->of_node) {

And have struct of_device_id *match here.

> +		of_match = of_match_device(dev->driver->of_match_table, dev);
> +		if (!of_match)
> +			return -ENODEV;
> +
> +		of_property_read_string(dev->of_node,
> +					"realtek,config-name", &cfgname);
> +
> +		h5->vnd = (const struct h5_vnd *)of_match->data;
> +		h5->id = cfgname;

So we can not just read a realtek specific variable here. This is still generic code for 3-Wire UART protocol and needs to be available to other vendors as well.

> 	}
> 
> 	h5->enable_gpio = devm_gpiod_get_optional(dev, "enable", GPIOD_OUT_LOW);
> @@ -996,6 +1010,19 @@ static const struct acpi_device_id h5_acpi_match[] = {
> MODULE_DEVICE_TABLE(acpi, h5_acpi_match);
> #endif
> 
> +#ifdef CONFIG_OF
> +static const struct of_device_id h5_of_match[] = {
> +#ifdef CONFIG_BT_HCIUART_RTL
> +	{
> +		.compatible = "realtek,rtl8723bs-bt",
> +		.data = &rtl_vnd
> +	},
> +#endif
> +	{ },
> +};
> +MODULE_DEVICE_TABLE(of, h5_of_match);
> +#endif
> +
> static const struct dev_pm_ops h5_serdev_pm_ops = {
> 	SET_SYSTEM_SLEEP_PM_OPS(h5_serdev_suspend, h5_serdev_resume)
> };
> @@ -1006,6 +1033,9 @@ static struct serdev_device_driver h5_serdev_driver = {
> 	.driver = {
> 		.name = "hci_uart_h5",
> 		.acpi_match_table = ACPI_PTR(h5_acpi_match),
> +#ifdef CONFIG_OF
> +		.of_match_table = h5_of_match,
> +#endif

Use of_match_ptr here instead of the ifdef.

> 		.pm = &h5_serdev_pm_ops,
> 	},
> };

Regards

Marcel


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
