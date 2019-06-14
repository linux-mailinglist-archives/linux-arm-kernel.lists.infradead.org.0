Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AEE9465E9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 19:40:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4j6D/PQQfPQa2SVAJPrQIN+ohdwaPhpF9ug8zDdkLIA=; b=mSaOzfZ/hqSbyb
	0GD1kXLwUtfdP34UbItICxGN5NgfvunfPMYb4oURRj4SrlTqnMrhaKlrEjChw/E9mveFoaUohshsK
	rTmzMTanjtpGqps0yPspBODfctV52qpsZIyy6fRTYAzcqOPFRtHuwV5m5OQvSK+h8r8BOEhIkw8xJ
	ZEdjL8fcKTUGD1Z8wwrTLXjJXIxu0K/wYlc4MdT+VmijhX1HGzfQ5pEkRQgCADQD6XhE0IFhhQRMi
	CSodWp9ghc5Hrfh3RDyA50ae7q7hxyq1eB4u6Aw/hj902A22Qes5u6tuFI2Qa/AVPKdaWR5LNK05P
	z0BNJm3e6KHweYXGBmbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbqC2-0002yP-0A; Fri, 14 Jun 2019 17:40:50 +0000
Received: from mail-qt1-f194.google.com ([209.85.160.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbqBs-0002xt-5k
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 17:40:41 +0000
Received: by mail-qt1-f194.google.com with SMTP id z24so3383761qtj.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 10:40:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wPpnwqyMUwz4SjcLvux0hAtQhIO7tvhlsaBTqk5BtFQ=;
 b=N6/Yy8xqu7tbN0+C/L4VOLCK5HMRScfFPT5K/rDukuPnfBfTYOEK+VVVCcLulrLPWx
 gaWlZiNeLTTK4GCjkZGd/xVOzIAAlffvjgvn9PSQom+ZmFwR23vLc8WLL5oDd3De5Nd9
 QVbhsVx6A2F+h4oaPJYZ9LAF+LJ+IaSUHkkyMwFYB3cXWFFE9EjNA88/D4aZ4CpokKoB
 GdqFQauU2QkZj1wFnN3gb3Zga2PPwVu1e3MkabHdEwdQD3faOXSxii6pBwqpjjvOgBii
 WFG/zNOOoYLkyxwQctdeTYrW9uKyQja7yOUS5wv1w16HiFLaVi3ucfzwljEIsIi3ExZS
 RNEA==
X-Gm-Message-State: APjAAAXqWhYDapzkjS0jwZPlVH7bPiX3FF+o5kVKWnfvjBiSDLIqb215
 tLYyVuQ5oBiDPlAv5B6pZw==
X-Google-Smtp-Source: APXvYqxo44A52mZTtb6SOTHwe53kddQe2wYjOh2ybh83i+aLF200ttNmY0LQpx9l952MRTesaOIZBw==
X-Received: by 2002:ad4:43e3:: with SMTP id f3mr9527578qvu.108.1560534039177; 
 Fri, 14 Jun 2019 10:40:39 -0700 (PDT)
Received: from localhost ([64.188.179.243])
 by smtp.gmail.com with ESMTPSA id f25sm2592067qta.81.2019.06.14.10.40.37
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 10:40:38 -0700 (PDT)
Date: Fri, 14 Jun 2019 11:40:36 -0600
From: Rob Herring <robh@kernel.org>
To: Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: display: bridge: Add ICN6211
 MIPI-DSI to RGB converter bridge
Message-ID: <20190614174036.GA31068@bogus>
References: <20190524104317.20287-1-jagan@amarulasolutions.com>
 <20190524104317.20287-2-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524104317.20287-2-jagan@amarulasolutions.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_104040_216981_72186231 
X-CRM114-Status: GOOD (  17.48  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.194 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Andrzej Hajda <a.hajda@samsung.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 Michael Trimarchi <michael@amarulasolutions.com>,
 linux-amarula@amarulasolutions.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 04:13:15PM +0530, Jagan Teki wrote:
> ICN6211 is MIPI-DSI/RGB converter bridge from chipone.
> It has a flexible configuration of MIPI DSI signal input
> and produce RGB565, RGB666, RGB888 output format.
> 
> Add dt-bingings for it.
> 
> Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
> ---
>  .../display/bridge/chipone,icn6211.txt        | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
> new file mode 100644
> index 000000000000..53a9848ef8b6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/chipone,icn6211.txt
> @@ -0,0 +1,78 @@
> +Chipone ICN6211 MIPI-DSI to RGB Converter Bridge
> +
> +ICN6211 is MIPI-DSI/RGB converter bridge from chipone.
> +It has a flexible configuration of MIPI DSI signal input
> +and produce RGB565, RGB666, RGB888 output format.
> +
> +Required properties for RGB:
> +- compatible: must be "chipone,icn6211"
> +- reg: the virtual channel number of a DSI peripheral
> +- reset-gpios: a GPIO phandle for the reset pin
> +
> +The device node can contain following 'port' child nodes,
> +according to the OF graph bindings defined in [1]:
> +  0: DSI Input, not required, if the bridge is DSI controlled
> +  1: RGB Output, mandatory
> +
> +[1]: Documentation/devicetree/bindings/media/video-interfaces.txt
> +
> +Example:
> +
> +	panel {
> +		compatible = "bananapi,s070wv20-ct16", "simple-panel";

'simple-panel' is not a valid compatible string.

> +		enable-gpios = <&pio 1 7 GPIO_ACTIVE_HIGH>; /* LCD-PWR-EN: PB7 */
> +		backlight = <&backlight>;
> +
> +		port {
> +			panel_out_bridge: endpoint {
> +				remote-endpoint = <&bridge_out_panel>;
> +			};
> +		};
> +	};
> +
> +&dsi {
> +	vcc-dsi-supply = <&reg_dcdc1>;		/* VCC-DSI */
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		dsi_out: port@0 {
> +			reg = <0>;
> +
> +			dsi_out_bridge: endpoint {
> +				remote-endpoint = <&bridge_out_dsi>;
> +			};
> +		};
> +	};
> +
> +	bridge@0 {
> +		compatible = "chipone,icn6211";
> +		reg = <0>;
> +		reset-gpios = <&r_pio 0 5 GPIO_ACTIVE_HIGH>; /* LCD-RST: PL5 */
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			bridge_in: port@0 {
> +				reg = <0>;
> +
> +				bridge_out_dsi: endpoint {
> +					remote-endpoint = <&dsi_out_bridge>;
> +				};
> +			};
> +
> +			bridge_out: port@1 {
> +				reg = <1>;
> +
> +				bridge_out_panel: endpoint {
> +					remote-endpoint = <&panel_out_bridge>;
> +				};
> +			};
> +		};
> +	};
> +};
> -- 
> 2.18.0.321.gffc6fa0e3
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
