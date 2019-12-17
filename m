Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77EE1122271
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 04:16:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrOyLsGBlVE9YuQTR4NYQRHwunlNpoYDeqvauXZmnBw=; b=lDNgbnTq2puSsu
	TxwSyV7GXd+LEkNncLJYH7gc4O1VH4Dxlv70lnV/w/Okvgv6o0jL+zCAfYlZyoaNvbt1Narens4yn
	JVBYeZOg7k/I/tbG7vtwdddOeVKXCZK4wYHE11JzBQJfPiA+r5zyClKSD6La0O/ZEq2DUzjITgJ7D
	XsrihFenDTp4waIoTZoT7aVSyqGynqgpUHwYiFS2EhWAtuRxEdsS85aPxTkmrcv1LCIk5uz4XpH5Z
	dTbtkinGOXn6CP1qI/p/W9AwXGCCZZc0IDT4C06fhqug7/gSbtgS+RI0cVg1SF9quILFA91BNQtQn
	I2do/7ARd3C55jA8ZDgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih3LF-0005lZ-2C; Tue, 17 Dec 2019 03:16:09 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih3L2-0005kD-Rm
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 03:15:58 +0000
Received: by mail-ed1-x541.google.com with SMTP id c26so6799507eds.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 19:15:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=n0ZmwEm6Y6IwUNMyCmLhctNeiL5+CELSaD2v2htB66s=;
 b=fdc0aNMBWxJTW2PEAzGSAqifbgjBKEGNsA83zAQTv4XrOWu8k3huPlqJjfm6WWctrt
 m4CRNAl6K2fyr+zXGgjS4R9A+artZqjGeUxuOsfVu9vXMB6oyAdGC6KwqqnzjhPb5RtE
 J0ycsSMk8hWQiHfKoA7ZxyFv25arNi9EhcHWE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=n0ZmwEm6Y6IwUNMyCmLhctNeiL5+CELSaD2v2htB66s=;
 b=NYoV8oEB1GZYjEZHJG/9qm5VKJlOk97m2YlbGgd18lFwj1QC1c14VPivweuiA/L/3Z
 2TT/S4lRA1L3K9wokisjFmcrB+98tby0c7RVa/SSDlVvnlhhJrWQYQ+ViFqm8TRtbWVd
 Rbb3CZh/9brHH9Z3HF94JPYoKwRXDdmCyqOsmmP+K+N3mFEdBUiNMIIxewH66ESYMss9
 gw1vfSWeb47cbMKgw04ZVPXhMT5FpzNnXk6x/vgeFuOL+Bb8InoQHT82fCA499/tVSKr
 WSHSnUy4EL9tq34Sq87fV4zS59SO1RnanMoysoBYbit4X6XnO3Dc4Y4XWI88dYnPo32a
 R3eQ==
X-Gm-Message-State: APjAAAUicfF4prm2+V3xP1NmL9Gn3Lao9gOcdaRFM1IsX5K2vXvztJOZ
 vfRrbwMFENMd/DGhVBDOj5gXwGt2tcEgbw==
X-Google-Smtp-Source: APXvYqw6ucvkJwT726SbSM+P2K0iJV2Q6QRfZEt0AcREIubJWQhOkmQM1jIWUQx3L4olhgOIJyNfAA==
X-Received: by 2002:a17:906:23e2:: with SMTP id
 j2mr2703656ejg.257.1576552554522; 
 Mon, 16 Dec 2019 19:15:54 -0800 (PST)
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com.
 [209.85.221.43])
 by smtp.gmail.com with ESMTPSA id m27sm583257eda.96.2019.12.16.19.15.52
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 16 Dec 2019 19:15:52 -0800 (PST)
Received: by mail-wr1-f43.google.com with SMTP id b6so9705221wrq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Dec 2019 19:15:52 -0800 (PST)
X-Received: by 2002:adf:f803:: with SMTP id s3mr33909150wrp.7.1576552551964;
 Mon, 16 Dec 2019 19:15:51 -0800 (PST)
MIME-Version: 1.0
References: <20191211112849.16705-1-dongchun.zhu@mediatek.com>
 <20191211112849.16705-2-dongchun.zhu@mediatek.com>
In-Reply-To: <20191211112849.16705-2-dongchun.zhu@mediatek.com>
From: Tomasz Figa <tfiga@chromium.org>
Date: Tue, 17 Dec 2019 12:15:40 +0900
X-Gmail-Original-Message-ID: <CAAFQd5AnWZqjQEVvw8gv7JzOBHxJvsOWaGrbY8CXQ_87ap-ahA@mail.gmail.com>
Message-ID: <CAAFQd5AnWZqjQEVvw8gv7JzOBHxJvsOWaGrbY8CXQ_87ap-ahA@mail.gmail.com>
Subject: Re: [V6,
 1/2] media: dt-bindings: media: i2c: Document OV02A10 bindings
