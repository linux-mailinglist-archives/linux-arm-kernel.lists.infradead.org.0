Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9785178D0F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Mar 2020 10:06:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQdfpWb/16b7prxEE+AVgpIAMmHSBZMIcTA7VwOoHXo=; b=aDgC2Tdiy3nwL9
	nQ6s7MMb8emHzQas8NT4immi0WvkSnC/0haBFUU7U+h46ZBv5djBXGKMZQ66EnZsACCYeQ0UOzXVE
	wDZTVMdSm3mzO5tf/VOa2IIqgMdtzvADATNyhytA61CCeS/+tMlSYlANVmWri8CoUOeLIL578N635
	86t+yDQnTr6RvAnjyZ2vj8D39vaLDQWOI5uSCY0ApJqDudCAYkmTfaXaE7y6dV61I01wCLVbKmlag
	fKTivmYEyATtpvoFCccxCodtExKAxtjSb410mPMrH0WwJQNgUvLt/MTl1wP6uCZjY/fa6gQd8mZVq
	kRLpAvwmqmndsG544jfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Pyg-00011b-M6; Wed, 04 Mar 2020 09:06:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9PyZ-00010j-S7; Wed, 04 Mar 2020 09:06:01 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D436E2072D;
 Wed,  4 Mar 2020 09:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583312758;
 bh=nv9z76qB1AKdNeHNDVvjHLCUMfYUelYmliFzrlCR1xI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wTrJb2nLOkC3o5SdH0RfJuDO3+VKd84OhHaBaZVRb3O2Ur83RlzXVHaQkO0GfHzHu
 3gmkPcBjGwKBXwt3VXDXDLJJXPBz5eP9uphOkBtnCJaPRyDemc+cPP9jUcmkSAR3hn
 MoNlOP+aswJByig32PeT4UbzI37cRSWxBn7/P6Kg=
Date: Wed, 4 Mar 2020 10:05:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v3 4/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
Message-ID: <20200304090555.GC1429273@kroah.com>
References: <20200302155528.19505-1-nsaenzjulienne@suse.de>
 <20200302155528.19505-5-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302155528.19505-5-nsaenzjulienne@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_010559_951799_709E04C4 
X-CRM114-Status: GOOD (  19.78  )
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
Cc: f.fainelli@gmail.com, Mathias Nyman <mathias.nyman@intel.com>,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, wahrenst@gmx.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 04:55:28PM +0100, Nicolas Saenz Julienne wrote:
> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> VideCore. Inform VideCore that VL805 was just reset.
> 
> Also, as this creates a dependency between XHCI_PCI and VideoCore's,
> reflect that on the firmware interface Kconfg.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v1:
>  - Make RASPBERRYPI_FIRMWARE dependent on this quirk to make sure it
>    gets compiled when needed.
> 
>  drivers/firmware/Kconfig      |  1 +
>  drivers/usb/host/pci-quirks.c | 18 ++++++++++++++++++
>  2 files changed, 19 insertions(+)
> 
> diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
> index ea869addc89b..40a468d712a5 100644
> --- a/drivers/firmware/Kconfig
> +++ b/drivers/firmware/Kconfig
> @@ -180,6 +180,7 @@ config ISCSI_IBFT
>  config RASPBERRYPI_FIRMWARE
>  	tristate "Raspberry Pi Firmware Driver"
>  	depends on BCM2835_MBOX
> +	default XHCI_PCI
>  	help
>  	  This option enables support for communicating with the firmware on the
>  	  Raspberry Pi.
> diff --git a/drivers/usb/host/pci-quirks.c b/drivers/usb/host/pci-quirks.c
> index beb2efa71341..aee2eaa3f0e1 100644
> --- a/drivers/usb/host/pci-quirks.c
> +++ b/drivers/usb/host/pci-quirks.c
> @@ -16,6 +16,9 @@
>  #include <linux/export.h>
>  #include <linux/acpi.h>
>  #include <linux/dmi.h>
> +
> +#include <soc/bcm2835/raspberrypi-firmware.h>
> +
>  #include "pci-quirks.h"
>  #include "xhci-ext-caps.h"
>  
> @@ -1243,11 +1246,26 @@ static void quirk_usb_handoff_xhci(struct pci_dev *pdev)
>  
>  static void quirk_usb_early_handoff(struct pci_dev *pdev)
>  {
> +	int ret;
> +
>  	/* Skip Netlogic mips SoC's internal PCI USB controller.
>  	 * This device does not need/support EHCI/OHCI handoff
>  	 */
>  	if (pdev->vendor == 0x184e)	/* vendor Netlogic */
>  		return;
> +
> +	if (pdev->vendor == PCI_VENDOR_ID_VIA && pdev->device == 0x3483) {
> +		ret = rpi_firmware_init_vl805(pdev);
> +		if (ret)
> +			/*
> +			 * Firmware might be outdated, or else, something
> +			 * failed, keep going and hope for the best.
> +			 */
> +			dev_warn(&pdev->dev,
> +				 "Failed to load VL805's firmware: %d\n",
> +				 ret);

{} please.

Also, you might want to provide a better warning, something like:
	"Failed to load VL805's firmware, will continue to attempt to
	work, but bad things might happen, you should fix this..."

or something to give people a chance to know what to do here.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
