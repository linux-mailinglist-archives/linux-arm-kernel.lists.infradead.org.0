Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED4B417D4DD
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  8 Mar 2020 17:36:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jejq97umHz+QcWl1KlAdXnCVuTMnWbxmn83+BOinYaU=; b=RHGJcUpinDbRea
	wj2LTU1KBDpEJMBL9Wj5+HAGW+WzJQEbh1L5CLkx//zXp5FE6PdskAmC0YeranWltKFx3tKrEYGTh
	ERbUk3G2u5JcR7i1xwtXW6b5OAYRxEG7yBBA4wLbOfBS+yTph3nwDxx9Th19A/AFyjo4jL2VE+7W/
	tDYOi0ve5FLLYq3D+OBMiBwXSqDg5sE9BWeyYONB9zYolkfnv4lUcyadpWoZ0nU8Cx9MjLfQXZAsL
	xHAKzCbzymU4Uw3H+CeoI4j6bcumV7QUZARSQV7mizY7d8fzTZIHq0R+NpomZP4nObvT4ygkLeFmq
	UNFkexLDPe8hb6y83MJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAyuT-0003m7-QS; Sun, 08 Mar 2020 16:36:13 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAyu3-0003Tc-Ke
 for linux-arm-kernel@lists.infradead.org; Sun, 08 Mar 2020 16:35:53 +0000
Received: by mail-lf1-x144.google.com with SMTP id t21so5651189lfe.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 08 Mar 2020 09:35:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ragnatech-se.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=SCn2CpVC/7ynZUWvGTDmpECNjpBPxtQHPMbxz1lBSOQ=;
 b=VBwElsPwH4qLkHurgScNaHNHOiGUnQFVuXLs47+GzkvBpuVSogd92FF/MYnHIn9d/m
 8F4fcpi2vppv8TT0bOMhzzYFk+CqYgNJWuH6q31JTUYoxqndZbhItF/tAC2EI5s8wpk/
 o5onxJelZaDxOUI4COgA/C9cn76H2+iiQ487IQwrvdGPlAf/Un4T9vock+xKOwdy8Dj4
 Uq8bXPLzu9T+WvWQU86PMi3FCRwPJrPOs+GGpi+cO0t32PuCDVFOp30dQsJqgmRbHCQg
 KdzHi4WjOZ5F+W2hYQkNbxRiPcwg5yW2jz2fWDxOpaDSEBdv91NRKOFmtEnjlIT/GKm2
 iNNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=SCn2CpVC/7ynZUWvGTDmpECNjpBPxtQHPMbxz1lBSOQ=;
 b=Q84M4PARQbthnaZR2tpOzajJBrcNf4oe3sQ/JpfkfIdKQW5r4lel11vTpc4vgWc39V
 Fotkv3E2uH9FZZ1RXGqh1OjTXzzxZjTBJESsiwsFZ0MiFQ4HFRiIf/GgzIynx+0/jngs
 KZicNeQPWxGj95yibVI5cZmHYCqeb5xowTzlBSKJmfdDrikcAWf4rall+8hjQedlBz/i
 w9U7EZesFZ/YfIJGlfurCNHuJ9+fMu0q2gCtsqDML2Jp/VsiGWDXhmcd2x3XszwqfOcH
 4oRfwkowwun/d6NXAN0U9SccUB6NLtuTnmYz597euehqDKrVEGKPMBjg0apGMjS9ws0e
 HLYA==
X-Gm-Message-State: ANhLgQ2mTMD6+cFR+muDi/CqEJzV7XlsfjoJGkfduANHVIXK3wc5QDUr
 IWK9zLy+bInS7NkJubL0rcdeAjZzpSc=
X-Google-Smtp-Source: ADFU+vuo9cIWcyNT/HEu7Hn2mCrfDG0g9mOpd0bFl78MAIG7W5xNck5AJIKMHv1L7fu+OcBX7OdTfA==
X-Received: by 2002:ac2:4201:: with SMTP id y1mr7412717lfh.92.1583685345015;
 Sun, 08 Mar 2020 09:35:45 -0700 (PDT)
Received: from localhost (h-200-138.A463.priv.bahnhof.se. [176.10.200.138])
 by smtp.gmail.com with ESMTPSA id o4sm14989027lfl.62.2020.03.08.09.35.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Mar 2020 09:35:44 -0700 (PDT)
