Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F8F3604A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 17:27:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mfp/hktxE+X5qYP11PO9vkt1ptICiBU8oi3CD33xr1o=; b=uH7YnmHRkDC8CZ
	yNdrZLrspPKuhrUTa3n2bcq11CgdcchT5xfbFkRmz3pTZjYlBVi6gzOPsrRHDuYBT/elxoW/W58JJ
	Z7MmtWh8tp4YwnJMjJNZpzOwIqvyiDbVrpY/5rXkA94PqrbNkGef/VRj/CieVPN1Gqb3zJF/p2yH3
	5eX7lTJqp5pY7QOfXw40c5owAPU6LS4eWuhpNRqAm0EHB/qe5eiaaseAqc8DU0JxV08iz4DdkdaxV
	nR+5WS9cZ7VALo1f9A/5BBW9QsDBFIrrtabve5vQ4DjhsGy1Z4wZD6jwGG6F+ylVr5qrkPI0dzFh0
	Jo2MCr3B+ZPmH53SQ0Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYXpC-0002dv-Mt; Wed, 05 Jun 2019 15:27:38 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYXp4-0002cw-QI
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 15:27:32 +0000
Received: by mail-pf1-x441.google.com with SMTP id x15so5241814pfq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 05 Jun 2019 08:27:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=bL2F5Kk1z37B/CBGiBHXHDAe9BGsJSubIxd5oJ6N+xU=;
 b=JnC5PSzF0dpVQw69G+2XoZLocnP6x7N9rI2cPtusWE/fddvUWozGnzbtsHQ2aa8sEc
 7+0hwpN5WyoALO0EsgvzKntrblkMdk0/sW12SHCR7LZ8K8nWV6dXF4D04VcDXdFkiaEs
 DeDPXmnOTqWiBMwAIc5QHaf1qxJWZKPOd4klLL55TrsDgbNPdpDgHZZNeykfn2x4qRM4
 fFYSAEoqNusLd1hI7+7/sni8dz8hIFVhCU3trmdSIRGDT0w/lgpjvchYlnqu1xp+VC80
 pSuouA8DqO+cclu+xPvSvbXH0tpMoihTHKnJPE6KzV0ls3lrGQjY7BBh6vCNP4V9Asce
 9Myg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=bL2F5Kk1z37B/CBGiBHXHDAe9BGsJSubIxd5oJ6N+xU=;
 b=DgMgLqaXLwAEBFp1fzjK6jZE1qOMYs7X4+UwJWjppsb0xLhI7tkyqVWL+tsi2RAauS
 QaH+Xl4O/e7ETdcQGs//RneSojp+uexpFHompbdnSJEZQEykguF84XwiHajWxS9eWGBj
 JwM3JRQ4ZeyOE4zkYhGtUHANsWxfQPNieWIuWr8p9ViKiPKio42ffc/SMH5aaaf3By+/
 FQwhNDZDnk1h85bE4Pg7RMftMcHks64qwlKVs6kb7Pkxr9KkO7tBVw+GYwIMCRKvfeWk
 JzjHzFk2Y7T/9CpOc8R9mhgplBcO+DRuFQ/oM75QRa9CxDORSlHaJJRtOwYRxo+ugEMs
 308Q==
X-Gm-Message-State: APjAAAWfNLzY9sbZdK7RgziDI7DIyEVoNL5UHx5pKJrhfcUImDvpir/X
 HOfyqZARLM3BBM7jSfMjHAEjmQ==
X-Google-Smtp-Source: APXvYqz2e4+YAz3gMkVuEi5gyTiboR8jSeUJlxflVDvvuuaQofZK4swW8J85VuYxCm33g15kXEUd8w==
X-Received: by 2002:a65:484d:: with SMTP id i13mr5108450pgs.27.1559748448854; 
 Wed, 05 Jun 2019 08:27:28 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.googlemail.com with ESMTPSA id y10sm23446768pfm.68.2019.06.05.08.27.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 Jun 2019 08:27:27 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Neil Armstrong <narmstrong@baylibre.com>,
 Anand Moon <linux.amoon@gmail.com>
Subject: Re: [PATCH v5 3/3] arm64: dts: meson: Add minimal support for
 Odroid-N2
In-Reply-To: <f1013078-5964-640e-de7a-4ad8b91ed005@baylibre.com>
References: <20190603091008.2382-1-narmstrong@baylibre.com>
 <20190603091008.2382-4-narmstrong@baylibre.com>
 <CANAwSgT964PY6OMkS-hoqBf39Np99-tzfGbpXGdLtxF600eDtQ@mail.gmail.com>
 <f1013078-5964-640e-de7a-4ad8b91ed005@baylibre.com>
