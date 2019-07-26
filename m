Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD2F7641B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 13:06:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8rOdg1pCyOGRbByqwz8kiB2Yev/4Y7NHXqCGaGaCOCY=; b=aNV1Cg5yOxCZnn
	YwGcI/yXiS5Xl4Qvb3duM1QHzJGyrgXpgFHDfsx8vmb6YSGwoHB1h2Th0bwCJ5PO+fxojaRVuGyGw
	OR2b4PgnzgA/u8T+kcbBI9kSUyHL16atMJB2LEStCC9Ynh8GgVoVlK/bIeVWGg8AVGjdXf6Ncjkb+
	27xODKlRQ4bsbmfc0Q5+Sq/gHooGRWGgMFFZ29uzP1RBAb8WNzm0r+QMVdPogfO/nBCAq2MLR0IZu
	eUlbJbGNt5MFzaGCctiqcMoun0Y+PBxVaKbbU37zK/gLJntu1mDI8Z4RLsND58z0QS0+jDr6iAg3W
	H0NTbVoaMC3vYLobcmDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqy38-00025P-M7; Fri, 26 Jul 2019 11:06:10 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqy2x-00023t-SI
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 11:06:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id A4CA4FB03;
 Fri, 26 Jul 2019 13:05:56 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 27ddROgQVqy3; Fri, 26 Jul 2019 13:05:55 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id CF03E46AA1; Fri, 26 Jul 2019 13:05:54 +0200 (CEST)
Date: Fri, 26 Jul 2019 13:05:54 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH 2/3] dt-bindings: display/bridge: Add binding for IMX NWL
 mipi dsi host controller
Message-ID: <20190726110554.GA9359@bogon.m.sigxcpu.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <70a5c6617936a4a095e7608b96e3f9fae5ddfbb1.1563983037.git.agx@sigxcpu.org>
 <20190726092315.GA9754@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190726092315.GA9754@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_040600_221780_8552616E 
