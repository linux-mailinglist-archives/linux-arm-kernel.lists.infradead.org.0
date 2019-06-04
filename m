Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD83034329
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:28:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Cky9tXHNbIoGGdafYKM2HW4FkKgbjpc5WatiZ0GNwmc=; b=ZJONcNIK9Va2Eh
	uqW/r8yhx4RSPbEKP36Xtbq8rcXD+PVwKWPIYPUT0tb+xsliW4L4FKFe61ZVcu941oE61CY1X1Hm7
	AeLQD5vRS6I1thkXO1xdolKhrnGHPEVTeMzJ0Tr4Y+8MkO9aakhnzx6Mjx/xInAva7sTM19m2L0Z0
	9OIoGGnLQatUmEu1P/5LN0Ct6jdYFhEmhY2VM8Km1B6AegCWY5/lHenmM0gkfcp7kmR+xq7sWeb0Q
	29ON3ZgZ4bOoPPI9BGRq+ZLCby29oCsVV/ahSd24IBz2p40oKbcoPFr9MYxRkE+fH6VZLYliRUJ5F
	X5wphSo/oxvkqO4Jlp6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5kF-0004ot-GO; Tue, 04 Jun 2019 09:28:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5k7-0004o4-HR; Tue, 04 Jun 2019 09:28:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9F296204FD;
 Tue,  4 Jun 2019 09:28:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559640511;
 bh=6ETqa+2EBIL2s592Vq0+tBj4SL6ET4j6q8SqOPkcKuw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=hEd3fP6V8hlo4nCqa5dKa4wmtNC978msNENPO3/f7cQrwTkoSJQpCq8GbqFkPjEIZ
 qyAV3dZUz5+bEE5XiWAQipkuAYAiRjFHLZvFYvlHHpPtUOcyOu9aEQ4L2rYvt9BqXQ
 oF7Z0UdcWtWJIRtUy9Lr2IkDX92UBC7cal1SDhGA=
Date: Tue, 4 Jun 2019 11:28:28 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Subject: Re: [PATCH v4] usb: create usb_debug_root for gadget only
Message-ID: <20190604092828.GA30054@kroah.com>
References: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
 <20190604073706.GA25045@kroah.com> <87k1e123mc.fsf@linux.intel.com>
 <20190604082407.GA3783@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604082407.GA3783@kroah.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_022831_617701_FBDC766E 
X-CRM114-Status: GOOD (  20.83  )
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
Cc: devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 04, 2019 at 10:24:07AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 04, 2019 at 10:47:55AM +0300, Felipe Balbi wrote:
> > 
> > Hi,
> > 
> > Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> > >> +struct dentry *usb_debugfs_init(void)
> > >> +{
> > >> +	if (!usb_debug_root)
> > >> +		usb_debug_root = debugfs_create_dir("usb", NULL);
> > >> +
> > >> +	atomic_inc(&usb_debug_root_refcnt);
> > >> +
> > >> +	return usb_debug_root;
> > >> +}
> > >> +EXPORT_SYMBOL_GPL(usb_debugfs_init);
> > >> +
> > >> +void usb_debugfs_cleanup(void)
> > >> +{
> > >> +	if (atomic_dec_and_test(&usb_debug_root_refcnt)) {
> > >> +		debugfs_remove_recursive(usb_debug_root);
> > >> +		usb_debug_root = NULL;
> > >> +	}
> > >> +}
> > >> +EXPORT_SYMBOL_GPL(usb_debugfs_cleanup);
> > >
> > > Only remove the debugfs subdir if the usbcore module is removed.  Create
> > > the debugfs subdir when the usbcore module is loaded.  No need for any
> > > reference counting of any sort at all.  No need to overthink this :)
> > 
> > There is a slight need to overthink. He wants to use the same directory
> > for gadget-only builds too :-)
> 
> Again, that's fine, this file will be loaded for those builds as well,
> right?  Otherwise, how would this code even be present?  :)


As it seems to be easier to just write the patch instead of trying to
describe it in email, and the patch is even simpler than the text,
here's what I was thinking of:

Note, it's not fully correct, now that I think of it, but you get the
idea...


From foo@baz Tue 04 Jun 2019 11:25:30 AM CEST
Date: Tue, 04 Jun 2019 11:25:30 +0200
To: Greg KH <gregkh@linuxfoundation.org>
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] USB: move usb debugfs directory creation to the usb core

The USB gadget subsystem wants to use the USB debugfs root directory, so
move it to the common "core" USB code so that it is properly initialized
and removed as needed.

Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>


diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
index 18f5dcf58b0d..3b5e4263ffef 100644
--- a/drivers/usb/common/common.c
+++ b/drivers/usb/common/common.c
@@ -15,6 +15,7 @@
 #include <linux/usb/of.h>
 #include <linux/usb/otg.h>
 #include <linux/of_platform.h>
+#include <linux/debugfs.h>
 
 static const char *const ep_type_names[] = {
 	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
@@ -291,4 +292,21 @@ struct device *usb_of_get_companion_dev(struct device *dev)
 EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
 #endif
 
+struct dentry *usb_debug_root;
+EXPORT_SYMBOL_GPL(usb_debug_root);
+
+static int usb_common_init(void)
+{
+	usb_debug_root = debugfs_create_dir("usb", NULL);
+	return 0;
+}
+
+static void usb_common_exit(void)
+{
+	debugfs_remove_recursive(usb_debug_root);
+}
+
+module_init(usb_common_init);
+module_exit(usb_common_exit);
+
 MODULE_LICENSE("GPL");
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7fcb9f782931..2aa28445277d 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -1185,12 +1185,8 @@ static struct notifier_block usb_bus_nb = {
 	.notifier_call = usb_bus_notify,
 };
 
-struct dentry *usb_debug_root;
-EXPORT_SYMBOL_GPL(usb_debug_root);
-
 static void usb_debugfs_init(void)
 {
-	usb_debug_root = debugfs_create_dir("usb", NULL);
 	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
 			    &usbfs_devices_fops);
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
