Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 121DF1022C1
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 12:16:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4S2RKdIx/9qWhgCXMXaqlvFCA+JvYDDocf0QN3pFKQ=; b=cQWrKu3CpZCn4Y
	kHoXl5JPjjqkH8odTV70dQDIp4u7gj4RAKOxfIbWKaUN3Ugj0gyo+j6yaXcFJaJwGccYjsUHb9gv+
	N1nCOK1HKTXQ7QOPEXiB5A4ZrAbo/aEbYQ2pTUq/Flx7P9YEK6qBaOKafl3rRWX1q4wHLEi789Ss0
	F0GbboUm/cCcnrVQHZVru1Zvy3aPzQtjvnbqpSYYh3ehiZGo6HwO+sCe6Rb4ngMPSaUoOOeLBg3sR
	5QMcCMRrs7WOD7errVCd/jjieHhX/HuXRRLGxq9EHNOBKSOOj09lr/rRu3rmeQJiI1RU6nRqVeikk
	QXrMhhLMiA1H0UuyXKGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iX1UU-0001UQ-3G; Tue, 19 Nov 2019 11:16:14 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iX1UL-0001To-4C; Tue, 19 Nov 2019 11:16:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id q70so2736515wme.1;
 Tue, 19 Nov 2019 03:16:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=WSYGbqNbci1f2vNf24fXooIQD/06dOY7UKmcaqXzg8w=;
 b=nwiafkFNXgpoTHElJ5jedbcT6/z48qKUE7H4VtHVSfsB12Iby4RaxqCO3FG963khUE
 mQcerDz5W+DVIDBlamT8/15nfQKCjk3pxN1LOdUMzLXmjvMzVAMsg89zXABdl+xLIRAa
 oaM3f8lp2g6pz+95xd0ajE+U1Y6bBKaB0U1G1dhPEnKLhOVLk6MO1IEmVSzC3e6XNVPf
 ZKeur5lmzsHnEKCg69uHw9IRQB+hB4m2ChmVgtwzMtTwZ/7OwoSwA1z1FgHElIDMTOtm
 15ph7kr/+6f3/ygQUo6sO7VgCLhk9OCu0Wy/Pvd48HCZ/w7A7tLzmOlwhm4pHMS/nI2o
 XGUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=WSYGbqNbci1f2vNf24fXooIQD/06dOY7UKmcaqXzg8w=;
 b=L3PvPlaGu6LAtR37C+3mv7tVKnQ++NUBIvAgQPsHpMei4qE0Yuuh9ByR6JGwL4pdh5
 wlvwBhT9Z68bKMcoYHr/dhd/serS0/uFH8d9U2yWqHl/8eAXLas58l+8FDrA3NVe85YW
 8vsfyqAYy+1LDoQw8DnHlt8NlPzf5XTCu82YaNP0S89edGNgaudYPJnSwdUm7WpLwgBx
 QR4JIyVjUqelq6hksBUH2jyJ67cf8NiQiSRpfB5hgBZqE9VNLWSqT0IlsY+FkpLWy2Qr
 secpqFw31QA+RVWs2VIlW4no6dLtAdbY61t4yEF3NLWn2PUy7LIYOBXmBbhjVGhsf02r
 +vCQ==
X-Gm-Message-State: APjAAAX3Xz+O9AANbG1iPTaRT92tXY0+c4iPHwmsnFLrGyrSLi82Us4i
 /CCJLzgIsx/wkPlKX94iWwo=
X-Google-Smtp-Source: APXvYqzJWB5Rf2ro+wbSGqakm6T8baD+43sGJon6MX7ANi30SIiqzSW5F7If7bLF3tRGfSmkskm9lw==
X-Received: by 2002:a1c:7e82:: with SMTP id z124mr4494450wmc.136.1574162162288; 
 Tue, 19 Nov 2019 03:16:02 -0800 (PST)
Received: from ziggy.stardust ([37.223.144.104])
 by smtp.gmail.com with ESMTPSA id u13sm2611214wmm.45.2019.11.19.03.16.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 19 Nov 2019 03:16:01 -0800 (PST)
Subject: Re: [PATCH v2 3/3] ARM: dts: bcm2711: Enable HWRNG support
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Stephen Brennan <stephen@brennan.io>
References: <20191119061407.69911-1-stephen@brennan.io>
 <20191119061407.69911-4-stephen@brennan.io>
 <e38de8daad5a2c9b03bda1aa2632844e3ed3d11e.camel@suse.de>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
 r2JwH1CJjrHWeQEI2ucSKsNa8FllDmG/fQ==
