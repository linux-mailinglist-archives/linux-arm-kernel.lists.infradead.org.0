Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1329342F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vM65gCQ6GP4vwvsg2bfpS3wjtftDJ6293ZC3Y2ccfv0=; b=LbWl3GteaSmLUX
	yalvY/9MkWRbWd+CQBZznTGef5QQfVMN/DrDOHn9khPkK+Fj+sMJyP51gr3+/ZJ/oqd3CHeKF7bwS
	miTH9jD2cT7RGAIWcC9YRpHws6IP9gD9b+XJGLdwiXgubOfqpHfkAhkjDfv1qJwupEV6e21Rn3dnq
	EGPNX7H2bAcKexedusqs//U42pQG8IWfR2GriY+SCViA93zIWd9RgYWfqEMroOjBeOWdCMkBb4GLk
	OmhYPuqTn8G391lAqUW4jGpWNRap+nPHde6TE2rq8S4mgXorVPHiU9mWe/vg/zJTPwFmc819+xkju
	XlDieXBBgVkFr75BIWTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5Ww-0007rU-VD; Tue, 04 Jun 2019 09:14:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5Wo-0007qV-Sx; Tue, 04 Jun 2019 09:14:48 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4270D21976;
 Tue,  4 Jun 2019 09:14:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559639685;
 bh=jRInVvoH/Jp1WAAgsg3CtkKKgWZbOrkmzFm+ATVyo4g=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=ItT/JG4j7Zw1Qmygon0KfYYZbV5gsZ0jmQm7Wq34OweZyE9lEUG9ikxPolTdHn/6+
 z3COdTJE5fN+MdHQ3HW4VnNmQ7yWQdfWxapfzxMzMiiHjO+WKC1SIku9tlhVJWgcPh
 Qft/vN8ZHEvD9vPc2rBKJyRY4xZRXicaqJKcbeQk=
Date: Tue, 4 Jun 2019 11:14:43 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH v4] usb: create usb_debug_root for gadget only
Message-ID: <20190604091443.GA458@kroah.com>
References: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
 <20190604073706.GA25045@kroah.com>
 <1559638754.8487.71.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559638754.8487.71.camel@mhfsdcap03>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_021446_974736_B1CA1432 
X-CRM114-Status: GOOD (  21.15  )
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

On Tue, Jun 04, 2019 at 04:59:14PM +0800, Chunfeng Yun wrote:
> On Tue, 2019-06-04 at 09:37 +0200, Greg Kroah-Hartman wrote:
> > On Tue, Jun 04, 2019 at 03:34:07PM +0800, Chunfeng Yun wrote:
> > > When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
> > > there is an issue, e.g.:
> > > 
> > > drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
> > > mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'
> > > 
> > > usb_debug_root is currently only built when host is supported
> > > (CONFIG_USB is set), for convenience, we also want it created when
> > > gadget only is enabled, this patch try to support it.
> > > 
> > > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > ---
> > > v4:
> > >   move common API into common.c suggested by Felipe
> > > 
> > > v3:
> > >   1. still create usb_debug_root for gadget only
> > >   2. abandon mtu3's change
> > >   3. drop acked-by Randy
> > > 
> > > v2(resend): add acked-by Randy
> > > 
> > > v1: fix mtu3's build error, replace usb_debug_root by NULL;
> > > ---
> > >  drivers/usb/common/common.c   | 26 ++++++++++++++++++++++++++
> > >  drivers/usb/core/usb.c        | 16 ++++------------
> > >  drivers/usb/gadget/udc/core.c |  3 +++
> > >  include/linux/usb.h           |  2 ++
> > >  4 files changed, 35 insertions(+), 12 deletions(-)
> > > 
> > > diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> > > index 18f5dcf58b0d..c52e9c9f58ec 100644
> > > --- a/drivers/usb/common/common.c
> > > +++ b/drivers/usb/common/common.c
> > > @@ -15,6 +15,7 @@
> > >  #include <linux/usb/of.h>
> > >  #include <linux/usb/otg.h>
> > >  #include <linux/of_platform.h>
> > > +#include <linux/debugfs.h>
> > >  
> > >  static const char *const ep_type_names[] = {
> > >  	[USB_ENDPOINT_XFER_CONTROL] = "ctrl",
> > > @@ -139,6 +140,31 @@ enum usb_dr_mode usb_get_dr_mode(struct device *dev)
> > >  }
> > >  EXPORT_SYMBOL_GPL(usb_get_dr_mode);
> > >  
> > > +struct dentry *usb_debug_root;
> > > +EXPORT_SYMBOL_GPL(usb_debug_root);
> > > +
> > > +static atomic_t usb_debug_root_refcnt = ATOMIC_INIT(0);
> > 
> > Ick, no.
> > 
> > > +
> > > +struct dentry *usb_debugfs_init(void)
> > > +{
> > > +	if (!usb_debug_root)
> > > +		usb_debug_root = debugfs_create_dir("usb", NULL);
> > > +
> > > +	atomic_inc(&usb_debug_root_refcnt);
> > > +
> > > +	return usb_debug_root;
> > > +}
> > > +EXPORT_SYMBOL_GPL(usb_debugfs_init);
> > > +
> > > +void usb_debugfs_cleanup(void)
> > > +{
> > > +	if (atomic_dec_and_test(&usb_debug_root_refcnt)) {
> > > +		debugfs_remove_recursive(usb_debug_root);
> > > +		usb_debug_root = NULL;
> > > +	}
> > > +}
> > > +EXPORT_SYMBOL_GPL(usb_debugfs_cleanup);
> > 
> > Only remove the debugfs subdir if the usbcore module is removed. 
> Both usbcore module and gadget module will use this "usb" subdir now.
> Gadget module may still use it when remove usbcore module.

Did you try to remove the usb-common module with the udc gadget module
remaining loaded with this change in place?  I think you will find that
it is impossible given that the udc gadget module now depends on a
symbol in the usb-common code.

So again, just use the module reference counting logic to drive this
functionality, don't create an atomic variable that duplicates the
logic we already have in place today.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
