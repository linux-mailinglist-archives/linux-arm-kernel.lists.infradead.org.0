Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A24335ACF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 13:02:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e4wxYzKlDTswAgaJ8VOSEHd1HhOV4Z99gF6rVJWZUI4=; b=ZZoUZtY+n5pTM4
	/bqNNrPAm+ZT3ynXRYRTw0oTr/h30hsLP5Iv+8EruPfosiaiZSE+l5ACLqsub3r/vlxZ7WuIqvRjA
	xOsTXW3ILQ8jC7ylxPwib1xxCrHYnsFNLiEqPYt2dUsu3jVsy9L7AN0dvnL/S52pXU9o9pdvkOU+8
	f6FwD8mACAVMixMtsHKjwC+OmeLK1U1ONMrgFa8XGxsnuYUhFudaD3/mwRcrcU9SNdMCov+zBuzzi
	cRSRBSVCwRk2LtJdCJIbTXbwZPgLjZvyKkEscIPSssxd21rHWOw3j6ned6e3NFZ8lBidm3AFLqDXj
	G/pGHO69fTS+NOIAmRdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYTgP-0004oB-J6; Wed, 05 Jun 2019 11:02:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYTgH-0004nG-4R; Wed, 05 Jun 2019 11:02:10 +0000
X-UUID: f783470954df4165a9f6798ed6db3e85-20190605
X-UUID: f783470954df4165a9f6798ed6db3e85-20190605
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2105332943; Wed, 05 Jun 2019 03:01:59 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 04:01:57 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 5 Jun 2019 19:01:55 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 19:01:55 +0800
Message-ID: <1559732515.8487.106.camel@mhfsdcap03>
Subject: Re: [PATCH v2] USB: move usb debugfs directory creation to the usb
 common core
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 5 Jun 2019 19:01:55 +0800
In-Reply-To: <20190605092816.GA23758@kroah.com>
References: <20190605092816.GA23758@kroah.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_040209_178897_D3B36A61 
X-CRM114-Status: GOOD (  25.17  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: devicetree@vger.kernel.org, Felipe Balbi <felipe.balbi@linux.intel.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Greg,
On Wed, 2019-06-05 at 11:28 +0200, Greg Kroah-Hartman wrote:
> The USB gadget subsystem wants to use the USB debugfs root directory, so
> move it to the common "core" USB code so that it is properly initialized
> and removed as needed.
> 
> In order to properly do this, we need to load the common code before the
> usb core code, when everything is linked into the kernel, so reorder the
> link order of the code.
> 
> Also as the usb common code has the possibility of the led trigger logic
> to be merged into it, handle the build option properly by only having
> one module init/exit function and have the common code initialize the
> led trigger if needed.
> 
> Reported-by: From: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
> 
> Chunfeng, can you test this version to verify it works for you when
> building the code into the kernel?
> 
> v2: handle led common code link error reported by kbuild
>     handle subsys_initcall issue pointed out by Chunfeng
> 
>  drivers/usb/Makefile        |  3 +--
>  drivers/usb/common/common.c | 21 +++++++++++++++++++++
>  drivers/usb/common/common.h | 14 ++++++++++++++
>  drivers/usb/common/led.c    |  9 +++------
>  drivers/usb/core/usb.c      | 10 ++++------
>  5 files changed, 43 insertions(+), 14 deletions(-)
>  create mode 100644 drivers/usb/common/common.h
> 
> diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
> index 7d1b8c82b208..ecc2de1ffaae 100644
> --- a/drivers/usb/Makefile
> +++ b/drivers/usb/Makefile
> @@ -5,6 +5,7 @@
>  
>  # Object files in subdirectories
>  
> +obj-$(CONFIG_USB_COMMON)	+= common/
>  obj-$(CONFIG_USB)		+= core/
>  obj-$(CONFIG_USB_SUPPORT)	+= phy/
>  
> @@ -60,8 +61,6 @@ obj-$(CONFIG_USB_CHIPIDEA)	+= chipidea/
>  obj-$(CONFIG_USB_RENESAS_USBHS)	+= renesas_usbhs/
>  obj-$(CONFIG_USB_GADGET)	+= gadget/
>  
> -obj-$(CONFIG_USB_COMMON)	+= common/
> -
>  obj-$(CONFIG_USBIP_CORE)	+= usbip/
>  
>  obj-$(CONFIG_TYPEC)		+= typec/
> diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> index 18f5dcf58b0d..84a4423aaddf 100644
> --- a/drivers/usb/common/common.c
> +++ b/drivers/usb/common/common.c
> @@ -15,6 +15,8 @@
>  #include <linux/usb/of.h>
>  #include <linux/usb/otg.h>
>  #include <linux/of_platform.h>
> +#include <linux/debugfs.h>
> +#include "common.h"
>  
>  static const char *const ep_type_names[] = {
>  	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
> @@ -291,4 +293,23 @@ struct device *usb_of_get_companion_dev(struct device *dev)
>  EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
>  #endif
>  
> +struct dentry *usb_debug_root;
> +EXPORT_SYMBOL_GPL(usb_debug_root);
> +
> +static int usb_common_init(void)
> +{
> +	usb_debug_root = debugfs_create_dir("usb", NULL);
> +	ledtrig_usb_init();
> +	return 0;
> +}
> +
> +static void usb_common_exit(void)
> +{
> +	ledtrig_usb_exit();
> +	debugfs_remove_recursive(usb_debug_root);
> +}
> +
When enable CONFIG_LED_TRIGGER, there is a warning

 MODPOST vmlinux.o
WARNING: vmlinux.o(.text+0x68e300): Section mismatch in reference from
the function usb_common_init() to the
function .init.text:ledtrig_usb_init()
The function usb_common_init() references
the function __init ledtrig_usb_init().
This is often because usb_common_init lacks a __init
annotation or the annotation of ledtrig_usb_init is wrong.

WARNING: vmlinux.o(.text+0x68e318): Section mismatch in reference from
the function usb_common_exit() to the
function .exit.text:ledtrig_usb_exit()
The function usb_common_exit() references a function in an exit section.
Often the function ledtrig_usb_exit() has valid usage outside the exit
section
and the fix is to remove the __exit annotation of ledtrig_usb_exit.

seems need add __init and __exit for usb_common_init/exit

> +subsys_initcall(usb_common_init);
> +module_exit(usb_common_exit);
> +
>  MODULE_LICENSE("GPL");
> diff --git a/drivers/usb/common/common.h b/drivers/usb/common/common.h
> new file mode 100644
> index 000000000000..424a91316a4b
> --- /dev/null
> +++ b/drivers/usb/common/common.h
> @@ -0,0 +1,14 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +
> +#ifndef __LINUX_USB_COMMON_H
> +#define __LINUX_USB_COMMON_H
> +
> +#if defined(CONFIG_USB_LED_TRIG)
> +void ledtrig_usb_init(void);
> +void ledtrig_usb_exit(void);
> +#else
> +static inline void ledtrig_usb_init(void) { }
> +static inline void ledtrig_usb_exit(void) { }
> +#endif
> +
> +#endif	/* __LINUX_USB_COMMON_H */
> diff --git a/drivers/usb/common/led.c b/drivers/usb/common/led.c
> index 7bd81166b77d..0865dd44a80a 100644
> --- a/drivers/usb/common/led.c
> +++ b/drivers/usb/common/led.c
> @@ -10,6 +10,7 @@
>  #include <linux/init.h>
>  #include <linux/leds.h>
>  #include <linux/usb.h>
> +#include "common.h"
>  
>  #define BLINK_DELAY 30
>  
> @@ -36,18 +37,14 @@ void usb_led_activity(enum usb_led_event ev)
>  EXPORT_SYMBOL_GPL(usb_led_activity);
>  
> 
> -static int __init ledtrig_usb_init(void)
> +void __init ledtrig_usb_init(void)
>  {
>  	led_trigger_register_simple("usb-gadget", &ledtrig_usb_gadget);
>  	led_trigger_register_simple("usb-host", &ledtrig_usb_host);
> -	return 0;
>  }
>  
> -static void __exit ledtrig_usb_exit(void)
> +void __exit ledtrig_usb_exit(void)
>  {
>  	led_trigger_unregister_simple(ledtrig_usb_gadget);
>  	led_trigger_unregister_simple(ledtrig_usb_host);
>  }
> -
> -module_init(ledtrig_usb_init);
> -module_exit(ledtrig_usb_exit);
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 7fcb9f782931..5a0df527a8ca 100644
> --- a/drivers/usb/core/usb.c
> +++ b/drivers/usb/core/usb.c
> @@ -1185,19 +1185,17 @@ static struct notifier_block usb_bus_nb = {
>  	.notifier_call = usb_bus_notify,
>  };
>  
> -struct dentry *usb_debug_root;
> -EXPORT_SYMBOL_GPL(usb_debug_root);
> +static struct dentry *usb_devices_root;
>  
>  static void usb_debugfs_init(void)
>  {
> -	usb_debug_root = debugfs_create_dir("usb", NULL);
> -	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
> -			    &usbfs_devices_fops);
> +	usb_devices_root = debugfs_create_file("devices", 0444, usb_debug_root,
> +					       NULL, &usbfs_devices_fops);
>  }
>  
>  static void usb_debugfs_cleanup(void)
>  {
> -	debugfs_remove_recursive(usb_debug_root);
> +	debugfs_remove(usb_devices_root);
>  }
>  
>  /*



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
