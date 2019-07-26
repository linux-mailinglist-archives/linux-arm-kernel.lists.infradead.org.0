Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6535F76F50
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 18:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6LoFBRfQtwyFUHA7UU4QU4O32iaF0RoSq/7mwx2qmI=; b=OI+zL3oQm5SJ5A
	0w8yMZPL9qVHoxsWwZAYCsl9u36ZYg+q7Or3wyHfdEG4pKppsl0mShnZ/VMngtwhTJYBaK8+HvrXD
	jtE3rWQd0R9nj0qiZ/zf9dXAqVHKpBG/qOOboBZbcEaWAplqNGU4h8GBMHR8GPorTM8lVagR0w9+5
	nz+lsq5XAYzXAAeYSGHTG9/YUrbVpIrFAd9Wy5tB/Q1cidsDa9JHfSPqSiKBh41QF6FVYP5FonyWO
	dU+I+w2GB2bmo+zQhdpgUcoySZl3AXNqgza0QW32hDVLfxO9/+AJiDVXFAWg67c/r/OBa6ISnV/mD
	4c3RpO8VItHBjWQMD+ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr3Nz-0008Fr-1I; Fri, 26 Jul 2019 16:48:03 +0000
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr3Nn-0008Et-Om
 for linux-arm-kernel@lists.infradead.org; Fri, 26 Jul 2019 16:47:53 +0000
X-Originating-IP: 109.190.253.11
Received: from localhost (unknown [109.190.253.11])
 (Authenticated sender: maxime.ripard@bootlin.com)
 by relay8-d.mail.gandi.net (Postfix) with ESMTPSA id 839B91BF207;
 Fri, 26 Jul 2019 16:47:41 +0000 (UTC)
Date: Fri, 26 Jul 2019 18:36:01 +0200
From: Maxime Ripard <maxime.ripard@bootlin.com>
To: Torsten Duwe <duwe@lst.de>
Subject: Re: [PATCH v3 6a/7] dt-bindings: Add ANX6345 DP/eDP transmitter
 binding
Message-ID: <20190726163601.o32bxqew5xavjgyi@flea>
References: <20190722150414.9F97668B20@verein.lst.de>
 <20190725151829.DC20968B02@verein.lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725151829.DC20968B02@verein.lst.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_094752_116816_6A114D53 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.201 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 David Airlie <airlied@linux.ie>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
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

Hi,

On Thu, Jul 25, 2019 at 05:18:29PM +0200, Torsten Duwe wrote:
> The anx6345 is an ultra-low power DisplayPort/eDP transmitter designed
> for portable devices.
>
> Add a binding document for it.
>
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Torsten Duwe <duwe@suse.de>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> ---
>  .../devicetree/bindings/display/bridge/anx6345.yaml |   90 ++++++++++
>  1 file changed, 90 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/anx6345.yaml
>
> diff --git a/Documentation/devicetree/bindings/display/bridge/anx6345.yaml b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
> new file mode 100644
> index 000000000000..0af092d101c5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/anx6345.yaml
> @@ -0,0 +1,90 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/anx6345.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Analogix ANX6345 eDP Transmitter Device Tree Bindings
> +
> +maintainers:
> +  - Torsten Duwe <duwe@lst.de>
> +
> +description: |
> +  The ANX6345 is an ultra-low power Full-HD eDP transmitter designed for
> +  portable devices.
> +
> +properties:
> +  compatible:
> +    const: analogix,anx6345
> +
> +  reg:
> +    maxItems: 1
> +    description: I2C address of the device
> +
> +  reset-gpios:
> +    maxItems: 1
> +    description: active low GPIO to use for reset
> +
> +  dvdd12-supply:
> +    maxItems: 1
> +    description: Regulator for 1.2V digital core power.
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +
> +  dvdd25-supply:
> +    maxItems: 1
> +    description: Regulator for 2.5V digital core power.
> +    $ref: /schemas/types.yaml#/definitions/phandle

There's no need to specify the type here, all the properties ending in
-supply are already checked for that type

> +  ports:
> +    type: object
> +    minItems: 1
> +    maxItems: 2
> +    description: |
> +      Video port 0 for LVTTL input,
> +      Video port 1 for eDP output (panel or connector)
> +      using the DT bindings defined in
> +      Documentation/devicetree/bindings/media/video-interfaces.txt

You should probably describe the port@0 and port@1 nodes here as
well. It would allow you to express that the port 0 is mandatory and
the port 1 optional, which got dropped in the conversion.

Maxime

--
Maxime Ripard, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
