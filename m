Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2FF326359
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 14:01:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kIgl56eO7pPjz5m4MNbgN9AlvgLCED7Uxjsp9g+bnu0=; b=q5AZV8eZiRgX5r
	MJXiKukvHWaZKW/0f7gVCZXyUg2FECVtnEKH/xvQ37AGvfLxsBvD+kvPRBHkGS6GSlFXSvjE8oM8D
	Vt5FdavMsO2WNZYVbBG4Loz8WE8KJXIu8RcxBn/12IvuhIVypB140CQEOD8qNUWNZnZZ3YcoFtpQY
	nuzNwtq8+YAcDbSq+fPyCQ69KEBIy/aW0UEBqPtRJWjE0felTpN1OjcOOrZmz0AA+2fVhoVqMwSNR
	QagpLNOUbb1iE14ei4LsvkbWhQOh6ZMXqnqbEreuY2Qm/+CSvjUhUX50s7Ei3c7wGIC40eA+XzN4w
	s1zIXONcMk9H9sQlmskA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTPw3-0008Fr-8A; Wed, 22 May 2019 12:01:31 +0000
Received: from mail-it1-x141.google.com ([2607:f8b0:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTPvw-0008Eh-4i
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 12:01:26 +0000
Received: by mail-it1-x141.google.com with SMTP id i10so3047657ite.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 05:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=a0sgS6JiPQaMdmqr0pmDguVAsGhTr/YF3Eo5mOXHScw=;
 b=duXL9btWJwwi+wIeMidO21e/PYLqCPnvpseC4tuFVlunBET+P86h4wWHns03Omsey+
 auG5o28oXmMSQ9x0BMuI3HHM1tShs0xrJtA92QfB05yn529qjxCxysO3pRt0cPknUezE
 tPS80c1NMwufr3mogOJ/7VZPgFMc7CGvw/ad8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=a0sgS6JiPQaMdmqr0pmDguVAsGhTr/YF3Eo5mOXHScw=;
 b=fLZl49CzYEbRkRL8ZTfT6ZeXRAOkSo2AL8loJoarwrNXBUs+0wSQEGxpziG8qAWRaO
 sAf6TpAVTaS3ooRtgkha4gQQkvokWst/CpEpJ4o3APAvYsYDl36GY1j4BHbBozGWKymN
 wQXwt/6x5IsZz6rdLucGWLi61nr1PKMosSWUR6ww5sNut0UyUuOwCyX670tpplJrpota
 771/NvAbq5QuNBtaLrt5tqnxEl4SRD8xI4X+4UW0cKup7oCm9hUXIHkHl1ZAxS9JIvcc
 lx6d6mdvuJWitHkW9lMfkyvdJZiL7Y+oP2QsJn23/k2g3AkKWDoa2D8A1CjBhhvskmyX
 9Oog==
X-Gm-Message-State: APjAAAV34YF8edfUG9ZiY7xB9NCW6uS4uFdRM9bR5PXBAWUUXseO7BQD
 21VpEA0ITngm3qWFVSVpgw03uV2vgRUsdNtcMcCWaw==
X-Google-Smtp-Source: APXvYqxmTssug6sa7NiW2YWZql6kODBlYCZUD1kCFBempFTb+E4be0jz47x+9V2Yy9CA5auFDdC4/zjMd5z+PrC42vU=
X-Received: by 2002:a24:590f:: with SMTP id p15mr7744336itb.12.1558526482322; 
 Wed, 22 May 2019 05:01:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190315130825.9005-1-jagan@amarulasolutions.com>
 <20190315130825.9005-4-jagan@amarulasolutions.com>
 <c232d5620d6a3272a6064ce9ccdec5c86a3a7950.camel@bootlin.com>
In-Reply-To: <c232d5620d6a3272a6064ce9ccdec5c86a3a7950.camel@bootlin.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 22 May 2019 17:31:10 +0530
Message-ID: <CAMty3ZC=cLNbJAeDBGCyYrknB5LWriL-pisk7j=jXQ54bse7XQ@mail.gmail.com>
Subject: Re: [linux-sunxi] [PATCH 3/6] drm/sun4i: dsi: Add bridge support
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>, 
 Maxime Ripard <maxime.ripard@bootlin.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_050124_360943_CCE34F6A 
X-CRM114-Status: GOOD (  26.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, David Airlie <airlied@linux.ie>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Paul and Maxime,

On Fri, Mar 15, 2019 at 7:03 PM Paul Kocialkowski
<paul.kocialkowski@bootlin.com> wrote:
>
> Hi,
>
> On Fri, 2019-03-15 at 18:38 +0530, Jagan Teki wrote:
> > Some display panels would come up with a non-DSI output which
> > can have an option to connect DSI interface by means of bridge
> > convertor.
> >
> > This DSI to non-DSI bridge convertor would require a bridge
> > driver that would communicate the DSI controller for bridge
> > functionalities.
> >
> > So, add support for bridge functionalities in Allwinner DSI
> > controller.
>
> See a few comments below.
>
> > Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> > ---
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 65 +++++++++++++++++++-------
> >  drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h |  1 +
> >  2 files changed, 49 insertions(+), 17 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > index 0960b96b62cc..64d74313b842 100644
> > --- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > +++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
> > @@ -781,6 +781,9 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
> >       if (!IS_ERR(dsi->panel))
> >               drm_panel_prepare(dsi->panel);
> >
> > +     if (!IS_ERR(dsi->bridge))
> > +             drm_bridge_pre_enable(dsi->bridge);
> > +
> >       /*
> >        * FIXME: This should be moved after the switch to HS mode.
> >        *
> > @@ -796,6 +799,9 @@ static void sun6i_dsi_encoder_enable(struct drm_encoder *encoder)
> >       if (!IS_ERR(dsi->panel))
> >               drm_panel_enable(dsi->panel);
> >
> > +     if (!IS_ERR(dsi->bridge))
> > +             drm_bridge_enable(dsi->bridge);
> > +
> >       sun6i_dsi_start(dsi, DSI_START_HSC);
> >
> >       udelay(1000);
> > @@ -812,6 +818,9 @@ static void sun6i_dsi_encoder_disable(struct drm_encoder *encoder)
> >       if (!IS_ERR(dsi->panel)) {
> >               drm_panel_disable(dsi->panel);
> >               drm_panel_unprepare(dsi->panel);
> > +     } else if (!IS_ERR(dsi->bridge)) {
> > +             drm_bridge_disable(dsi->bridge);
> > +             drm_bridge_post_disable(dsi->bridge);
> >       }
> >
> >       phy_power_off(dsi->dphy);
> > @@ -973,11 +982,16 @@ static int sun6i_dsi_attach(struct mipi_dsi_host *host,
> >       struct sun6i_dsi *dsi = host_to_sun6i_dsi(host);
> >
> >       dsi->device = device;
> > -     dsi->panel = of_drm_find_panel(device->dev.of_node);
> > -     if (IS_ERR(dsi->panel))
> > -             return PTR_ERR(dsi->panel);
> >
> > -     dev_info(host->dev, "Attached device %s\n", device->name);
> > +     dsi->bridge = of_drm_find_bridge(device->dev.of_node);
> > +     if (!dsi->bridge) {
>
> You are using IS_ERR to check that the bridge is alive in the changes
> above, but switch to checking that it's non-NULL at this point.
>
> Are both guaranteed to be interchangeable?
>
> > +             dsi->panel = of_drm_find_panel(device->dev.of_node);
> > +             if (IS_ERR(dsi->panel))
> > +                     return PTR_ERR(dsi->panel);
> > +     }
>
> You should probably use drm_of_find_panel_or_bridge instead of
> duplicating the logic here.

True, In-fact I did try this API. but pipeline were unable to bound.
Usually the panel and bridge were attached first and then the pipeline
bound would start from front-end (in A33) But in my below cases I have
seen only panel or bridge attached but no pipeline bound at all.

And I'm using drm_of_find_panel_or_bridge(host->dev->of_node, 1, 0,
&dsi->panel, &dsi->bridge); in dsi attach API.

Case-1, panel:

&dsi {
    vcc-dsi-supply = <&reg_dcdc1>;        /* VCC3V3-DSI */
    status = "okay";

    ports {
        dsi_out: port@1 {
            reg = <1>;

            dsi_out_panel: endpoint {
                remote-endpoint = <&panel_out_dsi>;
            };
        };
    };

    panel@0 {
        compatible = "bananapi,s070wv20-ct16-icn6211";
        reg = <0>;
        enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
        reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
        backlight = <&backlight>;

        port {
            panel_out_dsi: endpoint {
                remote-endpoint = <&dsi_out_panel>;
            };
        };
    };
};

Case-2, bridge:

    panel {
        compatible = "bananapi,s070wv20-ct16", "simple-panel";
        enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
        backlight = <&backlight>;

        port {

            panel_out_bridge: endpoint {
                remote-endpoint = <&bridge_out_panel>;
            };
        };
    };

&dsi {
    vcc-dsi-supply = <&reg_dcdc1>;        /* VCC-DSI */
    status = "okay";

    ports {
        dsi_out: port@1 {
            reg = <1>;

            dsi_out_bridge: endpoint {
                remote-endpoint = <&bridge_out_dsi>;
            };
        };
    };

    bridge@0 {
        reg = <0>;
        compatible = "bananapi,icn6211", "chipone,icn6211";
        reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
        #address-cells = <1>;
        #size-cells = <0>;

        ports {
            #address-cells = <1>;
            #size-cells = <0>;

            bridge_in: port@0 {
                reg = <0>;

                bridge_out_dsi: endpoint {
                    remote-endpoint = <&dsi_out_bridge>;
                };
            };

            bridge_out: port@1 {
                reg = <1>;

                bridge_out_panel: endpoint {
                    remote-endpoint = <&panel_out_bridge>;
                };
            };
        };
    };
};

I think, I'm sure about the pipeline connections as per my
understanding. but something loosely missed here or in the code.
Please do let me know for any suggestions.

Jagan.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
