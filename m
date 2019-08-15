Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CEE8F2FC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 20:14:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/f12VlziNDRHFxrvhTUV+qCu6ia0zvIleXsg1KvMZ4s=; b=a5POxP2Khv/fV/
	egxkqhr/hrRsT9mTKwP7iAbUlm67hmvZkdaqaO+/7ZRD+7UMQUnzp59DQLiKg+AcV2mfLCqIoxdip
	NFv5qEsBj4vZVRfgOCT+VaMdEmz4yFzTrqErjblLY+SCemR/nWJgHBlWTiK0/lsnYhtlgJVqmy4m9
	Gy+mNapmwDwuhpL6+8TqYiYQo0TyJh7YDqbriE/WqdgOEWuwt1yhotIxpqLcsY86oDjq+bsoHYQ5w
	JOMqCMezPYrBvKvOFLuwuArK6Z5XfAwAsdHPCznC/9hCkN+tFhNj2Q3g93Jqinf4Zqtp7BueQIvGI
	nxwUo38tmZiFfy7frkjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyKGe-0002gK-PC; Thu, 15 Aug 2019 18:14:32 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyKGR-0002fe-Aq; Thu, 15 Aug 2019 18:14:20 +0000
Received: from pendragon.ideasonboard.com
 (dfj612yhrgyx302h3jwwy-3.rev.dnainternet.fi
 [IPv6:2001:14ba:21f5:5b00:ce28:277f:58d7:3ca4])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 71DDB2AF;
 Thu, 15 Aug 2019 20:14:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1565892857;
 bh=PywuWClfJh3Sq1lkgyHqHLet8t64SevKcOFacHlNbNo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=XSaAqhgyTXoRy4Ne5hd+JH48p6twbV+RWWuhcrrGbHEAPxB+p+arrDgJtFnpRyOVj
 gQclbHy+09zseRLnoNSglCm9r3Yr6Fme88FQ5wyPhMC/97JikIbdngJR7t1rVgFhTG
 65N0VxzrsTWu9FqSH/6LxlqNaDE/M/edOovgxdqs=
Date: Thu, 15 Aug 2019 21:14:13 +0300
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: Helen Koike <helen.koike@collabora.com>
Subject: Re: [PATCH v8 11/14] dt-bindings: Document the Rockchip MIPI RX
 D-PHY bindings
Message-ID: <20190815181413.GZ5011@pendragon.ideasonboard.com>
References: <20190730184256.30338-1-helen.koike@collabora.com>
 <20190730184256.30338-12-helen.koike@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190730184256.30338-12-helen.koike@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_111419_677699_8FDB47C4 
X-CRM114-Status: GOOD (  18.29  )
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

On Tue, Jul 30, 2019 at 03:42:53PM -0300, Helen Koike wrote:
> From: Jacob Chen <jacob2.chen@rock-chips.com>
> 
> Add DT bindings documentation for Rockchip MIPI D-PHY RX
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
> - updated doc with new design and tested example
> 
>  .../bindings/media/rockchip-mipi-dphy.txt     | 38 +++++++++++++++++++

Shouldn't this go to bindings/phy/ ?

>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt b/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
> new file mode 100644
> index 000000000000..2305d44d92db
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/rockchip-mipi-dphy.txt
> @@ -0,0 +1,38 @@
> +Rockchip SoC MIPI RX D-PHY
> +-------------------------------------------------------------

How about already converting the bindings to yaml ? There's one example
in bindings/phy/ that looks quite similar to what you need here. Make
sure to have a look at Documentation/devicetree/writing-schema.md, and
in particular to run make dt_binding_check.

> +
> +Required properties:
> +- compatible: value should be one of the following
> +	"rockchip,rk3288-mipi-dphy"
> +	"rockchip,rk3399-mipi-dphy"
> +- clocks : list of clock specifiers, corresponding to entries in
> +	clock-names property;
> +- clock-names: required clock name.
> +- #phy-cells: Number of cells in a PHY specifier; Should be 0.
> +
> +MIPI RX D-PHY use registers in "general register files", it
> +should be a child of the GRF.
> +
> +Optional properties:
> +- reg: offset and length of the register set for the device.
> +- rockchip,grf: MIPI TX1RX1 D-PHY not only has its own register but also
> +		the GRF, so it is only necessary for MIPI TX1RX1 D-PHY.
> +
> +Device node example
> +-------------------
> +
> +grf: syscon@ff770000 {
> +	compatible = "rockchip,rk3399-grf", "syscon", "simple-mfd";
> +
> +...
> +
> +	dphy: mipi-dphy {
> +		compatible = "rockchip,rk3399-mipi-dphy";
> +		clocks = <&cru SCLK_MIPIDPHY_REF>,
> +			<&cru SCLK_DPHY_RX0_CFG>,
> +			<&cru PCLK_VIO_GRF>;
> +		clock-names = "dphy-ref", "dphy-cfg", "grf";
> +		power-domains = <&power RK3399_PD_VIO>;
> +		#phy-cells = <0>;
> +	};
> +};

-- 
Regards,

Laurent Pinchart

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