Date: Wed, 05 Jun 2019 08:27:27 -0700
Message-ID: <7hr288gihs.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_082730_892651_433284C6 
X-CRM114-Status: GOOD (  14.61  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 linux-amlogic@lists.infradead.org, Linux Kernel <linux-kernel@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Neil Armstrong <narmstrong@baylibre.com> writes:

> On 03/06/2019 14:00, Anand Moon wrote:
>> Hi Niel,
>> 
>> On Mon, 3 Jun 2019 at 14:41, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>>
>>> This patch adds basic support for :
>>> - Amlogic G12B, which is very similar to G12A
>>> - The HardKernel Odroid-N2 based on the S922X SoC
>>>
>>> The Amlogic G12B SoC is very similar with the G12A SoC, sharing
>>> most of the features and architecture, but with these differences :
>>> - The first CPU cluster only has 2xCortex-A53 instead of 4
>>> - G12B has a second cluster of 4xCortex-A73
>>> - Both cluster can achieve 2GHz instead of 1,8GHz for G12A
>>> - CPU Clock architecture is difference, thus needing a different
>>>   compatible to handle this slight difference
>>> - Supports a MIPI CSI input
>>> - Embeds a Mali-G52 instead of a Mali-G31, but integration is the same
>>>
>>> Actual support is done in the same way as for the GXM support, including
>>> the G12A dtsi and redefining the CPU clusters.
>>> Unlike GXM, the first cluster is different, thus needing to remove
>>> the last 2 cpu nodes of the first cluster.
>>>
>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>>> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>>> ---
>>>  arch/arm64/boot/dts/amlogic/Makefile          |   1 +
>>>  .../boot/dts/amlogic/meson-g12b-odroid-n2.dts | 289 ++++++++++++++++++
>>>  arch/arm64/boot/dts/amlogic/meson-g12b.dtsi   |  82 +++++
>>>  3 files changed, 372 insertions(+)
>>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>>  create mode 100644 arch/arm64/boot/dts/amlogic/meson-g12b.dtsi
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>>> index e129c03ced14..07b861fe5fa5 100644
>>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>>> @@ -3,6 +3,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-axg-s400.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-sei510.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-u200.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-g12a-x96-max.dtb
>>> +dtb-$(CONFIG_ARCH_MESON) += meson-g12b-odroid-n2.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nanopi-k2.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-nexbox-a95x.dtb
>>>  dtb-$(CONFIG_ARCH_MESON) += meson-gxbb-odroidc2.dtb
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>> new file mode 100644
>>> index 000000000000..161d8f0ff4f3
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dts
>>> @@ -0,0 +1,289 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2019 BayLibre, SAS
>>> + * Author: Neil Armstrong <narmstrong@baylibre.com>
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "meson-g12b.dtsi"
>>> +#include <dt-bindings/input/input.h>
>>> +#include <dt-bindings/gpio/meson-g12a-gpio.h>
>>> +
>>> +/ {
>>> +       compatible = "hardkernel,odroid-n2", "amlogic,g12b";
>>> +       model = "Hardkernel ODROID-N2";
>>> +
>>> +       aliases {
>>> +               serial0 = &uart_AO;
>>> +               ethernet0 = &ethmac;
>>> +       };
>>> +
>
> [...]
>
>>> +
>>> +       main_12v: regulator-main_12v {
>>> +               compatible = "regulator-fixed";
>>> +               regulator-name = "12V";
>>> +               regulator-min-microvolt = <12000000>;
>>> +               regulator-max-microvolt = <12000000>;
>>> +               regulator-always-on;
>>> +       };
>>> +
>>> +       vcc_5v: regulator-vcc_5v {
>>> +               compatible = "regulator-fixed";
>>> +               regulator-name = "5V";
>>> +               regulator-min-microvolt = <5000000>;
>>> +               regulator-max-microvolt = <5000000>;
>>> +               regulator-always-on;
>> 
>> As per odroid-n2_rev0.4_20190307 schematic its missing.
>>                   vin-supply =  <&main_12v>;
>> 
>> With this please add my.
>> Tested-by: Anand Moon <linux.amoon@gmail.com>
>
> Good catch, thanks Anand.
>
> @Kevin, should I resend ?

No need, I've fixed it up locally,

Thanks,

Kevin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
