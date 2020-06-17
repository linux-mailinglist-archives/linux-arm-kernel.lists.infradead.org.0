Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C25361FCA61
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 12:02:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CDcZ4YJu13AIuT+KHZlvM8EH5F318K6kfGtjxV0dGQ4=; b=M0DnfTp17ZpVI0
	w6AhPayjPRVktnLXIg50mC8m2ZqzSWjAWo50BC8V8HMBBZi5cA4md1c8tNnsKf4HK5cFbNQ46a5xs
	wcOhipG5UGvrqvSheuYdud74jxq0xSyhXoRh74o3v0BaYVgDxN3yiwfVd+3XV1S7kPW3MGt7uUCxU
	myUsqFzWMAJs6Fg3tWEleXh4ffC88oCFQ9hyeLU06jzdj/NH3/upW/dj98iSoslnJ+1ptW8i2Ihvh
	iesrklNCr1/zn7PJXyCaGRdFRRZiLmOij9Jqb4TQysJafVepFzbNTzkuc3t2UMxYz9hyc7pg9Uwll
	Z4NFKENUzrIWdchSXhqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlUuC-0003p6-EL; Wed, 17 Jun 2020 10:02:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlUu1-0003o6-Te
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 10:02:43 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlUty-0004vi-20; Wed, 17 Jun 2020 12:02:38 +0200
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1jlUtw-0004iI-Cc; Wed, 17 Jun 2020 12:02:36 +0200
Message-ID: <70fc0b8dd6d1a6b39fb5d334ff86265cd84d8979.camel@pengutronix.de>
Subject: Re: [PATCH v3 5/9] usb: xhci-pci: Add support for reset controllers
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>, f.fainelli@gmail.com, 
 gregkh@linuxfoundation.org, wahrenst@gmx.net, linux-kernel@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>
Date: Wed, 17 Jun 2020 12:02:36 +0200
In-Reply-To: <20200612171334.26385-6-nsaenzjulienne@suse.de>
References: <20200612171334.26385-1-nsaenzjulienne@suse.de>
 <20200612171334.26385-6-nsaenzjulienne@suse.de>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_030241_956899_A1ED09EE 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: tim.gover@raspberrypi.org, mathias.nyman@linux.intel.com,
 linux-pci@vger.kernel.org, linux-usb@vger.kernel.org,
 andy.shevchenko@gmail.com, lorenzo.pieralisi@arm.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 helgaas@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-06-12 at 19:13 +0200, Nicolas Saenz Julienne wrote:
> Some atypical users of xhci-pci might need to manually reset their xHCI
> controller before starting the HCD setup. Check if a reset controller
> device is available to the PCI bus and trigger a reset.
> 
> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> 
> ---
> 
> Changes since v2:
>  - Also reset on resume
> 
> Changes since v1:
>  - Use proper reset API
>  - Make code simpler
> 
>  drivers/usb/host/xhci-pci.c | 10 ++++++++++
>  drivers/usb/host/xhci.h     |  2 ++
>  2 files changed, 12 insertions(+)
> 
> diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
> index ef513c2fb843..e76b9283faa3 100644
> --- a/drivers/usb/host/xhci-pci.c
> +++ b/drivers/usb/host/xhci-pci.c
> @@ -12,6 +12,7 @@
>  #include <linux/slab.h>
>  #include <linux/module.h>
>  #include <linux/acpi.h>
> +#include <linux/reset.h>
>  
>  #include "xhci.h"
>  #include "xhci-trace.h"
> @@ -339,6 +340,7 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
>  	struct xhci_hcd *xhci;
>  	struct usb_hcd *hcd;
>  	struct xhci_driver_data *driver_data;
> +	struct reset_control *reset;
>  
>  	driver_data = (struct xhci_driver_data *)id->driver_data;
>  	if (driver_data && driver_data->quirks & XHCI_RENESAS_FW_QUIRK) {
> @@ -347,6 +349,11 @@ static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
>  			return retval;
>  	}
>  
> +	reset = devm_reset_control_get_optional_exclusive(&dev->bus->dev, NULL);
> +	if (IS_ERR(reset))
> +		return PTR_ERR(reset);
> +	reset_control_reset(reset);

Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

regards
Philipp

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
