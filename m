Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6C021842B4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 09:32:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tq3h8ETp4ZCKrAytswHwMbk1XFkZrXL3yyaI87rcBB4=; b=fG7dq3KucfKBqF
	cKZQPsqt7YwGqDnoaA2TpvFFbF2OMMNDQwCPZIfqxx/478GAeX6uNUFi514/QX8DleLFOkXHDeDtu
	Bf1zmuBCD0XJWZJEFbNfNDe1LcAiyX0NR51GPEMvaR6Ih4Kad4bKP6EgiNVoPTRpx8PyB/fvtvp31
	9wUbMy4qFPwQY+c3Km7mhnApl4QG3For9ZKm7+3Di8rrGKEyM/OFp16ZA9H8/7JEi0u2F5LzCaTFf
	bNU2/JdVQWxa0MCuhv1wkLGW+blWi1KC67QuVz9YygN/Q3uhLPqRNAhmr3m+U/XAaqjTtILZCtDXK
	XgwmXdXN/7PacqDepTWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCfkH-0001Hd-9m; Fri, 13 Mar 2020 08:32:41 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCfk7-0001GQ-2Q; Fri, 13 Mar 2020 08:32:32 +0000
Received: by mail-wm1-x343.google.com with SMTP id 11so8916570wmo.2;
 Fri, 13 Mar 2020 01:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=YOjRw+C/n7E7oX+y3x4aSohu3eoOKr98HtVKwmdSAa4=;
 b=h/J4nlTWt0nrIB0e5vOXjzg4dei8f3MbKT7FrmAgrJ17CJ2JgoLp7E5jP9iyeB7/TK
 8j+vk99Yi4sSnia6lKaFs2yZd7kN3BJUzA3ibmGJizd9MybjhPCpM1DQxml1f+UckGaa
 bLVCTNz00BwGw1kbYepy0UllCfMMZxdXSqoWILxrPgCFTYB4LuM/8xPnmEU9pR8Rm8Nm
 RItxLPXcWUE97QScsbsj3G7VvB+fJVCZj/xbAZaoOiSxpernmqx2D23bDdohKMLQYK0t
 axQ90bnZNUy8KVEpLLLkhNBg9MyO/8DBz/ME1wT3dUdIfHtVC/l7PhL8ifz67tHK/G/T
 75sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YOjRw+C/n7E7oX+y3x4aSohu3eoOKr98HtVKwmdSAa4=;
 b=j6xrjQPMmnw+f+D76xS08IxmTz3KB1PtjYBKTzqW6Du0mj1NuuGQ7NDKBqvmU/Dc5p
 H92d2rv9y62m6ZNz/wG4YR79Qlx7i31yVeONaiU73jDeKlDl1YzLx0YN+xRVXYZdLZNx
 uDyiX4Vo12wQL2cPj6uXgpxxOWaLnn+h+q4cWkd2olhINoxTN8eZuA+3O761xB4BX2lS
 qaxZApz66R5Y0P4bVNGWGVOsWRNZj9cuyyFgMioXWZEDlb9UNzn1zvYW/Edtndb88Pyq
 T6f99FQC/Er8MgJKr9Zyuy2GoiA5gmwRqdyfA0GQgARtKYG8sljPoDIjjR3QpmbAUL0j
 iZnw==
X-Gm-Message-State: ANhLgQ3oC/DJ2MMXwf9kasCDW5AuObVqvxAA19SGTG6tY66rEcBzHPRz
 NIYiTDx4hgBej/YfqXh44hE=
X-Google-Smtp-Source: ADFU+vs1FL/6bDgN+NsmfFq6d3hMjZ5VBsz8S+087YMkOLZhXOVbxR4B1049/l8ONxxTnnk72txSGA==
X-Received: by 2002:a7b:cb97:: with SMTP id m23mr9351116wmi.140.1584088349511; 
 Fri, 13 Mar 2020 01:32:29 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id h10sm4144167wrb.24.2020.03.13.01.32.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 13 Mar 2020 01:32:29 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: rockchip: Add Hugsun X99 IR receiver and
 power led
To: Vivek Unune <npcomplete13@gmail.com>, robh+dt@kernel.org,
 mark.rutland@arm.com, heiko@sntech.de, ezequiel@collabora.com,
 akash@openedev.com
References: <20200313000112.19419-1-npcomplete13@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <7f294dd5-3188-e2d6-dd49-4b2afb04455a@gmail.com>
Date: Fri, 13 Mar 2020 09:32:27 +0100
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200313000112.19419-1-npcomplete13@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_013231_140364_757011D7 
X-CRM114-Status: GOOD (  16.08  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vivek,

The 'power-led' need some changes.

From leds-gpio.yaml:

patternProperties:
  # The first form is preferred, but fall back to just 'led' anywhere in the
  # node name to at least catch some child nodes.
  "(^led-[0-9a-f]$|led)":
    type: object

Test with:
make -k ARCH=arm64 dtbs_check

arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dt.yaml: leds:
power-led:linux,default-trigger:0: 'none' is not one of ['backlight',
'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']

On 3/13/20 1:01 AM, Vivek Unune wrote:
>  - Add Hugsun X99 IR receiver and power led
>  - Remove pwm0 node as it interferes with pwer LED gpio

pwer => power

>    Also, it's not used in factory firmware
>    

> Tested with Libreelec kernel v5.6

Test with linux-next.

git clone -- depth 1
https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git

> 
> Signed-off-by: Vivek Unune <npcomplete13@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3399-hugsun-x99.dts   | 37 +++++++++++++++++--
>  1 file changed, 33 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> index d69a613fb65a..df425e164a2e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
> @@ -29,6 +29,26 @@
>  		regulator-max-microvolt = <5000000>;
>  	};
>  
> +	ir-receiver {
> +		compatible = "gpio-ir-receiver";
> +		gpios = <&gpio0 RK_PA6 GPIO_ACTIVE_LOW>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&ir_rx>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&power_led_gpio>;
> +
> +		power-led {
> +			label = "blue:power";
> +			gpios = <&gpio4 RK_PC2 GPIO_ACTIVE_HIGH>;
> +			default-state = "on";
> +			linux,default-trigger = "none";
> +		};
> +	};
> +
>  	vcc_sys: vcc-sys {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc_sys";
> @@ -483,6 +503,18 @@
>  		};
>  	};
>  
> +	ir {
> +		ir_rx: ir-rx {
> +			rockchip,pins = <0 RK_PA6 1 &pcfg_pull_none>;
> +		};
> +	};
> +
> +	leds {
> +		power_led_gpio: power-led-gpio {
> +			rockchip,pins = <4 RK_PC2 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
>  	pmic {
>  		pmic_int_l: pmic-int-l {
>  			rockchip,pins =
> @@ -539,10 +572,6 @@
>  	};
>  };
>  
> -&pwm0 {
> -	status = "okay";
> -};
> -
>  &pwm2 {
>  	status = "okay";
>  	pinctrl-0 = <&pwm2_pin_pull_down>;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
