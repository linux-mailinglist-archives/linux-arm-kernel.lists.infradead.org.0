Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51E4B195499
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 10:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GXA2oa4trSqCncUF0FM45ZryoQi6YCVJKp1yORci5EA=; b=hllmXeb7uJj30M
	Zs2rokF2GaIhCM2SsBlzfttGD+DvzxdM/HWAHXp0hc3VbU5xzqCXAZCKSjYrEZuPyB5b6M9CPTKJg
	LGyErS55I2l2Kv2qoRTO5rX6eE7MdxaMc4ytS6aR/7+FLxB2qGLV1l0tamKgR8js4xUQ9YY1J29wg
	dwQh9WgizkCyY8PeOL+jWSP6vOELB3CBhAbaAWARzeI4paAHG3pq0Azwsues6Dnk3OcDOOdo4Lbkx
	ZabPL8MkgXNuc6dtva+t1RkCZV0eal+Zfe1mYOdhfys3sEEt5HTc8JnTQGfb1vEQKqJJTwV3EcCmf
	uo2cag04Nb0dpK5Y/yZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHll6-0006yb-2V; Fri, 27 Mar 2020 09:58:36 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHlkw-0006x5-Ha; Fri, 27 Mar 2020 09:58:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id m11so4741365wrx.10;
 Fri, 27 Mar 2020 02:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bcArWLKO9gfS9yL0ZKsjHCpsyjSMPm/VjOI4JkSoq3E=;
 b=GpPQrDbw/IAnWIIEIIEqlGvJ5p9qqvos443bO3SjGfFlqI5ayDKJICbICXHECKygIX
 8kUA1/dtP53vDcyhoKuwd1ySYMH8Gunv3rzIz+q+3EEP9dOpoRJUknnJzSo2CgdA9OBt
 g8zW3peo9OrCsNNvmllmzqKa5jqD/O1+5OBjBV9YpSv251uZo/9Y/B1BGVs9oSmKdiXb
 Z32JnGiS6duI/3g1nXMWffY6jpbFe6q0YmwotUWYRp88OxYstP9uS3V0u+RczDTho2cg
 B1fcf27IDtmm1ZZ2ijilv89Kxl4FavPiiKtfefsMcoc00bBntzClc9svrFbckvjF6g6Z
 zYLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bcArWLKO9gfS9yL0ZKsjHCpsyjSMPm/VjOI4JkSoq3E=;
 b=eq1i6kcvbtetlkIrevMWD+1DdEzaN2OVdK8CTRZbltko/Hh4Lc6G2nDQVI7ZdoNdU1
 fIT6zVr0SarnBnSnk/IfOLtI//4jlGHzFlryRzvLVIViWzqJSMURQYDQtj+2RcbHs0X1
 DWUQLAxSSv0c+K84eXnKaNDNPtyZGSJE4bECrFFMtXduvUBdrZLytzBhOZVZGY8bhj/H
 AuL4xNFgIHD7kQtGdeMpPJwJPv7JE6XL2TbnV8jKOtxbycjHEWyMrkqGZI4qgEvepF47
 aGqHlfDJ4O3LUPu847ayW3e+vNpZ1R8OWIC5hXdGGavK+rH8Aytx7f29b78PnGVCYKkY
 FG5w==
X-Gm-Message-State: ANhLgQ0UxZFhIrXAnrTdZr/0nHlkRbaQrvvfh5p5FfYNFDKTTfSWL1Qo
 QX2g+0Mld/Y/M3aZw0UeHNM=
X-Google-Smtp-Source: ADFU+vvKZfMOqNUJZ4uhISq6XNpwcMVRpDU3ieIyScDuSXDwquFHmAA9qExS6vclylLaSiMNsr4rkA==
X-Received: by 2002:adf:a55b:: with SMTP id j27mr5645578wrb.418.1585303103675; 
 Fri, 27 Mar 2020 02:58:23 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i4sm7826034wrm.32.2020.03.27.02.58.22
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 27 Mar 2020 02:58:23 -0700 (PDT)
To: wens@kernel.org
References: <20200327030414.5903-2-wens@kernel.org>
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
Date: Fri, 27 Mar 2020 10:58:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200327030414.5903-2-wens@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_025826_583605_27AE8355 
X-CRM114-Status: GOOD (  16.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: heiko@sntech.de, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chen-Yu Tsai,

The led node names need some changes.
'linux,default-trigger' value does not fit.

From leds-gpio.yaml:

patternProperties:
  # The first form is preferred, but fall back to just 'led' anywhere in the
  # node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":
    type: object

Rename led nodenames to 'led-0' form

Also include all mail lists found with:
./scripts/get_maintainer.pl --nogit-fallback --nogit

devicetree@vger.kernel.org

If you like change the rest of dts with leds as well...

  DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
yellow-led:linux,default-trigger:0: 'mmc0' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
diy-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
  DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
  CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']

make -k ARCH=arm64 dtbs_check
DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml

> From: Chen-Yu Tsai <wens@csie.org>
> 
> With SDIO now enabled, the numbering of the existing MMC host controllers
> gets incremented by 1, as the SDIO host is the first one.
> 
> Increment the numbering of the MMC LED triggers to match.
> 
> Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine")
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
>  2 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> index 2acb3d500fb9..f0686fc276be 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
> @@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
>  	};
>  };
>  
> +&diy_led {
> +	linux,default-trigger = "mmc2";
> +};
> +
>  &pcie_phy {
>  	status = "okay";
>  };
> @@ -91,3 +95,7 @@ &uart0 {
>  	pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
>  	status = "okay";
>  };
> +
> +&yellow_led {
> +	linux,default-trigger = "mmc1";
> +};
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> index 9f225e9c3d54..bc060ac7972d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
> @@ -70,14 +70,14 @@ work-led {
>  			linux,default-trigger = "heartbeat";
>  		};
>  
> -		diy-led {
> +		diy_led: diy-led {
>  			label = "red:diy";
>  			gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>  			default-state = "off";
>  			linux,default-trigger = "mmc1";
>  		};
>  
> -		yellow-led {
> +		yellow_led: yellow-led {
>  			label = "yellow:yellow-led";
>  			gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>  			default-state = "off";
> -- 
> 2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