Date: Sun, 8 Mar 2020 17:35:43 +0100
From: Niklas =?iso-8859-1?Q?S=F6derlund?= <niklas.soderlund@ragnatech.se>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] arm64: dts: renesas: r8a77961: Add thermal nodes
Message-ID: <20200308163543.GD2975348@oden.dyn.berto.se>
References: <20200306110025.24747-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306110025.24747-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_093547_697217_E24E2E25 
X-CRM114-Status: GOOD (  16.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Geert,

Thanks for your work.

On 2020-03-06 12:00:25 +0100, Geert Uytterhoeven wrote:
> Add a device node for the Thermal Sensor/Chip Internal Voltage Monitor
> in the R-Car M3-W+ (R8A77961) SoC, and describe the thermal zones.
> =

> According to the R-Car Gen3 Hardware Manual Errata for Revision 2.00 of
> Jan 31, 2020, the thermal parameters for R-Car M3-W+ are the same as for
> R-Car M3-W.
> =

> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
> It's a bit cold in Magnus' lab:
> =

> / # grep . /sys/devices/virtual/thermal/thermal_zone?/temp
> /sys/devices/virtual/thermal/thermal_zone0/temp:17000
> /sys/devices/virtual/thermal/thermal_zone1/temp:19000
> /sys/devices/virtual/thermal/thermal_zone2/temp:18000
> ---
>  arch/arm64/boot/dts/renesas/r8a77961.dtsi | 80 +++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
> =

> diff --git a/arch/arm64/boot/dts/renesas/r8a77961.dtsi b/arch/arm64/boot/=
dts/renesas/r8a77961.dtsi
> index b6915319a61c8bf0..2f016458f57d3a33 100644
> --- a/arch/arm64/boot/dts/renesas/r8a77961.dtsi
> +++ b/arch/arm64/boot/dts/renesas/r8a77961.dtsi
> @@ -474,6 +474,20 @@
>  			#power-domain-cells =3D <1>;
>  		};
>  =

> +		tsc: thermal@e6198000 {
> +			compatible =3D "renesas,r8a77961-thermal";
> +			reg =3D <0 0xe6198000 0 0x100>,
> +			      <0 0xe61a0000 0 0x100>,
> +			      <0 0xe61a8000 0 0x100>;
> +			interrupts =3D <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
> +				     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
> +			clocks =3D <&cpg CPG_MOD 522>;
> +			power-domains =3D <&sysc R8A77961_PD_ALWAYS_ON>;
> +			resets =3D <&cpg 522>;
> +			#thermal-sensor-cells =3D <1>;
> +		};
> +
>  		intc_ex: interrupt-controller@e61c0000 {
>  			#interrupt-cells =3D <2>;
>  			interrupt-controller;
> @@ -785,6 +799,7 @@
>  			status =3D "disabled";
>  		};
>  =

> +

This don't looks like it's needed :-) With this fixed,

Reviewed-by: Niklas S=F6derlund <niklas.soderlund+renesas@ragnatech.se>

>  		pwm1: pwm@e6e31000 {
>  			reg =3D <0 0xe6e31000 0 8>;
>  			#pwm-cells =3D <2>;
> @@ -1073,6 +1088,71 @@
>  		};
>  	};
>  =

> +	thermal-zones {
> +		sensor_thermal1: sensor-thermal1 {
> +			polling-delay-passive =3D <250>;
> +			polling-delay =3D <1000>;
> +			thermal-sensors =3D <&tsc 0>;
> +			sustainable-power =3D <3874>;
> +
> +			trips {
> +				sensor1_crit: sensor1-crit {
> +					temperature =3D <120000>;
> +					hysteresis =3D <1000>;
> +					type =3D "critical";
> +				};
> +			};
> +		};
> +
> +		sensor_thermal2: sensor-thermal2 {
> +			polling-delay-passive =3D <250>;
> +			polling-delay =3D <1000>;
> +			thermal-sensors =3D <&tsc 1>;
> +			sustainable-power =3D <3874>;
> +
> +			trips {
> +				sensor2_crit: sensor2-crit {
> +					temperature =3D <120000>;
> +					hysteresis =3D <1000>;
> +					type =3D "critical";
> +				};
> +			};
> +		};
> +
> +		sensor_thermal3: sensor-thermal3 {
> +			polling-delay-passive =3D <250>;
> +			polling-delay =3D <1000>;
> +			thermal-sensors =3D <&tsc 2>;
> +			sustainable-power =3D <3874>;
> +
> +			cooling-maps {
> +				map0 {
> +					trip =3D <&target>;
> +					cooling-device =3D <&a57_0 2 4>;
> +					contribution =3D <1024>;
> +				};
> +				map1 {
> +					trip =3D <&target>;
> +					cooling-device =3D <&a53_0 0 2>;
> +					contribution =3D <1024>;
> +				};
> +			};
> +			trips {
> +				target: trip-point1 {
> +					temperature =3D <100000>;
> +					hysteresis =3D <1000>;
> +					type =3D "passive";
> +				};
> +
> +				sensor3_crit: sensor3-crit {
> +					temperature =3D <120000>;
> +					hysteresis =3D <1000>;
> +					type =3D "critical";
> +				};
> +			};
> +		};
> +	};
> +
>  	timer {
>  		compatible =3D "arm,armv8-timer";
>  		interrupts-extended =3D <&gic GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(6) | IRQ=
_TYPE_LEVEL_LOW)>,
> -- =

> 2.17.1
> =


-- =

Regards,
Niklas S=F6derlund

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
