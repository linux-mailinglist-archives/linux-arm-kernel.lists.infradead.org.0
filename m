Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09898761DA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 11:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=41mux3DBgRwWZeQ1BNblSWB7zaXIEf5qErAH8HT5rJY=; b=D/o6NSK4S82FZ6
	KYyp6DzpF6i9Wr77fges2kVTk0dpsJHwn5NEEN7A91Rg+d6CoM4L5nzbpkpKfb0Opaw7vlXV4XFxr
	xxLyfaenQs3gAUNh3mRJ/lL0Rdy4THThC7SPIPHj6npL+PfEtHNgALRSOlfn66tLEFli9TpEH4RMU
	SO0CVauw1Upj2pfSptOCOyAeDdjk6UmZJxXa8V3IispRje5obB1mWspdivbM7zfPLPjkxbhTkoSjA
	glteCFjA4XlTQAuaNgw7Kq+v0zoMNq+bInLkkyiQ4na4gJasoJDh6u9cF8B25j/hdyDXCOGrkP7Yv
	8DjKZVwna2XKfKhJ5++w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqwS8-0004Cm-4I; Fri, 26 Jul 2019 09:23:52 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqwRi-00048f-ES
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 09:23:28 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 3483420026;
 Fri, 26 Jul 2019 11:23:17 +0200 (CEST)
Date: Fri, 26 Jul 2019 11:23:15 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH 2/3] dt-bindings: display/bridge: Add binding for IMX NWL
 mipi dsi host controller
Message-ID: <20190726092315.GA9754@ravnborg.org>
References: <cover.1563983037.git.agx@sigxcpu.org>
 <70a5c6617936a4a095e7608b96e3f9fae5ddfbb1.1563983037.git.agx@sigxcpu.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <70a5c6617936a4a095e7608b96e3f9fae5ddfbb1.1563983037.git.agx@sigxcpu.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=8nJEP1OIZ-IA:10 a=ze386MxoAAAA:8
 a=e5mUnYsNAAAA:8 a=uEMGSPKFWDNqce5SinMA:9 a=NMl6CGBPn1O5J89H:21
 a=Vgy-7kDX4t5A4FfJ:21 a=wPNLvfGTeEIA:10 a=iBZjaW-pnkserzjvUTHh:22
 a=Vxmtnl_E_bksehYqCbjh:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_022326_874748_2EE74CA0 
X-CRM114-Status: GOOD (  23.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.247.116.14 listed in list.dnswl.org]
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

Hi Guido.

A few comments follows.

	Sam

On Wed, Jul 24, 2019 at 05:52:25PM +0200, Guido G=FCnther wrote:
> The Northwest Logic MIPI DSI IP core can be found in NXPs i.MX8 SoCs.
> =

> Signed-off-by: Guido G=FCnther <agx@sigxcpu.org>
> ---
>  .../bindings/display/bridge/imx-nwl-dsi.txt   | 89 +++++++++++++++++++

New binding. Any chance we can get this in yaml format?
This is the way forward and we have to convert the file anyway.

None of the other bridges use yaml format, but someone has to be the
first.

>  1 file changed, 89 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/imx-=
nwl-dsi.txt
> =

> diff --git a/Documentation/devicetree/bindings/display/bridge/imx-nwl-dsi=
.txt b/Documentation/devicetree/bindings/display/bridge/imx-nwl-dsi.txt
> new file mode 100644
> index 000000000000..288fdb726d5a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/imx-nwl-dsi.txt
> @@ -0,0 +1,89 @@
> +Northwest Logic MIPI-DSI on imx SoCs
> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> +
> +NWL MIPI-DSI host controller found on i.MX8 platforms. This is a
> +dsi bridge for the for the NWL MIPI-DSI host.

To my best understanding a bridge is something that converts from one
format to another format.
Something that in the drm world are connected to an encoder.

I do not know the HW here - but from this very brif description this
sounds more like a display controller and not a bridge?


