Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F4972F7ED
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 09:32:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kez4vsuPb6O8hULURfNZ7OoFor/YWM3nkcyxtUaOFQk=; b=eQW037OQTw27R2
	DFdABCN1LWi7em5xuawuLwJLZedf9uzXXo12qT0OAYOrVskRoPxxyQ9xk6JZrxzE3BYi1hln5grl8
	FScgkEpdnFmRyu8ZnP4swFzPRkTD8ppQo0epKuph0gzn4Y6bq5y9kjMSj0BEFtD7Fb8ZU2xenJHow
	OWp/RuTj6b9f0WjDsNcc534wZgGLYsoNo39AHTjVrKhwkPj8tpL4M9DalYe9ulUD72Yt0SkH8y2ki
	tOB4/rwc+Nx9yI5PR/Sr+d4Qdhgvoo4MgoCD11CcVzRcbVccH4YHYUGbqef8T1+wuq5/9JraT7AP7
	cdBGDDljhENmNzpHuwVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWFY4-0000ik-Dg; Thu, 30 May 2019 07:32:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWFXv-0000hw-HF; Thu, 30 May 2019 07:32:23 +0000
X-UUID: 4d3dc13f9a48485eb6f3fccfd8813978-20190529
X-UUID: 4d3dc13f9a48485eb6f3fccfd8813978-20190529
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 4402759; Wed, 29 May 2019 23:31:49 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 00:31:46 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 30 May 2019 15:31:39 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 15:31:39 +0800
Message-ID: <1559201499.8487.40.camel@mhfsdcap03>
Subject: Re: [v3 PATCH] usb: create usb_debug_root for gadget only
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Date: Thu, 30 May 2019 15:31:39 +0800
In-Reply-To: <87k1ebj8vt.fsf@linux.intel.com>
References: <cffd6d75f69e4d908c8f39b8a60ddae27d6b7c88.1559028752.git.chunfeng.yun@mediatek.com>
 <87k1ebj8vt.fsf@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_003221_864610_FC302176 
X-CRM114-Status: GOOD (  13.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Hi Felipe,
On Tue, 2019-05-28 at 11:11 +0300, Felipe Balbi wrote:
> Hi,
> 
> Chunfeng Yun <chunfeng.yun@mediatek.com> writes:
> > diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> > index 7fcb9f782931..88b3ee03a12d 100644
> > --- a/drivers/usb/core/usb.c
> > +++ b/drivers/usb/core/usb.c
> > @@ -1190,7 +1190,7 @@ EXPORT_SYMBOL_GPL(usb_debug_root);
> >  
> >  static void usb_debugfs_init(void)
> >  {
> > -	usb_debug_root = debugfs_create_dir("usb", NULL);
> > +	usb_debug_root = debugfs_create_dir(USB_DEBUG_ROOT_NAME, NULL);
> >  	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
> >  			    &usbfs_devices_fops);
> >  }
> 
> might be a better idea to move this to usb common. Then have a function
> which can be called by both host and gadget to maybe create the
> directory:
> 
> static struct dentry *usb_debug_root;
> 
> struct dentry *usb_debugfs_init(void)
> {
> 	if (!usb_debug_root)
>         	usb_debug_root = debugfs_create_dir("usb", NULL);
> 
> 	return usb_debug_root;
> }
> 
> 
> Then usb core would be updated to something like:
> 
> static void usb_core_debugfs_init(void)
> {
> 	struct dentry *root = usb_debugfs_init();
> 
> 	debugfs_create_file("devices", 0444, root, NULL, &usbfs_devices_fops);
> }
> 
I find a problem when move usb_debugfs_init() and usb_debugfs_cleanup()
into usb common, it's easy to create "usb" directory, but difficult to
cleanup it:

common/common.c

struct dentry *usb_debugfs_init(void)
{
    if (!usb_debug_root)
        usb_debug_root = debugfs_create_dir("usb", NULL);

    return usb_debug_root;
}

void usb_debugfs_cleanup(void)
{
    debugfs_remove_recursive(usb_debug_root);
    usb_debug_root = NULL;
}

core/usb.c

static void usb_core_debugfs_init(void)
{
    struct dentry *root = usb_debugfs_init();

    debugfs_create_file("devices", 0444, root, NULL,
&usbfs_devices_fops);
}

static int __init usb_init(void)
{
    ...
    usb_core_debugfs_init();
    ...
}

static void __exit usb_exit(void)
{
    ...
    usb_debugfs_cleanup();
    // will be error, gadget may use it.
    ...
}

gadget/udc/core.c

static int __init usb_udc_init(void)
{
    ...
    usb_debugfs_init();
    ...
}

static void __exit usb_udc_exit(void)
{
    ...
    usb_debugfs_cleanup();
    // can't cleanup in fact, usb core may use it.
}

How to handle this case? introduce a reference count? do you have any
suggestion?

Thanks a lot






_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
