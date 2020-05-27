Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D706F1E3CB0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 10:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3IuCWFucePC6o06uZMlf3qgI8dflf5WBxi48qxlYev8=; b=aBA2TMBBaPqfrp
	PMcOIKz9Av+MJbcrflmFVV0BEpHULGZFBBJMyFiDoSE1Nd6+cPFf9FQ34eaUqZ8mcyZB9/xwsgdYz
	axawfbTcFiiHeRkwqVKsL/UQ6C/EhgGFLcJ+dwhoRTkGLnvxSGxrqmC38k2AKx0mIZt+y79G6wSa/
	7YDtambSZ/OXSWsKYGGSchQuj/ouRKc16e2qXisfoqEOa3/6wrnh6EKQC5UjO2IbmfBeXEjbUTop4
	cJjmyN3VsIj6Q2PKdNPun0WQZ+rFNztmDRDSBOtkjU6f2QEaNyCZ7irr8fPBdUujnm9O5MYV1eUQ4
	cWs0uTTwQIrr62ubrTJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdrob-0007ic-3t; Wed, 27 May 2020 08:53:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdroM-0007gx-QF; Wed, 27 May 2020 08:53:20 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3AA9F20723;
 Wed, 27 May 2020 08:53:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590569597;
 bh=21T7sPdQCrYT7yx27IXVTIKRDL60nkltAXenV63O92M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jap5XRLqUYxuDAD+TFlFFCsHfOP1n3cKaPyUG1wx2aWwZQaFUekRMDW5RX+f7/9nm
 whX6Bap6JcEsdXGAX8+ZaqqRHA3ogx/2NUaGIZYYi9y0L9B8LuYr7f7tH48GfX3we0
 QoWeiz77MD8CnHHgOj5Uo7bFhFlrdURuXiqNDiGA=
Date: Wed, 27 May 2020 10:53:15 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH for-5.8 2/2] usb: dwc3: meson-g12a: fix USB2 PHY
 initialization on G12A and A1 SoCs
Message-ID: <20200527085315.GA168054@kroah.com>
References: <20200526202943.715220-1-martin.blumenstingl@googlemail.com>
 <20200526202943.715220-3-martin.blumenstingl@googlemail.com>
 <40a874eb-1a2b-533e-ee3e-bd90510abaf9@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <40a874eb-1a2b-533e-ee3e-bd90510abaf9@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_015318_872025_23C128C4 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: balbi@kernel.org, hanjie.lin@amlogic.com,
 "kernelci.org bot" <bot@kernelci.org>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, yue.wang@amlogic.com,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 27, 2020 at 10:17:31AM +0200, Neil Armstrong wrote:
> Hi Martin,
> 
> On 26/05/2020 22:29, Martin Blumenstingl wrote:
> > dwc3_meson_g12a_usb2_init_phy() crashes with NULL pointer on an SM1
> > board (which uses the same USB setup as G12A) dereference as reported
> > by the Kernel CI bot. This is because of the following call flow:
> >   dwc3_meson_g12a_probe
> >     priv->drvdata->setup_regmaps
> >       dwc3_meson_g12a_setup_regmaps
> >         priv->usb2_ports is still 0 so priv->u2p_regmap[i] will be NULL
> >     dwc3_meson_g12a_get_phys
> >       initializes priv->usb2_ports
> >     priv->drvdata->usb_init
> >       dwc3_meson_g12a_usb_init
> >         dwc3_meson_g12a_usb_init_glue
> >           dwc3_meson_g12a_usb2_init
> >             priv->drvdata->usb2_init_phy
> >               dwc3_meson_g12a_usb2_init_phy
> >                 dereferences priv->u2p_regmap[i]
> > 
> > Call priv->drvdata->setup_regmaps only after dwc3_meson_g12a_get_phys so
> > priv->usb2_ports is initialized and the regmaps will be set up
> > correctly. This fixes the NULL dereference later on.
> > 
> > Fixes: 013af227f58a97 ("usb: dwc3: meson-g12a: handle the phy and glue registers separately")
> > Reported-by: "kernelci.org bot" <bot@kernelci.org>
> > Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> > ---
> >  drivers/usb/dwc3/dwc3-meson-g12a.c | 8 ++++----
> >  1 file changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/usb/dwc3/dwc3-meson-g12a.c b/drivers/usb/dwc3/dwc3-meson-g12a.c
> > index ce5388338389..1f7f4d88ed9d 100644
> > --- a/drivers/usb/dwc3/dwc3-meson-g12a.c
> > +++ b/drivers/usb/dwc3/dwc3-meson-g12a.c
> 
> [...]
> 
> Fixes regression reported at [1] on SEI510 board based on Amlogic G12A.
> 
> Felipe, Greg, can this be queued on uxb-next for 5.8 ?
> 
> Acked-by: Neil Armstrong <narmstron@baylibre.com>

I can take this and patch 1/2 here if Felipe acks them.

thanks,

greg k-h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
