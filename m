Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59533987E5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 01:30:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHkNQFQCL3Q2lOMi9gnptA3MwOQGITRaMmnAA+CamWM=; b=up5T8SWhkR/Lfk
	uNjbIzUwDtIEO/zQ0+piYQD9YhZZsYmp3DdmMXqicEHBvCvaSTWg+YBa1jI2HFPoWKJbt3XrMt8/c
	n9P4Wim+Ki1XWCnLmIrDNC9rmpmwTZBWClUjZIS4CTDlOj3FluxJoPTg751UpCHYEoyERRsy+U0Jm
	zmwO7z1SWgic1jpc+YCGjZ3qzI+o5HGfbC8S4RWY5EI6q0HixvvjEfvACvdZQMu/n059hPJ1rlzMT
	sQZb6aFgGYSWKwNooX3Nb/5xOYwd8AQT7rWv8TbvTvlYOnfl13r7HNyfMU5tflX037/wLj+iKyGCw
	8bnVx2ZOjoSwmHoZ8pBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0a3H-0002HP-9e; Wed, 21 Aug 2019 23:30:03 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0a38-0002Gn-ER
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 23:29:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id n190so2289823pgn.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 16:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=Ce79tt1EdjWmHjsbOeVM0d2spReWneK1/ievz/5bOQ0=;
 b=SRJayQ+vvdMXVmtPpjEFclS7e2GZ1M9sa9zF2sf57HNJmzZnN2WRqclWakGVnPGLN7
 7GYwJ+WTjKHLab1MxehDKQSHs+KMnpzraeh5+CSSW+LhI1avIb7Evi76Syf5qZfJa6Sw
 L6gZ6SV1gh2iCsdxfxWvzc6oAxu9ug2lsdcMT168c60XJZwz5hCaB9UieV0oaSvD+0rP
 LU75UaFgyt7GyVC9h8mhJ+2nSDu6Ef8kDqTDpWLmyYk9Y25SXLi9hvNtUGbnIj7WjVUP
 9sqsHIqaBqGrMWL2EboclseGxi6y8M0YQXDC/jjG1iOUy+AdFQHbGLEdbYTFlpWScRNY
 2bSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=Ce79tt1EdjWmHjsbOeVM0d2spReWneK1/ievz/5bOQ0=;
 b=OompLUDQeee5s0PtCsmiS6gmoCOFIhh9QDH2P9Y0hlvNnTCswduWEVQ/IAloGrj92C
 pfnKJW+htAdCnInfF+UKzXrk0CMqACq3SPHyTFaZ+wLjRHX6a+mV1nM1ZGJQp7rAE/76
 3f+nLvcI956qMaiIOYL1fbIRN0aU8OTIQzaKprtsV0Sc8VNCFZ/H8+SpQbsLWM+Q4pz+
 8W9mlmBevDfQkLSEOBjTUxVpcVhhlV3s0o5ISfc7qZDsHEwq9wknhF4nv632e2YOck4h
 fKD5GQlH5aoBe+205ghndbugy2U3nEyKhAEMeuKAy3r51ABU6316s64QueFcvgED6Qqu
 FGDg==
X-Gm-Message-State: APjAAAWo884hbjlODda4LVdUHrkL6AsMlkWF7iQon/vnH+bI6dro3IPO
 mlGT4HXvxlSsSDBUDwTbIZC0exCtsPo9ng==
X-Google-Smtp-Source: APXvYqzkdm/ufbDMjz6NTJ8+3pzRUrft6UEGKjkNpjv+C03jHIb4CVd+utTFJWjOWcDCpwBAbC0G3Q==
X-Received: by 2002:a17:90a:d082:: with SMTP id
 k2mr2464206pju.85.1566430193696; 
 Wed, 21 Aug 2019 16:29:53 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id z19sm20864303pgv.35.2019.08.21.16.29.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Aug 2019 16:29:53 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Guillaume La Roque <glaroque@baylibre.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org
