Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9946DCACC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 18:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-reply-to:Subject:To:From:References:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OMAJr/oFVjzoNokcYjumDjbYM2+fd+kuobIIvy5OEI0=; b=ayMoAUn6+MEBxuawllNqc3WTB/
	hbV2FIwTkb655f4hhcIk8Ct7+IDp0j1VjtutZMeB7Js82q5kEPPjOddtIR/pO+QoLiU+GnXUO8ehe
	Vhlcb0BEQuCpY7k/VOzyFqtmFKDtMMDv+pQEATcRaL9A137SRzy8pCEGVyiznHHApNI2CniMyyEFj
	YSWj+LnZyzebSGdPXlLicNtAJ8UJgEoxYT9obiEHJzFrC0Vvnneou5rRxWW0N6Nuj2S5fV3spOsUO
	UNYaCcji2CvOBpYCI9u9b3sOxCrOHMUjn1vVg88ADzoFYp/6PK6y/d15Y3cOs0rMPfBlo1q9nLA1r
	2axUqRTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLUwO-0008SR-Bs; Fri, 18 Oct 2019 16:17:24 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLUtM-0004mM-6Q
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 16:14:19 +0000
Received: by mail-wr1-x443.google.com with SMTP id b9so6900396wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 18 Oct 2019 09:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=references:user-agent:from:to:subject:in-reply-to:date:message-id
 :mime-version; bh=0Cv5HxbYsKs88qKdDqqwy2GcVJ7JGGNauSIpovXmWjE=;
 b=gZNchhaduGtAYNPyOyjo0Q/R9PH//aDDplRrAmvdTTPx0Kmxn8NFK+7uAx8JKgIEeX
 CmgKuBT7wpTX5XgrppkFVgSvyCiZu9C7R70WHNEiHuYGIAt+FX3H7nG5/jkh44Rz1OeZ
 +Oo06tmY7t+R2wCBMZC5VxXtyEFPzndgMtS0AaJNXfn7Z92k0ZvHBesNFCCpAyIBKLGr
 S2lLW1EaKwt8i9PnSNjyZo3zC4zUjbt3z3L0mrfzR6prmno+8o5h44MIVZcom3MjiDPJ
 giuQ9ZZ5Bvd2l9TyhJ2tWXibsW3ZYIKbYwAhsEv/jwRDgeS+z2dmIppYCe9Hu/GeFRL3
 hzoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:references:user-agent:from:to:subject
 :in-reply-to:date:message-id:mime-version;
 bh=0Cv5HxbYsKs88qKdDqqwy2GcVJ7JGGNauSIpovXmWjE=;
 b=HoIJvZfZpLGJSczuUifoSdoOKckJRSHsEPwM4aOZQG5O5yCqspdBJXESdvzv3Ivov8
 pAfZXykZ3P/iF1QIEvciuu3jWg76PZc1ux+DbSSxELqqMdQfcGHe0TdmJDG1eIpTCoiA
 SdXmGn+cW3BrHLWTof2sJj8a5Qj0f4wpw8VetIMl9y8gE8x7tzQbMZbMDBfkLhLhJKK3
 ia9z3/4sCqRliZwhld0/a5QRgHWfo6c3JxZhm6ZRpTA9i0glGRU9Hzn56BoUW54vEzbQ
 jBpo0208LbiEocLlcKk1BCThkdGhcIdN7hycnUJB2AtSyYAlIGvlo7V3bbQ7/Ejv23rO
 lG9Q==
X-Gm-Message-State: APjAAAVWLXnzBwUTU0PGXepycd8CMQqPLslTZPxUaMnH2tmqZHfU8kcu
 ve0NDsGunmCyDtiVMi0vqsJU5Q==
X-Google-Smtp-Source: APXvYqxahX2Eo67G58sg7nvdDRQg5C58GloUqLjP/ZxQkAa40VhAeVwwcIp6pZ/sy3jdITFMe4NWDg==
X-Received: by 2002:adf:df05:: with SMTP id y5mr9222772wrl.84.1571415253811;
 Fri, 18 Oct 2019 09:14:13 -0700 (PDT)
