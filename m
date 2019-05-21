Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2165B24EC0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 14:15:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xDgxZSPATHHF8iLCBrMzpnueQ4AM09KtWkxMkuLPmAg=; b=qulUVVvLsmiq2D
	EL8hpB4BOCwVUWdRabLnsen6RiBk49eGOpdww5sll0H770frmNl5ZeBA8w7snaBDPeXwdA/gSxSe1
	CkJAKOtdPXDwT4unHbHXLhIGLsYwFWnN/uTH4dfY1u0N3vWsG5bGpfxjibihFeCqhbAfeR6Xw0rBi
	p5bpkvxDkuK9FSNXNukVi5OzhyvrR0KdDiSPzPhLl4xy1VxP4e0D/bASCEEipDP5Hy6eUqxR4bLKp
	Mv49RfBZ46h3BPBTPaGjUZGvwnbO1FZltMIF/52X9erlpd4q/j06bBqXkkzsuWSDYym0Paq6Ezu66
	W0UlKJ45X40xNWFH7B1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT3g6-0001iN-Qk; Tue, 21 May 2019 12:15:34 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT3fv-0001Ys-Hc
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 12:15:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1558440920; bh=VGlJ9wO7InEXoKlQsJrI3YYXQgBrZfsVum4dwV9O/qw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=H8itSFBTgfJexSfOsuGiRevevVee8AWok+TNwvYGh7+dE1NYC7HRI8brRhf87wLga
 d9QkGESJyeoaSCyRYs3EQ2grPw+h1Uha56OooMFMOlk4Sm5xTp26Bz32P9/VowQFZP
 xDHQqFWmk/FSFXR/1nm1hEhj9MMSZ7GIUAjIabwA=
Date: Tue, 21 May 2019 14:15:19 +0200
From: =?utf-8?Q?Ond=C5=99ej?= Jirman <megous@megous.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH v5 5/6] drm: sun4i: Add support for enabling DDC I2C bus
 to sun8i_dw_hdmi glue
Message-ID: <20190521121519.k343dgv3cgpewjl2@core.my.home>
Mail-Followup-To: Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi@googlegroups.com, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>,
 Mark Rutland <mark.rutland@arm.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com
References: <20190520235009.16734-1-megous@megous.com>
 <20190520235009.16734-6-megous@megous.com>
 <20190521114611.ylmbo2oqeanveil4@flea>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190521114611.ylmbo2oqeanveil4@flea>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_051524_105009_4D4AAAFE 
X-CRM114-Status: GOOD (  21.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jose Abreu <joabreu@synopsys.com>,
 Alexandre Torgue <alexandre.torgue@st.com>, devicetree@vger.kernel.org,
 David Airlie <airlied@linux.ie>, netdev@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "David S. Miller" <davem@davemloft.net>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Maxime,

On Tue, May 21, 2019 at 01:46:11PM +0200, Maxime Ripard wrote:
> Hi,
> 
> On Tue, May 21, 2019 at 01:50:08AM +0200, megous@megous.com wrote:
> > From: Ondrej Jirman <megous@megous.com>
> >
> > Orange Pi 3 board requires enabling a voltage shifting circuit via GPIO
> > for the DDC bus to be usable.
> >
> > Add support for hdmi-connector node's optional ddc-en-gpios property to
> > support this use case.
> >
> > Signed-off-by: Ondrej Jirman <megous@megous.com>
> > ---
> >  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c | 55 +++++++++++++++++++++++++--
> >  drivers/gpu/drm/sun4i/sun8i_dw_hdmi.h |  3 ++
> >  2 files changed, 55 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
> > index 39d8509d96a0..59b81ba02d96 100644
> > --- a/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
> > +++ b/drivers/gpu/drm/sun4i/sun8i_dw_hdmi.c
> > @@ -98,6 +98,30 @@ static u32 sun8i_dw_hdmi_find_possible_crtcs(struct drm_device *drm,
> >  	return crtcs;
> >  }
> >
> > +static int sun8i_dw_hdmi_find_connector_pdev(struct device *dev,
> > +					     struct platform_device **pdev_out)
> > +{
> > +	struct platform_device *pdev;
> > +	struct device_node *remote;
> > +
> > +	remote = of_graph_get_remote_node(dev->of_node, 1, -1);
> > +	if (!remote)
> > +		return -ENODEV;
> > +
> > +	if (!of_device_is_compatible(remote, "hdmi-connector")) {
> > +		of_node_put(remote);
> > +		return -ENODEV;
> > +	}
> > +
> > +	pdev = of_find_device_by_node(remote);
> > +	of_node_put(remote);
> > +	if (!pdev)
> > +		return -ENODEV;
> > +
> > +	*pdev_out = pdev;
> > +	return 0;
> > +}
> > +
> >  static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
> >  			      void *data)
> >  {
> > @@ -151,16 +175,29 @@ static int sun8i_dw_hdmi_bind(struct device *dev, struct device *master,
> >  		return PTR_ERR(hdmi->regulator);
> >  	}
> >
> > +	ret = sun8i_dw_hdmi_find_connector_pdev(dev, &hdmi->connector_pdev);
> > +	if (!ret) {
> > +		hdmi->ddc_en = gpiod_get_optional(&hdmi->connector_pdev->dev,
> > +						  "ddc-en", GPIOD_OUT_HIGH);
> > +		if (IS_ERR(hdmi->ddc_en)) {
> > +			platform_device_put(hdmi->connector_pdev);
> > +			dev_err(dev, "Couldn't get ddc-en gpio\n");
> > +			return PTR_ERR(hdmi->ddc_en);
> > +		}
> > +	}
> > +
> >  	ret = regulator_enable(hdmi->regulator);
> >  	if (ret) {
> >  		dev_err(dev, "Failed to enable regulator\n");
> > -		return ret;
> > +		goto err_unref_ddc_en;
> >  	}
> >
> > +	gpiod_set_value(hdmi->ddc_en, 1);
> > +
> 
> Do you really need this to be done all the time? I'm guessing you
> would only need this when running .get_modes, right?

I don't think it hurts anything. Enabled voltage shifting circuit doesn't
draw any current, unless DDC is actually transmitting data. On most boards
I'd imagine this circuit is always on anyway (Orange Pi 3 schematic even has
an option to tie this signal to VCC-IO instead of GPIO).

Schematic: https://megous.com/dl/tmp/bfcdd32d655aaa76.png

thank you and regards,
	o.

> Maxime
> 
> --
> Maxime Ripard, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
