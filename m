Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6FDF33F24
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 08:44:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LnFVdOlAmrzu336eFypqMeCAHm/qHwnhcwp7Ya3Y8Uc=; b=dcmBMaP8mS0Ya+
	UQh6KspP9JBmOu4PWUFlGI3KZG+sY9nlpaeovxWKeeCJNAJXN1e8Jcgu/rkqsmIh6Wb5DpMzxzx9v
	7v5M+5gqErCQwEsTAK8RUkzzJBzbOKDwTPOqQ/DUOUtGMHF6icA6RD1YWncMdNmagjxAoxtEb+45W
	ZPK3QUj/FGC1g8b8qIIJJE0JAEIlWRxee0LIhendAi+yKEzx3t0scZuAK8iWw6QUwsTsYZMQhQhRc
	UPz4Skfo4I2O8Qj9CBKEkQFCQ0XAEfRdx3/lFwqhRGOnIKQlaD8zp5ynWG+MZQ6ACPjDzXJaJccq/
	8VBtQzJzs/5y4MDnyaIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY3BZ-0006QE-Fr; Tue, 04 Jun 2019 06:44:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY3BS-0006PO-70; Tue, 04 Jun 2019 06:44:35 +0000
X-UUID: a27ec159874c4855b627a31428f6f836-20190603
X-UUID: a27ec159874c4855b627a31428f6f836-20190603
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 866147116; Mon, 03 Jun 2019 22:44:23 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 23:44:21 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 4 Jun 2019 14:44:18 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 14:44:18 +0800
Message-ID: <1559630658.8487.61.camel@mhfsdcap03>
Subject: Re: [v3 PATCH] usb: create usb_debug_root for gadget only
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Date: Tue, 4 Jun 2019 14:44:18 +0800
In-Reply-To: <87sgsv2n54.fsf@linux.intel.com>
References: <cffd6d75f69e4d908c8f39b8a60ddae27d6b7c88.1559028752.git.chunfeng.yun@mediatek.com>
 <87k1ebj8vt.fsf@linux.intel.com> <1559201499.8487.40.camel@mhfsdcap03>
 <87sgsv2n54.fsf@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_234434_263290_14FEEA28 
X-CRM114-Status: GOOD (  18.91  )
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
Cc: linux-usb@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-05-31 at 08:44 +0300, Felipe Balbi wrote:
> Hi,
> 
> Chunfeng Yun <chunfeng.yun@mediatek.com> writes:
> 
> > Hi Felipe,
> > On Tue, 2019-05-28 at 11:11 +0300, Felipe Balbi wrote:
> >> Hi,
> >> 
> >> Chunfeng Yun <chunfeng.yun@mediatek.com> writes:
> >> > diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> >> > index 7fcb9f782931..88b3ee03a12d 100644
> >> > --- a/drivers/usb/core/usb.c
> >> > +++ b/drivers/usb/core/usb.c
> >> > @@ -1190,7 +1190,7 @@ EXPORT_SYMBOL_GPL(usb_debug_root);
> >> >  
> >> >  static void usb_debugfs_init(void)
> >> >  {
> >> > -	usb_debug_root = debugfs_create_dir("usb", NULL);
> >> > +	usb_debug_root = debugfs_create_dir(USB_DEBUG_ROOT_NAME, NULL);
> >> >  	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
> >> >  			    &usbfs_devices_fops);
> >> >  }
> >> 
> >> might be a better idea to move this to usb common. Then have a function
> >> which can be called by both host and gadget to maybe create the
> >> directory:
> >> 
> >> static struct dentry *usb_debug_root;
> >> 
> >> struct dentry *usb_debugfs_init(void)
> >> {
> >> 	if (!usb_debug_root)
> >>         	usb_debug_root = debugfs_create_dir("usb", NULL);
> >> 
> >> 	return usb_debug_root;
> >> }
> >> 
> >> 
> >> Then usb core would be updated to something like:
> >> 
> >> static void usb_core_debugfs_init(void)
> >> {
> >> 	struct dentry *root = usb_debugfs_init();
> >> 
> >> 	debugfs_create_file("devices", 0444, root, NULL, &usbfs_devices_fops);
> >> }
> >> 
> > I find a problem when move usb_debugfs_init() and usb_debugfs_cleanup()
> > into usb common, it's easy to create "usb" directory, but difficult to
> > cleanup it:
> >
> > common/common.c
> >
> > struct dentry *usb_debugfs_init(void)
> > {
> >     if (!usb_debug_root)
> >         usb_debug_root = debugfs_create_dir("usb", NULL);
> >
> >     return usb_debug_root;
> > }
> >
> > void usb_debugfs_cleanup(void)
> > {
> >     debugfs_remove_recursive(usb_debug_root);
> >     usb_debug_root = NULL;
> > }
> >
> > core/usb.c
> >
> > static void usb_core_debugfs_init(void)
> > {
> >     struct dentry *root = usb_debugfs_init();
> >
> >     debugfs_create_file("devices", 0444, root, NULL,
> > &usbfs_devices_fops);
> > }
> >
> > static int __init usb_init(void)
> > {
> >     ...
> >     usb_core_debugfs_init();
> >     ...
> > }
> >
> > static void __exit usb_exit(void)
> > {
> >     ...
> >     usb_debugfs_cleanup();
> >     // will be error, gadget may use it.
> >     ...
> > }
> >
> > gadget/udc/core.c
> >
> > static int __init usb_udc_init(void)
> > {
> >     ...
> >     usb_debugfs_init();
> >     ...
> > }
> >
> > static void __exit usb_udc_exit(void)
> > {
> >     ...
> >     usb_debugfs_cleanup();
> >     // can't cleanup in fact, usb core may use it.
> > }
> >
> > How to handle this case? introduce a reference count? do you have any
> > suggestion?
> 
> I guess a simple refcount is the way to go:
> 
> struct dentry *usb_debugfs_init(void)
> {
> 	if (!usb_debug_root)
> 		usb_debug_root = debugfs_create_dir("usb", NULL);
> 
> 	usb_debug_root_refcnt++;
> 	return usb_debug_root;
> }
> 
> void usb_debugfs_cleanup(void)
> {
> 	if (!(--usb_debug_root_refcnt)) {
> 		debugfs_remove_recursive(usb_debug_root);
> 		usb_debug_root = NULL;
> 	}
> }
I'll try it, thanks

> 
> Or something along those lines
> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
