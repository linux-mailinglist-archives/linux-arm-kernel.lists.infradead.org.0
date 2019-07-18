Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 274B16D234
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jul 2019 18:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WFiGesxpUTJiPDawk/BcEz+pI5Q8zvB5uQhWpHEZ+Mo=; b=QU9mrRzkvliuXL
	hCSJ16MkSrZwY2sdXjEUXP+u40rYX42MeNsKMj1sU9SUjCnfDK0GNOzGHM2LH08QlHb/kl4VsWHA+
	d3/QGO92YLg636FUrakpKQOqrTD67mF98YFa5aVItWofPGcNqhLogoHg2dXkFRNLmgP6WxTBfaxub
	fUVEJksUPKv7eGq+EAMg3jyB5bUqbEuKMLk6XzGFWWfjVe26CY/6x9UGjfaRFdoa42hedAT1x9Kk8
	3kvcj+2lHIRoVkP6StREy4FvaKfbXrJcg8FxCnSgtH/D4n/Fujpo2aNDZrF/iNNZ21qZZGWXYPQdW
	sQoz5V4FuaAFQuc8rwYQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho9UC-0006ds-3u; Thu, 18 Jul 2019 16:42:28 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho9Ty-0006cL-1t
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jul 2019 16:42:15 +0000
Received: by verein.lst.de (Postfix, from userid 2005)
 id 414D6227A81; Thu, 18 Jul 2019 18:42:07 +0200 (CEST)
Date: Thu, 18 Jul 2019 18:42:07 +0200
From: Torsten Duwe <duwe@lst.de>
To: Andrzej Hajda <a.hajda@samsung.com>
Subject: Re: [PATCH v2 5/7] drm/bridge: Add Analogix anx6345 support
Message-ID: <20190718164207.GA29501@lst.de>
References: <20190604122150.29D6468B05@newverein.lst.de>
 <CGME20190604122331epcas1p45e234dfad3f1288cb557e3bae7f9af38@epcas1p4.samsung.com>
 <20190604122302.006A168C7B@newverein.lst.de>
 <610ab353-7e05-81b6-2cc4-2dac09823d42@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <610ab353-7e05-81b6-2cc4-2dac09823d42@samsung.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_094214_251883_4BE3E01A 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Harald Geyer <harald@ccbib.org>,
 Sean Paul <seanpaul@chromium.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 12, 2019 at 11:13:10AM +0200, Andrzej Hajda wrote:
> On 04.06.2019 14:23, Torsten Duwe wrote:
> > +
> > +static void anx6345_poweron(struct anx6345 *anx6345)
> > +{
> > +	int err;
> > +
> > +	/* Ensure reset is asserted before starting power on sequence */
> > +	gpiod_set_value_cansleep(anx6345->gpiod_reset, 1);
> 
> With fixed devm_gpiod_get below this line can be removed.

In any case, reset must be asserted for this procedure to succeed...

> > +static enum drm_mode_status
> > +anx6345_bridge_mode_valid(struct drm_bridge *bridge,
> > +			  const struct drm_display_mode *mode)
> > +{
> > +	if (mode->flags & DRM_MODE_FLAG_INTERLACE)
> > +		return MODE_NO_INTERLACE;
> > +
> > +	/* Max 1200p at 5.4 Ghz, one lane */
> > +	if (mode->clock > 154000)
> > +		return MODE_CLOCK_HIGH;
> 
> I wonder if you shouldn't take into account training results here, ie.
> training perfrormed before validation.

Sure, but this is verbatim from the anx78xx.c sibling, code provided
by analogix. Lacking in-depth datasheets, this is probably the best effort.

> > +
> > +	/* 2.5V digital core power regulator  */
> > +	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25-supply");
> > +	if (IS_ERR(anx6345->dvdd25)) {
> > +		DRM_ERROR("dvdd25-supply not found\n");
> > +		return PTR_ERR(anx6345->dvdd25);
> > +	}
> > +
> > +	/* GPIO for chip reset */
> > +	anx6345->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
> 
> Shouldn't be set to GPIOD_OUT_HIGH?

It used to be in the original submission, and confused even more people ;-)
Fact is, the reset for this chip _is_ low active; I'm following
Documentation/devicetree/bindings/gpio/gpio.txt, "1.1) GPIO specifier
best practices", which I find rather comprehensive.

Any suggestions on how to phrase this even better are appreciated.

> > +};
> > +module_i2c_driver(anx6345_driver);
> > +
> > +MODULE_DESCRIPTION("ANX6345 eDP Transmitter driver");
> > +MODULE_AUTHOR("Enric Balletbo i Serra <enric.balletbo@collabora.com>");
> 
> Submitter, patch author, and module author are different, this can be
> correct, but maybe somebody forgot to update some of these fields.

As mentioned in the v2 cover letter, I had a closer look on which code got
actually introduced and which lines were simply copied around, and made the
copyright and authorship stick to where they belong. *I* believe this is
correct now; specific improvements welcome.

	Torsten



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
