Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF2C2973C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 13:34:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ds8B+CWNIeOgQgedv/n3OiJ1HAry8C3egurJLvsXy6k=; b=X/kMRVyK5W29W+
	WNNPlsi015Ihnnzunmk3gU8SwnGnHAsg2u40kIQJS85aZDKHWafSxZg4GLKT2rv+3Tc+GLZm2oHlg
	rs2s6Q67Bv+dhifQCna0OdTEMp8AqzC6ORxA2KpHg2J/lspTJJI2anoxhSJQMVt6DWHkGOA6pPRXB
	tKsKHpaILpbC5fv2aVmLX+qyHU6AzZvYr1vtQFao370EsO0TyINvMC0lcjISIMj/MN8woRbyOYg6L
	o8M8D9vJITozv10kEulIAjvlhKJOsRoDycgc9N00X0/U/wf3rbkpLRJ2mt0nVqk6d2HyM1HiGYz3w
	26gEHbnnORUqEYsDEfuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU8SL-0005Ux-UI; Fri, 24 May 2019 11:33:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8S0-0005Do-4u; Fri, 24 May 2019 11:33:34 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9B782217F9;
 Fri, 24 May 2019 11:33:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558697606;
 bh=qsSpekRTMO6soSqgbGN+CDeIL1lm1krs6w3p0H8XQJM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=J28+TsNIIP/dFub2mHSp/HM5iob1cAFymNIpICdMmFWS1rtbjRgLqFp5VpQF0WTcp
 EU7DKD6sFmDNNFxfiioA7iPyk7g36wq2A0CqCSnwZmMBgO4av735JVq9pTxm6xiDsd
 G9L8xLX59PeNMp/Da2UBdrLRP913ArMRz1AX2nVE=
Date: Fri, 24 May 2019 13:33:22 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [RESEND PATCH] usb: mtu3: fix up undefined reference to
 usb_debug_root
Message-ID: <20190524113322.GA32094@kroah.com>
References: <ee71197a681165aa72cb73c7f6cb402953351805.1558678075.git.chunfeng.yun@mediatek.com>
 <20190524074552.GA1080@kroah.com>
 <1558689951.10179.422.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1558689951.10179.422.camel@mhfsdcap03>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_043328_521435_08CE4291 
X-CRM114-Status: GOOD (  21.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-usb@vger.kernel.org, Randy Dunlap <rdunlap@infradead.org>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 05:25:51PM +0800, Chunfeng Yun wrote:
> On Fri, 2019-05-24 at 09:45 +0200, Greg Kroah-Hartman wrote:
> > On Fri, May 24, 2019 at 02:11:33PM +0800, Chunfeng Yun wrote:
> > > When CONFIG_USB is not set, and CONFIG_USB_GADGET is set,
> > > there is an issue:
> > > 
> > > ld:
> > > drivers/usb/mtu3/mtu3_debugfs.o: in function 'ssusb_debugfs_create_root':
> > > mtu3_debugfs.c:(.text+0xba3): undefined reference to 'usb_debug_root'
> > > 
> > > usb_debug_root is only built when CONFIG_USB is enabled, so here drop it
> > > and use NULL instead.
> > > 
> > > Reported-by: Randy Dunlap <rdunlap@infradead.org>
> > > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > > Acked-by: Randy Dunlap <rdunlap@infradead.org>
> > > ---
> > >  drivers/usb/mtu3/mtu3_debugfs.c | 3 +--
> > >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > Why resend?
> Sorry, I should send it out as v2 due to acked-by is added.

Then please document that below the --- line, otherwise I have no idea :(

> > > diff --git a/drivers/usb/mtu3/mtu3_debugfs.c b/drivers/usb/mtu3/mtu3_debugfs.c
> > > index 62c57ddc554e..b7c86ccd50b4 100644
> > > --- a/drivers/usb/mtu3/mtu3_debugfs.c
> > > +++ b/drivers/usb/mtu3/mtu3_debugfs.c
> > > @@ -528,8 +528,7 @@ void ssusb_dr_debugfs_init(struct ssusb_mtk *ssusb)
> > >  
> > >  void ssusb_debugfs_create_root(struct ssusb_mtk *ssusb)
> > >  {
> > > -	ssusb->dbgfs_root =
> > > -		debugfs_create_dir(dev_name(ssusb->dev), usb_debug_root);
> > > +	ssusb->dbgfs_root = debugfs_create_dir(dev_name(ssusb->dev), NULL);
> > 
> > This moves the directory to a new location no matter what the
> > configuration is. What's wrong with where it is today?  
> it seems usb_debug_root is only for host, but not for gadget only, it's
> defined and created in usb/core/usb.c

True, but you just moved the root if usb core is present too.

> > And shoudn't we
> > create the usb root directory if only gadget is enabled?
> Yes, need modify udc/core.c, it's better if support it, do you want me
> to send a patch for it?

Yes please, let's see what that looks like.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
