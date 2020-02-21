Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EFEB167B7A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 12:06:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opDLdg07pV2nr7QrWs2VQlNWWfPpiUwfhI1YW8Kpn+U=; b=TyAGvU07limx4Z
	EMVYmuoeWqFI8WIuvMkZzdxbJOQ5xsLGMkdwoC28ob8JF6bxCEeutPKecGCEr265PtuqJ1w7l/toI
	NG8S3kUfmUdxf7+1Fga9Yilmte+5brOY2ikKIzkBcT5ZO6ohOTszNWm7B6QGqF0F2qYql6fqvmCbJ
	2bkP5Qc600XXvS52uu6OqwP/XEajlJ41JJZxMYPNJpfTFHAb7svCsEiJBrFozFB+QRPVfdA3OGSlJ
	LiP6nzhjdA6B+E/6OpBPEKgKxWs9SmurswHTeD6YQ5c7Ia+Y68xPSXRei7F8rXkyb77q6A1B3AuEe
	pgYvNkykr9aJMqgHhAIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5685-0001Md-25; Fri, 21 Feb 2020 11:05:57 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j567w-0001Lo-UN
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 11:05:50 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id F03F2AE17;
 Fri, 21 Feb 2020 11:05:43 +0000 (UTC)
Date: Fri, 21 Feb 2020 12:05:41 +0100
From: Torsten Duwe <duwe@suse.de>
To: Neil Armstrong <narmstrong@baylibre.com>
Subject: Re: [PATCH 1/6] drm/bridge: anx6345: Fix getting anx6345 regulators
Message-ID: <20200221110541.GA28948@suse.de>
References: <20200220083508.792071-1-anarsoul@gmail.com>
 <20200220083508.792071-2-anarsoul@gmail.com>
 <fc4ed2c4-ae5f-cd67-1c8a-c17e1cb63423@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fc4ed2c4-ae5f-cd67-1c8a-c17e1cb63423@baylibre.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_030549_125577_830E9B36 
X-CRM114-Status: GOOD (  20.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 Linus Walleij <linus.walleij@linaro.org>, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thierry Reding <thierry.reding@gmail.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Sam Ravnborg <sam@ravnborg.org>, Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Chen-Yu Tsai <wens@csie.org>, Icenowy Zheng <icenowy@aosc.io>,
 Stephan Gerhold <stephan@gerhold.net>, Jonas Karlman <jonas@kwiboo.se>,
 Rob Herring <robh+dt@kernel.org>, Maxime Ripard <maxime@cerno.tech>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Feb 21, 2020 at 09:32:01AM +0100, Neil Armstrong wrote:
> On 20/02/2020 09:35, Vasily Khoruzhick wrote:
> > From: Samuel Holland <samuel@sholland.org>
> > 
> > We don't need to pass '-supply' suffix to devm_get_regulator()
> > 
> > Fixes: 6aa192698089 ("drm/bridge: Add Analogix anx6345 support")
> > Signed-off-by: Samuel Holland <samuel@sholland.org>
> > Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> > ---
> >  drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> > index 56f55c53abfd..0d8d083b0207 100644
> > --- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> > +++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
> > @@ -712,14 +712,14 @@ static int anx6345_i2c_probe(struct i2c_client *client,
> >  		DRM_DEBUG("No panel found\n");
> >  
> >  	/* 1.2V digital core power regulator  */
> > -	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12-supply");
> > +	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12");
> >  	if (IS_ERR(anx6345->dvdd12)) {
> >  		DRM_ERROR("dvdd12-supply not found\n");
> >  		return PTR_ERR(anx6345->dvdd12);
> >  	}
> >  
> >  	/* 2.5V digital core power regulator  */
> > -	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25-supply");
> > +	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25");
> >  	if (IS_ERR(anx6345->dvdd25)) {
> >  		DRM_ERROR("dvdd25-supply not found\n");
> >  		return PTR_ERR(anx6345->dvdd25);
> > 
> 
> This is a duplicate of "drm/bridge: analogix-anx6345: Avoid duplicate -supply suffix" (20200218155440.BEFB968C65@verein.lst.de)
> 
> But this one has fixes and review from laurent, so I'll push this one when the serie is ready

I really don't mind, as long as it gets fixed.
The change is pretty obvious when you look at commit 69511a452e6dc.

Signed-off-by: Torsten Duwe <duwe@suse.de>
Reviewed-by: Mark Brown <broonie@kernel.org>
(broonie had replied to my submission back in November)

There's one other fix required for the anx6345 and, while at it,
I had also fixed the code I copied in that hurry as well. 
What about these? All 3 fixes can go in independently, so I wouldn't
tie them to this series.

	Torsten


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
