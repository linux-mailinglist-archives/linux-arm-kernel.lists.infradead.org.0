Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2851119F311
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Apr 2020 11:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:Subject:References:To:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rh7Mzh82wN2R5mfUlRPtq/0WeSZoVrNhbCvDXKJWDbs=; b=aVrLALikXp5ydh
	V+T2IUBtCFWIouNv3xVvuKBH7QrRa4OBUYLZcWOo6UFbY0ri0dttdDWvceLgIgDAqKp+Eu399TUd/
	Td2xcs0mhz2zkgq+sr0Kpv+loVIprBDv4Rd3lNF6mZtmBHHZQ9hpLA+8hxnHc92aLeHTbo8iRbV8F
	r+xf9EApUgi29HEZi+RSxuMjcZqzWO1Yn+GOPitvr2YL5q2GFHr9WC1haGb05YhaFTYJs8DWKXULo
	DOKAFkGETVF8HehWwAacyygGIgUdbTWyvragy2C6BiDde5JOLjxshPzk4JdJbOV5JJGabgewKx7JM
	xWhC2hifWAqTDgBa47Sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLOVK-0005Sq-D5; Mon, 06 Apr 2020 09:57:18 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLOV8-0005Rc-R7; Mon, 06 Apr 2020 09:57:08 +0000
Received: by mail-wr1-x443.google.com with SMTP id h9so16650207wrc.8;
 Mon, 06 Apr 2020 02:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=to:cc:references:subject:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=FvEi+v8qZ6wRx1mCm/iC1sBfa5p8W6TIxjoeXPWIu2Q=;
 b=vEZ2wNARNNG/UR7JHYBp4KiNBSoFde3bLdpN9GMUsmvYX57lbUKfJHpc/r2cTubTpP
 jRBX+4Lre5qkFI2ENdU1t3IgZ1t3rfVgokDYliC7NtymTR/ksf0iwzLnQkbvUH/sw3Om
 AE3OA0r2/6qWDEAu7YdxTogwiNHyHDfV2Oae8xhs9TVu7u0YmLRhKQuwB21+lCFKJWlq
 fAdVEVoWJNyPiHivCpbvgL9XXTBOf+MzNyRdLdKRkyCpr6Ee0nbq34I2ltbqhxDC1ZZF
 A4SXyvv9hpePr1jYYbfc9sDH9iJ8IJcpmbV+ZzE7CgJoRpgrUpDW888LTtk+8AHqLYF5
 jTrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:to:cc:references:subject:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FvEi+v8qZ6wRx1mCm/iC1sBfa5p8W6TIxjoeXPWIu2Q=;
 b=FHvBJjYElt/8s6RPokYKqhDHET83DIchsrp5cjwQCZ7GGpZUUonobv1xvAgJ2Nt83b
 veDMeaXasOsmTXLNM3GvSFgML1yAciHqmg9+MQ0cfajAWrh87vwnrGjY/ZkG0HON7dhv
 rKDuGGc+IKnqjkk/1Pefcr5dMXboD1k98T5+DVijAx1rMqYVI6l4b1736Ruf1uujk/5y
 u7cVOceEcGhQnZXS5sEauCR9zEqfOCzVKF6Ll/ppwKTQl6ss17T2iF3/29CNP4WC+Saa
 Tmx8+gGKeFOwaLQsrV/Sm264BdDj9Mn5Tq+y+wZW/5CJxBgOUyy+0bq9i7FCER1A37wa
 UF+g==
X-Gm-Message-State: AGi0PuYFaR4pbO0GlGPn8CDaxYm0/Npb8hM+H3k70YLrLpSiZF4Sd8h1
 43KmCVK7lhs069ERPc/olmgDM6z/
