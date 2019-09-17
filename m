Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 465D4B4826
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 09:19:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dC/nfM2Hk3hVmyvlT84J/TCKHiPfNATratkc/XnvO/g=; b=RpFDYYikebyEh+
	6BwNHuZo8GjJJ+rbooBGHNJz9G+KbRw+qJKAuWeDgrLPG6DTXp3YLpZi7iMmot+/jAh6lhKiRPL19
	DKKeKkBqvdNcxAZJg8OL7bXCBfe+QagYs07VPO5rHSfU7fpTzXrPc9DQRwJB/7/Mh/VYqBi0/8TnF
	HGsUdcKTcR7hiZ/31VoalXM6YeJ2LMZoKpdVX3LhYnQU0UyxDo2r2rL1wNpRZLMwR2nl07p2Lz213
	SVbMwVOyvD4q1sE8r1CDi32kSB1MWFD3Q/xRfcHZVgbOKAwiqZbQBTYWzCO4chLeo3ExALW7fNudC
	7d7qiU2wVSMnbSa6Ln7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iA7lJ-0002cD-1B; Tue, 17 Sep 2019 07:18:57 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iA7l3-0002aO-20
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 07:18:42 +0000
Received: by mail-wm1-x343.google.com with SMTP id 5so1936144wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 17 Sep 2019 00:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lZlnCNVI+o/Ym70WrqgDXSsHG8WUlpLxDhw1IYyU3y0=;
 b=Bpui4gEcpv8XIa/t8sWKZhn1D4Y9a3dj5Lj16Zlj7S+OdcnyILSxClhs0Ubu6p3gaS
 hkun62sGaD2i6Q657s4tkhZ84XVNjT7DzWn+CDxQYJqNN2PSh1DS3md+9wE3qDRFVd+3
 O7MknPMmR5RjOWf9DpGY2Yy4XgdT9cbGsGcE3YAslTu0GO6Hgt+E1r0cMFZ8LLXSoLar
 R7nQPt9hvAVM/EohIPl7yjrpZGRa4/YaKV6IP9GqAk4HE9G4xtVRqLHnhMnCk9phLHOU
 UqF0CLbv49wegsI76xZiG/enshUVNZPvE05Cip6hRAWYGAIdAHHzJrG1A30cOUlWj3SL
 Gnqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=lZlnCNVI+o/Ym70WrqgDXSsHG8WUlpLxDhw1IYyU3y0=;
 b=SMq0/2Wn05qiiRV6J92dy4gqZF6zNv8bIgE3EsOSBbSVlRCjv5jAUkmBPth8hIvIzv
 pU54Jp1N0OTCRhVFZLW782/zNpNQe/uplk+ZLeCaepujSXdK0HJVAfBI6Yo+WJNqCAmh
 wMM+igTEgCHbfamgSP3vumlZYX2gG8kr3yyGsgtXr0Vb6RyC1HaufpHTVX1bCd80GFm7
 0HVTmHeqbGP11SLmzS6s33+jO7Vpp53ldocBoQ9fxScQT3HVz/3Lq32DN9sDfOfKA061
 Iw9eNJiiSS2YU/hu7PG4hQ6aKilw4oYpforhwgi3+mvjGjWlDaL2x6fNKbgfrKdmAfkI
 DbtQ==
X-Gm-Message-State: APjAAAWrlJyQuQmYvBEGyzcrgOyeONVX2oJrHv/YdtWdjfAjCnfrU0oL
 HNHEOOk1avZ32Mh1p7zanXSg1w==
X-Google-Smtp-Source: APXvYqz5TAwyP1uMw6gz83Ndgi3x0Ibgci5qE37AmzXVXxDqoapU0Py9Gzr/6Oc0YbT/0W2hQkdfmA==
X-Received: by 2002:a05:600c:2386:: with SMTP id
 m6mr2258168wma.164.1568704719002; 
 Tue, 17 Sep 2019 00:18:39 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id f143sm2021130wme.40.2019.09.17.00.18.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 17 Sep 2019 00:18:38 -0700 (PDT)
Subject: Re: [PATCH 1/3] pinctrl: add compatible for Amlogic Meson A1 pin
 controller
To: Qianggui Song <qianggui.song@amlogic.com>,
 Linus Walleij <linus.walleij@linaro.org>, linux-gpio@vger.kernel.org
References: <1568700442-18540-1-git-send-email-qianggui.song@amlogic.com>
 <1568700442-18540-2-git-send-email-qianggui.song@amlogic.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <131cf06f-2530-4524-9f86-3c07641bb460@baylibre.com>
