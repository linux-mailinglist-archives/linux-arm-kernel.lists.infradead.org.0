Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516781BAFD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 18:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MxC/PnBOk58Jd8y87Vxspog1bIKifhSbff7OIxcpkyQ=; b=lx8g46wn5sazLV
	G3Koqxo6OM8vZoqqf79NR47UH+rqpnO3PkiKF+93aq52ux1L+R7Iib01H4Jvoe0x7RNXyZdlU8lA4
	vQbDtTFwQvDouJMiuDGmN90MYds3BsoC6G1XTzAX9ic4Oyf3u4X7HkyWgmvPfyGw2hIU/zqV/dJ2Y
	Zf5uZnrbtA/QHDP+PGcc+O9bjR3Pcpxe3UghqUH+YNJ0H8nngp/7YHNz77nrbv3UyKLnn7qcAfPIv
	zlls2gax91T1airYrLznQH3rPvhGa2HOYgevjc09pquJuMBHkWfbJ18uU3WXWB4jYtq0IVJWSEaVM
	EBBA+1OtyOvR/9ztQwcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQDnw-000635-7D; Mon, 13 May 2019 16:27:56 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQDnl-00061p-OS; Mon, 13 May 2019 16:27:49 +0000
Received: by mail-pg1-x541.google.com with SMTP id t22so7019727pgi.10;
 Mon, 13 May 2019 09:27:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=cmX5zNBq9LkzEO/PULEFT1WDDV5wTY9hFGBoP6Io8RE=;
 b=hx9w+Yytc4TJ+FCI5RvXYJe+LQ3RRljY0+nQ/da9H7lJZ4y2Cial4iYb/D2UXyQ0Kf
 imQ1uhhwf+LG6OMn/u1PU3gOmgT0/JZBZyxlvYG2KSdvLP6fJi3kpXahhLIc6mhmbabb
 vSTFFDLcng7JeiSaozXLsW4DzcXgtoLIJ0gtgE0i5scIw0O5CuyaYLP/SZ/KKNKxTVac
 dX4BBCtV3bNOqKyeO9wiHrA7WAduJEQZ3fSjVpaEnx9M/4ovCvMxI1FVafy50A8ytgZC
 oG/REsLGkoaTNWBgi90DeBargyazBvaR1+wqidnidoZUtdNjkdpIShdRXC8PhZw4B5t1
 wMxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=cmX5zNBq9LkzEO/PULEFT1WDDV5wTY9hFGBoP6Io8RE=;
 b=mmhsydMzw97C7LzdAp7ejsrTEmRIaxV/EoLIq8Fqrusv3It7itOMflXuVULYJwsOgj
 oUcodCSBEdxn+lOYB28MGIzD0onYECW+wvkzSK50Xm81hEAzfEoAupDG90Ozoaiz9cV4
 q9yn4OLeryVCLVOKvEES9GqH7r9jloER4QG4y10RHowZAg0WNcnTOys/eiU9bWS6cgy2
 WE2LXpqb1IXKdLmiys63zlH5b5IRPu53lCvHJN4LqBAJBeopNiO08hgLfxENiOXAZWa8
 bJyF9syrEXvRcm6Oy+mQYdgrGZHeEKxTq/w1JDC/LbbrvDDlOuuncZFLGeUSQJnh2uGs
 21ow==
X-Gm-Message-State: APjAAAVUxEJNgfzP8xPfIi+ELXLH+xWPW9Mojr7Z7fwomIuiK1Aci0lK
 jGx55QqVEWyNAJojtjWMie0=
X-Google-Smtp-Source: APXvYqyqjkeH5cSo6RdJn1gRWEe0YDMQv1QBTUwHnJ/nbnnP4Ko4h25BkrTgDF77d09Bola3tHrFzQ==
X-Received: by 2002:a63:534f:: with SMTP id t15mr32762263pgl.445.1557764863633; 
 Mon, 13 May 2019 09:27:43 -0700 (PDT)
Received: from [10.67.49.52] ([192.19.223.250])
 by smtp.googlemail.com with ESMTPSA id v4sm5843013pff.45.2019.05.13.09.27.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 09:27:42 -0700 (PDT)
