Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D49781E9175
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 May 2020 15:27:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E33TqR7Nny1ctkxU46lpFXphRMQfYJtVJ5at5/80dYA=; b=U2+NY5yaOXswiL
	kauVIDO1KA/lLqSTSHB1EG3wbMeZ7hAMz8Bl3pk4AHyCH03QwuMdIYmfRLrDVIPTrcQPJwQ0NvtE9
	mCGeTsEaSLqHZ1YRj6Ce95kl7KQJNv2k6bIxr5ZlzBAoKadcO+Br5IpahTu+Z7aQBakOlnW48uA3N
	LBMyTAeZTVo1us/4TcU+He8JSdwGNGBU+ZgAakrjB41qkcejyvS3YlHEtbcyksvb2Vv4XtE9+Opuo
	gqcau3Y/lbI7+SJ1soraueq2/JZHNDVgPqTzhT3p/s31cJK0ESJ+7pWXm03fTLOVcynnsTZMMYdOw
	2BIdQ9M5d9yUna08vUUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf1Vq-0003FB-7M; Sat, 30 May 2020 13:26:58 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf1Vg-0003E1-NB
 for linux-arm-kernel@lists.infradead.org; Sat, 30 May 2020 13:26:50 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id B933EFB03;
 Sat, 30 May 2020 15:26:36 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jH8te9rYstS2; Sat, 30 May 2020 15:26:35 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id A29C944AF9; Sat, 30 May 2020 15:26:34 +0200 (CEST)
Date: Sat, 30 May 2020 15:26:34 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [RFC PATCH 1/6] dt-bindings: display/bridge: Add binding for
 input mux bridge
Message-ID: <20200530132634.GA3337@bogon.m.sigxcpu.org>
References: <cover.1589548223.git.agx@sigxcpu.org>
 <14a44a664f40584ffa25c1764aab5ebf97809c71.1589548223.git.agx@sigxcpu.org>
 <20200528194804.GA541078@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200528194804.GA541078@bogus>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_062648_914281_0FBD7572 
X-CRM114-Status: GOOD (  18.64  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: devicetree@vger.kernel.org, Peng Fan <peng.fan@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sam Ravnborg <sam@ravnborg.org>, Anson Huang <Anson.Huang@nxp.com>,
 David Airlie <airlied@linux.ie>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Lucas Stach <l.stach@pengutronix.de>,
 Robert Chiras <robert.chiras@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,
On Thu, May 28, 2020 at 01:48:04PM -0600, Rob Herring wrote:
> On Fri, May 15, 2020 at 03:12:10PM +0200, Guido G=FCnther wrote:
> > The bridge allows to select the input source via a mux controller.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > ---
> >  .../display/bridge/mux-input-bridge.yaml      | 123 ++++++++++++++++++
> >  1 file changed, 123 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/mu=
x-input-bridge.yaml
> > =

> > diff --git a/Documentation/devicetree/bindings/display/bridge/mux-input=
-bridge.yaml b/Documentation/devicetree/bindings/display/bridge/mux-input-b=
ridge.yaml
> > new file mode 100644
> > index 000000000000..4029cf63ee5c
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/mux-input-bridge=
.yaml
> > @@ -0,0 +1,123 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/mux-input-bridge.yam=
l#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: DRM input source selection via multiplexer
> =

> DRM is not a hardware thing.

I thought about naming the mux pixel-input-mux (input-mux sounding too
generic) but then i hit rockchip-drm and went for that name.  The
binding itself is not a drm thing in itself it really aims to model how
the mux is placed in the 'display pipeline' of the SoC (as Laurent
explained). Should I go with pixel-input-mux?

> The graph binding is already designed to support muxing. Generally, =

> multiple endpoints on an input node is a mux. So either the device with =

> the input ports knows how to select the input, or you just need a =

> mux-control property for the port to have some other device implement =

> the control.

A mux control property is how it's modeled at the moment but that is
very SoC specific.

> You could do it like you have below. That would be appropriate if =

> there's a separate h/w device controlling the muxing. Say for example =

> some board level device controlled by i2c.

It's a different part of the SoC that lives in a register range very
separate (iomuxc_gpr) from MIPI/DSI (nwl). Does that qualify?

Cheers,
 -- Guido

> =

> Rob
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
