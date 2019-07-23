Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D5F771321
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 23 Jul 2019 09:42:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o3W6YZJ9H9BjsR8sQ1IjI8eTyaMYAVn29MtIOKGO1Jc=; b=p8oLgMqVsGsjt7
	Bsrk3NthFsPBD3bHD3f+FFHINL7sJ8nMAEQdNyFYG1WiRXsoVPu/5bxqgQOO/xl+5OxulWnoVUSY2
	QlF1/w6cpOEVYFLLSgW+PE/ObjKy7+OIejUjc8bUELodOufJXBFDUape/s/2nr/HgXY7DMgeFgfIO
	zB4RDircil5A2d7qlCnoQbcfYYLNiakxnpTTVVBqOJqx31sKcV0Teco1nINB296HFZaAxLaWS3CI6
	SK7gPCA26escXF6l5LMFBz86IzTyPhCC9D3R0Ju1xDgasF9WL0V+/xAs9TFvGT2sP+9ZVdY5KCm0q
	sraBbsarJMuTCmVDLuhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hppRI-0001Dq-9k; Tue, 23 Jul 2019 07:42:24 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hppQw-0001DB-Md; Tue, 23 Jul 2019 07:42:04 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 00:41:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,298,1559545200"; d="scan'208";a="169481701"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by fmsmga008.fm.intel.com with ESMTP; 23 Jul 2019 00:41:54 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 981F4206FC; Tue, 23 Jul 2019 10:41:54 +0300 (EEST)
Date: Tue, 23 Jul 2019 10:41:54 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: dongchun.zhu@mediatek.com
Subject: Re: [RFC,V2,1/2] media: dt-bindings: media: i2c: Add bindings for
 OV02A10
Message-ID: <20190723074153.GA4606@paasikivi.fi.intel.com>
References: <20190704084651.3105-1-dongchun.zhu@mediatek.com>
 <20190704084651.3105-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190704084651.3105-2-dongchun.zhu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_004202_778309_87A01DFE 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Dongchun,

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

How many lanes does the module (or the sensor) have?

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
> +		reset-gpios = <&pio 109 1>;
> +
> +		port {
> +		   ov02a10_core: endpoint {
> +		       remote-endpoint = <&ov02a10_0>;

Indentation is still wrong. :-(

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

-- 
Kind regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
