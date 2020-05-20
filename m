Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 608771DA82D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 04:45:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lADjUiIXexotjHnSpx3EHYgZ0yKn4UeyW2b/O77Cmso=; b=RxVrqUQaeqWWG8
	M/SntSmOazHQFlx5soM1Is98e8tj0uitJqR5W4xJdvr/U3fYy6QTiTtGgQ0+H4rH7qlED+ctA2ACg
	2jTKYDK3wIPn5AOna67hLUGsO68JdyfaFjC51VPa6hkwfZbeZm2dhuz5gxcQa/DdIDCGk1d9SUju2
	2pL8NGgsIEAyViQqNWAnJGPT87LAlSEI8jlVPrqMWJ1nOG8txgpo4wz+uF4R85mGrRY0YFlrW9Wa9
	YoHLhN31grEqWj9UHVPqzJygDvoHJ00jeBibKHCsABFWX0wGSWSEhW0NC4X7SXOMZKp0B6jDZTWNX
	QlTerkEbSQutKSYXC7Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbEjV-00046K-DJ; Wed, 20 May 2020 02:45:25 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbEis-0003dE-QY; Wed, 20 May 2020 02:44:49 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 04K2ig9e038487;
 Tue, 19 May 2020 21:44:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1589942682;
 bh=4LA7BQvWOOiT0ndwf7oyzTtXGkJFmJHqlSXFIPNcau0=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=aruydvhM1RVJGbXuIcbt+D9bSr6ZhmWn4jG8zxGvvTR8yjctJ7LU501+0NlbjZO2v
 GnPmYp7KNDjfp1W84ksGrGKl6IG4vJTnjbLFhaupbSPSwL6GNJSv/zfxXGmUqbCpo8
 yJbC5EcEJc6L4y0HQDus9dTTtEOnNSZsWhTjP+D0=
Received: from DLEE100.ent.ti.com (dlee100.ent.ti.com [157.170.170.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 04K2igFZ043373
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 19 May 2020 21:44:42 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE100.ent.ti.com
 (157.170.170.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 19
 May 2020 21:44:41 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 19 May 2020 21:44:41 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 04K2iffQ007005;
 Tue, 19 May 2020 21:44:41 -0500
Date: Tue, 19 May 2020 21:44:41 -0500
From: Bin Liu <b-liu@ti.com>
To: Min Guo <min.guo@mediatek.com>
Subject: Re: [PATCH] usb: musb: mediatek: add reset FADDR to zero in reset
 interrupt handle
Message-ID: <20200520024441.GB5684@iaqt7>
Mail-Followup-To: Bin Liu <b-liu@ti.com>, Min Guo <min.guo@mediatek.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org,
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Macpaul Lin <macpaul.lin@gmail.com>
References: <1589428872-29282-1-git-send-email-macpaul.lin@mediatek.com>
 <1589441605.28160.27.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589441605.28160.27.camel@mhfsdcap03>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_194446_989677_90D58202 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Hans de Goede <hdegoede@redhat.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Macpaul Lin <macpaul.lin@mediatek.com>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Macpaul Lin <macpaul.lin@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 03:33:25PM +0800, Min Guo wrote:
> On Thu, 2020-05-14 at 12:01 +0800, Macpaul Lin wrote:
> > When receiving reset interrupt, FADDR need to be reset to zero in
> > periphearl mode. Otherwise ep0 cannot do enumeration when re-pluging USB
> > cable.
> > 
> > Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> > ---
> >  drivers/usb/musb/mediatek.c |    6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/drivers/usb/musb/mediatek.c b/drivers/usb/musb/mediatek.c
> > index 6196b0e..eebeadd 100644
> > --- a/drivers/usb/musb/mediatek.c
> > +++ b/drivers/usb/musb/mediatek.c
> > @@ -208,6 +208,12 @@ static irqreturn_t generic_interrupt(int irq, void *__hci)
> >  	musb->int_rx = musb_clearw(musb->mregs, MUSB_INTRRX);
> >  	musb->int_tx = musb_clearw(musb->mregs, MUSB_INTRTX);
> >  
> > +	if ((musb->int_usb & MUSB_INTR_RESET) && !is_host_active(musb)) {
> > +		/* ep0 FADDR must be 0 when (re)entering peripheral mode */
> > +		musb_ep_select(musb->mregs, 0);
> > +		musb_writeb(musb->mregs, MUSB_FADDR, 0);
> > +	}
> > +
> >  	if (musb->int_usb || musb->int_tx || musb->int_rx)
> >  		retval = musb_interrupt(musb);
> >  
> 
> Acked-by:Min Guo <min.guo@mediatek.com>
> 

Queued for v5.8. Thanks.

-Bin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
