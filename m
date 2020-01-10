Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5136F13747E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 18:12:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W8nsV92Xe4MPSvrymVRb4pCK/iImDxcOgdy4msY4MO4=; b=jABOLov2i8wxf0
	IKxw4y6/IjKJrvjBFC+ALj40RKLgSS1T2KO8mhQPUSshrxgAMsmP3fhrJ2b2oZC78alfbRWAysNdx
	YqlXFZtkmYLD5Fw+Cb8azugTBEQ4wRDq0o4sSpfOJgl9OQecVvLVXm/XCqWvsBN4/tGbFr4qWtE9i
	RKjK6xLrj15oHTKxEkMPwtSPfKxq9ySN2pTACBzJvU48MGp24o2FvLDZY8fC0McHZc/Ojd+o6MSBu
	cw1VlCS1U5J9J6UmOzO3S6qmSYbuRd2PzCqSbqzVfycB/eq4L2EeLZgJoEdFdZ8Qal28w2Wt51x47
	d73Fg0rCvwXyrNrE12Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipxps-0004P1-U9; Fri, 10 Jan 2020 17:12:36 +0000
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipxpl-0004Oe-Dr
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 17:12:31 +0000
Received: from ravnborg.org (unknown [158.248.194.18])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by asavdk3.altibox.net (Postfix) with ESMTPS id 5463420053;
 Fri, 10 Jan 2020 18:12:27 +0100 (CET)
Date: Fri, 10 Jan 2020 18:12:26 +0100
From: Sam Ravnborg <sam@ravnborg.org>
To: Icenowy Zheng <icenowy@aosc.io>
Subject: Re: [PATCH 2/5] dt-bindings: panel: add Feixin K101 IM2BA02 MIPI-DSI
 panel
Message-ID: <20200110171226.GB25099@ravnborg.org>
References: <20200110155225.1051749-1-icenowy@aosc.io>
 <20200110155225.1051749-3-icenowy@aosc.io>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200110155225.1051749-3-icenowy@aosc.io>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=eMA9ckh1 c=1 sm=1 tr=0
 a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
 a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=gEfo2CItAAAA:8
 a=q9ad5_0hBVDqaoZWYP0A:9 a=AFdBQuwNfT9Z_ji9:21 a=HW4JGcA6RQc568Jt:21
 a=CjuIK1q_8ugA:10 a=sptkURWiP4Gy88Gu7hUp:22 a=pHzHmUro8NiASowvMSCR:22
 a=6VlIyEUom7LUIeUMNQJH:22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_091229_832349_8EC5C54E 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Icenowy.

On Fri, Jan 10, 2020 at 11:52:22PM +0800, Icenowy Zheng wrote:
> Feixin K101 IM2BA02 is a 10.1" 800x1280 4-lane MIPI-DSI panel.
> 
> Add device tree binding for it.
Thanks for using the new meta-schema format and with the correct
license.


The example fails dt_binding_check - I had to do the following to make
it pass:

diff --git a/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml b/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
index 7176d14893ff..c43f884de6ac 100644
--- a/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
+++ b/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
@@ -37,7 +37,9 @@ additionalProperties: false
 
 examples:
   - |
-    &dsi {
+    #include <dt-bindings/gpio/gpio.h>
+
+    dsi {
         #address-cells = <1>;
         #size-cells = <0>;
         panel@0 {

Added include to get definition of GPIO_...
And dropped the "&" as it is not OK in the example here.

And please consider if backlight really is a required property.

	Sam
> 
> Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
> ---
>  .../display/panel/feixin,k101-im2ba02.yaml    | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml b/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
> new file mode 100644
> index 000000000000..7176d14893ff
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/feixin,k101-im2ba02.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/feixin,k101-im2ba02.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Feixin K101 IM2BA02 10.1" MIPI-DSI LCD panel
> +
> +maintainers:
> +  - Icenowy Zheng <icenowy@aosc.io>
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    const: feixin,k101-im2ba02
> +  reg: true
> +  backlight: true
> +  reset-gpios: true
> +  avdd-supply:
> +     description: regulator that supplies the AVDD voltage
> +  dvdd-supply:
> +     description: regulator that supplies the DVDD voltage
> +  cvdd-supply:
> +     description: regulator that supplies the CVDD voltage
> +
> +required:
> +  - compatible
> +  - reg
> +  - backlight
> +  - avdd-supply
> +  - dvdd-supply
> +  - cvdd-supply
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    &dsi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +        panel@0 {
> +            compatible = "feixin,k101-im2ba02";
> +            reg = <0>;
> +            avdd-supply = <&reg_dc1sw>;
> +            dvdd-supply = <&reg_dc1sw>;
> +            cvdd-supply = <&reg_ldo_io1>;
> +            reset-gpios = <&pio 3 24 GPIO_ACTIVE_HIGH>;
> +            backlight = <&backlight>;
> +        };
> +    };
> +
> +...
> -- 
> 2.23.0

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
