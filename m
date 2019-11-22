Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAE51106702
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 22 Nov 2019 08:23:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KzJYg5nfMRBuCCE7G6apjvF3eHVpeMU8dy3T3I4D/E0=; b=PfFlvA7Hdm7jE2
	bxIzv+oxXtiH8ptUeZCD+Jj9M1IHtyNWCPD44THFOI5QG97dvTLWgQtBIFf8rU2TIurI/ntrKgOHW
	b9KwcyF1CJyslf99Z/UGfDs8UvNjiYXVOgqFe7hM6AqkyHtaMEkadG2CYZzA5g+fRkSicGFZkS5dU
	+/ejz5UXmUTYo/Vj2k0LB5LJj40gFezXTKxXdU8p4fWpwUM3+REYvOyejH6+v/r7LAh/ep3qumVJQ
	pjM5rW+CuwDELeo1/jkVTKpUixgnBvztALvHdhEA3trtn4/Fo4Q+u9vphT1C+EfpINaFWwq0uCIH7
	/o+U7+zmaC9TyemQAUOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY3HU-0003E5-IJ; Fri, 22 Nov 2019 07:23:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY3HL-0003DL-Kx
 for linux-arm-kernel@lists.infradead.org; Fri, 22 Nov 2019 07:22:57 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>)
 id 1iY3H9-0000om-N2; Fri, 22 Nov 2019 08:22:43 +0100
Received: from mfe by pty.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <mfe@pengutronix.de>)
 id 1iY3H5-0001Uh-II; Fri, 22 Nov 2019 08:22:39 +0100
Date: Fri, 22 Nov 2019 08:22:39 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH] drm/imx: fix memory leak in imx_pd_bind
Message-ID: <20191122072239.dhbhi2uawoqsclwy@pengutronix.de>
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <CAEkB2EQGCcwBO4iZBiHthUAJUeprw2Q09932GATd6XVyXqukzw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAEkB2EQGCcwBO4iZBiHthUAJUeprw2Q09932GATd6XVyXqukzw@mail.gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 08:19:40 up 6 days, 22:38, 23 users, load average: 0.00, 0.00, 0.00
User-Agent: NeoMutt/20170113 (1.7.2)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c5
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_232255_685800_FC245C47 
X-CRM114-Status: GOOD (  19.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Navid Emamdoost <emamd001@umn.edu>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Navid,

On 19-11-21 12:31, Navid Emamdoost wrote:
> On Fri, Oct 4, 2019 at 2:09 PM Navid Emamdoost
> <navid.emamdoost@gmail.com> wrote:
> >
> > In imx_pd_bind, the duplicated memory for imxpd->edid via kmemdup should
> > be released in drm_of_find_panel_or_bridge or imx_pd_register fail.
> >
> > Fixes: ebc944613567 ("drm: convert drivers to use drm_of_find_panel_or_bridge")
> > Fixes: 19022aaae677 ("staging: drm/imx: Add parallel display support")
> > Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
> > ---
> 
> Would you please review this patch?
> 
> Thanks,

I currently work on the drm/imx driver(s) to avoid errors like [1].
Hopefully I have a working version till next week. There I fixed this
issue by using the devm_kmemdup() and dropped the explicit kfree()
within unbind().

[1] https://www.spinics.net/lists/dri-devel/msg189388.html

Regards,
  Marco

> 
> >  drivers/gpu/drm/imx/parallel-display.c | 8 ++++++--
> >  1 file changed, 6 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
> > index e7ce17503ae1..9522d2cb0ad5 100644
> > --- a/drivers/gpu/drm/imx/parallel-display.c
> > +++ b/drivers/gpu/drm/imx/parallel-display.c
> > @@ -227,14 +227,18 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
> >
> >         /* port@1 is the output port */
> >         ret = drm_of_find_panel_or_bridge(np, 1, 0, &imxpd->panel, &imxpd->bridge);
> > -       if (ret && ret != -ENODEV)
> > +       if (ret && ret != -ENODEV) {
> > +               kfree(imxpd->edid);
> >                 return ret;
> > +       }
> >
> >         imxpd->dev = dev;
> >
> >         ret = imx_pd_register(drm, imxpd);
> > -       if (ret)
> > +       if (ret) {
> > +               kfree(imxpd->edid);
> >                 return ret;
> > +       }
> >
> >         dev_set_drvdata(dev, imxpd);
> >
> > --
> > 2.17.1
> >
> 
> 
> -- 
> Navid.
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
