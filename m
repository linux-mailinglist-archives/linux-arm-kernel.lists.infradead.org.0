Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27C222C1A6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 10:50:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krP9u0exyRZtnCDeaR61+cA+kYppZj4GHcufUCatWCo=; b=ASWLeQOyPotOEh
	zELMBnb9BauuWitlFWahSdDY8+XYv9FEsGbtSfxNb8JHoNVdrE7/geNiFQxW/EiuDrfcZJhWhKiVY
	HRg9KVl+upXjfZEP0IeaIizBvaUPKQfhl5q1hDHcBmT8m/doe6Mlb4ka8gz1LISSSveHRHE9Jjrkv
	ciXrL4N1ejhpJamgxp3nNzivQeKmE/GOn45BxNX8jrLYlgyGn66g9dI4THgArUdPU6Q4Ej6qRrNQW
	Awt6ogjKBJYIIyzy6gdh3bH+k28BOusF3CnpxOWzYXjUNAOBsRdU4TspVbIi6N6gyTaFxgVgo4xTY
	9e4uh6rUL7Nl25IeqB5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVXo8-0007Al-Ao; Tue, 28 May 2019 08:50:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVXnv-00079o-UR; Tue, 28 May 2019 08:49:57 +0000
X-UUID: 4ff82eb4044d4637a11b52928284921d-20190528
X-UUID: 4ff82eb4044d4637a11b52928284921d-20190528
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 977346562; Tue, 28 May 2019 00:49:49 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 28 May 2019 01:49:48 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 28 May 2019 16:49:45 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 28 May 2019 16:49:45 +0800
Message-ID: <1559033385.10179.443.camel@mhfsdcap03>
Subject: Re: [v3 PATCH] usb: create usb_debug_root for gadget only
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Date: Tue, 28 May 2019 16:49:45 +0800
In-Reply-To: <87k1ebj8vt.fsf@linux.intel.com>
References: <cffd6d75f69e4d908c8f39b8a60ddae27d6b7c88.1559028752.git.chunfeng.yun@mediatek.com>
 <87k1ebj8vt.fsf@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_014955_989203_51868E03 
X-CRM114-Status: GOOD (  12.32  )
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
> might be a better idea to move this to usb common. 
Good idea, I forgot there is a common file.

> Then have a function
> which can be called by both host and gadget to maybe create the
> directory:
I'll try it.

Thanks a lot

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



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