Subject: Re: [PATCH v4 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
In-Reply-To: <20190821222421.30242-5-glaroque@baylibre.com>
References: <20190821222421.30242-1-glaroque@baylibre.com>
 <20190821222421.30242-5-glaroque@baylibre.com>
Date: Wed, 21 Aug 2019 16:29:52 -0700
Message-ID: <7hsgpu5c7j.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_162954_534922_1C89D8ED 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
Cc: devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Guillaume La Roque <glaroque@baylibre.com> writes:

> Add minimal thermal zone for two temperature sensor
> One is located close to the DDR and the other one is
> located close to the PLLs (between the CPU and GPU)
>
> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
>  .../boot/dts/amlogic/meson-g12a-sei510.dts    | 70 +++++++++++++++++++
>  1 file changed, 70 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> index c9fa23a56562..35d2ebbd6d4e 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
> @@ -10,6 +10,7 @@
>  #include <dt-bindings/input/input.h>
>  #include <dt-bindings/gpio/meson-g12a-gpio.h>
>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
> +#include <dt-bindings/thermal/thermal.h>
>  
>  / {
>  	compatible = "seirobotics,sei510", "amlogic,g12a";
> @@ -33,6 +34,67 @@
>  		ethernet0 = &ethmac;
>  	};
>  
> +	thermal-zones {
> +		cpu-thermal {
> +			polling-delay = <1000>;
> +			polling-delay-passive = <100>;
> +			thermal-sensors = <&cpu_temp>;
> +
> +			trips {
> +				cpu_hot: cpu-hot {
> +					temperature = <85000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "hot";
> +				};
> +
> +				cpu_critical: cpu-critical {
> +					temperature = <110000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map0 {
> +					trip = <&cpu_hot>;
> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +
> +				map1 {
> +					trip = <&cpu_critical>;
> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +
> +		ddr-thermal {
> +			polling-delay = <1000>;
> +			polling-delay-passive = <100>;
> +			thermal-sensors = <&ddr_temp>;
> +
> +			trips {
> +				ddr_critical: ddr-critical {
> +					temperature = <110000>; /* millicelsius */
> +					hysteresis = <2000>; /* millicelsius */
> +					type = "critical";
> +				};
> +			};
> +
> +			cooling-maps {
> +				map {
> +					trip = <&ddr_critical>;
> +					cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
> +				};
> +			};
> +		};
> +	};
> +
>  	mono_dac: audio-codec-0 {
>  		compatible = "maxim,max98357a";
>  		#sound-dai-cells = <0>;
> @@ -321,6 +383,7 @@
>  	operating-points-v2 = <&cpu_opp_table>;
>  	clocks = <&clkc CLKID_CPU_CLK>;
>  	clock-latency = <50000>;
> +	#cooling-cells = <2>;
>  };
>  
>  &cpu1 {
> @@ -328,6 +391,7 @@
>  	operating-points-v2 = <&cpu_opp_table>;
>  	clocks = <&clkc CLKID_CPU_CLK>;
>  	clock-latency = <50000>;
> +	#cooling-cells = <2>;
>  };
>  
>  &cpu2 {
> @@ -335,6 +399,7 @@
>  	operating-points-v2 = <&cpu_opp_table>;
>  	clocks = <&clkc CLKID_CPU_CLK>;
>  	clock-latency = <50000>;
> +	#cooling-cells = <2>;
>  };
>  
>  &cpu3 {
> @@ -342,6 +407,7 @@
>  	operating-points-v2 = <&cpu_opp_table>;
>  	clocks = <&clkc CLKID_CPU_CLK>;
>  	clock-latency = <50000>;
> +	#cooling-cells = <2>;
>  };
>  
>  &cvbs_vdac_port {
> @@ -368,6 +434,10 @@
>  	status = "okay";
>  };
>  
> +&mali {
> +	#cooling-cells = <2>;
> +};
> +

Is there a reason these #cooling-cells properties belong in the SoC
.dtsi and not the board .dts.  Seems like you'll have to repeat this in
every board .dts which doesn't seem necessary.

Same comment for patch 5/6

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