> +
> +Required properties:
> +- compatible: 		"fsl,<chip>-nwl-dsi"
> +	The following strings are expected:
> +			"fsl,imx8mq-nwl-dsi"
> +- reg: 			the register range of the MIPI-DSI controller
> +- interrupts: 		the interrupt number for this module
> +- clock, clock-names: 	phandles to the MIPI-DSI clocks
> +	The following clocks are expected on all platforms:
> +		"core"    - DSI core clock
> +		"tx_esc"  - TX_ESC clock (used in escape mode)
> +		"rx_esc"  - RX_ESC clock (used in escape mode)
> +		"phy_ref" - PHY_REF clock. Clock is managed by the phy. Only
> +                            used to read the clock rate.
> +- assigned-clocks:	phandles to clocks that require initial configuration
> +- assigned-clock-rates:	rates of the clocks that require initial configu=
ration
> +	The following clocks need to have an initial configuration:
> +	"tx_esc" (20 MHz) and "rx_esc" (80 Mhz).
> +- phys: 		phandle to the phy module representing the DPHY
> +			inside the MIPI-DSI IP block
> +- phy-names: 		should be "dphy"
> +
> +Optional properties:
> +- power-domains 	phandle to the power domain
> +- src			phandle to the system reset controller (required on
> +			i.MX8MQ)
Name is not very descriptive.
Other bindings seems to use "resets" here?

> +- mux-sel		phandle to the MUX register set (required on i.MX8MQ)
> +- assigned-clock-parents phandles to parent clocks that needs to be assi=
gned as
> +			parents to clocks defined in assigned-clocks
> +
> +Example:
> +	mipi_dsi: mipi_dsi@30a00000 {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +		compatible =3D "fsl,imx8mq-nwl-dsi";
> +		reg =3D <0x30A00000 0x300>;
> +		clocks =3D <&clk IMX8MQ_CLK_DSI_CORE>,
> +			 <&clk IMX8MQ_CLK_DSI_AHB>,
> +			 <&clk IMX8MQ_CLK_DSI_IPG_DIV>,
> +			 <&clk IMX8MQ_CLK_DSI_PHY_REF>;
> +		clock-names =3D "core", "rx_esc", "tx_esc", "phy_ref";
> +		assigned-clocks =3D <&clk IMX8MQ_CLK_DSI_AHB>,
> +				  <&clk IMX8MQ_CLK_DSI_CORE>,
> +				  <&clk IMX8MQ_CLK_DSI_IPG_DIV>;
> +		assigned-clock-parents =3D <&clk IMX8MQ_SYS1_PLL_80M>,
> +					 <&clk IMX8MQ_SYS1_PLL_266M>;
> +		assigned-clock-rates =3D <80000000>,
> +				       <266000000>,
> +				       <20000000>;
> +		interrupts =3D <GIC_SPI 34 IRQ_TYPE_LEVEL_HIGH>;
> +		power-domains =3D <&pgc_mipi>;
> +		src =3D <&src>;
> +		mux-sel =3D <&iomuxc_gpr>;
> +		phys =3D <&dphy>;
> +		phy-names =3D "dphy";
> +		status =3D "okay";
I recall status should not be included in examples.

> +
> +		panel@0 {
> +			compatible =3D "...";
> +			port {
> +			     panel_in: endpoint {
> +				       remote-endpoint =3D <&mipi_dsi_out>;
> +			     };
> +			};
> +		};
> +
> +		ports {
> +		      #address-cells =3D <1>;
> +		      #size-cells =3D <0>;
> +
> +		      port@0 {
> +			     reg =3D <0>;
> +			     mipi_dsi_in: endpoint {
> +					  remote-endpoint =3D <&dcss_disp0_mipi_dsi>;
> +			     };
> +		      };
> +		      port@1 {
> +			     reg =3D <1>;
> +			     mipi_dsi_out: endpoint {
> +					   remote-endpoint =3D <&panel_in>;
> +			     };
> +		      };
> +		};
> +	};
> -- =

> 2.20.1
> =

> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
