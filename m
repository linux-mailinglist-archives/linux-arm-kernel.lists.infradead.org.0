Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFC4B49B12
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 09:47:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=674u1fJi+9Yoz4xlEtrIFNDqNPFQMNZoNjG/+xznj9U=; b=bB/oDygDmMP20D
	qtrYSnXAeZQO+binvwdD2xWOHY0TIDqrHo+0s+yjizYXpb6ijvXUyH73/TaF2C7jP3wDAG8wezAre
	Sj1SZQ5tRS+BTSOqvUxZsO13+NB2Z7u9nKS9djSygaZoM2nUY9IMUUTia9dbDTY/rD6chHGLa1ezQ
	rWAL24A2F2VP71atjKTFs9lKwuotBIAM3FPphJYYLiPtvJPCCopAImSXvTt4lP84q/xDlku745+nu
	fcRzaBhWdbhXyp04bMvz1nrJlJOwJChKuZy3NzB6/LdH3zqOXeWqd5ZgrdQcXzSck/nL7cIVpCiT+
	yJwNfamO0zi+/+IZgR7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd8pY-0006Na-Kd; Tue, 18 Jun 2019 07:47:00 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd8pK-0006MV-TD
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 07:46:48 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id DF38AFF807;
 Tue, 18 Jun 2019 07:46:33 +0000 (UTC)
Date: Tue, 18 Jun 2019 09:46:33 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Felipe Balbi <balbi@kernel.org>
Subject: Re: [PATCH] usb: gadget: udc: lpc32xx: allocate descriptor with
 GFP_ATOMIC
Message-ID: <20190618074633.GC23549@piout.net>
References: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
 <87zhmffiui.fsf@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87zhmffiui.fsf@linux.intel.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_004647_103794_CE3E8B3F 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vladimir Zapolskiy <vz@mleia.com>,
 James Grant <james.grant@jci.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 18/06/2019 10:33:41+0300, Felipe Balbi wrote:
> Alexandre Belloni <alexandre.belloni@bootlin.com> writes:
> 
> > Gadget drivers may queue request in interrupt context. This would lead to
> > a descriptor allocation in that context. In that case we would hit
> > BUG_ON(in_interrupt()) in __get_vm_area_node.
> >
> > Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > ---
> >  drivers/usb/gadget/udc/lpc32xx_udc.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
> > index d8f1c60793ed..b706d9c85a35 100644
> > --- a/drivers/usb/gadget/udc/lpc32xx_udc.c
> > +++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
> > @@ -938,7 +938,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struct lpc32xx_udc *udc)
> >  	struct lpc32xx_usbd_dd_gad	*dd;
> >  
> >  	dd = (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
> > -			udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
> > +			udc->dd_cache, (GFP_ATOMIC | GFP_DMA), &dma);
> 
> doesn't apply:
> 
> checking file drivers/usb/gadget/udc/lpc32xx_udc.c
> Hunk #1 FAILED at 938.
> 

You already applied it for v5.2-rc5


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
