Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6172819FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 14:49:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wiBiaCvEN643FFAG7eVBf1bwTdui2fbMZxOWH+RKByg=; b=G5u9PauaxNwi3W
	X2qzpRpqMNfijC6/mS8gUsTAoxuA6QkUuZUDjJNz3mtSSkPqgWgyk1sotWnN/ugh8csPafQmKM6Yp
	8nOoLZ58rkwGaPPoN3Ssmm+VlDWFo/ISoCRivYZw83Ip7xs8H4fkqPNoF9Ne5dMck70n/RecPatTq
	3xhl44DEPca3tl8Trz8zEE53Y5ffVa86zP7DXCJyh2g9dJzqcIDp1o6tzDG6pSlXvIFdgy854JmGV
	I6mcarFJvVSi3oWIv6HeNp5YeX527fumvUG3J93m+RCFifpNf5ea9Iu5CmUPt/jNsGBgk52AVGsP5
	odg7TIw+3UR4jYipUgiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hucQ6-00089I-Il; Mon, 05 Aug 2019 12:48:58 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hucPt-00088P-CM
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 12:48:47 +0000
Received: by mail-wr1-x442.google.com with SMTP id y4so84304381wrm.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 05:48:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=oCcvAOHAqO79xgLqFQJG5nX7dFejuUKhdOvFqVtwuaQ=;
 b=FChwJRHWW3dzV7lekARV8knI19kr3MzoJn8IqdhP2RrgaIya3gGRxFzMMdCQx+/4Et
 SfeIjcJm4iL1rCJoTTV1Gm7sE9jr2PGwx3XIrr0p4kOTNDGLVeOJmNJg+OolThWDII41
 2UjZew70luwFIku1SOAptaZ5FVp3z7R/XqZ+6Qdxt7lK6EIot0c/SYpHfPtXpU08dJLe
 d42SuTPE9omXgun2WNbF6OAoPCq0SYKORw2F+ad8su6uj+VnerLYfGcGnt3fqrPWD4Yl
 MBZWeoB8EK/5OcFfRKZ2m4h35w6+F+5kXUd7mKHRVgABr4BH0rgCCjFtDSldjpbsTRwt
 mvOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=oCcvAOHAqO79xgLqFQJG5nX7dFejuUKhdOvFqVtwuaQ=;
 b=CQyAuDRp1jXgzEt36eUGavT8tIHl8FycHi5KdM01LLuiVkEPlEP3w2XA5avTEprEgd
 RI2ir6J/wBuvTbqJ44oMdJ9x7lNFCIfDPOtYtKAfN3FmIkbaPQsteI8mEF9GernU2r1L
 LJmRZwka83E/g1YCyV3YqHZNGTWhNSdaCx+HruBHiT/aXHIMKoV5XWIbUJh27WLqNs0g
 rB5vnyc7+LTcym0fU4ijjHo/XG6CS0DGuYvecM5868PXrHyDpUQx6xdk+k3b853v40ox
 zGEra8OVudArAdJ+zIu64l9dccCIomviHLmQNSKpnT63Cz5aIu7xXuKFsc2EN1pSdmg9
 5aTQ==
X-Gm-Message-State: APjAAAXl5qv2sFqXSeZMtXRwFs7p+iY1s2tlz8r0tu5WhkQeVURLghm1
 gYExtf50sCeG686Ivkm6ByrCMg==
X-Google-Smtp-Source: APXvYqwBfUtY4HHqJanim3CfED7337YIudrlcue/iSf8ew+PnhRdLMvdK0/Bpmpr1FNIz44UJYNDZg==
X-Received: by 2002:a5d:52c5:: with SMTP id r5mr15344303wrv.146.1565009324012; 
 Mon, 05 Aug 2019 05:48:44 -0700 (PDT)
Received: from [10.1.4.98] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id r5sm91425958wmh.35.2019.08.05.05.48.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 05:48:43 -0700 (PDT)
Subject: Re: [PATCH v2 4/6] arm64: dts: meson: sei510: Add minimal thermal zone
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-5-glaroque@baylibre.com>
 <CAFBinCD-DUEjPgfUEJmHpPjw1ShZy7nemaFBKANmM5M42XBG4Q@mail.gmail.com>
