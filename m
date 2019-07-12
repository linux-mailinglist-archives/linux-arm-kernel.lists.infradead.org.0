Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8323567330
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 12 Jul 2019 18:21:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=++Ga4rHQYXkztjAzDigKKyAo0MLiCoF7bFR7KYFTDKY=; b=Xr+zTntNJUwjLQ
	D8UM6chqrQtkX/59LXzwQy7UdVl1ERkqxIqnUd2oVTKz0paapk6FjIU7c+XnwefErttVlVdh3o37z
	9e8S0fLcczVkll5TsFDKsRQup4YbeNyCgnUORKo60pJwzHUsaIKDtCfGxbeY9B6m1zvLn3HeuyiRA
	soqVfa/guS48rzZyJ1BjS80pmFG/mILvZeV2c1ZuD8rvewLH090N6rekwvFAlSl5C05SVkTMfcmoB
	hg4EF2KRIwdCYQHRid54ZAICH1B1mczO5pYlhSzanosSUctGuaED5hADegcHWBndyhMXt+J6L8EIf
	fotxP2USyWHyS9xEUUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlyIj-00085I-9p; Fri, 12 Jul 2019 16:21:37 +0000
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlyIW-00084K-Ch
 for linux-arm-kernel@lists.infradead.org; Fri, 12 Jul 2019 16:21:26 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk4.altibox.net (Postfix) with ESMTPS id A5EC480335;
 Fri, 12 Jul 2019 18:21:18 +0200 (CEST)
Date: Fri, 12 Jul 2019 18:21:17 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Nicolas.Ferre@microchip.com,
 Joshua Henderson <joshua.henderson@microchip.com>
Subject: Re: [PATCH] drm/atmel-hlcdc: set layer REP bit to enable replication
 logic
Message-ID: <20190712162117.GB18990@ravnborg.org>
References: <1562686509-8747-1-git-send-email-joshua.henderson@microchip.com>
 <13aa50e4-a726-3f82-b186-79b452199a02@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <13aa50e4-a726-3f82-b186-79b452199a02@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=VcLZwmh9 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=XYAwZIGsAAAA:8
 a=VwQbUJbxAAAA:8 a=uoxZAW4_gHUsVfBorzEA:9 a=CjuIK1q_8ugA:10
 a=E8ToXWR_bxluHZ7gmE-Z:22 a=AjGcO6oz07-iQ99wixmX:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190712_092124_609947_AB493FFD 
X-CRM114-Status: GOOD (  18.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.15 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: alexandre.belloni@bootlin.com, bbrezillon@kernel.org, airlied@linux.ie,
 Joshua.Henderson@microchip.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Joshua.

On Tue, Jul 09, 2019 at 04:24:49PM +0000, Nicolas.Ferre@microchip.com wrote:
> On 09/07/2019 at 17:35, Joshua Henderson wrote:
> > This bit enables replication logic to expand an RGB color less than 24
> > bits, to 24 bits, which is used internally for all formats.  Otherwise,
> > the least significant bits are always set to zero and the color may not
> > be what is expected.
> > 
> > Signed-off-by: Joshua Henderson <joshua.henderson@microchip.com>
> 
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Here is patchwork entry:
> https://patchwork.kernel.org/patch/11037167/
> 
> Thanks, best regards,
>    Nicolas
> 
> > ---
> >   drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> > index eb7c4cf..6f6cf61 100644
> > --- a/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> > +++ b/drivers/gpu/drm/atmel-hlcdc/atmel_hlcdc_plane.c
> > @@ -389,7 +389,7 @@ atmel_hlcdc_plane_update_general_settings(struct atmel_hlcdc_plane *plane,
> >   	atmel_hlcdc_layer_write_cfg(&plane->layer, ATMEL_HLCDC_LAYER_DMA_CFG,
> >   				    cfg);
> >   
> > -	cfg = ATMEL_HLCDC_LAYER_DMA;
> > +	cfg = ATMEL_HLCDC_LAYER_DMA | ATMEL_HLCDC_LAYER_REP;
> >   
> >   	if (plane->base.type != DRM_PLANE_TYPE_PRIMARY) {
> >   		cfg |= ATMEL_HLCDC_LAYER_OVR | ATMEL_HLCDC_LAYER_ITER2BL |

Thanks - this gave me an opportunity to read a bit more in the datasheet
of the controller.
Applied to drm-misc-next with Ack from Nicolas.

	Sam

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
