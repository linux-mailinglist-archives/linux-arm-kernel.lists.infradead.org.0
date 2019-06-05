Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98E50357C9
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 09:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iRr7G7h/2la4xF0AaLGRj1DSDkQ8d/ifNh9wDCS3CUw=; b=K5LUpBaFnKHwCt
	LkakFmSFwVojgwpxgOFoW0MmkZ3mwoV2FS8qR5/dn+CgYHzWJIrr33S+/1A1mQfVYj11Sfn5qcb31
	jutY//yKmYojTEeUnwcQy0YHei83j7t6O6roMVkUbHA7jz4wf3Com6EKUXCGc3EDgLW+QXLr/zZwp
	BbIPr6jlecWXSY4JC7axByqTUyOMhnrzp6DfZevUNDO1LD2box5RJ4blg2O2rl06TA2iFF13sXy1V
	y2Xl630Q8Sgz2BXgFtHMzohSLRoYXGHPQo6Dz9/8qtsviHUBe3Sf4izUDOkTMwPd3ICAl6Wov815G
	6oS76YKihwsXSz6uJo+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYQQL-0002vK-I9; Wed, 05 Jun 2019 07:33:29 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYQQC-0002uF-Hl
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 07:33:22 +0000
Received: by mail-wr1-x444.google.com with SMTP id p11so13502858wre.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 00:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=YPTS2xsh/hjYhEwvFzk/oKxMOw+hBEU6i+VA4Oa4RAA=;
 b=OrDK30H7kdT91LanmOxKm6qvImDyBgxCkbY4O9EqOoQfk5Y3p34xYg8bTwbWBNfb1e
 PwcKk44UE8KI63vCyDylyHJRFIGFVUQi0cZFTW0dRanSaYctxR3UwsGv+OA3Qb16HBmX
 7MEuT7qgpFmQ7bY1MmdI/Hi+KN188zRf0KC9OcetZvyoexXM7zxSx0pYx5h1c/z58Kbf
 YI1Kv/msOOjZNXjizqlJkkSWf2AGmtHNvKwPZImHnwWUGCfUCJeuns4OQa5jQtgdZ6pa
 xpwnHCqb/t1nEllKcZVnkZ9rkFGl9Ik/SqYnXWcSSiKhp08G057yLONF0XoEXZQCgo8V
 59iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=YPTS2xsh/hjYhEwvFzk/oKxMOw+hBEU6i+VA4Oa4RAA=;
 b=aFQTvMxHyzv0Iu/T4rpajoL0JpciLiPMneWGQkQHulHTBGKJgMROI9nQ94kKQOe45O
 W0zrKLBqNniTP3Ngo7PYVSohrU5d844Bgm+n5H1qdN2MQSGZ2TrLZQEw+TcyMfzZvQwt
 mo50Z6V8vvFGeToGNwGSjUJI2jTToEusDpXH65HOMF6jF1zijnR2U7/TxerMdbAxgDIb
 Ggf73ZBD59uXX9+4oyhQCqolRiP97Aic29Qz0dZt0X7krfZgrz4FsiYmQLTCQeWbZUOJ
 iBMVE3mpFfHG4iaKepHOzyiLZG+3TnV8QH8mCGv4wG0oYQQbUArcdhkB5omKqmxYVOVh
 ++Jg==
X-Gm-Message-State: APjAAAX3jTnHxOBR3jqK6JyjdRzSHXaiEUf7jVd0bhGKvCSoY52l7pHZ
 AFiuzIt02ZbIPfy5Gq9TaLx5GaTD5DT7xA==
X-Google-Smtp-Source: APXvYqw6UQCWXoI8gZfmDti0iTUpqFLPKezjP1/itouqgj21d7bWBCgUBJOyenF1OlqErQGXQ4h1nQ==
X-Received: by 2002:a5d:4b4a:: with SMTP id w10mr7742698wrs.337.1559719998098; 
 Wed, 05 Jun 2019 00:33:18 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o3sm21074475wmo.6.2019.06.05.00.33.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 05 Jun 2019 00:33:17 -0700 (PDT)
Subject: Re: [PATCH v5 3/3] arm64: dts: meson: Add minimal support for
 Odroid-N2