From: guillaume La Roque <glaroque@baylibre.com>
Message-ID: <805dc9fd-1c1f-a23a-27a7-d91908a95a13@baylibre.com>
Date: Mon, 5 Aug 2019 14:48:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCD-DUEjPgfUEJmHpPjw1ShZy7nemaFBKANmM5M42XBG4Q@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_054845_427866_35F53162 
X-CRM114-Status: GOOD (  18.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, khilman@baylibre.com,
 daniel.lezcano@linaro.org, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,


On 8/3/19 8:29 PM, Martin Blumenstingl wrote:
> Hi Guillaume,
>
> On Wed, Jul 31, 2019 at 5:36 PM Guillaume La Roque
> <glaroque@baylibre.com> wrote:
>> Add minimal thermal zone for DDR and CPU sensor
> so high DDR (controller?) temperatures will throttle Mali and high PLL
> temperatures will throttle the CPU?
> to get things started I'm fine with this, but I think it should be
> mentioned here

i will add in commit description

>
>> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
>> ---
>>  .../boot/dts/amlogic/meson-g12a-sei510.dts    | 56 +++++++++++++++++++
>>  1 file changed, 56 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
>> index 979449968a5f..2c16a2cba0a3 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
>> @@ -10,6 +10,7 @@
>>  #include <dt-bindings/input/input.h>
>>  #include <dt-bindings/gpio/meson-g12a-gpio.h>
>>  #include <dt-bindings/sound/meson-g12a-tohdmitx.h>
>> +#include <dt-bindings/thermal/thermal.h>
>>
>>  / {
>>         compatible = "seirobotics,sei510", "amlogic,g12a";
>> @@ -33,6 +34,53 @@
>>                 ethernet0 = &ethmac;
>>         };
>>
>> +       thermal-zones {
>> +               cpu-thermal {
>> +                       polling-delay = <1000>;
>> +                       polling-delay-passive = <100>;
>> +                       thermal-sensors = <&cpu_temp>;
>> +
>> +                       trips {
>> +                               cpu_critical: cpu-critical {
>> +                                       temperature = <110000>; /* millicelsius */
>> +                                       hysteresis = <2000>; /* millicelsius */
>> +                                       type = "critical";
>> +                               };
>> +                       };
>> +
>> +                       cooling-maps {
>> +                               map {
>> +                                       trip = <&cpu_critical>;
>> +                                       cooling-device = <&cpu0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>> +                                                        <&cpu1 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>> +                                                        <&cpu2 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>,
>> +                                                        <&cpu3 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>> +                               };
>> +                       };
>> +               };
>> +
>> +               ddr-thermal {
>> +                       polling-delay = <1000>;
>> +                       polling-delay-passive = <100>;
>> +                       thermal-sensors = <&ddr_temp>;
>> +
>> +                       trips {
>> +                               ddr_critical: ddr-critical {
>> +                                       temperature = <110000>; /* millicelsius */
>> +                                       hysteresis = <2000>; /* millicelsius */
>> +                                       type = "critical";
>> +                               };
>> +                       };
>> +
>> +                       cooling-maps {
>> +                               map {
>> +                                       trip = <&ddr_critical>;
>> +                                       cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>> +                               };
>> +                       };
>> +               };
>> +       };
>> +
>>         mono_dac: audio-codec-0 {
>>                 compatible = "maxim,max98357a";
>>                 #sound-dai-cells = <0>;
>> @@ -321,6 +369,7 @@
>>         operating-points-v2 = <&cpu_opp_table>;
>>         clocks = <&clkc CLKID_CPU_CLK>;
>>         clock-latency = <50000>;
>> +       #cooling-cells = <2>;
>>  };
>>
>>  &cpu1 {
>> @@ -328,6 +377,7 @@
>>         operating-points-v2 = <&cpu_opp_table>;
>>         clocks = <&clkc CLKID_CPU_CLK>;
>>         clock-latency = <50000>;
>> +       #cooling-cells = <2>;
>>  };
>>
>>  &cpu2 {
>> @@ -335,6 +385,7 @@
>>         operating-points-v2 = <&cpu_opp_table>;
>>         clocks = <&clkc CLKID_CPU_CLK>;
>>         clock-latency = <50000>;
>> +       #cooling-cells = <2>;
>>  };
>>
>>  &cpu3 {
>> @@ -342,6 +393,7 @@
>>         operating-points-v2 = <&cpu_opp_table>;
>>         clocks = <&clkc CLKID_CPU_CLK>;
>>         clock-latency = <50000>;
>> +       #cooling-cells = <2>;
>>  };
>>
>>  &cvbs_vdac_port {
>> @@ -368,6 +420,10 @@
>>         status = "okay";
>>  };
>>
>> +&mali {
>> +       #cooling-cells = <2>;
>> +};
> is there something device-specific in this patch? I'm wondering
> whether we can move all of this go g12a.dtsi to simplify maintenance
> in the future

this is depending of each board. actually it's same on all

but if a new one have a fan this value should be different or not.


>
>
> Martin


thanks,

Guillaume


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
