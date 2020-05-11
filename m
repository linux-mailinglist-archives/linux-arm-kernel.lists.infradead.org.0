Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D809A1CDD11
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:25:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pC3GpQRL5sHk9KMtFFcOTKXL/DCSECqT9KI252iqnCg=; b=ly2Ejox81b751j
	WwKuSJFv9b8QhxIS4M9O4RmcDBquS7XjUpJX89QXQj4pkjdZBCvk3x2HYSWJabS4RA2C+ayuMdPGx
	dmwZQSHMrJmIg8PeyNpPICCR18xfkmpLOiRSOQwc/ji35iH2nsvUGNp16LVk8bN/AQF+Zmq91KDn3
	mmrETUsOhUcXZ0vZym+8c+HxMnxmRZ+/3OSJg/xW8B42FWAvwAWqOVPfg+6WyiR1RGcipS7DrEldl
	SVIUAz9eXUVOBjkm2wbvNYU2SsJnnKi+qYPP5bsG/KOeAifPWqkC92NYyrA5Z1Vkk48C4undVtd/E
	UwdxIoUlouuwRPG/uGtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9NA-0008Ro-9k; Mon, 11 May 2020 14:25:36 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9Mu-0008Qi-MS; Mon, 11 May 2020 14:25:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E051F1045;
 Mon, 11 May 2020 07:25:18 -0700 (PDT)
Received: from e121166-lin.cambridge.arm.com (e121166-lin.cambridge.arm.com
 [10.1.196.255])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F4643F68F;
 Mon, 11 May 2020 07:25:17 -0700 (PDT)
Date: Mon, 11 May 2020 15:25:14 +0100
From: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Mathias Nyman <mathias.nyman@intel.com>
Subject: Re: [PATCH v8 4/4] USB: pci-quirks: Add Raspberry Pi 4 quirk
Message-ID: <20200511142514.GB27249@e121166-lin.cambridge.arm.com>
References: <20200505161318.26200-1-nsaenzjulienne@suse.de>
 <20200505161318.26200-5-nsaenzjulienne@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505161318.26200-5-nsaenzjulienne@suse.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_072520_824867_7020AF53 
X-CRM114-Status: GOOD (  21.05  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: f.fainelli@gmail.com, gregkh@linuxfoundation.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, tim.gover@raspberrypi.org, helgaas@kernel.org,
 wahrenst@gmx.net, linux-pci@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 06:13:17PM +0200, Nicolas Saenz Julienne wrote:
> On the Raspberry Pi 4, after a PCI reset, VL805's firmware may either be
> loaded directly from an EEPROM or, if not present, by the SoC's
> VideoCore. Inform VideoCore that VL805 was just reset.
> 
> Also, as this creates a dependency between USB_PCI and VideoCore's
> firmware interface, and since USB_PCI can't be set as a module neither
> this can. Reflect that on the firmware interface Kconfg.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> ---
> 
> Changes since v5:
>  - Fix Kconfig issue with allmodconfig
> 
> Changes since v4:
>  - Do not split up error message
> 
> Changes since v3:
>  - Add more complete error message
> 
> Changes since v1:
>  - Make RASPBERRYPI_FIRMWARE dependent on this quirk to make sure it
>    gets compiled when needed.
> 
>  drivers/firmware/Kconfig      |  3 ++-
>  drivers/usb/host/pci-quirks.c | 16 ++++++++++++++++
>  2 files changed, 18 insertions(+), 1 deletion(-)

Hi Mathias,

I would need your ACK to merge this series, thanks.

Lorenzo

> diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
> index 8007d4aa76dc..b42140cff8ac 100644
> --- a/drivers/firmware/Kconfig
> +++ b/drivers/firmware/Kconfig
> @@ -178,8 +178,9 @@ config ISCSI_IBFT
>  	  Otherwise, say N.
>  
>  config RASPBERRYPI_FIRMWARE
> -	tristate "Raspberry Pi Firmware Driver"
> +	bool "Raspberry Pi Firmware Driver"
>  	depends on BCM2835_MBOX
> +	default USB_PCI
>  	help
>  	  This option enables support for communicating with the firmware on the
>  	  Raspberry Pi.
> diff --git a/drivers/usb/host/pci-quirks.c b/drivers/usb/host/pci-quirks.c
> index 92150ecdb036..0b949acfa258 100644
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
> @@ -1243,11 +1246,24 @@ static void quirk_usb_handoff_xhci(struct pci_dev *pdev)
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
> +		if (ret) {
> +			/* Firmware might be outdated, or something failed */
> +			dev_warn(&pdev->dev,
> +				 "Failed to load VL805's firmware: %d. Will continue to attempt to work, but bad things might happen. You should fix this...\n",
> +				 ret);
> +		}
> +	}
> +
>  	if (pdev->class != PCI_CLASS_SERIAL_USB_UHCI &&
>  			pdev->class != PCI_CLASS_SERIAL_USB_OHCI &&
>  			pdev->class != PCI_CLASS_SERIAL_USB_EHCI &&
> -- 
> 2.26.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
