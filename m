Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AC4161024
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 11:36:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iyvCrSpFfv/eI3lIP9OdTTRCuOt5IXZeop9N8zv83w=; b=eOuSXo8CFS98ZJ
	x8fcylevDf6280PCaozW0Y/oxfV/VexW9yq5E+1VQiyvjr5ptW4i15zg4/13iamfiTeo1LhTb0vni
	T4qcAYTkF6IfV7mOPFvAg5pLAWGJhOC8bxZPpdan89gCr3NwVdahbTIy/9qgLdwlT4R2HLbo18fED
	rB0SXw7YuXa0WZ9cnHORTKz59r8nbpqlF5hepSYUN+cdJeZ6YcMAimNniXixQvr3cmL+Qm8fqIe4A
	AsynBtF+0MYl1TNQdLXzvrkr29ZbIVsOZGsHLrj23D0HUKNzJUsBQ+rzFW3SJyFeLNeh+OfCxzkyi
	H11a0XnnUnYfNBt++8CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3dlA-00064B-0O; Mon, 17 Feb 2020 10:36:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3dl1-00063V-PS; Mon, 17 Feb 2020 10:36:09 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CB2D420725;
 Mon, 17 Feb 2020 10:36:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581935767;
 bh=60viLGKf79jXAYXHImdhwgxFlEuSkAt+HsIyxhV25lA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eYlTq6hflCJzX6XFC6jLt7AvBAgZw/8p1du/CYSw/mqOuHrhFtercBxM1Wi6zCe5m
 eQI8yyOD/oy5vnxuSOpYCuQ2gZNaYbD8fLHnV+lyHYSiZAhWLuWghe8Avhpb7BWE6G
 3J5NZqs8bYpPR2a2GT0Hj/sZExxyxFG6CYA/ACYo=
Date: Mon, 17 Feb 2020 11:36:05 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH] usb: xhci-pci: Raspberry Pi FW loader for VIA VL805
Message-ID: <20200217103605.GA93732@kroah.com>
References: <20200217100701.19949-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200217100701.19949-1-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_023607_868641_13AF89E0 
X-CRM114-Status: GOOD (  21.30  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Mathias Nyman <mathias.nyman@intel.com>, Scott Branden <sbranden@broadcom.com>,
 Ray Jui <rjui@broadcom.com>, oneukum@suse.com, linux-kernel@vger.kernel.org,
 tim.gover@raspberrypi.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-usb@vger.kernel.org,
 phil@raspberrypi.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Feb 17, 2020 at 11:07:00AM +0100, Nicolas Saenz Julienne wrote:
> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> VideCore.  Inform VideCore that VL805 was just reset, or defer xhci's
> probe if not yet joinable trough the mailbox interface.
> 
> Based on Tim Gover's downstream implementation.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
>  drivers/usb/host/xhci-pci.c                | 50 ++++++++++++++++++++++
>  include/soc/bcm2835/raspberrypi-firmware.h |  2 +-
>  2 files changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
> index 4917c5b033fa..eadace4a9339 100644
> --- a/drivers/usb/host/xhci-pci.c
> +++ b/drivers/usb/host/xhci-pci.c
> @@ -13,6 +13,8 @@
>  #include <linux/module.h>
>  #include <linux/acpi.h>
>  
> +#include <soc/bcm2835/raspberrypi-firmware.h>

That feels really wrong :(

> +
>  #include "xhci.h"
>  #include "xhci-trace.h"
>  
> @@ -308,6 +310,44 @@ static int xhci_pci_setup(struct usb_hcd *hcd)
>  	return xhci_pci_reinit(xhci, pdev);
>  }
>  
> +/*
> + * On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> + * loaded directly from an EEPROM or, if not present, by the SoC's VideCore.
> + * Inform VideCore that VL805 was just reset, or defer xhci's probe if not yet
> + * joinable trough the mailbox interface.
> + */
> +static int raspberrypi_load_vl805_fw(struct pci_dev *pdev)
> +{
> +#ifdef CONFIG_RASPBERRYPI_FIRMWARE

Can you just put #ifdefs in a .h file instead please?

> +	struct device_node *fw_np;
> +	struct rpi_firmware *fw;
> +	u32 dev_addr;
> +	int ret;
> +
> +	fw_np = of_find_compatible_node(NULL, NULL,
> +					"raspberrypi,bcm2835-firmware");
> +	if (!fw_np)
> +		return 0;

So for non-rpi systems, this will work just fine, no need to #ifdef out
the whole function, right?


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
> +#endif
> +	return 0;
> +}

Why not put this whole function in some rpi-platform code?

> +
>  /*
>   * We need to register our own PCI probe function (instead of the USB core's
>   * function) in order to create a second roothub under xHCI.
> @@ -321,6 +361,16 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
>  
>  	driver = (struct hc_driver *)id->driver_data;
>  
> +	if (dev->vendor == PCI_VENDOR_ID_VIA && dev->device == 0x3483) {
> +		retval = raspberrypi_load_vl805_fw(dev);
> +		if (retval) {
> +			if (retval != -EPROBE_DEFER)
> +				dev_err(&dev->dev,
> +					"Failed to load VL805's firmware");

Shouldn't the function print an error if there is one?

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
