Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6A1D8C0D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 11:00:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bhbANFVKjiTcTDnrxCC9gQsx4sP0SqIWnXCa4Tjm17g=; b=Oheg5zd3mx1USn
	FZEZwOwBhgWu4s6T0UKVxZcEJhag/RnkW1JXkwy7knynRF715dbWHOfXOtnCaJBZd5CA5qx2GFRbL
	LGMAaJDhWqana9qL7zNl1FoiR/qSP7ycQ+PQaYiQtgI2paoggsJNscJA1QRzCD8akoZyvnlM2du1x
	Uo9ILjut43rMGWghNpkhQeR4YkJcV1WRrSzQf7lvcTzHbej6DzeFYnLqsDeQDGe+rgMVgg1K23pCH
	qU86inTcPPyO/R+zU/Ib5kSzdt6hYcyADV75KryfSAaWOpgMDgCANw5VdVm5NcVw/BNv7X9IwzRQp
	ZPUavMeBGo+uEK7kiVGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKfAU-0000he-BG; Wed, 16 Oct 2019 09:00:30 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfAI-0000Vc-Gn
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 09:00:20 +0000
Received: by mail-wr1-x444.google.com with SMTP id v8so27080156wrt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 16 Oct 2019 02:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=FWwSZ7wVHB66iuc6hwPySPcSnpuZXmN+p1/bCDDEZAo=;
 b=UDSYSJtEKugyDuq3KMpdtgOOFzhbwAnFU4ZHVk/+xe+ABJ96+ug84qKCiMiV2jqyQa
 Njv7sRzHFCpauHdKZFWwRP0m+5MVLn4AhaVYieFt49Ho2dYnBY0vn7k5Ug+Nl/Ghq+o6
 nveOswF2JtJ4xceyVyyooCOCmvd8HTws5+h5VU6uUQThGLvMa+oqwNKyS+7Twodw3CjA
 48R3xyCTlsZ47z46SHSH/GQ8WYVK6Xlejnmg/w+peYethFa0qHtGR+77fN48BWDtdUO0
 srnSh4tnrIuhDEiNUJc01vM7ctZtyAV1kuVzeIJ37ajYYxFRR/T1MHZm8DsbfAfdWTrX
 9SfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=FWwSZ7wVHB66iuc6hwPySPcSnpuZXmN+p1/bCDDEZAo=;
 b=OaWViHwcagUlURjmT41m5Ld+upJW9yWQjLzpKoSbEzvv10SvIDfrNAFIe6VSN4ZiD3
 J6BWGlDEUq4mp9jCMtP+OWuO3YPvw/DuQIO6vKHDBGehgVGRsxe+OoOKeish7nHycoGz
 9qnoOF3/EXA3Y5OPcfCizLd2E0Msj/QpvAW86HhUeP+cLL9DK7JUb9kEjaj5kYrOdhB0
 KeDTCpH+ZuZt5vmaVGmWAVoU97bgfXgZ7bhGVgT/eiFrMfwfMdGMyDwUxVyNVcecxK+N
 9XijnluDIPdrhM9ofSVzTOme0SXaSCCDHGKDgZUaue/8fcY6UFDXESyb0O3JCKwQW4RC
 z3zg==
X-Gm-Message-State: APjAAAUdj7xkg1px7TdUBOrXfr4ZPvNs7VqU3xAvaADi1rwCz7psVAYI
 UggV70ZAc9FVZ0KPd7B4k+qjJw==
X-Google-Smtp-Source: APXvYqy8jmTWK22einYBZkkJUT3gZQaCWv3cRPLnG6y72qAhJWTSUhHTPba7TgOkJn0GB6oggXGTqA==
X-Received: by 2002:a05:6000:11cd:: with SMTP id
 i13mr1616456wrx.197.1571216414621; 
 Wed, 16 Oct 2019 02:00:14 -0700 (PDT)
Received: from [10.1.4.98] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id p85sm2026845wme.23.2019.10.16.02.00.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 02:00:13 -0700 (PDT)
Subject: Re: [PATCH v7 4/7] arm64: dts: meson: g12: Add minimal thermal zone
To: Amit Kucheria <amit.kucheria@linaro.org>
References: <20191004090114.30694-1-glaroque@baylibre.com>
 <20191004090114.30694-5-glaroque@baylibre.com>
 <CAHLCerOzZ6kc0nrGL+XMi37WuBKUv6E0yzE26wUZ5XoRMS8q6w@mail.gmail.com>
