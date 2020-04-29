Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA631BE6FF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 21:11:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=axgbIPcyN+iwuvljj2WT1i5bncBDrh8eqeRhK4RQGVY=; b=JaEdQyzQXzQ74fuKMbHFP+iMLL
	Z6vXIadGi2bemtj0wSLeDBLOiHZaRvUozs0Sk/FYHyy6ytv4v1V6F/UksLeLuY/dOOMqn/ND4oo/L
	pekgoieWCq7/yQ7qwKHkUsUuvj/+ZIfFdDAZu/nn3WAU79oKAdDBC8BLWfIcYDAzqUTxjsnRUkVsZ
	J4AN3SIftxP2ZS9QHQyoKgUI0cDysaVJ1pZQeouGmKI3hFVSBIjptXb5q3aV7KN3aSsPSctb4JBOi
	W9J8eS7FZT7ssiW2B0OHs9TqrGpP2qkb6sBAANfaEV1E4nE+U/37Uo+lU3GuP2ITfSfcrxiatYOHz
	K7dDUtag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTs72-0005uj-J0; Wed, 29 Apr 2020 19:11:16 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTs6r-0005sO-51
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 19:11:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id i10so3885782wrv.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 12:11:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:subject:in-reply-to:date:message-id
 :mime-version; bh=HwBlAhl9IzjqWMkaY5fyYm/8tsGpWsJDdfPbj+qf/cw=;
 b=qcTL7rWJWMCsNYOvmkLnkfwL1OYQTFMr1oCDP+/LG+yoZ54Rb09KxnGDEhScoCYRWF
 H4Q948HySr2ev6c5+yXIJk0A7XgdS9Jt3n5zOvgZKwn5N+n/aQSPjIl4Gf4r4dHVsHSg
 RvkXVOyk5xjFz/WTsFhLoJro+kI6XofIpdZKh8fLCvAcvWp1ZRbzSB86WvgZ12nBDKN4
 awslm7Rk+FHcP8VphplAImX5lym/fvkXDhdhz7pvJ9MLmKnFP+K3Suau4ZfAzHeXFHz1
 iPHQ2IVMe8S4FWhMm2gEO/iyjzisibU4+dyYf1sMXI8acPoXKyG8lI9ahmeW+YAHoovv
 VOyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=HwBlAhl9IzjqWMkaY5fyYm/8tsGpWsJDdfPbj+qf/cw=;
 b=AeuKFvCIiFlGfCvmaHr5RaoLR74k7gKqwwiBm8frUHCipAI0IZGntbB9ucjIdPYj4l
 MzlWXO6aSoXoeABbss0RSHVfOkpfOk810/EXdGd/oDhOgho3GuHru/IMKYvLYFS969bx
 DcZyZX9p7nOVLkav1tWJjCO3bxV9F/rl9exUDd0Achemcevp+vMPQk3xI3nTLCe1bBe0
 ZWR/qn+e3kC5cK88LqMvTtUCnMqjPNKUJtcHQVkiUIDKVBJyyuOXjg39XgMUZMZHlInX
 gH9eGB9CP4nKeREJj8OfFzj+y+z1S7Ob5O/E4dw/jpTS+CruEsYFpBmmRP/nP0g5HXPu
 mN5g==
X-Gm-Message-State: AGi0PuaD//+NqNleBMmTemd6h2G1rn1yxattRnXB3yItsT1KTkHPwtlM
 dk6YyzykOCfJ5ZA2xM2Mehk/WA==
X-Google-Smtp-Source: APiQypKJQgl13isxg5O+xfkBHxn3MAO2tiktrpReGj1EhlU4/X2r3NgW/pVCXn/XoI3DnPrTA122NQ==
X-Received: by 2002:adf:cd84:: with SMTP id q4mr38584918wrj.320.1588187463599; 
 Wed, 29 Apr 2020 12:11:03 -0700 (PDT)
Received: from localhost (cag06-3-82-243-161-21.fbx.proxad.net.
 [82.243.161.21])
 by smtp.gmail.com with ESMTPSA id m8sm254005wrx.54.2020.04.29.12.11.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 12:11:02 -0700 (PDT)
References: <20200415102320.4606-1-christianshewitt@gmail.com>
User-agent: mu4e 1.3.3; emacs 26.3
From: Jerome Brunet <jbrunet@baylibre.com>
To: chewitt <christianshewitt@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Kevin Hilman <khilman@baylibre.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: sm1-khadas-vim3l: add audio playback
 to vim3l
