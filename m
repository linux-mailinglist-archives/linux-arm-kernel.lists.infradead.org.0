Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24B7034061
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 09:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U++jGhBDhqCrZX7tODxOMd4lDs+vpQW/2uR0IFgdEJ8=; b=i+wmxA14MmJ8gh
	H/Wu9Ko7iQlN3i1DV0lvWTwTT19v3Yr6LzpefQZ6JWvuSaRWVIqGczKW/Ul+s8qQnh1SZMy7ai/0F
	CLGIdY2v8MhRaOm7xGEyRNl0cg6hcqZWdc6crRFz6AD7+eGn38lwH/ClvRl0wM37Mk7vbCBedLDea
	Gn6MUcpdqTwrjw61kfld2LPj69bxFwX0s6UBbTG7W20MuMJcr1KnwyaY6lL6uQ/H1PCy0/K/QKgHz
	CYtuMg9bmYVxTOtW2Hp2HLw18iInOnU7a7R8KTBkBwZXKGBJALj2988FMKXbcq6GaOF1jJbcEEoIv
	3KJjo+THijtIiXiqo5PA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY40S-0006L3-6B; Tue, 04 Jun 2019 07:37:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY40L-0006Kg-9t; Tue, 04 Jun 2019 07:37:10 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F2DA249F4;
 Tue,  4 Jun 2019 07:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559633828;
 bh=yYjY9dPy0rYXxHJBZ1dR1jEtdGG5VdpSBr1YZrJynDk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=DtKXT2B1mmCgfmSocSk422rsl4VwCBPwwgyDUn74Z9p1rd8VASnFg7wZ797DfmPo6
 L76rjNkBWerw3wHawBdh2+nIVCt7FIxBYUL7nasWGYXLG+DS/jsLtTzzAxDcigSCqv
 K1eZzEuWRcwO5TV5GhrOFWs/kPQkxzZSoG+m9z/I=
Date: Tue, 4 Jun 2019 09:37:06 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v4] usb: create usb_debug_root for gadget only
Message-ID: <20190604073706.GA25045@kroah.com>
References: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_003709_370477_49B1A2A7 
X-CRM114-Status: GOOD (  19.27  )
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

On Tue, Jun 04, 2019 at 03:34:07PM +0800, Chunfeng Yun wrote:
> When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
> there is an issue, e.g.:
> 
> drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
> mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'
> 
> usb_debug_root is currently only built when host is supported
> (CONFIG_USB is set), for convenience, we also want it created when
> gadget only is enabled, this patch try to support it.
> 
> Reported-by: Randy Dunlap <rdunlap@infradead.org>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> ---
> v4:
>   move common API into common.c suggested by Felipe
> 
> v3:
>   1. still create usb_debug_root for gadget only
>   2. abandon mtu3's change
>   3. drop acked-by Randy
> 
> v2(resend): add acked-by Randy
> 
> v1: fix mtu3's build error, replace usb_debug_root by NULL;
> ---
>  drivers/usb/common/common.c   | 26 ++++++++++++++++++++++++++
>  drivers/usb/core/usb.c        | 16 ++++------------
>  drivers/usb/gadget/udc/core.c |  3 +++
>  include/linux/usb.h           |  2 ++
>  4 files changed, 35 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> index 18f5dcf58b0d..c52e9c9f58ec 100644
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
> @@ -139,6 +140,31 @@ enum usb_dr_mode usb_get_dr_mode(struct device *dev)
>  }
>  EXPORT_SYMBOL_GPL(usb_get_dr_mode);
>  
> +struct dentry *usb_debug_root;
> +EXPORT_SYMBOL_GPL(usb_debug_root);
> +
> +static atomic_t usb_debug_root_refcnt = ATOMIC_INIT(0);

Ick, no.

> +
> +struct dentry *usb_debugfs_init(void)
> +{
> +	if (!usb_debug_root)
> +		usb_debug_root = debugfs_create_dir("usb", NULL);
> +
> +	atomic_inc(&usb_debug_root_refcnt);
> +
> +	return usb_debug_root;
> +}
> +EXPORT_SYMBOL_GPL(usb_debugfs_init);
> +
> +void usb_debugfs_cleanup(void)
> +{
> +	if (atomic_dec_and_test(&usb_debug_root_refcnt)) {
> +		debugfs_remove_recursive(usb_debug_root);
> +		usb_debug_root = NULL;
> +	}
> +}
> +EXPORT_SYMBOL_GPL(usb_debugfs_cleanup);

Only remove the debugfs subdir if the usbcore module is removed.  Create
the debugfs subdir when the usbcore module is loaded.  No need for any
reference counting of any sort at all.  No need to overthink this :)

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