To: Rob Herring <robh+dt@kernel.org>, Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_191556_927223_D372AB2F 
X-CRM114-Status: GOOD (  21.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 andriy.shevchenko@linux.intel.com, Louis Kuo <louis.kuo@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob, Dongchun,

On Wed, Dec 11, 2019 at 8:29 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Add DT bindings documentation for Omnivision OV02A10 image sensor.
>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
>  MAINTAINERS                                        |  7 +++
>  2 files changed, 61 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/ov02a10.txt
>
> diff --git a/Documentation/devicetree/bindings/media/i2c/ov02a10.txt b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> new file mode 100644
> index 0000000..18acc4f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> @@ -0,0 +1,54 @@
> +* Omnivision OV02A10 MIPI CSI-2 sensor
> +
> +Required Properties:
> +- compatible: shall be "ovti,ov02a10"
> +- clocks: reference to the eclk input clock
> +- clock-names: shall be "eclk"
> +- dovdd-supply: Digital I/O voltage supply, 1.8 volts
> +- avdd-supply: Analog voltage supply, 2.8 volts
> +- dvdd-supply: Digital core voltage supply, 1.8 volts
> +- powerdown-gpios: reference to the GPIO connected to the powerdown pin,
> +                  if any. This is an active low signal to the OV02A10.

On the hardware level this pin is active high, i.e. the device is
powered down when the signal is high.

> +- reset-gpios: reference to the GPIO connected to the reset pin, if any.
> +              This is an active high signal to the OV02A10.

On the hardware level this pin is active low, i.e. the device is held
in reset when the signal is low.

However, there is some confusion around how the polarity flag in the
GPIO specifier is supposed to be used.

As per [1],

"The gpio-specifier's polarity flag should represent the physical
level at the GPIO controller that achieves (or represents, for inputs)
a logically asserted value at the device. The exact definition of
logically asserted should be defined by the binding for the device."

In this case it sounds like "logically asserted" means the device is
powered down or held in reset, respectively, which would suggest that
the specifiers should have GPIO_ACTIVE_HIGH and GPIO_ACTIVE_LOW
respectively. The latter would cause the GPIO subsystem to invert the
values set by the consumers, which would then be confusing from the
driver implementation point of view.

Should the pin be renamed to "nreset"? It would change the meaning of
"logically asserted" to "device is not held in reset" and so
GPIO_ACTIVE_HIGH (or 0) would be the right value to use.

[1] https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/gpio/gpio.txt#L83

Best regards,
Tomasz

> +
> +Optional Properties:
> +- rotation: as defined in
> +           Documentation/devicetree/bindings/media/video-interfaces.txt,
> +           valid values are 0 (sensor mounted upright) and 180 (sensor
> +           mounted upside down).
> +
> +The device node shall contain one 'port' child node with an
> +'endpoint' subnode for its digital output video port,
> +in accordance with the video interface bindings defined in
> +Documentation/devicetree/bindings/media/video-interfaces.txt.
> +
> +Example:
> +&i2c4 {
> +       ov02a10: camera-sensor@3d {
> +               compatible = "ovti,ov02a10";
> +               reg = <0x3d>;
> +               pinctrl-names = "default";
> +               pinctrl-0 = <&camera_pins_cam1_mclk_on>;
> +
> +               clocks = <&topckgen CLK_TOP_MUX_CAMTG2>,
> +                       <&topckgen CLK_TOP_UNIVP_192M_D8>;
> +               clock-names = "eclk", "freq_mux";
> +               clock-frequency = <24000000>;
> +
> +               dovdd-supply = <&mt6358_vcamio_reg>;
> +               avdd-supply = <&mt6358_vcama1_reg>;
> +               dvdd-supply = <&mt6358_vcn18_reg>;
> +               powerdown-gpios = <&pio 107 GPIO_ACTIVE_LOW>;
> +               reset-gpios = <&pio 109 GPIO_ACTIVE_HIGH>;
> +               rotation = <180>;
> +
> +               port {
> +                       /* MIPI CSI-2 bus endpoint */
> +                       ov02a10_core: endpoint {
> +                               remote-endpoint = <&ov02a10_0>;
> +                               link-frequencies = /bits/ 64 <390000000>;
> +                       };
> +               };
> +       };
> +};
> diff --git a/MAINTAINERS b/MAINTAINERS
> index bd5847e..92a868c 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -12130,6 +12130,13 @@ T:     git git://linuxtv.org/media_tree.git
>  S:     Maintained
>  F:     drivers/media/i2c/ov13858.c
>
> +OMNIVISION OV02A10 SENSOR DRIVER
> +M:     Dongchun Zhu <dongchun.zhu@mediatek.com>
> +L:     linux-media@vger.kernel.org
> +T:     git git://linuxtv.org/media_tree.git
> +S:     Maintained
> +F:     Documentation/devicetree/bindings/media/i2c/ov02a10.txt
> +
>  OMNIVISION OV2680 SENSOR DRIVER
>  M:     Rui Miguel Silva <rmfrfs@gmail.com>
>  L:     linux-media@vger.kernel.org
> --
> 2.9.2

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
