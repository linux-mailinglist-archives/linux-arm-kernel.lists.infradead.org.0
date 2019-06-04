Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C538034610
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 13:59:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EG0Ft+PUdekbRaSvVXWff8UvQp7RuEFME6wxi8FkLQo=; b=DbzBuP0MnBk49G
	8ldj8bya6AqOShE3ytqKmy8QVOdF8Jatu4COKzizCkUICOFZwH9Ni4d0Lgy7vBvzV/UHkr2ri54yg
	68W40hxJ9KImXu6lz9hM/+msRK0Wcn5c7Tm9M0qzguWxx+UokHjrQh+M+m9YRIzVTJTCThOWcDs6N
	vnL3HggO5ElZ7Am6/EgEQgckTmi4g5LZhysVf9St7Oh6pg+CiZ+IVWM8XTYSu2oPQ39BLSbcq2MhJ
	uldxGr5UI9ESMp0UcPYg9CSW2TTdZD2JM6dKwvGsFhPOdNo2POSSsQntLECsvOhqNGyZBzy735iDU
	3Ti80YOfKheTkUFCtIPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY86E-0005V4-2H; Tue, 04 Jun 2019 11:59:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY866-0005UN-Ub; Tue, 04 Jun 2019 11:59:24 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18AD324891;
 Tue,  4 Jun 2019 11:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559649561;
 bh=Z3XO3oNEi5/5cBT7blM/rDurAsFcvi2cI8yOPOcHAmg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=q7T5sA/E2GlQZD03vvdIiG1CS2Ci9xcqsSsS+0uONfWAe/OFiA0jKN3FI43RbjxgS
 LXDNCJ8E/Ic6Ci4r6t6wd69SKvUX66KvwdLm4fAhedRA46On0BZo83vPlN4YI5/Rpi
 j9DHYqDnYoB33Z862/bycdkeBXJdp4J6Q2g/IvfI=
Date: Tue, 4 Jun 2019 13:59:19 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Subject: Re: [PATCH] USB: move usb debugfs directory creation to the usb
 common core
Message-ID: <20190604115919.GA24346@kroah.com>
References: <20190604093258.GB30054@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190604093258.GB30054@kroah.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_045923_005021_0F54484B 
X-CRM114-Status: GOOD (  17.54  )
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

On Tue, Jun 04, 2019 at 11:32:58AM +0200, Greg Kroah-Hartman wrote:
> The USB gadget subsystem wants to use the USB debugfs root directory, so
> move it to the common "core" USB code so that it is properly initialized
> and removed as needed.
> 
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> 
> ---
> 
> This should be the "correct" version of this, Chunfeng, can you test
> this to verify it works for you?
> 
> 
> diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> index 18f5dcf58b0d..3b5e4263ffef 100644
> --- a/drivers/usb/common/common.c
> +++ b/drivers/usb/common/common.c
> @@ -15,6 +15,7 @@
>  #include <linux/usb/of.h>
>  #include <linux/usb/otg.h>
>  #include <linux/of_platform.h>
> +#include <linux/debugfs.h>
>  
>  static const char *const ep_type_names[] = {
>  	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
> @@ -291,4 +292,21 @@ struct device *usb_of_get_companion_dev(struct device *dev)
>  EXPORT_SYMBOL_GPL(usb_of_get_companion_dev);
>  #endif
>  
> +struct dentry *usb_debug_root;
> +EXPORT_SYMBOL_GPL(usb_debug_root);
> +
> +static int usb_common_init(void)
> +{
> +	usb_debug_root = debugfs_create_dir("usb", NULL);
> +	return 0;
> +}
> +
> +static void usb_common_exit(void)
> +{
> +	debugfs_remove_recursive(usb_debug_root);
> +}
> +
> +module_init(usb_common_init);
> +module_exit(usb_common_exit);
> +
>  MODULE_LICENSE("GPL");
> diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> index 7fcb9f782931..f3d6b1ab80cb 100644
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
> +	debugfs_remove_recursive(usb_devices_root);

That should just be debugfs_remove();

I'll fix it up after someone tests this :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
