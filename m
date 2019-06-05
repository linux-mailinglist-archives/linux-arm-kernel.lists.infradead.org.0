Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB6B35D09
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 14:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9CPzw7CjrKCnOWPUjhKMxXmLbLLVW3XOIAg4helq6UY=; b=o3oUQrsS82qQl7
	udcEKOiKodZBOHycaladY+ORV4txNOcRENXoxWyYiuLpjIq2L3sjYoToaZWyRsBz9D9zvAjLHLzFZ
	gEiuui39hYWPIMsv9L+VLWeAyTr8SUTwKeH9ogIQcbPsYU9+7Swrrhw7Ti/zRGBfv9m6pkXDNKsEf
	zZB8w5I5CFNKNeJuRq0TubJoVYsc7q9KoCgzpCAKxiX2eLqdk2R2OjS7oP2NPwZA8dP/4mOZjzIgq
	vu52P9Jrp3dM1+jWHrq3jte+amC8vRgfBqXCXRV+uslqykZF9q/FzfKYQGbO7LZMzcdJSyv/xGgGI
	MF6Bizf+nm6KOWPnE3mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYVDJ-0004HC-ER; Wed, 05 Jun 2019 12:40:21 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYVDC-0004Gl-Fg; Wed, 05 Jun 2019 12:40:16 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 1AE4C206BB;
 Wed,  5 Jun 2019 12:40:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559738413;
 bh=qdAUBbULazBNhStl1AcZ7Kv55Zf3/V9JNzSigkm1w7M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=d+brviXoxz8rR+sa6s+nEnzxEORtvoSYychevSjfk+wLUWBEPtzNRxqQVfhQpZBCH
 nsrd7ag0lwuGki2SLtp21v2dlF9Z/igkVJeTqH1rw1VIBnseo0+90PB5RZLzcWFvBD
 CP24WIcSjTIE83sXdlJ1xmviw6Mu1b5JboF/7eb0=
Date: Wed, 5 Jun 2019 14:40:11 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v2] USB: move usb debugfs directory creation to the usb
 common core
Message-ID: <20190605124011.GB17558@kroah.com>
References: <20190605092816.GA23758@kroah.com>
 <1559732515.8487.106.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559732515.8487.106.camel@mhfsdcap03>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_054014_590969_2B0C8ADF 
X-CRM114-Status: GOOD (  25.60  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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

On Wed, Jun 05, 2019 at 07:01:55PM +0800, Chunfeng Yun wrote:
> Hi Greg,
> On Wed, 2019-06-05 at 11:28 +0200, Greg Kroah-Hartman wrote:
> > The USB gadget subsystem wants to use the USB debugfs root directory, so
> > move it to the common "core" USB code so that it is properly initialized
> > and removed as needed.
> > 
> > In order to properly do this, we need to load the common code before the
> > usb core code, when everything is linked into the kernel, so reorder the
> > link order of the code.
> > 
> > Also as the usb common code has the possibility of the led trigger logic
> > to be merged into it, handle the build option properly by only having
> > one module init/exit function and have the common code initialize the
> > led trigger if needed.
> > 
> > Reported-by: From: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > Cc: Felipe Balbi <felipe.balbi@linux.intel.com>
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > ---
> > 
> > Chunfeng, can you test this version to verify it works for you when
> > building the code into the kernel?
> > 
> > v2: handle led common code link error reported by kbuild
> >     handle subsys_initcall issue pointed out by Chunfeng
> > 
> >  drivers/usb/Makefile        |  3 +--
> >  drivers/usb/common/common.c | 21 +++++++++++++++++++++
> >  drivers/usb/common/common.h | 14 ++++++++++++++
> >  drivers/usb/common/led.c    |  9 +++------
> >  drivers/usb/core/usb.c      | 10 ++++------
> >  5 files changed, 43 insertions(+), 14 deletions(-)
> >  create mode 100644 drivers/usb/common/common.h
> > 
> > diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
> > index 7d1b8c82b208..ecc2de1ffaae 100644
> > --- a/drivers/usb/Makefile
> > +++ b/drivers/usb/Makefile
> > @@ -5,6 +5,7 @@
> >  
> >  # Object files in subdirectories
> >  
> > +obj-$(CONFIG_USB_COMMON)	+= common/
> >  obj-$(CONFIG_USB)		+= core/
> >  obj-$(CONFIG_USB_SUPPORT)	+= phy/
> >  
> > @@ -60,8 +61,6 @@ obj-$(CONFIG_USB_CHIPIDEA)	+= chipidea/
> >  obj-$(CONFIG_USB_RENESAS_USBHS)	+= renesas_usbhs/
> >  obj-$(CONFIG_USB_GADGET)	+= gadget/
> >  
> > -obj-$(CONFIG_USB_COMMON)	+= common/
> > -
> >  obj-$(CONFIG_USBIP_CORE)	+= usbip/
> >  
> >  obj-$(CONFIG_TYPEC)		+= typec/
> > diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> > index 18f5dcf58b0d..84a4423aaddf 100644
> > --- a/drivers/usb/common/common.c
> > +++ b/drivers/usb/common/common.c
> > @@ -15,6 +15,8 @@
> >  #include <linux/usb/of.h>
> >  #include <linux/usb/otg.h>
> >  #include <linux/of_platform.h>
> > +#include <linux/debugfs.h>
> > +#include "common.h"
> >  
> >  static const char *const ep_type_names[] = {
> >  	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
> > @@ -291,4 +293,23 @@ struct device *usb_of_get_companion_dev(struct device *dev)
> >  EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
> >  #endif
> >  
> > +struct dentry *usb_debug_root;
> > +EXPORT_SYMBOL_GPL(usb_debug_root);
> > +
> > +static int usb_common_init(void)
> > +{
> > +	usb_debug_root = debugfs_create_dir("usb", NULL);
> > +	ledtrig_usb_init();
> > +	return 0;
> > +}
> > +
> > +static void usb_common_exit(void)
> > +{
> > +	ledtrig_usb_exit();
> > +	debugfs_remove_recursive(usb_debug_root);
> > +}
> > +
> When enable CONFIG_LED_TRIGGER, there is a warning
> 
>  MODPOST vmlinux.o
> WARNING: vmlinux.o(.text+0x68e300): Section mismatch in reference from
> the function usb_common_init() to the
> function .init.text:ledtrig_usb_init()
> The function usb_common_init() references
> the function __init ledtrig_usb_init().
> This is often because usb_common_init lacks a __init
> annotation or the annotation of ledtrig_usb_init is wrong.
> 
> WARNING: vmlinux.o(.text+0x68e318): Section mismatch in reference from
> the function usb_common_exit() to the
> function .exit.text:ledtrig_usb_exit()
> The function usb_common_exit() references a function in an exit section.
> Often the function ledtrig_usb_exit() has valid usage outside the exit
> section
> and the fix is to remove the __exit annotation of ledtrig_usb_exit.
> 
> seems need add __init and __exit for usb_common_init/exit

Yes, you are right, I'll go add those markings to those functions, good
catch.

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