X-Google-Smtp-Source: APiQypKOYgFbX4rIA4V65ymFGi6FWm5SoeTA/SifEwSIIg4ZrWipB3EBywllK0pF5ZWsglTTIlRd2Q==
X-Received: by 2002:adf:a459:: with SMTP id e25mr15750030wra.402.1586167025240; 
 Mon, 06 Apr 2020 02:57:05 -0700 (PDT)
Received: from [192.168.2.1] (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f187sm25107141wme.9.2020.04.06.02.57.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 06 Apr 2020 02:57:04 -0700 (PDT)
To: justin.swartz@risingedge.co.za
References: <20200405110022.3849-1-justin.swartz@risingedge.co.za>
Subject: Re: [PATCH] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <e602c1b8-3606-a8d3-c64c-ec9e58315974@gmail.com>
Date: Mon, 6 Apr 2020 11:57:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200405110022.3849-1-justin.swartz@risingedge.co.za>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_025706_881481_ADA2BCA8 
X-CRM114-Status: GOOD (  18.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Justin,

Have a look at the documents:

Documentation/devicetree/bindings/mmc/rockchip-dw-mshc.yaml
Documentation/devicetree/bindings/mmc/synopsys-dw-mshc-common.yaml
Documentation/devicetree/bindings/mmc/mmc-controller.yaml

Fix &emmc as well.

> From: Justin Swartz <justin.swartz@risingedge.co.za>
> To: Heiko Stuebner <heiko@sntech.de>,
> 	Rob Herring <robh+dt@kernel.org>,
> 	Mark Rutland <mark.rutland@arm.com>
> Cc: Justin Swartz <justin.swartz@risingedge.co.za>,
> 	linux-arm-kernel@lists.infradead.org,
> 	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
> 	linux-kernel@vger.kernel.org
> Subject: [PATCH] ARM: dts: enable WLAN for Mecer Xtreme Mini S6
> Date: Sun,  5 Apr 2020 11:00:21 +0000
> Message-ID: <20200405110022.3849-1-justin.swartz@risingedge.co.za> (raw)
> 
> The Mecer Xtreme Mini S6 features a wireless module, based on a
> Realtek 8723BS, which provides WLAN and Bluetooth connectivity via
> SDIO and UART interfaces respectively.
> 
> Define a simple MMC power sequence that declares the GPIO pins
> connected to the module's WLAN Disable and Bluetooth Disable pins
> as active low reset signals, because both signals must be deasserted
> for WLAN radio operation.
> 
> Configure the host's SDIO interface for High Speed mode with 1.8v
> I/O signalling and IRQ detection over a 4-bit wide bus.
> 
> Signed-off-by: Justin Swartz <justin.swartz@risingedge.co.za>
> ---
>  arch/arm/boot/dts/rk3229-xms6.dts | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/rk3229-xms6.dts b/arch/arm/boot/dts/rk3229-xms6.dts
> index 679fc2b00..cdfcef41b 100644
> --- a/arch/arm/boot/dts/rk3229-xms6.dts
> +++ b/arch/arm/boot/dts/rk3229-xms6.dts
> @@ -39,6 +39,12 @@
>  		};
>  	};
>  
> +	sdio_pwrseq: sdio-pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpio2 26 GPIO_ACTIVE_LOW>,
> +		              <&gpio2 29 GPIO_ACTIVE_LOW>;
> +	};
> +
>  	vcc_host: vcc-host-regulator {
>  		compatible = "regulator-fixed";
>  		enable-active-high;
> @@ -202,6 +208,18 @@
>  	status = "okay";
>  };
>  
> +&sdio {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cap-sdio-irq;

> +	disable-wp;

Not used in combination with sdio and emmc.

> +	mmc-pwrseq = <&sdio_pwrseq>;
> +	non-removable;

> +	num-slots = <1>;

Deprecated.

> +	vqmmc-supply = <&vccio_1v8>;
> +	status = "okay";
> +};
> +
>  &sdmmc {
>  	cap-mmc-highspeed;
>  	disable-wp;
> -- 
> 2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