X-CRM114-Status: GOOD (  28.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [24.134.29.49 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jernej Skrabec <jernej.skrabec@siol.net>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Daniel Vetter <daniel@ffwll.ch>, Robert Chiras <robert.chiras@nxp.com>,
 Lee Jones <lee.jones@linaro.org>, Shawn Guo <shawnguo@kernel.org>,
 linux-arm-kernel@lists.infradead.org,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Sam,
thanks for your comments!

On Fri, Jul 26, 2019 at 11:23:15AM +0200, Sam Ravnborg wrote:
> Hi Guido.
> =

> A few comments follows.
> =

> 	Sam
> =

> On Wed, Jul 24, 2019 at 05:52:25PM +0200, Guido G=FCnther wrote:
> > The Northwest Logic MIPI DSI IP core can be found in NXPs i.MX8 SoCs.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > ---
> >  .../bindings/display/bridge/imx-nwl-dsi.txt   | 89 +++++++++++++++++++
> =

> New binding. Any chance we can get this in yaml format?
> This is the way forward and we have to convert the file anyway.
> =

> None of the other bridges use yaml format, but someone has to be the
> first.

I'm fine with converting this (i also forgot to squash a missing unit
name and a typo fix in the bindings, will add this for v2).

> =

> >  1 file changed, 89 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/im=
x-nwl-dsi.txt
> > =

> > diff --git a/Documentation/devicetree/bindings/display/bridge/imx-nwl-d=
si.txt b/Documentation/devicetree/bindings/display/bridge/imx-nwl-dsi.txt
> > new file mode 100644
> > index 000000000000..288fdb726d5a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/imx-nwl-dsi.txt
> > @@ -0,0 +1,89 @@
> > +Northwest Logic MIPI-DSI on imx SoCs
> > +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > +
> > +NWL MIPI-DSI host controller found on i.MX8 platforms. This is a
> > +dsi bridge for the for the NWL MIPI-DSI host.
> =

> To my best understanding a bridge is something that converts from one
> format to another format.
> Something that in the drm world are connected to an encoder.
> =

> I do not know the HW here - but from this very brif description this
> sounds more like a display controller and not a bridge?

mxsfb can drive LCD displays directly and - on newer SoCs like the i.MX8
- also feed the nwl dsi host controller. So having that as a bridge is
hopefully the right thing to do.

In order for that to work on the hardware i tested on, we'd need:

- at least the first patch from
  https://patchwork.freedesktop.org/series/62822/ for bridge support
- https://patchwork.freedesktop.org/series/64300/ to get the bus flags
- https://patchwork.freedesktop.org/series/64292/ to be able to use
  panel_bridge in this driver

I only had a reference to the first point above in the cover letter.
I'll add the other ones for v2 now that these are sent out. I'll also
address your comments in other parts of this series.

Cheers and thanks for having look!
 -- Guido

> =

> =

> > +
> > +Required properties:
> > +- compatible: 		"fsl,<chip>-nwl-dsi"
> > +	The following strings are expected:
> > +			"fsl,imx8mq-nwl-dsi"
> > +- reg: 			the register range of the MIPI-DSI controller
> > +- interrupts: 		the interrupt number for this module
> > +- clock, clock-names: 	phandles to the MIPI-DSI clocks
> > +	The following clocks are expected on all platforms:
> > +		"core"    - DSI core clock
> > +		"tx_esc"  - TX_ESC clock (used in escape mode)
> > +		"rx_esc"  - RX_ESC clock (used in escape mode)
> > +		"phy_ref" - PHY_REF clock. Clock is managed by the phy. Only
> > +                            used to read the clock rate.
> > +- assigned-clocks:	phandles to clocks that require initial configurati=
on
> > +- assigned-clock-rates:	rates of the clocks that require initial confi=
guration
> > +	The following clocks need to have an initial configuration:
> > +	"tx_esc" (20 MHz) and "rx_esc" (80 Mhz).
> > +- phys: 		phandle to the phy module representing the DPHY
> > +			inside the MIPI-DSI IP block
> > +- phy-names: 		should be "dphy"
> > +
> > +Optional properties:
> > +- power-domains 	phandle to the power domain
> > +- src			phandle to the system reset controller (required on
> > +			i.MX8MQ)
> Name is not very descriptive.
> Other bindings seems to use "resets" here?
> =

> > +- mux-sel		phandle to the MUX register set (required on i.MX8MQ)
> > +- assigned-clock-parents phandles to parent clocks that needs to be as=
signed as
> > +			parents to clocks defined in assigned-clocks
> > +
> > +Example:
> > +	mipi_dsi: mipi_dsi@30a00000 {
> > +		#address-cells =3D <1>;
> > +		#size-cells =3D <0>;
> > +		compatible =3D "fsl,imx8mq-nwl-dsi";
> > +		reg =3D <0x30A00000 0x300>;
> > +		clocks =3D <&clk IMX8MQ_CLK_DSI_CORE>,
> > +			 <&clk IMX8MQ_CLK_DSI_AHB>,
> > +			 <&clk IMX8MQ_CLK_DSI_IPG_DIV>,
> > +			 <&clk IMX8MQ_CLK_DSI_PHY_REF>;
> > +		clock-names =3D "core", "rx_esc", "tx_esc", "phy_ref";
> > +		assigned-clocks =3D <&clk IMX8MQ_CLK_DSI_AHB>,
> > +				  <&clk IMX8MQ_CLK_DSI_CORE>,
> > +				  <&clk IMX8MQ_CLK_DSI_IPG_DIV>;
> > +		assigned-clock-parents =3D <&clk IMX8MQ_SYS1_PLL_80M>,
> > +					 <&clk IMX8MQ_SYS1_PLL_266M>;
> > +		assigned-clock-rates =3D <80000000>,
> > +				       <266000000>,
> > +				       <20000000>;
> > +		interrupts =3D <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> > +		power-domains =3D <&pgc_mipi>;
> > +		src =3D <&src>;
> > +		mux-sel =3D <&iomuxc_gpr>;
> > +		phys =3D <&dphy>;
> > +		phy-names =3D "dphy";
> > +		status =3D "okay";
> I recall status should not be included in examples.
> =

> > +
> > +		panel@0 {
> > +			compatible =3D "...";
> > +			port {
> > +			     panel_in: endpoint {
> > +				       remote-endpoint =3D <&mipi_dsi_out>;
> > +			     };
> > +			};
> > +		};
> > +
> > +		ports {
> > +		      #address-cells =3D <1>;
> > +		      #size-cells =3D <0>;
> > +
> > +		      port@0 {
> > +			     reg =3D <0>;
> > +			     mipi_dsi_in: endpoint {
> > +					  remote-endpoint =3D <&dcss_disp0_mipi_dsi>;
> > +			     };
> > +		      };
> > +		      port@1 {
> > +			     reg =3D <1>;
> > +			     mipi_dsi_out: endpoint {
> > +					   remote-endpoint =3D <&panel_in>;
> > +			     };
> > +		      };
> > +		};
> > +	};
> > -- =

> > 2.20.1
> > =

> > _______________________________________________
> > dri-devel mailing list
> > dri-devel@lists.freedesktop.org
> > https://lists.freedesktop.org/mailman/listinfo/dri-devel
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
