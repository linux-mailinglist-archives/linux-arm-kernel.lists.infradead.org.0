Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 061329A090
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 22 Aug 2019 22:00:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6QA4/FhNjXqR7QA8EE3d4PnAB3mH1vrMs5F3V07oJQ=; b=Si5V4Ldv4f/xJe
	EmCjJyuOs6cMltn/+e11JlNAj/uH20srbQfNNK+KMbpNMFZXKZiFrMKcgdyv9ze0BAmPtXOyw4n3e
	uUQVpXUsDs0cNyF7SeJZLG4D7UXiuSgeWRUfwf/8PZ8FTyNrT4FfBHtWOSSu9xpEamx8pZGziaQPO
	O8kYqNbs9j61IGoer7KyO1nVU4/ApCmrGIeHlQvNDIH8/zcrC2b0NYquGfm6Fuag9fZdLdWX/RpJ3
	OllXyhXEL3d2Nw2FmYLNhOzWczrASX59w4BtpR6WgqLa07ycQtrC5nwMxKlEo4JS5WwOCyjVa79Po
	DST+XLqhDqltLluBe4Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0tFR-0006v4-TQ; Thu, 22 Aug 2019 19:59:53 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0tF9-0006mx-Pa
 for linux-arm-kernel@lists.infradead.org; Thu, 22 Aug 2019 19:59:38 +0000
Received: by mail-pg1-x542.google.com with SMTP id w10so4286162pgj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 22 Aug 2019 12:59:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=AcjZhREukP3aBHVQXFfPG6Q2ywPCmP6+Qew3XzM2o+o=;
 b=wVZ55WawdDOCTkUmu4owRRdkz8MnTITewlCRS+ng278aKsUlHBFKiuPLP+5rv0d0cC
 7b076tHjPwD6gcK1g+MI60bROfKFBFpc5CzBqTz1opgbw3A42OfNlQ79WS9+YEZwK9kS
 SkfefD2uRa8kJTJQPKjxv0Gg7ju/eywmq8060njWxDLT+efEs82dO9jb7vJL8WcrpYB/
 kmsyXSgPcBerEKDJT3PRQW1y7+ERUbTT+32ugB+5UhDumswPuuj8ryYFDENa5e6QLwVI
 XO1k5/wB6Q2gbGlhLq3VekUOzEHNDNgHvKDA9yqnTZHzdmqzxY69FR3x1Hq61laysptJ
 9v5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=AcjZhREukP3aBHVQXFfPG6Q2ywPCmP6+Qew3XzM2o+o=;
 b=B/cdtacQCbExAl8HOM3yWShOJUXVNKw0UZUDxs8QbbaWdaPyKX9nIaElAi0sllE9tl
 SsW7r1hhXkzEQdJdndlC0YjjByblI86UeImw5Ld3+BA0McLmq4zWug2i55t1Q1XygwbZ
 nJmBvwLjMViU0msylpdWIX6fSVIxvZscWzmgOfZyX5gIKxSB4p3SA807bO8OF1A5q6F3
 Sc2KdsP1AtPdEEg/pfcLW5GgD8Romo3/3E3CcKRgYZn8RHx7K9Var+sf5X1LuCbxupaU
 6vE6iX8HggDLNOCuyjjFDN8lvjOjZiQGKoxQD18jYCyzxyMvxJjKXu+Rvs2g+/0QMZ3D
 hINQ==
X-Gm-Message-State: APjAAAU3phwUQmD0/Mg/OG7D3ZX1wBDpHrsq+JS+ckRVeNQZlY//7LkO
 h1QUp+x/wmdniofQQRM7ufcpFw==
X-Google-Smtp-Source: APXvYqw1E/wGG3LtU8CUVzGcqHyA8TH2cHZWKcT+YZLLaFP0R6xn+LzvU4WVp8sjGGmpUW2HvPMdkA==
X-Received: by 2002:a17:90a:24ed:: with SMTP id
 i100mr1426802pje.47.1566503974112; 
 Thu, 22 Aug 2019 12:59:34 -0700 (PDT)
Received: from localhost ([2601:602:9200:a1a5:89d4:68d1:fc04:721])
 by smtp.gmail.com with ESMTPSA id k5sm139563pgo.45.2019.08.22.12.59.33
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 22 Aug 2019 12:59:33 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Guillaume La Roque <glaroque@baylibre.com>, rui.zhang@intel.com,
 edubezval@gmail.com, daniel.lezcano@linaro.org