Received: from localhost (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a204sm7706251wmh.21.2019.10.18.09.14.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 18 Oct 2019 09:14:12 -0700 (PDT)
References: <1571393152-3698-1-git-send-email-christianshewitt@gmail.com>
User-agent: mu4e 1.3.3; emacs 26.2
From: Jerome Brunet <jbrunet@baylibre.com>
To: Christian Hewitt <christianshewitt@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Kevin Hilman <khilman@baylibre.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: meson: khadas-vim3l: enable audio
In-reply-to: <1571393152-3698-1-git-send-email-christianshewitt@gmail.com>
Date: Fri, 18 Oct 2019 18:14:11 +0200
Message-ID: <1jd0euf2uk.fsf@starbuckisacylon.baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_091416_290074_3D1F6814 
X-CRM114-Status: GOOD (  15.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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


On Fri 18 Oct 2019 at 12:05, Christian Hewitt <christianshewitt@gmail.com> wrote:

> Add and enable the audio nodes on the VIM3L. This is based on the recent
> submission for the SEI610 device [1] and the existing VIM3 dts.
>
> [1] https://patchwork.kernel.org/patch/11180785/
>
> Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
> ---
>  .../boot/dts/amlogic/meson-sm1-khadas-vim3l.dts    | 147 +++++++++++++++++++++
>  1 file changed, 147 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-khadas-vim3l.dts
> index dbbf29a..d07f0cf 100644
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
> @@ -31,6 +32,86 @@
>  		regulator-boot-on;
>  		regulator-always-on;
>  	};
> +
> +	sound {
> +		compatible = "amlogic,axg-sound-card";
> +		model = "SM1-KHADAS-VIM3L";
> +		audio-aux-devs = <&tdmout_a>, <&tdmout_b>,
> +				 <&tdmin_a>, <&tdmin_b>;
> +		audio-routing = "TDMOUT_A IN 0", "FRDDR_A OUT 0",
> +				"TDMOUT_A IN 1", "FRDDR_B OUT 0",
> +				"TDMOUT_A IN 2", "FRDDR_C OUT 0",
> +				"TDM_A Playback", "TDMOUT_A OUT",

The route above are useless since you are not using TDM A in this card

> +				"TDMOUT_B IN 0", "FRDDR_A OUT 1",
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

You have only one output, so one FRDDR is enough.
So either enable a put just one, or put them all (including FRDDR D)

> +
> +		dai-link-3 {
> +			sound-dai = <&toddr_a>;
> +		};
> +
> +		dai-link-4 {
> +			sound-dai = <&toddr_b>;
> +		};
> +
> +		dai-link-5 {
> +			sound-dai = <&toddr_c>;
> +		};

There is no capture Backend, to the TODDR are useless

> +
> +		/* 8ch hdmi interface */
> +		dai-link-6 {
> +			sound-dai = <&tdmif_b>;

Any particular reason for using TDM B interface ? What is khadas doing
in there own code ?

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
> +		dai-link-7 {
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
> @@ -61,6 +142,24 @@
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
> +&pdm {
> +	pinctrl-0 = <&pdm_din0_z_pins>, <&pdm_dclk_z_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +};

Why do you enable PDM ? does this board provide some digital mics ?
There is no links using PDM in your card. Please clarify

> +
>  &pwm_AO_cd {
>  	pinctrl-0 = <&pwm_ao_d_e_pins>;
>  	pinctrl-names = "default";
> @@ -93,3 +192,51 @@
>  	phy-names = "usb2-phy0", "usb2-phy1";
>  };
>   */
> +
> +&tdmif_a {
> +	pinctrl-0 = <&tdm_a_dout0_pins>, <&tdm_a_fs_pins>, <&tdm_a_sclk_pins>;
> +	pinctrl-names = "default";
> +	status = "okay";
> +
> +	assigned-clocks = <&clkc_audio AUD_CLKID_TDM_SCLK_PAD0>,
> +			  <&clkc_audio AUD_CLKID_TDM_LRCLK_PAD0>;
> +	assigned-clock-parents = <&clkc_audio AUD_CLKID_MST_A_SCLK>,
> +				 <&clkc_audio AUD_CLKID_MST_A_LRCLK>;
> +	assigned-clock-rates = <0>, <0>;
> +};
> +
> +&tdmif_b {
> +	status = "okay";
> +};
> +
> +&tdmin_a {
> +	status = "okay";
> +};
> +
> +&tdmin_b {
> +	status = "okay";
> +};
> +
> +&tdmout_a {
> +	status = "okay";
> +};
> +
> +&tdmout_b {
> +	status = "okay";
> +};
> +
> +&toddr_a {
> +	status = "okay";
> +};
> +
> +&toddr_b {
> +	status = "okay";
> +};
> +
> +&toddr_c {
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
