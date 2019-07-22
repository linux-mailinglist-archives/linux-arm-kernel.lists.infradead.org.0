Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F09AA70DA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 01:51:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WkHprKyrbjp+Fa1D6CSNz0uTjghPkJ+3Q30/5196CUg=; b=XaJViBb4vIX/Q2
	7cvlHmygilXQhtd5tr4RJrdTO23keEuE03ydyntRx6++BrtUh4XNBLFcBDUWK3UM/P2PKcjsIQHCG
	tnAgHoC4pB/qdykDMMNJvR/SwnKj6hxjRfNrhq2Y3VaCooRbLBNDhBIvRUoFAwRHuqrptvU8cBuAf
	gPRQytYTZ4JWk70sNJI0t8Q5RloPR4S7XiLc7jY8szg8mWaD/QiQpjIPXXsH9MKEo1NjAUfgUnSIY
	9+sR+xJkB4Lh9VzwTJtXscc7amiNKH1foTGN1R2mrpMgEFPma1d/6xrVrRdvDsQvBtvCAgzMHGIdD
	aBVPlA5pwLz7Yg3zC3eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpi58-0004zy-KV; Mon, 22 Jul 2019 23:51:02 +0000
Received: from mail-io1-f67.google.com ([209.85.166.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpi3d-0004qx-4U; Mon, 22 Jul 2019 23:49:39 +0000
Received: by mail-io1-f67.google.com with SMTP id k8so77954679iot.1;
 Mon, 22 Jul 2019 16:49:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OJLmbuthXALsnhPZhxE7MeJBMmONjl7w8T5HPyeenvc=;
 b=gaDOh2jJruuL2SMVRr9m0D5cLwNzqaYVSQ2VAqtUdq7K5UPu+AU49mROJVHiQ2GPzt
 GFnARBD83pGEj4cciIrykn28V+pnjBfGbBIxtBWhi6YofeS7odej8DpWK+JbTQ8pcgvu
 vXDic9xc1Fofx0lOifnOL3qDSjgBi9rIn+mWgjZPwetGqZ8xgePxKhuSG8pJKad38Ij+
 ZzCqZsAEmFXq/dgOweV8ncjg/lAOiAu8rtwqvQTr2lY8UYNJXbubpar/xg97sc9YSsh3
 QMgBA/Mz+TAx8HZzuRsAV1iC4C+3sBI/eU+YUW02pkjg4svumvnFjqm30doFH0rshiJP
 V0vw==
X-Gm-Message-State: APjAAAXHm1a7dNvdDOxsfsV1PCe2MnpKbRm2rtLRT4qan1tO3Jg/VaE5
 TcyMz94qtGnBVRtDunNyDg==
X-Google-Smtp-Source: APXvYqzkH8Tnp7m9jxTvF2W3kkBnlZgivGKMGBtOnCdqqnMHosHOQ0blCrKEmssR6DnsieQ9XjyLqw==
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr67931100iot.141.1563839365957; 
 Mon, 22 Jul 2019 16:49:25 -0700 (PDT)
Received: from localhost ([64.188.179.254])
 by smtp.gmail.com with ESMTPSA id m4sm36990247iok.68.2019.07.22.16.49.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 22 Jul 2019 16:49:25 -0700 (PDT)
Date: Mon, 22 Jul 2019 17:49:24 -0600
From: Rob Herring <robh@kernel.org>
To: dongchun.zhu@mediatek.com
Subject: Re: [RFC,V2,1/2] media: dt-bindings: media: i2c: Add bindings for
 OV02A10
Message-ID: <20190722234924.GA22604@bogus>
References: <20190704084651.3105-1-dongchun.zhu@mediatek.com>
 <20190704084651.3105-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704084651.3105-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_164930_922207_083485ED 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com,
 --to=drinkcat@chromium.org, tfiga@chromium.org, louis.kuo@mediatek.com,
 sj.huang@mediatek.com, linux-mediatek@lists.infradead.org,
 sakari.ailus@linux.intel.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 04, 2019 at 04:46:50PM +0800, dongchun.zhu@mediatek.com wrote:
> From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> 
> Add device tree binding documentation for the OV02A10 camera sensor.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../devicetree/bindings/media/i2c/ov02a10.txt      | 43 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 ++++
>  2 files changed, 50 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> 
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> new file mode 100644
> index 0000000..d40aa87
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> @@ -0,0 +1,43 @@
> +* Omnivision OV02A10 MIPI CSI-2 sensor
> +
> +Required Properties:
> +- compatible: shall be "ovti,ov02a10"
> +- clocks: reference to the xvclk input clock
> +- clock-names: shall be "xvclk"
> +- avdd-supply: Analog voltage supply, 2.8 volts
> +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> +- dvdd-supply: Digital core voltage supply, 1.8 volts
> +- reset-gpios: Low active reset gpio
> +
> +The device node shall contain one 'port' child node with an
> +'endpoint' subnode for its digital output video port,
> +in accordance with the video interface bindings defined in
> +Documentation/devicetree/bindings/media/video-interfaces.txt.
> +The endpoint optional property 'data-lanes' shall be "<1>".
> +
> +Example:
> +&i2c4 {
> +	ov02a10: camera-sensor@3d {
> +		compatible = "ovti,ov02a10";
> +		reg = <0x3d>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&camera_pins_cam1_mclk_on>;
> +
> +		clocks = <&topckgen CLK_TOP_MUX_CAMTG2>,
> +			<&topckgen CLK_TOP_UNIVP_192M_D8>;
> +		clock-names = "xvclk", "freq_mux";
> +
> +		avdd-supply = <&mt6358_vcama1_reg>;
> +		dvdd-supply = <&mt6358_vcn18_reg>;
> +		dovdd-supply = <&mt6358_vcamio_reg>;
> +		pwdn-gpios = <&pio 107 1>;

Not documented. If you need this, use 'powerdown-gpios' instead.

> +		reset-gpios = <&pio 109 1>;
> +
> +		port {
> +		   ov02a10_core: endpoint {
> +		       remote-endpoint = <&ov02a10_0>;
> +			   data-lanes = <1>;
> +			};
> +		};
> +	};
> +};
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 5cfbea4..62b81ff 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -11571,6 +11571,13 @@ T:	git git://linuxtv.org/media_tree.git
>  S:	Maintained
>  F:	drivers/media/i2c/ov13858.c
>  
> +OMNIVISION OV02A10 SENSOR DRIVER
> +M:	Dongchun Zhu <dongchun.zhu@mediatek.com>
> +L:	linux-media@vger.kernel.org
> +T:	git git://linuxtv.org/media_tree.git
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> +
>  OMNIVISION OV2680 SENSOR DRIVER
>  M:	Rui Miguel Silva <rmfrfs@gmail.com>
>  L:	linux-media@vger.kernel.org
> -- 
> 2.9.2
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