Message-ID: <4ae008c8-6e41-01f8-10a6-7b6ea72f96c4@gmail.com>
Date: Tue, 19 Nov 2019 12:15:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <e38de8daad5a2c9b03bda1aa2632844e3ed3d11e.camel@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_031605_191199_6C4612C7 
X-CRM114-Status: GOOD (  24.00  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [37.223.144.104 listed in zen.spamhaus.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Scott Branden <sbranden@broadcom.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Stefan Wahren <wahrenst@gmx.net>, linux-kernel@vger.kernel.org,
 Ray Jui <rjui@broadcom.com>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-crypto@vger.kernel.org, Matt Mackall <mpm@selenic.com>,
 bcm-kernel-feedback-list@broadcom.com, linux-arm-kernel@lists.infradead.org,
 linux-rpi-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 19/11/2019 11:07, Nicolas Saenz Julienne wrote:
> Hi Stephen, thanks for the follow-up.
> 
> On Mon, 2019-11-18 at 22:14 -0800, Stephen Brennan wrote:
>> BCM2711 features a RNG200 hardware random number generator block, which is
>> different from the BCM283x from which it inherits. Move the rng block from
>> BCM283x into a separate common file, and update the rng declaration of
>> BCM2711.
>>
>> Signed-off-by: Stephen Brennan <stephen@brennan.io>
>> ---
> 
> It's petty in this case but you should add a list of changes here too.
> 
>>  arch/arm/boot/dts/bcm2711.dtsi        |  6 +++---
>>  arch/arm/boot/dts/bcm2835.dtsi        |  1 +
>>  arch/arm/boot/dts/bcm2836.dtsi        |  1 +
>>  arch/arm/boot/dts/bcm2837.dtsi        |  1 +
>>  arch/arm/boot/dts/bcm283x-common.dtsi | 11 +++++++++++
>>  arch/arm/boot/dts/bcm283x.dtsi        |  6 ------
>>  6 files changed, 17 insertions(+), 9 deletions(-)
>>  create mode 100644 arch/arm/boot/dts/bcm283x-common.dtsi
>>
>> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
>> index ac83dac2e6ba..4975567e948e 100644
>> --- a/arch/arm/boot/dts/bcm2711.dtsi
>> +++ b/arch/arm/boot/dts/bcm2711.dtsi
>> @@ -92,10 +92,10 @@ pm: watchdog@7e100000 {
>>  		};
>>  
>>  		rng@7e104000 {
>> +			compatible = "brcm,bcm2711-rng200";
>> +			reg = <0x7e104000 0x28>;
>>  			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>;
>> -
>> -			/* RNG is incompatible with brcm,bcm2835-rng */
>> -			status = "disabled";
>> +			status = "okay";
>>  		};
>>  
>>  		uart2: serial@7e201400 {
>> diff --git a/arch/arm/boot/dts/bcm2835.dtsi b/arch/arm/boot/dts/bcm2835.dtsi
>> index 53bf4579cc22..f7b2f46e307d 100644
>> --- a/arch/arm/boot/dts/bcm2835.dtsi
>> +++ b/arch/arm/boot/dts/bcm2835.dtsi
>> @@ -1,5 +1,6 @@
>>  // SPDX-License-Identifier: GPL-2.0
>>  #include "bcm283x.dtsi"
>> +#include "bcm283x-common.dtsi"
>>  #include "bcm2835-common.dtsi"
>>  
>>  / {
>> diff --git a/arch/arm/boot/dts/bcm2836.dtsi b/arch/arm/boot/dts/bcm2836.dtsi
>> index 82d6c4662ae4..a85374195796 100644
>> --- a/arch/arm/boot/dts/bcm2836.dtsi
>> +++ b/arch/arm/boot/dts/bcm2836.dtsi
>> @@ -1,5 +1,6 @@
>>  // SPDX-License-Identifier: GPL-2.0
>>  #include "bcm283x.dtsi"
>> +#include "bcm283x-common.dtsi"
>>  #include "bcm2835-common.dtsi"
>>  
>>  / {
>> diff --git a/arch/arm/boot/dts/bcm2837.dtsi b/arch/arm/boot/dts/bcm2837.dtsi
>> index 9e95fee78e19..045d78ffea08 100644
>> --- a/arch/arm/boot/dts/bcm2837.dtsi
>> +++ b/arch/arm/boot/dts/bcm2837.dtsi
>> @@ -1,4 +1,5 @@
>>  #include "bcm283x.dtsi"
>> +#include "bcm283x-common.dtsi"
>>  #include "bcm2835-common.dtsi"
>>  
>>  / {
>> diff --git a/arch/arm/boot/dts/bcm283x-common.dtsi
>> b/arch/arm/boot/dts/bcm283x-common.dtsi
>> new file mode 100644
>> index 000000000000..3c8834bee390
>> --- /dev/null
>> +++ b/arch/arm/boot/dts/bcm283x-common.dtsi
>> @@ -0,0 +1,11 @@
>> +// SPDX-License-Identifier: GPL-2.0
>> +
>> +/ {
>> +	soc {
>> +		rng@7e104000 {
>> +			compatible = "brcm,bcm2835-rng";
>> +			reg = <0x7e104000 0x10>;
>> +			interrupts = <2 29>;
>> +		};
>> +	};
>> +};
> 
> I think Stefan wrote bcm283x-common.dtsi by mistake, he really meant
> bcm2835-common.dtsi.
> 

Thanks I was just wondering on which tree/patch-set this was based.

Regards,
Matthias

> See bcm2835-common.dtsi's header comment:
> 
> /* This include file covers the common peripherals and configuration between
>  * bcm2835, bcm2836 and bcm2837 implementations.
>  */
> 
> Regards,
> Nicolas
> 
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