Subject: Re: [PATCH v4 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
In-Reply-To: <a6881ab8-21b0-ecd6-f7d9-cfe081455c24@baylibre.com>
References: <20190821222421.30242-1-glaroque@baylibre.com>
 <20190821222421.30242-5-glaroque@baylibre.com> <7hsgpu5c7j.fsf@baylibre.com>
 <a6881ab8-21b0-ecd6-f7d9-cfe081455c24@baylibre.com>
Date: Thu, 22 Aug 2019 12:59:32 -0700
Message-ID: <7h8srl55uj.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_125935_852266_E294CCA3 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 22/08/2019 01:29, Kevin Hilman wrote:
>> Guillaume La Roque <glaroque@baylibre.com> writes:
>> 
>>> Add minimal thermal zone for two temperature sensor
>>> One is located close to the DDR and the other one is
>>> located close to the PLLs (between the CPU and GPU)
>>>
>>> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
>>> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>>> ---
>>>  .../boot/dts/amlogic/meson-g12a-sei510.dts    | 70 +++++++++++++++++++
>>>  1 file changed, 70 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
>>> index c9fa23a56562..35d2ebbd6d4e 100644
>>> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
>>> @@ -10,6 +10,7 @@
>>>  #include <dt-bindings/input/input.h>
>>>  #include <dt-bindings/gpio/meson-g12a-gpio.h>
>>>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>>> +#include <dt-bindings/thermal/thermal.h>
>>>  
>>>  / {
>>>  	compatible = "seirobotics,sei510", "amlogic,g12a";
>>> @@ -33,6 +34,67 @@
>>>  		ethernet0 = &ethmac;
>>>  	};
>>>  
>>> +	thermal-zones {
>>> +		cpu-thermal {
>>> +			polling-delay = <1000>;
>>> +			polling-delay-passive = <100>;
>>> +			thermal-sensors = <&cpu_temp>;
>>> +
>>> +			trips {
>>> +				cpu_hot: cpu-hot {
>>> +					temperature = <85000>; /* millicelsius */
>>> +					hysteresis = <2000>; /* millicelsius */
>>> +					type = "hot";
>>> +				};
>>> +
>>> +				cpu_critical: cpu-critical {
>>> +					temperature = <110000>; /* millicelsius */
>>> +					hysteresis = <2000>; /* millicelsius */
>>> +					type = "critical";
>>> +				};
>>> +			};
>>> +
>>> +			cooling-maps {
>>> +				map0 {
>>> +					trip = <&cpu_hot>;
>>> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>>> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>>> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>>> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>>> +				};
>>> +
>>> +				map1 {
>>> +					trip = <&cpu_critical>;
>>> +					cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>>> +							 <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>>> +							 <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>>> +							 <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>>> +				};
>>> +			};
>>> +		};
>>> +
>>> +		ddr-thermal {
>>> +			polling-delay = <1000>;
>>> +			polling-delay-passive = <100>;
>>> +			thermal-sensors = <&ddr_temp>;
>>> +
>>> +			trips {
>>> +				ddr_critical: ddr-critical {
>>> +					temperature = <110000>; /* millicelsius */
>>> +					hysteresis = <2000>; /* millicelsius */
>>> +					type = "critical";
>>> +				};
>>> +			};
>>> +
>>> +			cooling-maps {
>>> +				map {
>>> +					trip = <&ddr_critical>;
>>> +					cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>>> +				};
>>> +			};
>>> +		};
>>> +	};
>>> +
>>>  	mono_dac: audio-codec-0 {
>>>  		compatible = "maxim,max98357a";
>>>  		#sound-dai-cells = <0>;
>>> @@ -321,6 +383,7 @@
>>>  	operating-points-v2 = <&cpu_opp_table>;
>>>  	clocks = <&clkc CLKID_CPU_CLK>;
>>>  	clock-latency = <50000>;
>>> +	#cooling-cells = <2>;
>>>  };
>>>  
>>>  &cpu1 {
>>> @@ -328,6 +391,7 @@
>>>  	operating-points-v2 = <&cpu_opp_table>;
>>>  	clocks = <&clkc CLKID_CPU_CLK>;
>>>  	clock-latency = <50000>;
>>> +	#cooling-cells = <2>;
>>>  };
>>>  
>>>  &cpu2 {
>>> @@ -335,6 +399,7 @@
>>>  	operating-points-v2 = <&cpu_opp_table>;
>>>  	clocks = <&clkc CLKID_CPU_CLK>;
>>>  	clock-latency = <50000>;
>>> +	#cooling-cells = <2>;
>>>  };
>>>  
>>>  &cpu3 {
>>> @@ -342,6 +407,7 @@
>>>  	operating-points-v2 = <&cpu_opp_table>;
>>>  	clocks = <&clkc CLKID_CPU_CLK>;
>>>  	clock-latency = <50000>;
>>> +	#cooling-cells = <2>;
>>>  };
>>>  
>>>  &cvbs_vdac_port {
>>> @@ -368,6 +434,10 @@
>>>  	status = "okay";
>>>  };
>>>  
>>> +&mali {
>>> +	#cooling-cells = <2>;
>>> +};
>>> +
>> 
>> Is there a reason these #cooling-cells properties belong in the SoC
>> .dtsi and not the board .dts.  Seems like you'll have to repeat this in
>> every board .dts which doesn't seem necessary.
>
> I asked him to keep the cooling-cells in the boards until we add the thermal
> in all the remaining boards.
>
> Seemed to be safer way at the time...

I assumed that #cooling-cells alone would be harmless.

If there are no thermal-zones with trips/maps defined, what can
#cooling-cells by itself do?

Kevin


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
