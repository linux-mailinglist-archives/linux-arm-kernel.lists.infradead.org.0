Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B43EE19B722
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 22:37:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=W8nI3wkM1TFFV7SaOGIByJaChPkJ2NrjscSZzOGSaSg=; b=d3sjw5mfsWbbv8
	llUeN2cNLgO7vF95RalmIRs+rV7ceHm/2aymhOOdE7dH8TywCC4JaUzfI1GuKj/YoP8rrdXHgZb8w
	PumXXdcB0Bs4SrPvWDUAx00CKn7gVZ8vu5Yts+sX7DVz98EG5alJuZb2O5LbSz/4K6+SqlH3js50V
	s1sgkB5eLsa/rx6ESG05kcmFaPgv1KhTb8Kr3PxgFTczEUzBjO1ExO6yA1r51omSWAA1L38TgBbXe
	Lhm16DQasUwT7Rdc++aErfW7/t+b9pAZwJG9vhCX/c5auxTvrl5GZpsS0JYg+MQ2KaZGkoPSjkzgV
	ph0V4M6WL2N+8jqEok4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJk77-00033p-Ap; Wed, 01 Apr 2020 20:37:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJk6z-000338-Pe; Wed, 01 Apr 2020 20:37:23 +0000
Received: from localhost (mobile-166-170-223-166.mycingular.net
 [166.170.223.166])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4041B20784;
 Wed,  1 Apr 2020 20:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585773441;
 bh=XGuqY3v9GN49AYE1uApeV3PohFkEvU3ZN/PQTWB54s8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=P6QMqR3OG2gfhNx8K9SyIVJ5hpWYgYG7ZXtW02WMyiH/Ayu9p+bYk5g9f/hzkIzps
 WUwNHxvZh+pEhaMnWcc3jFcuVK+UvcqfA3SpV/B46I1EFklxgRHJnD7WdUXyvk4yZE
 V8/ZXZUPphZnR1y0h5j2EMZ/aAuJ08gjui7YGTlc=
Date: Wed, 1 Apr 2020 15:37:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v6 2/4] firmware: raspberrypi: Introduce vl805 init routine
Message-ID: <20200401203717.GA131226@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200324182812.20420-3-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_133721_871467_DB3201EC 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, sergei.shtylyov@cogentembedded.com,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 linux-usb@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 gregkh@linuxfoundation.org, linux-arm-kernel@lists.infradead.org,
 wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 24, 2020 at 07:28:10PM +0100, Nicolas Saenz Julienne wrote:
> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> VideCore. The function informs VideCore that VL805 was just reset, or
> requests for a probe defer.

Cover letter mentions both "VideCore" and "VideoCore".  I dunno which
is correct, but between the commit log and the comment, this patch
mentions "VideCore" four times.

> Based on Tim Gover's downstream implementation.

Maybe a URL?

> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> Reviewed-by: Florian Fainelli <f.fainelli@gmail.com>
> 
> ---
> Changes since v4:
>  - Inline function definition when RASPBERRYPI_FIRMWARE is not defined
> 
> Changes since v1:
>  - Move include into .c file and add forward declaration to .h
> 
>  drivers/firmware/raspberrypi.c             | 38 ++++++++++++++++++++++
>  include/soc/bcm2835/raspberrypi-firmware.h |  7 ++++
>  2 files changed, 45 insertions(+)
> 
> diff --git a/drivers/firmware/raspberrypi.c b/drivers/firmware/raspberrypi.c
> index da26a584dca0..cbb495aff6a0 100644
> --- a/drivers/firmware/raspberrypi.c
> +++ b/drivers/firmware/raspberrypi.c
> @@ -12,6 +12,7 @@
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
>  #include <linux/slab.h>
> +#include <linux/pci.h>
>  #include <soc/bcm2835/raspberrypi-firmware.h>
>  
>  #define MBOX_MSG(chan, data28)		(((data28) & ~0xf) | ((chan) & 0xf))
> @@ -286,6 +287,43 @@ struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node)
>  }
>  EXPORT_SYMBOL_GPL(rpi_firmware_get);
>  
> +/*
> + * On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> + * loaded directly from an EEPROM or, if not present, by the SoC's VideCore.
> + * Inform VideCore that VL805 was just reset, or defer xhci's probe if not yet
> + * joinable trough the mailbox interface.

s/trough/through/

I don't see anything in this patch that looks like a mailbox
interface, but maybe that's just because I don't know anything about
Raspberry Pi.

> + */
> +int rpi_firmware_init_vl805(struct pci_dev *pdev)
> +{
> +	struct device_node *fw_np;
> +	struct rpi_firmware *fw;
> +	u32 dev_addr;
> +	int ret;
> +
> +	fw_np = of_find_compatible_node(NULL, NULL,
> +					"raspberrypi,bcm2835-firmware");
> +	if (!fw_np)
> +		return 0;
> +
> +	fw = rpi_firmware_get(fw_np);
> +	of_node_put(fw_np);
> +	if (!fw)
> +		return -EPROBE_DEFER;
> +
> +	dev_addr = pdev->bus->number << 20 | PCI_SLOT(pdev->devfn) << 15 |
> +		   PCI_FUNC(pdev->devfn) << 12;
> +
> +	ret = rpi_firmware_property(fw, RPI_FIRMWARE_NOTIFY_XHCI_RESET,
> +				    &dev_addr, sizeof(dev_addr));
> +	if (ret)
> +		return ret;
> +
> +	dev_dbg(&pdev->dev, "loaded Raspberry Pi's VL805 firmware\n");
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL_GPL(rpi_firmware_init_vl805);
> +
>  static const struct of_device_id rpi_firmware_of_match[] = {
>  	{ .compatible = "raspberrypi,bcm2835-firmware", },
>  	{},
> diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
> index cc9cdbc66403..3025aca3c358 100644
> --- a/include/soc/bcm2835/raspberrypi-firmware.h
> +++ b/include/soc/bcm2835/raspberrypi-firmware.h
> @@ -10,6 +10,7 @@
>  #include <linux/of_device.h>
>  
>  struct rpi_firmware;
> +struct pci_dev;
>  
>  enum rpi_firmware_property_status {
>  	RPI_FIRMWARE_STATUS_REQUEST = 0,
> @@ -141,6 +142,7 @@ int rpi_firmware_property(struct rpi_firmware *fw,
>  int rpi_firmware_property_list(struct rpi_firmware *fw,
>  			       void *data, size_t tag_size);
>  struct rpi_firmware *rpi_firmware_get(struct device_node *firmware_node);
> +int rpi_firmware_init_vl805(struct pci_dev *pdev);
>  #else
>  static inline int rpi_firmware_property(struct rpi_firmware *fw, u32 tag,
>  					void *data, size_t len)
> @@ -158,6 +160,11 @@ static inline struct rpi_firmware *rpi_firmware_get(struct device_node *firmware
>  {
>  	return NULL;
>  }
> +
> +static inline int rpi_firmware_init_vl805(struct pci_dev *pdev)
> +{
> +	return 0;
> +}
>  #endif
>  
>  #endif /* __SOC_RASPBERRY_FIRMWARE_H__ */
> -- 
> 2.25.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