In-reply-to: <20200415102320.4606-1-christianshewitt@gmail.com>
Date: Wed, 29 Apr 2020 21:11:02 +0200
Message-ID: <1jmu6uhzuh.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_121105_197059_70D04F87 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On Wed 15 Apr 2020 at 12:23, chewitt <christianshewitt@gmail.com> wrote:

> From: Christian Hewitt <christianshewitt@gmail.com>
>
> Add the sound and related audio nodes to the VIM3L board.
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  .../dts/amlogic/meson-sm1-khadas-vim3l.dts    | 88 +++++++++++++++++++
>  1 file changed, 88 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> index dbbf29a0dbf6..b900a433ef7a 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> @@ -8,6 +8,7 @@
>  
>  #include "meson-sm1.dtsi"
>  #include "meson-khadas-vim3.dtsi"
> +#include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>  
>  / {
>  	compatible = "khadas,vim3l", "amlogic,sm1";
> @@ -31,6 +32,69 @@
>  		regulator-boot-on;
>  		regulator-always-on;
>  	};
> +
> +	sound {
> +		compatible = "amlogic,axg-sound-card";
> +		model = "SM1-KHADAS-VIM3L";
> +		audio-aux-devs = <&tdmout_b>;
> +		audio-routing = "TDMOUT_B IN 0", "FRDDR_A OUT 1",
> +				"TDMOUT_B IN 1", "FRDDR_B OUT 1",
> +				"TDMOUT_B IN 2", "FRDDR_C OUT 1",
> +				"TDM_B Playback", "TDMOUT_B OUT";
> +
> +		assigned-clocks = <&clkc CLKID_MPLL2>,
> +				  <&clkc CLKID_MPLL0>,
> +				  <&clkc CLKID_MPLL1>;
> +		assigned-clock-parents = <0>, <0>, <0>;
> +		assigned-clock-rates = <294912000>,
> +				       <270950400>,
> +				       <393216000>;
> +		status = "okay";
> +
> +		dai-link-0 {
> +			sound-dai = <&frddr_a>;
> +		};
> +
> +		dai-link-1 {
> +			sound-dai = <&frddr_b>;
> +		};
> +
> +		dai-link-2 {
> +			sound-dai = <&frddr_c>;
> +		};
> +
> +		/* 8ch hdmi interface */

VIM3(L) should not use TDMOUT B or C for the HDMI interface
* B is on the 40pin header
* C is on the m2 connector

A is not routed to the outside world and should prefered for this.

See :
https://lore.kernel.org/linux-amlogic/20200421141814.639480-1-jbrunet@baylibre.com/

> +		dai-link-3 {
> +			sound-dai = <&tdmif_b>;
> +			dai-format = "i2s";
> +			dai-tdm-slot-tx-mask-0 = <1 1>;
> +			dai-tdm-slot-tx-mask-1 = <1 1>;
> +			dai-tdm-slot-tx-mask-2 = <1 1>;
> +			dai-tdm-slot-tx-mask-3 = <1 1>;
> +			mclk-fs = <256>;
> +
> +			codec {
> +				sound-dai = <&tohdmitx TOHDMITX_I2S_IN_B>;
> +			};
> +		};
> +
> +		/* hdmi glue */
> +		dai-link-4 {
> +			sound-dai = <&tohdmitx TOHDMITX_I2S_OUT>;
> +
> +			codec {
> +				sound-dai = <&hdmi_tx>;
> +			};
> +		};
> +	};
> +};
> +
> +&arb {
> +	status = "okay";
> +};
> +
> +&clkc_audio {
> +	status = "okay";
>  };
>  
>  &cpu0 {
> @@ -61,6 +125,18 @@
>  	clock-latency = <50000>;
>  };
>  
> +&frddr_a {
> +	status = "okay";
> +};
> +
> +&frddr_b {
> +	status = "okay";
> +};
> +
> +&frddr_c {
> +	status = "okay";
> +};
> +
>  &pwm_AO_cd {
>  	pinctrl-0 = <&pwm_ao_d_e_pins>;
>  	pinctrl-names = "default";
> @@ -93,3 +169,15 @@
>  	phy-names = "usb2-phy0", "usb2-phy1";
>  };
>   */
> +
> +&tdmif_b {
> +	status = "okay";
> +};
> +
> +&tdmout_b {
> +	status = "okay";
> +};
> +
> +&tohdmitx {
> +	status = "okay";
> +};


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
