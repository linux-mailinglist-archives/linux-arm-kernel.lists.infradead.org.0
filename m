Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5C1967350
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 18:33:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=63g1mEevoeX8VUKcUH6y8uFYVDph6Z1ZvN9lmD/tRpg=; b=dE18u21Wi2gCRf
	RdPZBn14U+XF43GnP8CUWOlzacUeJP3fkEOtYdJX9S4wdCljughd5AfJ4M7Ax1WNUSNiPW+icmYav
	jvojIrBAzWMubs3tXmldUnSFZOIkMZWhPW0DKVCaUwRGsaUBngGZCBb3pR/OYWsqu8iB2RI4+bvT6
	bnXmhyFs5Ieb17sKKWje5lPqvOCsl8C67YAA+/XATlGLyGpgklzlvOGMmlNNQBvKN4Lo6L/Cywkya
	DTP8IGZlNEP0nfDnHN1mOfsb49i1taiaVTL4n0yCMuGIXSxx3WgOZ1HQfxgzn2HfvCBZDWB+HAJKR
	l0mcv1qETGoHCY1W8RTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyTe-00046f-Bd; Fri, 12 Jul 2019 16:32:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyTP-00045v-VO
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 16:32:41 +0000
Received: from pc-381.home
 (2a01cb0c80061e00e835b5cf688fec09.ipv6.abo.wanadoo.fr
 [IPv6:2a01:cb0c:8006:1e00:e835:b5cf:688f:ec09])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: bbrezillon)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 3D11028BBD0;
 Fri, 12 Jul 2019 17:32:38 +0100 (BST)
Date: Fri, 12 Jul 2019 18:32:34 +0200
From: Boris Brezillon <boris.brezillon@collabora.com>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH] drm/atmel-hlcdc: set layer REP bit to enable
 replication logic
Message-ID: <20190712183234.35427352@pc-381.home>
In-Reply-To: <20190712162117.GB18990@ravnborg.org>
References: <1562686509-8747-1-git-send-email-joshua.henderson@microchip.com>
 <13aa50e4-a726-3f82-b186-79b452199a02@microchip.com>
 <20190712162117.GB18990@ravnborg.org>
Organization: Collabora
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_093240_145637_5281495C 
X-CRM114-Status: GOOD (  20.89  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: alexandre.belloni@bootlin.com, bbrezillon@kernel.org, airlied@linux.ie,
 Joshua Henderson <joshua.henderson@microchip.com>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 12 Jul 2019 18:21:17 +0200
Sam Ravnborg <sam@ravnborg.org> wrote:

> Hi Joshua.
> 
> On Tue, Jul 09, 2019 at 04:24:49PM +0000, Nicolas.Ferre@microchip.com wrote:
> > On 09/07/2019 at 17:35, Joshua Henderson wrote:  
> > > This bit enables replication logic to expand an RGB color less than 24
> > > bits, to 24 bits, which is used internally for all formats.  Otherwise,
> > > the least significant bits are always set to zero and the color may not
> > > be what is expected.
> > > 
> > > Signed-off-by: Joshua Henderson <joshua.henderson@microchip.com>  
> > 
> > Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> > 
> > Here is patchwork entry:
> > https://patchwork.kernel.org/patch/11037167/
> > 
> > Thanks, best regards,
> >    Nicolas
> >   
> > > ---
> > >   drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c | 2 +-
> > >   1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> > > index eb7c4cf..6f6cf61 100644
> > > --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> > > +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> > > @@ -389,7 +389,7 @@ atmel_hlcdc_plane_update_general_settings(struct atmel_hlcdc_plane *plane,
> > >   	atmel_hlcdc_layer_write_cfg(&plane->layer, ATMEL_HLCDC_LAYER_DMA_CFG,
> > >   				    cfg);
> > >   
> > > -	cfg = ATMEL_HLCDC_LAYER_DMA;
> > > +	cfg = ATMEL_HLCDC_LAYER_DMA | ATMEL_HLCDC_LAYER_REP;
> > >   
> > >   	if (plane->base.type != DRM_PLANE_TYPE_PRIMARY) {
> > >   		cfg |= ATMEL_HLCDC_LAYER_OVR | ATMEL_HLCDC_LAYER_ITER2BL |  
> 
> Thanks - this gave me an opportunity to read a bit more in the datasheet
> of the controller.
> Applied to drm-misc-next with Ack from Nicolas.

Was about to add my R-b and ask you to apply the patch. I'm glad you
didn't wait for my feedback though, that means I'll soon be able to
remove my name from the Atmel HLCDC entry in MAINTAINERS ;-).

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