To: Anand Moon <linux.amoon@gmail.com>
References: <20190603091008.2382-1-narmstrong@baylibre.com>
 <20190603091008.2382-4-narmstrong@baylibre.com>
 <CANAwSgT964PY6OMkS-hoqBf39Np99-tzfGbpXGdLtxF600eDtQ@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <f1013078-5964-640e-de7a-4ad8b91ed005@baylibre.com>
Date: Wed, 5 Jun 2019 09:33:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CANAwSgT964PY6OMkS-hoqBf39Np99-tzfGbpXGdLtxF600eDtQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_003320_641747_589B7F36 
X-CRM114-Status: GOOD (  21.43  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/06/2019 14:00, Anand Moon wrote:
> Hi Niel,
> 
> On Mon, 3 Jun 2019 at 14:41, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> This patch adds basic support for :
>> - Amlogic G12B, which is very similar to G12A
>> - The HardKernel Odroid-N2 based on the S922X SoC
>>
>> The Amlogic G12B SoC is very similar with the G12A SoC, sharing
>> most of the features and architecture, but with these differences :
>> - The first CPU cluster only has 2xCortex-A53 instead of 4
>> - G12B has a second cluster of 4xCortex-A73
>> - Both cluster can achieve 2GHz instead of 1,8GHz for G12A
>> - CPU Clock architecture is difference, thus needing a different
>>   compatible to handle this slight difference
>> - Supports a MIPI CSI input
>> - Embeds a Mali-G52 instead of a Mali-G31, but integration is the same
>>
>> Actual support is done in the same way as for the GXM support, including
>> the G12A dtsi and redefining the CPU clusters.
>> Unlike GXM, the first cluster is different, thus needing to remove
>> the last 2 cpu nodes of the first cluster.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>> ---
>>  arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 289 ++++++++++++++++++
>>  arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  82 +++++
>>  3 files changed, 372 insertions(+)
>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>> index e129c03ced14..07b861fe5fa5 100644
>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>> @@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nanopi-k2.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nexbox-a95x.dtb
>>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-odroidc2.dtb
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>> new file mode 100644
>> index 000000000000..161d8f0ff4f3
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>> @@ -0,0 +1,289 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2019 BayLibre, SAS
>> + * Author: Neil Armstrong <narmstrong@baylibre.com>
>> + */
>> +
>> +/dts-v1/;
>> +
>> +#include "meson-g12b.dtsi"
>> +#include <dt-bindings/input/input.h>
>> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
>> +
>> +/ {
>> +       compatible = "hardkernel,odroid-n2", "amlogic,g12b";
>> +       model = "Hardkernel ODROID-N2";
>> +
>> +       aliases {
>> +               serial0 = &uart_AO;
>> +               ethernet0 = &ethmac;
>> +       };
>> +

[...]

>> +
>> +       main_12v: regulator-main_12v {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "12V";
>> +               regulator-min-microvolt = <12000000>;
>> +               regulator-max-microvolt = <12000000>;
>> +               regulator-always-on;
>> +       };
>> +
>> +       vcc_5v: regulator-vcc_5v {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "5V";
>> +               regulator-min-microvolt = <5000000>;
>> +               regulator-max-microvolt = <5000000>;
>> +               regulator-always-on;
> 
> As per odroid-n2_rev0.4_20190307 schematic its missing.
>                   vin-supply =  <&main_12v>;
> 
> With this please add my.
> Tested-by: Anand Moon <linux.amoon@gmail.com>

Good catch, thanks Anand.

@Kevin, should I resend ?

Neil

> 
> Best Regards
> -Anand
>> +       };
>> +
>> +       vcc_1v8: regulator-vcc_1v8 {
>> +               compatible = "regulator-fixed";
>> +               regulator-name = "VCC_1V8";
>> +               regulator-min-microvolt = <1800000>;
>> +               regulator-max-microvolt = <1800000>;
>> +               vin-supply = <&vcc_3v3>;
>> +               regulator-always-on;
>> +       };
>> +

[...]

>> +
>> +&clkc {
>> +       compatible = "amlogic,g12b-clkc";
>> +};
>> --
>> 2.21.0
>>
>>
>> _______________________________________________
>> linux-amlogic mailing list
>> linux-amlogic@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-amlogic


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
