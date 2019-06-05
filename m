Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C97358AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 10:37:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8FjxnSucZJ9iXSLpk/yWSb2jAefjuAZMAtALHTlPexA=; b=RVxpINyuMS5YNi
	lUIhg65v2470Vd8m3CYUkl0IdL7YenxEtF90tWPmd4Nc8O8muf0KK+fovHlomIrzhQtyAr3f38LxR
	VQrQZ0pk9AntQIrs17e2cbWWUkTP95P7EICxwsy28mgFtduxTsXeMx/AZNVcPS4Ze9lmxUVS+UZAf
	kI/EKQgGCLqv3PutSjB+q0F7XBp51nJGucdci+SKr5GEq94cMkFKqe9/vCK/POApaiIDNMVgwkB55
	aGXVc/SHyZxZkxflQR80aVOZmw/EBMhc7nlZ+ssvq70cs6NPnaiecSYtiELE2tt0hQiv13yILy2bc
	tSsK1s+vgzlv+1KRLCNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYRQF-0003tK-J2; Wed, 05 Jun 2019 08:37:27 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYRQ7-0003ry-DZ; Wed, 05 Jun 2019 08:37:20 +0000
X-UUID: c08e7dcf95354f788b8f20067beffb50-20190605
X-UUID: c08e7dcf95354f788b8f20067beffb50-20190605
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1363379086; Wed, 05 Jun 2019 00:37:13 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 01:37:11 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 5 Jun 2019 16:37:08 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 5 Jun 2019 16:37:08 +0800
Message-ID: <1559723828.8487.103.camel@mhfsdcap03>
Subject: Re: [PATCH] USB: move usb debugfs directory creation to the usb
 common core
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Felipe Balbi <felipe.balbi@linux.intel.com>
Date: Wed, 5 Jun 2019 16:37:08 +0800
In-Reply-To: <871s08ebjn.fsf@linux.intel.com>
References: <20190604093258.GB30054@kroah.com>
 <87tvd5illh.fsf@linux.intel.com> <20190604124349.GA10203@kroah.com>
 <871s08ebjn.fsf@linux.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_013719_459961_6FE1BEB0 
X-CRM114-Status: GOOD (  12.10  )
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2019-06-05 at 10:28 +0300, Felipe Balbi wrote:
> Hi,
> 
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> >> Greg Kroah-Hartman <gregkh@linuxfoundation.org> writes:
> >> > diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
> >> > index 7fcb9f782931..f3d6b1ab80cb 100644
> >> > --- a/drivers/usb/core/usb.c
> >> > +++ b/drivers/usb/core/usb.c
> >> > @@ -1185,19 +1185,17 @@ static struct notifier_block usb_bus_nb = {
> >> >  	.notifier_call = usb_bus_notify,
> >> >  };
> >> >  
> >> > -struct dentry *usb_debug_root;
> >> > -EXPORT_SYMBOL_GPL(usb_debug_root);
> >> > +static struct dentry *usb_devices_root;
> >> >  
> >> >  static void usb_debugfs_init(void)
> >> >  {
> >> > -	usb_debug_root = debugfs_create_dir("usb", NULL);
> >> > -	debugfs_create_file("devices", 0444, usb_debug_root, NULL,
> >> > -			    &usbfs_devices_fops);
> >> > +	usb_devices_root = debugfs_create_file("devices", 0444, usb_debug_root,
> >> 
> >> don't we have a race now? Can usbcore ever probe before usb common?
> >
> > How can that happen if usb_debug_root is in usb common?  The module
> > loader will not let that happen.  Or it shouldn't :)
> 
> argh, indeed. The very fact that usbcore tries to resolve usb_debug_root
> already forces a dependency :-p
When build as module, usbcore depend on usb-common, but when buildin,
usbcore init before usb-common (use module_init)

> 



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
