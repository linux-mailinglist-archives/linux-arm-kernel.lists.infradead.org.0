Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8915CD521D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 21:24:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vugHMFS7cDaQdoK45M+GcDeFDv7UIhnQ36yS2xDnQeI=; b=TncyoMHg5BkNjAJYJ0vE4xyxn
	Gjw8alllJ+/XdUPJ8eZWkBS+iJ2jJkSq7Rki6m7e/KG/xCljSpVRmaPurnoHywwmn1gB38PYamojg
	M5OV6JU1mcbQWTup+IL4A6Swafb2G17aizct7cFdvJ9aTQrsfh8Q3gLiDc8BdZsQG+GE7QurKVptR
	oQO2oYNkw9h/rCIGyWcTjyeeCscL9iskd+oopLHIvdl4BO1hOGOifweu9Odw/K0KLnnoAf7W39sV3
	yal3709C1BjUwCKZOWgFIBgN10IKzy8Mkr64FwElNV31r1aTUQcAEC+jHz6k4fMkxeQ6t8h9Bz5ar
	UCKN7aJNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJN0G-0000f3-Bs; Sat, 12 Oct 2019 19:24:36 +0000
Received: from mail3-relais-sop.national.inria.fr ([192.134.164.104])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJN06-0000bz-LS
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 19:24:28 +0000
X-IronPort-AV: E=Sophos;i="5.67,289,1566856800"; d="scan'208";a="322500714"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
 by mail3-relais-sop.national.inria.fr with
 ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Oct 2019 21:24:19 +0200
Date: Sat, 12 Oct 2019 21:24:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navid Emamdoost <navid.emamdoost@gmail.com>
Subject: Re: [PATCH 1/2] drm/imx: Fix error handling for a kmemdup() call in
 imx_pd_bind()
In-Reply-To: <CAEkB2ERCGJ6abNXfPNX7nbwkwD7qYTPYjYsNGzZwynn5CbPCzg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1910122122370.3049@hadrien>
References: <20191004190938.15353-1-navid.emamdoost@gmail.com>
 <540321eb-7699-1d51-59d5-dde5ffcb8fc4@web.de>
 <CAEkB2ETtVwtmkpup65D3wqyLn=84ZHt0QRo0dJK5GsV=-L=qVw@mail.gmail.com>
 <2abf545b-023b-853a-95ef-ce99e1896a5d@web.de>
 <3fd6aa8b-2529-7ff5-3e19-05267101b2a4@web.de>
 <CAEkB2ERCGJ6abNXfPNX7nbwkwD7qYTPYjYsNGzZwynn5CbPCzg@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2018450889-1570908260=:3049"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_122426_999095_6EE61E6E 
X-CRM114-Status: GOOD (  21.60  )
X-Spam-Score: -4.3 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.104 listed in list.dnswl.org]
 0.7 SPF_NEUTRAL            SPF: sender does not match SPF record (neutral)
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
Cc: Thierry Reding <thierry.reding@gmail.com>, Rob Herring <robh@kernel.org>,
 kernel-janitors@vger.kernel.org,
 Peter Senna Tschudin <peter.senna@collabora.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Kangjie Lu <kjlu@umn.edu>,
 LKML <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 Navid Emamdoost <emamd001@umn.edu>, Markus Elfring <Markus.Elfring@web.de>,
 NXP Linux Team <linux-imx@nxp.com>, Daniel Vetter <daniel@ffwll.ch>,
 Stephen McCamant <smccaman@umn.edu>, Philipp Zabel <p.zabel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2018450889-1570908260=:3049
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 12 Oct 2019, Navid Emamdoost wrote:

> On Sat, Oct 12, 2019 at 4:07 AM Markus Elfring <Markus.Elfring@web.de> wrote:
> >
> > From: Markus Elfring <elfring@users.sourceforge.net>
> > Date: Sat, 12 Oct 2019 10:30:21 +0200
> >
> > The return value from a call of the function “kmemdup” was not checked
> > in this function implementation. Thus add the corresponding error handling.
> >
> > Fixes: 19022aaae677dfa171a719e9d1ff04823ce65a65 ("staging: drm/imx: Add parallel display support")
> > Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> > ---
> >  drivers/gpu/drm/imx/parallel-display.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/imx/parallel-display.c b/drivers/gpu/drm/imx/parallel-display.c
> > index 35518e5de356..39c4798f56b6 100644
> > --- a/drivers/gpu/drm/imx/parallel-display.c
> > +++ b/drivers/gpu/drm/imx/parallel-display.c
> > @@ -210,8 +210,13 @@ static int imx_pd_bind(struct device *dev, struct device *master, void *data)
> >                 return -ENOMEM;
> >
> >         edidp = of_get_property(np, "edid", &imxpd->edid_len);
> > -       if (edidp)
> > +       if (edidp) {
> >                 imxpd->edid = kmemdup(edidp, imxpd->edid_len, GFP_KERNEL);
> > +               if (!imxpd->edid) {
> > +                       devm_kfree(dev, imxpd);
>
> You should not try to free imxpd here as it is a resource-managed
> allocation via devm_kzalloc(). It means memory allocated with this
> function is
>  automatically freed on driver detach. So, this patch introduces a double-free.

No, it's not double freed since the proposed code frees it with a devm
function, removing it from the list of things to free later.  One can
wonder why the free has to be made apparent, though.

julia

>
> > +                       return -ENOMEM;
> > +               }
> > +       }
> >
> >         ret = of_property_read_string(np, "interface-pix-fmt", &fmt);
> >         if (!ret) {
> > --
> > 2.23.0
> >
>
>
> --
> Navid.
>
--8323329-2018450889-1570908260=:3049
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--8323329-2018450889-1570908260=:3049--

