Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF7598F7FA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 16 Aug 2019 02:22:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=58EQgDAGFQe5JpRGvmNjHRoNDxCRS5NfIm98rixuagk=; b=HXyKAunTO6Nhkr
	gvjpG0+oMbFurPcF06DAb8ixPZigMKJ+mILWXLwAYs14pAEcT6xy2hPCTxBe41TeeOAV0ZX+wEY/F
	hd5MBySKWadZ0C5YnWZD+UFX3VvSpJ5dHCoI/m1aZRFBhm9X1XQdbFcnHX7qEPMr9pf6ZmzpTNavZ
	GbXrMl+UFsvpUlHDXMVxvimtvygPC3kVhcDhqZ0ZMhvJcCpcjQJ1mjTf1pkLBcTYSuEP6RjlrR3su
	d6cJBmm+E6Qa96rBvoyRmWlQ4mNSEgZF7oD71dFv0sdWl/Ro+8H/KfQOyOYDMeIYHtj0n+NlxRYSt
	cKHpfqLF/TJuh5OtqeHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyQ0I-0006RS-KW; Fri, 16 Aug 2019 00:22:02 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyQ07-0006Qh-4v; Fri, 16 Aug 2019 00:21:52 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 8C62D2AF;
 Fri, 16 Aug 2019 02:21:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565914908;
 bh=mXP7EvyEq0VFQ5kR7YojEpOzC8Vcp/SHAc8jkDdzxAQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=YHhv3SILmcJ5KiTQ7P0GmmAcUY+sZZODbaZ9Y6neRTIUSxfXwehWCldipWe1Kip9E
 UylkfQ5IohAj8DoPpNFbLNb54vtng7h9hIK3xa7S8tGd8htBra4WXtW9wJJhkVykjc
 +UQVkE+4SEb2IZensOtg3/UBhQ4dMmPIVNjoaGws=
Date: Fri, 16 Aug 2019 03:21:44 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 10/14] dt-bindings: Document the Rockchip ISP1 bindings
Message-ID: <20190816002144.GG5011@pendragon.ideasonboard.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-11-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730184256.30338-11-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_172151_493129_89E8B05F 
X-CRM114-Status: GOOD (  19.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, eddie.cai.linux@gmail.com, kernel@collabora.com,
 heiko@sntech.de, Rob Herring <robh@kernel.org>, jacob2.chen@rock-chips.com,
 jeffy.chen@rock-chips.com, zyc@rock-chips.com, linux-kernel@vger.kernel.org,
 tfiga@chromium.org, linux-rockchip@lists.infradead.org, hans.verkuil@cisco.com,
 sakari.ailus@linux.intel.com, zhengsq@rock-chips.com, mchehab@kernel.org,
 ezequiel@collabora.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Helen,

Thank you for the patch.

On Tue, Jul 30, 2019 at 03:42:52PM -0300, Helen Koike wrote:
> From: Jacob Chen <jacob2.chen@rock-chips.com>
> 
> Add DT bindings documentation for Rockchip ISP1
> 
> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> [update for upstream]
> Signed-off-by: Helen Koike <helen.koike@collabora.com>
> 
> ---
> 
> Changes in v8: None
> Changes in v7:
> - update document with new design and tested example
> 
>  .../bindings/media/rockchip-isp1.txt          | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-isp1.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.txt b/Documentation/devicetree/bindings/media/rockchip-isp1.txt
> new file mode 100644
> index 000000000000..a97fef0f189f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-isp1.txt

If there wasn't enough work on your plate already I'd propose converting
this to yaml, but I'll refrain from doing so :-)

> @@ -0,0 +1,71 @@
> +Rockchip SoC Image Signal Processing unit v1
> +----------------------------------------------
> +
> +Rockchip ISP1 is the Camera interface for the Rockchip series of SoCs
> +which contains image processing, scaling, and compression funcitons.

s/funcitons/functions/

> +
> +Required properties:
> +- compatible: value should be one of the following
> +	"rockchip,rk3288-cif-isp";
> +	"rockchip,rk3399-cif-isp";
> +- reg : offset and length of the register set for the device.
> +- interrupts: should contain ISP interrupt.
> +- clocks: phandle to the required clocks.
> +- clock-names: required clock name.
> +- iommus: required a iommu node.
> +- phys: the phandle for the PHY port
> +- phy-names: must contain "dphy"
> +
> +port node
> +-------------------
> +
> +The device node should contain one 'ports' child node, with children 'port'
> +with child 'endpoint'.

Extra . and line break ?

> +nodes, according to the bindings defined in Documentation/devicetree/bindings/
> +media/video-interfaces.txt.
> +
> +- endpoint(mipi):
> +	- remote-endpoint: Connecting to Rockchip MIPI-DPHY,
> +		which is defined in rockchip-mipi-dphy.txt.
> +
> +The port node must contain at least one endpoint, either parallel or mipi.

If I understand things correctly, each ISP has a single CSI-2 receiver
and a single parallel output, and can select one of them at runtime.
This should be modelled as two separate ports. In addition to this,
multiple CSI-2 sensors can be connected to the same CSI-2 receiver as
long as all but one of them is held in reset (this is a poor man's CSI-2
switch, which exists in device out in the market, so we have to support
that). This should be modelled by multiple endpoints in the CSI-2 port.

> +It could have multiple endpoints, but please note the hardware don't support
> +two sensors work at a time, they are supposed to work asynchronously.

I assume you meant "are supposed to be mutually exclusive" or something
similar ?

> +
> +Device node example
> +-------------------
> +
> +	isp0: isp0@ff910000 {
> +		compatible = "rockchip,rk3399-cif-isp";
> +		reg = <0x0 0xff910000 0x0 0x4000>;
> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
> +		clocks = <&cru SCLK_ISP0>,
> +			 <&cru ACLK_ISP0>, <&cru ACLK_ISP0_WRAPPER>,
> +			 <&cru HCLK_ISP0>, <&cru HCLK_ISP0_WRAPPER>;
> +		clock-names = "clk_isp",
> +			      "aclk_isp", "aclk_isp_wrap",
> +			      "hclk_isp", "hclk_isp_wrap";
> +		power-domains = <&power RK3399_PD_ISP0>;
> +		iommus = <&isp0_mmu>;
> +		phys = <&dphy>;
> +		phy-names = "dphy";
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				mipi_in_wcam: endpoint@0 {
> +					reg = <0>;
> +					remote-endpoint = <&wcam_out>;
> +					data-lanes = <1 2>;
> +				};
> +
> +				mipi_in_ucam: endpoint@1 {
> +					reg = <1>;
> +					remote-endpoint = <&ucam_out>;
> +					data-lanes = <1>;
> +				};

What are wcam and ucam ? It would help if you showed the sensor nodes in
the example.

> +			};
> +		};
> +	};

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
