Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F0F01B9B45
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:57:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RxcSnVbF7Mn/rXxJiwb5UjPgJi9IJFW18iiZxIMv/HQ=; b=j/tfthVF54hzED
	StO1V+JtfK+F9j/u2FVf9r1sFBJ0XjQqiYPNezjR0VEHL1f0wC9Swo3X13+xksG/QCKy4l/MRWWUw
	KYyAc0Qap7486P/LxKNWNmF1XILbEUs804Ar7BvqBktmf3jRAS+YNebClYx29WEuE2WkhygMYpzDI
	YBBf6d2pbY70RNFPrkVECnYRaTNL4JBHN/fn0QHIUpz9fCSYYgY8YRJGLS2YYKTFjzJC3gDmBTbCA
	AObFpYWcSnTDbEeS1C3hKdJIOH8Ouvpl0lbqEbUZdUCJKja9Ms4FobZ3MLd2ljbs/fi4m+7IPMUH9
	wjKSLKa+5z9jjv1L/egQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSzZr-0005FJ-FG; Mon, 27 Apr 2020 08:57:23 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSzZe-0005DQ-QZ; Mon, 27 Apr 2020 08:57:12 +0000
Received: by mail-wm1-x341.google.com with SMTP id z6so19545737wml.2;
 Mon, 27 Apr 2020 01:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Jcofdwz9+t05uTAvna4ymutVAwmekuIi4pNGc9/MH88=;
 b=Q5d4M2jz0Wl+6clQyaBEO2kE27ihpH/n/zKCNoR5NFAAQD625a4A/+auWeg6qrJawA
 jGR2qBn0JrZnYf7qSaaPjd+QHediUI2IHZMSBuRMhYjEYXJF/abFd8uW6qj3Q4k/2FIc
 HfOyQQFh7Om6oOkXvwLf00BmlW6ynC3vAylSpTpgjxiaMSxlssL1culT6yEle+zkt+G7
 VWBMAI6HDXZNoIv1OZLghE1QmeHNhmQ06ca2JAS9uWxvSmCtibky3Aj9f2WMJnQAe9E3
 Wgo4xlTuB9g6fG1VUUti0HpHlJBu1+C5r6cQlAs1aTEfXIAnzU7vlviA5I9kmmKntLoa
 86pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Jcofdwz9+t05uTAvna4ymutVAwmekuIi4pNGc9/MH88=;
 b=KimuCfCuVGoEKFPNawypY2J/WHB3n1b6jpBqYrt6NFOJRDxoZ0lXmP3sqawbR8E1sh
 TnVZ7HeDbWpv5IA3ayK14+0isheCza/C/TzfpfGT4eJYos3+HIya8JMkjshR9ZvNXaqM
 Nq9dt/CqqxFw2IKfHQUaGXqkPCwEWq3+Z0OuDkY0rtuNy+Ckeq/BJxm1Ffhxw3U77YJN
 1soLPAm+7AlT3RaaPgR4kc4ETd+AAMxf57MoE93sZgGmxBmZvUpEbAQ6Ki5tuhigmaW+
 93hMgRdUTN65hlN4ATlfFzUqTL6sgxnQIm9T8tQeW9nu8hZ93qksnieglV4OJhMSdhrW
 J99A==
X-Gm-Message-State: AGi0PuYlptp3Bk25pTjq20k0SzlDw8s/y9grXgnAFuCoZcjMJ9lMTJsX
 mhwO+fRSfQxGpf8uniS5RsA=
X-Google-Smtp-Source: APiQypIwXrjjInfbjfDk9B1skhirM2+uI+xE5YfNG3+dy/5UjcY8PBtYZfDkyuRvwRt/tiB7c3z8UQ==
X-Received: by 2002:a05:600c:2046:: with SMTP id
 p6mr25177578wmg.177.1587977829209; 
 Mon, 27 Apr 2020 01:57:09 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id i129sm15502103wmi.20.2020.04.27.01.57.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Apr 2020 01:57:08 -0700 (PDT)
To: wens@kernel.org
References: <20200427073132.29997-3-wens@kernel.org>
Subject: Re: [PATCH v2 2/3] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <684132b8-4a84-8295-474b-38ccb992bba7@gmail.com>
Date: Mon, 27 Apr 2020 10:57:06 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200427073132.29997-3-wens@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_015710_859540_B844DA73 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, pavel@ucw.cz,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 wens@csie.org, robh+dt@kernel.org, jacek.anaszewski@gmail.com,
 linux-leds@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Chen-Yu,

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

This changes an existing nodename into something that is still not the
preferred way. In the current Rockchip dts there are nodenames like
'work', 'yellow' that causing warnings with the command:

make -k ARCH=arm dtbs_check

Could you give a generic guide line/example, so all these changes are
treated the same way? As if the naming follows the preferred 'led-0' line.

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
> 2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
