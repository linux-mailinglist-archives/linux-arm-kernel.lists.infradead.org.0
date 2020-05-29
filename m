Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 267F41E825D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 17:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mFAVa6IxAPzEZF9iKKxKkmyy7+G3tbX6VkhiVN9RK2w=; b=aeyGt0b9epYWt2
	j3REgJOs1rJGp/+nsE4uQ7FbrZUMttm2NF/EpMORUmr37/ZW2LJrWRJiQa0RFsjPFEXnTxi9gEcDO
	OeNrTbQjwUNraCBbNyRL5myzuUpvOLpzDY07MD5U4dQAA6HGTm8hkwW8V1S1m2TnSnxZCF+b5HzS+
	HyIFZBXscvHwzpdtm47XjfJW4hH6d6/YaOvBlMeG69CdBeSc+NTVLrXCYIp4mqAgWDI8tg+fg8VAE
	p3eg3CaF/cXv2MIKuGkz39bsCmQoAak/8otGue4fi6r878DzPG/yIhx1VsDTKVjxO14kuPr+MWdHM
	AuIBsG1SpZiWfWKTwFjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehBg-0007SB-2j; Fri, 29 May 2020 15:44:48 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehBX-0007RH-MD; Fri, 29 May 2020 15:44:41 +0000
Received: by mail-wm1-x341.google.com with SMTP id f185so4119490wmf.3;
 Fri, 29 May 2020 08:44:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=dZl3sOoHlWuzucNXfMp2p0mgDBU/NJ3Y6nLUtAUeFPY=;
 b=iQh51dnsOVAsZ7p1i/vc+iLPLJedHjqmvk0WT6zqHKt35yhG+mF5N24hr44F71lnt3
 ziXY8P94diOdcINikFCpltde3xjphLzv2losCnWXGrBRUSkRbJDADPXxoKR1+z2HoXxn
 CucmmxO3c0lODdzbLNMlwetSvlgp2D2zZdsyoZMftqPCG9wYC5cX7A7ZdKhnlA6NJP2a
 +2XzsX0j4Zh/jbzuFX0kRcM8YT1N+YSx549FIg2+6cYBjLDJG/3xIacSOB+gVobk4aYz
 MOvVjaQaDb34rFNJmnfn9zR1VtLZBGJhokEjOlG+uSsMNq2r8djtb/Mk+7GWciVwBRaI
 Qt0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dZl3sOoHlWuzucNXfMp2p0mgDBU/NJ3Y6nLUtAUeFPY=;
 b=gw29aPeozRUDAnQfwrvHsLN/016xz9FmLMULKTfURDYoIdbJQyl8V42VkWRTWLo+Zn
 7k8FJ3ma4UhbPObS1tYutCn3J6xjT91GzC8scCjL5yKsEHVfX1U0bf40fKASdvPTvk0j
 8fLzirP2P6Bjv5lvgJt+rAHH8qROYQtV9KIEuLVZde9KoDGOb2YI8dlAJRoetXSqU8tU
 kJeoylFlZmMjDvgZbFeKZT4RAput6PjSDgub/OGv4aBNvlRomQUTEKTKcjrqSnli2ur7
 5pQBWc1thczJKUMCCrA/qsiIFdvNfYz63Sfzb7hgdW5oiEkuHUM9si7tQyp72BVmPTQy
 EE/g==
X-Gm-Message-State: AOAM533CZPmRaNMEdWEFoPA1wYvoC55x0xjpOBW8fvAViP87va/0Qisd
 D5oJL3ErFVVoYwEzb6Y3rQdPHnt7
X-Google-Smtp-Source: ABdhPJyZ8xu3odmGBzMNwbIAqQRzO79AqjDmSy79FzGlVroNcfOqyFP+z+tOoF/poA2GOlef/CwZiQ==
X-Received: by 2002:a7b:c096:: with SMTP id r22mr9080376wmh.92.1590767073359; 
 Fri, 29 May 2020 08:44:33 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 h20sm11766789wma.6.2020.05.29.08.44.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 29 May 2020 08:44:32 -0700 (PDT)
Subject: Re: [PATCH 3/4] pinctrl: bcm2835: Match BCM7211 compatible string
To: Stefan Wahren <stefan.wahren@i2se.com>, linux-kernel@vger.kernel.org
References: <20200528192112.26123-1-f.fainelli@gmail.com>
 <20200528192112.26123-4-f.fainelli@gmail.com>
 <291609c0-f1ec-2626-8bfa-cf25a9e45365@i2se.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <7a25489d-e496-d470-b99f-459630b1db44@gmail.com>
Date: Fri, 29 May 2020 08:44:27 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <291609c0-f1ec-2626-8bfa-cf25a9e45365@i2se.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_084439_725980_AB97A4C9 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
 "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..."
 <bcm-kernel-feedback-list@broadcom.com>,
 "moderated list:BROADCOM BCM2711/BCM2835 ARM ARCHITECTURE"
 <linux-rpi-kernel@lists.infradead.org>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 5/29/2020 6:11 AM, Stefan Wahren wrote:
> Hi Florian,
> 
> Am 28.05.20 um 21:21 schrieb Florian Fainelli:
>> The BCM7211 SoC uses the same pinconf_ops as the ones defined for the
>> BCM2711 SoC, match the compatible string and use the correct set of
>> options.
>>
>> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
>> ---
>>  drivers/pinctrl/bcm/pinctrl-bcm2835.c | 4 ++++
>>  1 file changed, 4 insertions(+)
>>
>> diff --git a/drivers/pinctrl/bcm/pinctrl-bcm2835.c b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> index 06bd2b70af3c..e8ad1824c6b3 100644
>> --- a/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> +++ b/drivers/pinctrl/bcm/pinctrl-bcm2835.c
>> @@ -1137,6 +1137,10 @@ static const struct of_device_id bcm2835_pinctrl_match[] = {
>>  		.compatible = "brcm,bcm2711-gpio",
>>  		.data = &bcm2711_plat_data,
>>  	},
>> +	{
>> +		.compatible = "brcm,bcm7211-gpio",
>> +		.data = &bcm2711_pinconf_ops,
> 
> this doesn't look safe. Maybe bcm2711_plat_data?

Whoops you are right, I sent an incorrect version.

> 
> Looks like the original patch series based on a older version. Please
> double check this still applies since the introduction of 58 GPIO
> support for BCM2711.

We can use bcm2711_plat_data, thanks Stefan.
-- 
Florian

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