Date: Tue, 17 Sep 2019 09:18:37 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1568700442-18540-2-git-send-email-qianggui.song@amlogic.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_001841_106896_5E1F23DF 
X-CRM114-Status: GOOD (  18.70  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 17/09/2019 08:07, Qianggui Song wrote:
> Add new compatible name for Amlogic's Meson-A1 pin controller
> add a dt-binding header file which document the detail pin names.

Please add in the commit log that A1 doesn't need the DS bank reg,
so when we will convert these bindings to yaml we will be aware of it.

> 
> Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
> ---
>  .../devicetree/bindings/pinctrl/meson,pinctrl.txt  |  1 +
>  include/dt-bindings/gpio/meson-a1-gpio.h           | 73 ++++++++++++++++++++++
>  2 files changed, 74 insertions(+)
>  create mode 100644 include/dt-bindings/gpio/meson-a1-gpio.h
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
> index 10dc4f7..0aff1f2 100644
> --- a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
> +++ b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
> @@ -15,6 +15,7 @@ Required properties for the root node:
>  		      "amlogic,meson-axg-aobus-pinctrl"
>  		      "amlogic,meson-g12a-periphs-pinctrl"
>  		      "amlogic,meson-g12a-aobus-pinctrl"
> +		      "amlogic,meson-a1-periphs-pinctrl"
>   - reg: address and size of registers controlling irq functionality
>  
>  === GPIO sub-nodes ===
> diff --git a/include/dt-bindings/gpio/meson-a1-gpio.h b/include/dt-bindings/gpio/meson-a1-gpio.h
> new file mode 100644
> index 0000000..40e57a5
> --- /dev/null
> +++ b/include/dt-bindings/gpio/meson-a1-gpio.h
> @@ -0,0 +1,73 @@
> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
> +/*
> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
> + * Author: Qianggui Song <qianggui.song@amlogic.com>
> + */
> +
> +#ifndef _DT_BINDINGS_MESON_A1_GPIO_H
> +#define _DT_BINDINGS_MESON_A1_GPIO_H
> +
> +#define GPIOP_0		0
> +#define GPIOP_1		1
> +#define GPIOP_2		2
> +#define GPIOP_3		3
> +#define GPIOP_4		4
> +#define GPIOP_5		5
> +#define GPIOP_6		6
> +#define GPIOP_7		7
> +#define GPIOP_8		8
> +#define GPIOP_9		9
> +#define GPIOP_10	10
> +#define GPIOP_11	11
> +#define GPIOP_12	12
> +#define GPIOB_0		13
> +#define GPIOB_1		14
> +#define GPIOB_2		15
> +#define GPIOB_3		16
> +#define GPIOB_4		17
> +#define GPIOB_5		18
> +#define GPIOB_6		19
> +#define GPIOX_0		20
> +#define GPIOX_1		21
> +#define GPIOX_2		22
> +#define GPIOX_3		23
> +#define GPIOX_4		24
> +#define GPIOX_5		25
> +#define GPIOX_6		26
> +#define GPIOX_7		27
> +#define GPIOX_8		28
> +#define GPIOX_9		29
> +#define GPIOX_10	30
> +#define GPIOX_11	31
> +#define GPIOX_12	32
> +#define GPIOX_13	33
> +#define GPIOX_14	34
> +#define GPIOX_15	35
> +#define GPIOX_16	36
> +#define GPIOF_0		37
> +#define GPIOF_1		38
> +#define GPIOF_2		39
> +#define GPIOF_3		40
> +#define GPIOF_4		41
> +#define GPIOF_5		42
> +#define GPIOF_6		43
> +#define GPIOF_7		44
> +#define GPIOF_8		45
> +#define GPIOF_9		46
> +#define GPIOF_10	47
> +#define GPIOF_11	48
> +#define GPIOF_12	49
> +#define GPIOA_0		50
> +#define GPIOA_1		51
> +#define GPIOA_2		52
> +#define GPIOA_3		53
> +#define GPIOA_4		54
> +#define GPIOA_5		55
> +#define GPIOA_6		56
> +#define GPIOA_7		57
> +#define GPIOA_8		58
> +#define GPIOA_9		59
> +#define GPIOA_10	60
> +#define GPIOA_11	61
> +
> +#endif /* _DT_BINDINGS_MESON_A1_GPIO_H */
> 


With that fixed,

Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>

Neil

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
