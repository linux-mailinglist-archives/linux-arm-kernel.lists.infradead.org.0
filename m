Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B123929498
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 11:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C8L3qrT2Fk+N9clyIVUKwzWUJeLZifD3N0/LqSls7tE=; b=QjLeTmCjA1S5+W
	KeCQL8QgEDQuygjI6nACC++9SiioOIljwQcY9sy96B09CmpoP4X/UQf2xk5NK3a0vxF6gNrAkMkvu
	gtK3KV/ZOoCXGKbYg4bSKnWJPNtMuD7oCQLFPAjr+FoSwvYVzAGh3fH2P0qCc0MnvJIhDKuY+QIJr
	e0AHLI4OUL3+pHIsvicSyTwLjoZshaHBksOpyLtFRN82hH2RPFF0OKUsVyQ3yhhtoYW2PQpijrBIv
	QAxq0uL/JXwCIVF+2O4r6SlTuZ6DI98r9GClETmaEFtpz3MM8jHwBYN9hMTdAoGmAoUD42XlFixx0
	LUE731ZjZwKqLTXNJLSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU6Sn-0008NX-Tv; Fri, 24 May 2019 09:26:09 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU6Sg-0008N2-0a; Fri, 24 May 2019 09:26:03 +0000
X-UUID: e59c6b71c41f4e17a30bb24133059496-20190524
X-UUID: e59c6b71c41f4e17a30bb24133059496-20190524
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1131723545; Fri, 24 May 2019 01:25:56 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 24 May 2019 02:25:54 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 24 May 2019 17:25:52 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 24 May 2019 17:25:51 +0800
Message-ID: <1558689951.10179.422.camel@mhfsdcap03>
Subject: Re: [RESEND PATCH] usb: mtu3: fix up undefined reference to
 usb_debug_root
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Date: Fri, 24 May 2019 17:25:51 +0800
In-Reply-To: <20190524074552.GA1080@kroah.com>
References: <ee71197a681165aa72cb73c7f6cb402953351805.1558678075.git.chunfeng.yun@mediatek.com>
 <20190524074552.GA1080@kroah.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_022602_059548_8A85068C 
X-CRM114-Status: GOOD (  17.97  )
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
Cc: linux-usb@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2019-05-24 at 09:45 +0200, Greg Kroah-Hartman wrote:
> On Fri, May 24, 2019 at 02:11:33PM +0800, Chunfeng Yun wrote:
> > When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
> > there is an issue:
> > 
> > ld:
> > drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
> > mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'
> > 
> > usb_debug_root is only built when CONFIG_USB is enabled, so here drop it
> > and use NULL instead.
> > 
> > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > ---
> >  drivers/usb/mtu3/mtu3_debugfs.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> Why resend?
Sorry, I should send it out as v2 due to acked-by is added.

> 
> > diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
> > index 62c57ddc554e..b7c86ccd50b4 100644
> > --- a/drivers/usb/mtu3/mtu3_debugfs.c
> > +++ b/drivers/usb/mtu3/mtu3_debugfs.c
> > @@ -528,8 +528,7 @@ void ssusb_dr_debugfs_init(struct ssusb_mtk *ssusb)
> >  
> >  void ssusb_debugfs_create_root(struct ssusb_mtk *ssusb)
> >  {
> > -	ssusb->dbgfs_root =
> > -		debugfs_create_dir(dev_name(ssusb->dev), usb_debug_root);
> > +	ssusb->dbgfs_root = debugfs_create_dir(dev_name(ssusb->dev), NULL);
> 
> This moves the directory to a new location no matter what the
> configuration is. What's wrong with where it is today?  
it seems usb_debug_root is only for host, but not for gadget only, it's
defined and created in usb/core/usb.c

> And shoudn't we
> create the usb root directory if only gadget is enabled?
Yes, need modify udc/core.c, it's better if support it, do you want me
to send a patch for it?

Thanks

> 
> thanks,
> 
> greg k-h



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