From: guillaume La Roque <glaroque@baylibre.com>
Message-ID: <347c0fe0-62de-8ef5-c1ca-8958fef81820@baylibre.com>
Date: Wed, 16 Oct 2019 11:00:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAHLCerOzZ6kc0nrGL+XMi37WuBKUv6E0yzE26wUZ5XoRMS8q6w@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_020018_568306_03E71166 
X-CRM114-Status: GOOD (  16.67  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 linux-amlogic@lists.infradead.org, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 10/16/19 1:20 AM, Amit Kucheria wrote:
> On Fri, Oct 4, 2019 at 2:31 PM Guillaume La Roque <glaroque@baylibre.com> wrote:
>> Add minimal thermal zone for two temperature sensor
>> One is located close to the DDR and the other one is
>> located close to the PLLs (between the CPU and GPU)
>>
>> Acked-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
>> Tested-by: Christian Hewitt <christianshewitt@gmail.com>
>> Tested-by: Kevin Hilman <khilman@baylibre.com>
>> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
>> ---
>>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 57 +++++++++++++++++++
>>  1 file changed, 57 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> index 0660d9ef6a86..a98c16e163c2 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> @@ -12,6 +12,7 @@
>>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>>  #include <dt-bindings/reset/amlogic,meson-axg-audio-arb.h>
>>  #include <dt-bindings/reset/amlogic,meson-g12a-reset.h>
>> +#include <dt-bindings/thermal/thermal.h>
>>
>>  / {
>>         interrupt-parent = <&gic>;
>> @@ -94,6 +95,61 @@
>>                 #size-cells = <2>;
>>                 ranges;
>>
>> +               thermal-zones {
>> +                       cpu_thermal: cpu-thermal {
>> +                               polling-delay = <1000>;
>> +                               polling-delay-passive = <100>;
> Ordinarily, you would need to set these delays to 0 in interrupt mode
> to prevent polling overhead. I've just submitted a patch to of-thermal
> that should fix this requirement. Could you check if it works for you?

it's working for me.

thanks for your review.

>> +                               thermal-sensors = <&cpu_temp>;
>> +
>> +                               trips {
>> +                                       cpu_passive: cpu-passive {
>> +                                               temperature = <85000>; /* millicelsius */
>> +                                               hysteresis = <2000>; /* millicelsius */
>> +                                               type = "passive";
>> +                                       };
>> +
>> +                                       cpu_hot: cpu-hot {
>> +                                               temperature = <95000>; /* millicelsius */
>> +                                               hysteresis = <2000>; /* millicelsius */
>> +                                               type = "hot";
>> +                                       };
>> +
>> +                                       cpu_critical: cpu-critical {
>> +                                               temperature = <110000>; /* millicelsius */
>> +                                               hysteresis = <2000>; /* millicelsius */
>> +                                               type = "critical";
>> +                                       };
>> +                               };
>> +                       };
>> +
>> +                       ddr_thermal: ddr-thermal {
>> +                               polling-delay = <1000>;
>> +                               polling-delay-passive = <100>;
>> +                               thermal-sensors = <&ddr_temp>;
>> +
>> +                               trips {
>> +                                       ddr_passive: ddr-passive {
>> +                                               temperature = <85000>; /* millicelsius */
>> +                                               hysteresis = <2000>; /* millicelsius */
>> +                                               type = "passive";
>> +                                       };
>> +
>> +                                       ddr_critical: ddr-critical {
>> +                                               temperature = <110000>; /* millicelsius */
>> +                                               hysteresis = <2000>; /* millicelsius */
>> +                                               type = "critical";
>> +                                       };
>> +                               };
>> +
>> +                               cooling-maps {
>> +                                       map {
>> +                                               trip = <&ddr_passive>;
>> +                                               cooling-device = <&mali THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
>> +                                       };
>> +                               };
>> +                       };
>> +               };
>> +
>>                 ethmac: ethernet@ff3f0000 {
>>                         compatible = "amlogic,meson-axg-dwmac",
>>                                      "snps,dwmac-3.70a",
>> @@ -2412,6 +2468,7 @@
>>                         assigned-clock-rates = <0>, /* Do Nothing */
>>                                                <800000000>,
>>                                                <0>; /* Do Nothing */
>> +                       #cooling-cells = <2>;
>>                 };
>>         };
>>
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