Subject: Re: [PATCH 3/3] pinctrl: bcm2835: bcm7211: Add support for 7211
 pull-up functionality
To: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, linux-arm-kernel@lists.infradead.org
References: <20190509205955.27842-1-f.fainelli@gmail.com>
 <20190509205955.27842-4-f.fainelli@gmail.com>
 <eb73a935-3638-e7b5-c85e-7857d61a7511@i2se.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=f.fainelli@gmail.com; prefer-encrypt=mutual; keydata=
 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
 M5kY0ACeNhCZJvZ5g4C2Lc9fcTHu8jxmEkI=
Message-ID: <2c5b0576-bdba-d746-4056-8520e194de86@gmail.com>
Date: Mon, 13 May 2019 09:27:34 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <eb73a935-3638-e7b5-c85e-7857d61a7511@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_092747_869296_A6B6EC01 
X-CRM114-Status: GOOD (  22.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Doug Berger <opendmb@gmail.com>,
 Scott Branden <sbranden@broadcom.com>,
 Matheus Castello <matheus@castello.eng.br>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>, Al Cooper <alcooperx@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, Eric Anholt <eric@anholt.net>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
 Lukas Wunner <lukas@wunner.de>, Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/13/19 1:14 AM, Stefan Wahren wrote:
> Hi Florian,
> 
> On 09.05.19 22:59, Florian Fainelli wrote:
>> From: Al Cooper <alcooperx@gmail.com>
>>
>> The 7211 has a new way of selecting the pull-up/pull-down setting
>> for a GPIO pin. The registers used for the bcm2837, GP_PUD and
>> GP_PUDCLKn0, are no longer connected. A new set of registers,
>> GP_GPIO_PUP_PDN_CNTRL_REGx must be used. This commit will add
>> a new compatible string "brcm,bcm7211-gpio" and the kernel
>> driver will use it to select which method is used to select
>> pull-up/pull-down.
>>
>> Signed-off-by: Al Cooper <alcooperx@gmail.com>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  drivers/pinctrl/bcm/pinctrl-bcm2835.c | 85 +++++++++++++++++++++++++--
>>  1 file changed, 80 insertions(+), 5 deletions(-)
>>
>> diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> index 183d1ffe6a75..35d9f9593000 100644
>> --- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> +++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> @@ -57,15 +57,26 @@
>>  #define GPAFEN0		0x88	/* Pin Async Falling Edge Detect */
>>  #define GPPUD		0x94	/* Pin Pull-up/down Enable */
>>  #define GPPUDCLK0	0x98	/* Pin Pull-up/down Enable Clock */
>> +#define GP_GPIO_PUP_PDN_CNTRL_REG0 0xe4 /* 7211 Pin Pull-up/down select */
>>  
>>  #define FSEL_REG(p)		(GPFSEL0 + (((p) / 10) * 4))
>>  #define FSEL_SHIFT(p)		(((p) % 10) * 3)
>>  #define GPIO_REG_OFFSET(p)	((p) / 32)
>>  #define GPIO_REG_SHIFT(p)	((p) % 32)
>>  
>> +#define PUD_7211_MASK		0x3
>> +#define PUD_7211_REG_OFFSET(p)	((p) / 16)
>> +#define PUD_7211_REG_SHIFT(p)	(((p) % 16) * 2)
>> +
>>  /* argument: bcm2835_pinconf_pull */
>>  #define BCM2835_PINCONF_PARAM_PULL	(PIN_CONFIG_END + 1)
>>  
>> +enum bcm7211_pinconf_pull {
>> +	BCM7211_PINCONFIG_PULL_NONE,
>> +	BCM7211_PINCONFIG_PULL_UP,
>> +	BCM7211_PINCONFIG_PULL_DOWN,
>> +};
> 
> unfortunately this not usable for DTS files.
> 
> Please look at:
> include/dt-bindings/pinctrl/bcm2835.h

Good point, indeed, looks like I misported this from our downstream
kernel to upstream and the pins were already set correctly.

> 
> Btw the meaning between BCM2835 and BCM7211 of pull down and up is
> different :(
> 
That can be resolved entirely within the driver though, but yes, that's
unfortunate.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
