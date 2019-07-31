Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E807C50C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 16:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jt6117RCH8d3J5yCvGZL0velLjWsGYIg9qWQHgQnOg0=; b=g+OPRFOI2VTBg3
	4MLYHA3lVUmkTeUNp/RtH0iXKPN7dq1pUKb7m6FhYP6fVg1PeA8YhyBt6jb49Yn1C6giyG7JPHTbg
	HYcoA3x/hhPllpT+cXubWFtFkWkyC7eFMwuNlvSbexb5SEAvcXBdYh3auFf93SsYwTzs0NRAUmRJ1
	Wmgh3sAhBgoWVyCws4zhq/3vMXQQdxYnLSHV7Br0LoWZJXVrMMQrmhGvlO7pMDMGiQIwvd6sRh5ku
	aWUTNlC7MkBXdslgfQmsG0Q11zovbY6lZKsXcOJ2pnegPeuUtfFvsz3CJDZ4btyfXP3FJ4OmzxfVO
	TKmCCNoyx1wmywIi+RbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hspj9-0004Hm-K9; Wed, 31 Jul 2019 14:37:15 +0000
Received: from honk.sigxcpu.org ([24.134.29.49])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hspj2-0004HH-Dw
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 14:37:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by honk.sigxcpu.org (Postfix) with ESMTP id DECAEFB03;
 Wed, 31 Jul 2019 16:37:06 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
 by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uyFt2kyVmQ3o; Wed, 31 Jul 2019 16:37:05 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
 id 2ACD946D8A; Wed, 31 Jul 2019 16:37:05 +0200 (CEST)
Date: Wed, 31 Jul 2019 16:37:05 +0200
From: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH 2/3] dt-bindings: display/bridge: Add binding for IMX NWL
 mipi dsi host controller
Message-ID: <20190731143705.GB1935@bogon.m.sigxcpu.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <70a5c6617936a4a095e7608b96e3f9fae5ddfbb1.1563983037.git.agx@sigxcpu.org>
 <20190727015716.GA4902@pendragon.ideasonboard.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190727015716.GA4902@pendragon.ideasonboard.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_073708_782685_275834E5 
X-CRM114-Status: GOOD (  27.59  )
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Laurent,

thanks for having a look.

On Sat, Jul 27, 2019 at 04:57:16AM +0300, Laurent Pinchart wrote:
> Hi Guido,
> =

> Thank you for the patch.
> =

> On Wed, Jul 24, 2019 at 05:52:25PM +0200, Guido G=FCnther wrote:
> > The Northwest Logic MIPI DSI IP core can be found in NXPs i.MX8 SoCs.
> > =

> > Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> > ---
> >  .../bindings/display/bridge/imx-nwl-dsi.txt   | 89 +++++++++++++++++++
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
> =

> There's one too many =3D.
> =

> > +
> > +NWL MIPI-DSI host controller found on i.MX8 platforms. This is a
> > +dsi bridge for the for the NWL MIPI-DSI host.
> =

> s/dsi/DSI/
> s/for the for the /for the /
> =

> > +
> > +Required properties:
> > +- compatible: 		"fsl,<chip>-nwl-dsi"
> > +	The following strings are expected:
> > +			"fsl,imx8mq-nwl-dsi"
> > +- reg: 			the register range of the MIPI-DSI controller
> > +- interrupts: 		the interrupt number for this module
> =

> It's not just a number but a specifier (with flags).
> =

> > +- clock, clock-names: 	phandles to the MIPI-DSI clocks
> =

> That should be phandles and names.
> =

> > +	The following clocks are expected on all platforms:
> =

> Expected or required ?
> =

> s/ on all platforms// as you only support a single platform.
> =

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
> =

> I think those two properties are out of scope for these bindings.
> =

> > +- phys: 		phandle to the phy module representing the DPHY
> > +			inside the MIPI-DSI IP block
> > +- phy-names: 		should be "dphy"
> > +
> > +Optional properties:
> > +- power-domains 	phandle to the power domain
> > +- src			phandle to the system reset controller (required on
> > +			i.MX8MQ)
> =

> Should this use the standard resets property ?
> =

> > +- mux-sel		phandle to the MUX register set (required on i.MX8MQ)
> > +- assigned-clock-parents phandles to parent clocks that needs to be as=
signed as
> > +			parents to clocks defined in assigned-clocks
> =

> This property is also out of scope.
> =

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
> =

> The ports should be documented too. There are multiple example bindings
> available.

I've followed you suggestions while moving the whole thing to YAML
syntax for an upcoming v2.

Thanks for having a look,
Cheers,
 -- Guido

> > +	};
> =

> -- =

> Regards,
> =

> Laurent Pinchart
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
