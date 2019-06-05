Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFB43580E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9knTE/tmIZKvjz6mH1OO1PbPGdGgo6UH8kMGFnPUgMs=; b=SDOPokX456DfHu
	Rtq8wY9x6ZLaUz3533hCWyoQRFXA2SPNz4UGkWUMpsuAhc3yCebbcwdZYGH30rNCU27agTnxobTI7
	RHZKoL5tLWdOLU5VwHQCGvr7KME42sVFwYO7FGPn9pBQlZR9ZnlGuf7eEMjLOhI0dcjnqIY+TOhd3
	UlO+jBH6vp+f1tGLOdNWX754rJtg4k+BtQ+uoI9yOr+HdSHilNlCbUf4fpTteZEUgQDK81EAJLiRU
	r8GPkat/rcfJGAKWLzGx24R2GC6r5trvMUUP4ZWMmyKFSdu279r2XHTvyteToLOz427KsszwQc1o5
	qHBCGPZLAt/Cpj7ChPpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQh8-0002xA-11; Wed, 05 Jun 2019 07:50:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQgz-0002vW-L3; Wed, 05 Jun 2019 07:50:43 +0000
X-UUID: 28537962f837437db2700ef715c20e0d-20190604
X-UUID: 28537962f837437db2700ef715c20e0d-20190604
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1743603149; Tue, 04 Jun 2019 23:50:36 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 00:50:35 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 5 Jun 2019 15:50:32 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 15:50:31 +0800
Message-ID: <1559721031.8487.99.camel@mhfsdcap03>
Subject: Re: [PATCH] USB: move usb debugfs directory creation to the usb
 common core
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Wed, 5 Jun 2019 15:50:31 +0800
In-Reply-To: <20190604115919.GA24346@kroah.com>
References: <20190604093258.GB30054@kroah.com>
 <20190604115919.GA24346@kroah.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_005041_695377_6DED33BD 
X-CRM114-Status: GOOD (  20.41  )
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

On Tue, 2019-06-04 at 13:59 +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 04, 2019 at 11:32:58AM +0200, Greg Kroah-Hartman wrote:
> > The USB gadget subsystem wants to use the USB debugfs root directory, so
> > move it to the common "core" USB code so that it is properly initialized
> > and removed as needed.
> > 
> > Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> > 
> > ---
> > 
> > This should be the "correct" version of this, Chunfeng, can you test
> > this to verify it works for you?
> > 
> > 
> > diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> > index 18f5dcf58b0d..3b5e4263ffef 100644
> > --- a/drivers/usb/common/common.c
> > +++ b/drivers/usb/common/common.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/usb/of.h>
> >  #include <linux/usb/otg.h>
> >  #include <linux/of_platform.h>
> > +#include <linux/debugfs.h>
> >  
> >  static const char *const ep_type_names[] = {
> >  	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
> > @@ -291,4 +292,21 @@ struct device *usb_of_get_companion_dev(struct device *dev)
> >  EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
> >  #endif
> >  
> > +struct dentry *usb_debug_root;
> > +EXPORT_SYMBOL_GPL(usb_debug_root);
> > +
> > +static int usb_common_init(void)
> > +{
> > +	usb_debug_root = debugfs_create_dir("usb", NULL);
> > +	return 0;
> > +}
> > +
> > +static void usb_common_exit(void)
> > +{
> > +	debugfs_remove_recursive(usb_debug_root);
> > +}
> > +
> > +module_init(usb_common_init);
I tested this patch.

Here use module_init() indeed have a race as Felipe said before.
usbcore uses subsys_initcall(), and have a higher priority than
module_init(), so when usbcore tries to create "devices" file,
usb_debug_root is not created.

after I replace it by postcore_initcall() (debugfs uses
core_initcall()), test two cases:

1. buildin usbcore/udc-core

    "usb" directory is created, and usb/devices file is also created by
usbcore

2. build both usbcore and gadget as ko

    usbcore.ko, udc-core.ko and usb-common.ko are created. 

   2.1 
       insmod usb-common.ko   // "usb" directory is created
       insmod usb-core.ko   // usb/devices file is created

   2.2
       rmmod usb-common.ko  // failed, usb_common is in use by usb-core

   2.3 
       rmmod usb-core.ko   // usb/devices file is destroyed
       rmmod usb-common.ko  // usb directory is destroyed

   2.4 
       insmod usb-common.ko   // "usb" directory is created
       insmod udc-core.ko

   2.5
       rmmod usb-common.ko  // failed, usb_common is in use by udc-core

   2.6 
       rmmod udc-core.ko
       rmmod usb-common.ko  // usb directory is destroyed

they are all in line with expectations


> > +module_exit(usb_common_exit);
> > +
> >  MODULE_LICENSE("GPL");
> > diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> > index 7fcb9f782931..f3d6b1ab80cb 100644
> > --- a/drivers/usb/core/usb.c
> > +++ b/drivers/usb/core/usb.c
> > @@ -1185,19 +1185,17 @@ static struct notifier_block usb_bus_nb = {
> >  	.notifier_call = usb_bus_notify,
> >  };
> >  
> > -struct dentry *usb_debug_root;
> > -EXPORT_SYMBOL_GPL(usb_debug_root);
> > +static struct dentry *usb_devices_root;
> >  
> >  static void usb_debugfs_init(void)
> >  {
> > -	usb_debug_root = debugfs_create_dir("usb", NULL);
> > -	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
> > -			    &usbfs_devices_fops);
> > +	usb_devices_root = debugfs_create_file("devices", 0444, usb_debug_root,
> > +					       NULL, &usbfs_devices_fops);
> >  }
> >  
> >  static void usb_debugfs_cleanup(void)
> >  {
> > -	debugfs_remove_recursive(usb_debug_root);
> > +	debugfs_remove_recursive(usb_devices_root);
> 
> That should just be debugfs_remove();
> 
> I'll fix it up after someone tests this :)
> 
> thanks,
> 
> greg k-h



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
