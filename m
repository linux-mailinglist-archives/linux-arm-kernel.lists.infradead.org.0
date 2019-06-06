Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0C9D36A06
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 04:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qkGyxEokzMsyhFKH7b6TFDUjXhKPlLZyEaVSmjIPyLw=; b=fU9QLyJcxzpE94
	oYyRHhVCWPbGSr1ANvB0ndJ9D/kc7ePwGmYds/5XVdgy/4pCfudpKAixQY5t8wH+mXFpTf/TWRhp0
	Y99dgNwDRdx0AG+xM3L53Zr3aWaVBZ3j/+6+aS9IieYVPI6QVkVP4ooTsmI91HX7L97uYzQpk/Do5
	X1P7O1L4jq0eD5GjSknXPD2Qfxzv8nJgdJKo1hMLxxOKs5FWv0J/XTdwe0QWzzkljqWqn8KmXEALv
	SlS9JZxmPYmrDl/2Swu63fB9hrvKTsfTheDZbddK25A1rGybkAfemNLH6uVYxcseMYc3bUoyeb5FV
	lrCwAScoVM6Q8eQKtPcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYiDI-0006td-Ir; Thu, 06 Jun 2019 02:33:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYiDA-0006sL-0l; Thu, 06 Jun 2019 02:33:05 +0000
X-UUID: 2d9475c7d9a846e8b0f93d23e6cbe818-20190605
X-UUID: 2d9475c7d9a846e8b0f93d23e6cbe818-20190605
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 14950875; Wed, 05 Jun 2019 18:32:52 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 19:32:50 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 6 Jun 2019 10:32:48 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 6 Jun 2019 10:32:48 +0800
Message-ID: <1559788368.8487.109.camel@mhfsdcap03>
Subject: Re: [PATCH v3] USB: move usb debugfs directory creation to the usb
 common core
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Thu, 6 Jun 2019 10:32:48 +0800
In-Reply-To: <20190605124440.GD17558@kroah.com>
References: <20190605092816.GA23758@kroah.com>
 <20190605124440.GD17558@kroah.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_193304_068663_B55B6CD7 
X-CRM114-Status: GOOD (  22.68  )
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

On Wed, 2019-06-05 at 14:44 +0200, Greg Kroah-Hartman wrote:
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
> Reported-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
> Chunfeng, can you try testing this again?

Tested-by: Chunfeng Yun <chunfeng.yun@mediatek.com>

Thank you, Greg, Felipe

> 
> v3: Fix __init and __exit error when building into the tree as reported
>     by Chunfeng
>     Fix Reported-by: line as reported
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
> index 18f5dcf58b0d..1433260d99b4 100644
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
> +static int __init usb_common_init(void)
> +{
> +	usb_debug_root = debugfs_create_dir("usb", NULL);
> +	ledtrig_usb_init();
> +	return 0;
> +}
> +
> +static void __exit usb_common_exit(void)
> +{
> +	ledtrig_usb_exit();
> +	debugfs_remove_recursive(usb_debug_root);
> +}
> +
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
