Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FC3E34276
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 10:59:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OfhwlpNG+f+PUwko2lUzPbbxrx+HaIQBBmaO3FzbIlA=; b=jtHI4jlzMY65bB
	F+86jDAuFSU4oeP3wxm8xMPaY2/8nY60AXHEB9B4Wef2UtiR46r8QAmspw0echM3h/AYUI5n/t40U
	kJRFkaMNZiG2zfc+xx5giKRXHQ46Rb0HtP+7IFIIxlyPc4wAlR5kVkAoOKsjO54nuzLcjbjwd8nRd
	Wgwi1BeuGJsmprXAQJv5suoiIFSnzSaZEuqbxEcZq469NqTsL3/xpjsqmGiSp0LwlBXTD6hUo5u0M
	hJ/IHVMs+i4RgYilIVEt+WyHfoXh61MYvqsO0oHR6Qt/oEGhQieFB8CE3v7CGc69HAYkFdiczfMRw
	IRo5BE+rz81nRoAdU9rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5I9-0007hN-6x; Tue, 04 Jun 2019 08:59:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5I1-0007gG-GZ; Tue, 04 Jun 2019 08:59:30 +0000
X-UUID: 9d2c8ca099e144c2805ad50cec2b528f-20190604
X-UUID: 9d2c8ca099e144c2805ad50cec2b528f-20190604
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 216619145; Tue, 04 Jun 2019 00:59:22 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 01:59:19 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 4 Jun 2019 16:59:15 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 16:59:14 +0800
Message-ID: <1559638754.8487.71.camel@mhfsdcap03>
Subject: Re: [PATCH v4] usb: create usb_debug_root for gadget only
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Tue, 4 Jun 2019 16:59:14 +0800
In-Reply-To: <20190604073706.GA25045@kroah.com>
References: <1559633647-29040-1-git-send-email-chunfeng.yun@mediatek.com>
 <20190604073706.GA25045@kroah.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_015929_567200_D49ED31A 
X-CRM114-Status: GOOD (  20.25  )
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

On Tue, 2019-06-04 at 09:37 +0200, Greg Kroah-Hartman wrote:
> On Tue, Jun 04, 2019 at 03:34:07PM +0800, Chunfeng Yun wrote:
> > When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
> > there is an issue, e.g.:
> > 
> > drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
> > mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'
> > 
> > usb_debug_root is currently only built when host is supported
> > (CONFIG_USB is set), for convenience, we also want it created when
> > gadget only is enabled, this patch try to support it.
> > 
> > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v4:
> >   move common API into common.c suggested by Felipe
> > 
> > v3:
> >   1. still create usb_debug_root for gadget only
> >   2. abandon mtu3's change
> >   3. drop acked-by Randy
> > 
> > v2(resend): add acked-by Randy
> > 
> > v1: fix mtu3's build error, replace usb_debug_root by NULL;
> > ---
> >  drivers/usb/common/common.c   | 26 ++++++++++++++++++++++++++
> >  drivers/usb/core/usb.c        | 16 ++++------------
> >  drivers/usb/gadget/udc/core.c |  3 +++
> >  include/linux/usb.h           |  2 ++
> >  4 files changed, 35 insertions(+), 12 deletions(-)
> > 
> > diff --git a/drivers/usb/common/common.c b/drivers/usb/common/common.c
> > index 18f5dcf58b0d..c52e9c9f58ec 100644
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
> > @@ -139,6 +140,31 @@ enum usb_dr_mode usb_get_dr_mode(struct device *dev)
> >  }
> >  EXPORT_SYMBOL_GPL(usb_get_dr_mode);
> >  
> > +struct dentry *usb_debug_root;
> > +EXPORT_SYMBOL_GPL(usb_debug_root);
> > +
> > +static atomic_t usb_debug_root_refcnt = ATOMIC_INIT(0);
> 
> Ick, no.
> 
> > +
> > +struct dentry *usb_debugfs_init(void)
> > +{
> > +	if (!usb_debug_root)
> > +		usb_debug_root = debugfs_create_dir("usb", NULL);
> > +
> > +	atomic_inc(&usb_debug_root_refcnt);
> > +
> > +	return usb_debug_root;
> > +}
> > +EXPORT_SYMBOL_GPL(usb_debugfs_init);
> > +
> > +void usb_debugfs_cleanup(void)
> > +{
> > +	if (atomic_dec_and_test(&usb_debug_root_refcnt)) {
> > +		debugfs_remove_recursive(usb_debug_root);
> > +		usb_debug_root = NULL;
> > +	}
> > +}
> > +EXPORT_SYMBOL_GPL(usb_debugfs_cleanup);
> 
> Only remove the debugfs subdir if the usbcore module is removed. 
Both usbcore module and gadget module will use this "usb" subdir now.
Gadget module may still use it when remove usbcore module.

>  Create
> the debugfs subdir when the usbcore module is loaded.  No need for any
> reference counting of any sort at all.  No need to overthink this :)
> 
> thanks,
> 
> greg k-h



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
