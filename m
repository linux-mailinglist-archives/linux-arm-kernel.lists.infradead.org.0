Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154305B779
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wL2w0QqaUeRSc6ijJJj7NmgZ8rOEeq29vgK42A5s4Eo=; b=RJlehYiiAVCgU4
	APyi+VhQLdAXNKA8ccHrF+kGy8MG0MicVouX7AADi4Q2ikXAU/JvmEG3srffDaYO4X2UZqtVbvONu
	URWG7zfT7yClHsi9wZwO5s6Gzfkuz7iZ/tEAwRZz61ia4wwdk0W8Tr+wSzsJO+9VlIU0c7IxScSyn
	sA1SZCQech89RMBYWdPjd22wqlPB0Qp3vygHn9SbyUFK0XeJQH7+kAmFMKXtJ99JBeiomELYeEr/b
	vVDI0Wea6FATihTbNoUsGVLlKXdfx0O+bNDw4x2od4RfX23odBDqXtl9KWTBufoko6Wo43jiz7yIq
	qSPBfmCiL8RI6685+ujA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsIU-00011D-Q0; Mon, 01 Jul 2019 09:08:26 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsI9-0000zU-Q8
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:08:07 +0000
Received: by mail-wm1-x330.google.com with SMTP id g135so14995792wme.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Xt/a0HUL+Rn+8z/oVQ4aR6gmuOyLXp/7mqtlxbxK8v4=;
 b=1kl6M/7BuzPnJwcPHNVFTiZR29yaWr9P49ELjubxxLC8L2MhGLtIBOqSvbs6jddtPS
 FfVBj5bpMozUebYONjXSXkgPfu9JmzJ1mAXOTcudMkiwHycyy5LQIUIvMjv40EvXVCXI
 NoQYm8to3a2wjSt3cpuW+z2SBDP+wQaUS0so2Pn0ggbJtZlBWGccjaxn+QvEa/G0uJ++
 BbO95+L9IztMdgMbG5oDJ7SZeLMMF0JqefeG6rvtzPu/vxc5+Pnxldey56zNf3KAiKSX
 9JdIeyBlMSBxUPTye4kzdCqYAUcE16bYkyHgy1T+IIhVP1BqWGHCi6E/6ZdB9Ml/L0uE
 W8rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=Xt/a0HUL+Rn+8z/oVQ4aR6gmuOyLXp/7mqtlxbxK8v4=;
 b=fgJ2bgyVsPJPl5nskxBILiRzDk0IMiMtXOpOvcGru5NOCHoYJNt8dv4G7/kZVIkVk2
 Hr5QR+SOR9/iPiggu7rRAiQnvDwnpOL3iJj1WxzErPKEyU6GGGoCYEr4GyY2xhm+DzEN
 zZnNjdBmb0FQt7YRdYoZTPejPKVdQnx8w3D+0HIrXZgwVaocE1qte377zrghqXolhH12
 rrDpNqaOSuW3rHA5PB0MxEtkXhw04MT7NokeNBN6zQrpp42rI5P5ltgC1O8Za5WV+yEg
 ZBJO9zvbXdZsOfO78pJJMH3bPpuvL/cxas4rGcPL94HL98pogdSBVyklGstjVe5TZfAy
 RDeQ==
X-Gm-Message-State: APjAAAXJF7kcmyvJcgYv5JZc7uKNAk1OegqmkM140lxD2CG5ZskSyVLa
 djLPaS0kDwH7XIYbYp5Jq43HaA==
X-Google-Smtp-Source: APXvYqxOpV6llYmZ5Y7VO8IUhjOBJozsfR1vecUDNj9jQry+Vp0iD5ZLR5prSyrF9URlJkbmOMd/HQ==
X-Received: by 2002:a1c:5f56:: with SMTP id t83mr15291492wmb.37.1561972083522; 
 Mon, 01 Jul 2019 02:08:03 -0700 (PDT)
Received: from [192.168.1.68] (176-150-251-154.abo.bbox.fr. [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id
 v12sm7735037wrr.41.2019.07.01.02.08.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 01 Jul 2019 02:08:02 -0700 (PDT)
Subject: Re: [RFC/RFT v2 12/14] arm64: dts: meson-g12a: enable DVFS on G12A
 boards
To: Kevin Hilman <khilman@baylibre.com>, jbrunet@baylibre.com
References: <20190626090632.7540-1-narmstrong@baylibre.com>
 <20190626090632.7540-13-narmstrong@baylibre.com>
 <7himspr3ah.fsf@baylibre.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <43d99930-377c-7906-8dc9-4374d8d43b6e@baylibre.com>
Date: Mon, 1 Jul 2019 11:07:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <7himspr3ah.fsf@baylibre.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_020805_874849_2C594CE7 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:330 listed in]
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
Cc: martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/06/2019 20:08, Kevin Hilman wrote:
> Neil Armstrong <narmstrong@baylibre.com> writes:
> 
>> Enable DVFS for the U200, SEI520 and X96-Max Amlogic G12A based board
>> by setting the clock, OPP and supply for each CPU cores.
>>
>> The CPU cluster power supply can achieve 0.73V to 1.01V using a PWM
>> output clocked at 800KHz with an inverse duty-cycle.
>>
>> DVFS has been tested by running the arm64 cpuburn at [1] and cycling
>> between all the possible cpufreq translations and checking the final
>> frequency using the clock-measurer, script at [2].
>>
>> [1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
>> [2] https://gist.github.com/superna9999/d4de964dbc0f84b7d527e1df2ddea25f
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> 
> [...]
> 
>> @@ -297,6 +316,34 @@
>>  	status = "okay";
>>  };
>>  
>> +&cpu0 {
>> +	cpu-supply = <&vddcpu>;
>> +	operating-points-v2 = <&cpu_opp_table>;
>> +	clocks = <&clkc CLKID_CPU_CLK>;
>> +	clock-latency = <50000>;
>> +};
>> +
>> +&cpu1 {
>> +	cpu-supply = <&vddcpu>;
>> +	operating-points-v2 = <&cpu_opp_table>;
>> +	clocks = <&clkc CLKID_CPU_CLK>;
>> +	clock-latency = <50000>;
>> +};
>> +
>> +&cpu2 {
>> +	cpu-supply = <&vddcpu>;
>> +	operating-points-v2 = <&cpu_opp_table>;
>> +	clocks = <&clkc CLKID_CPU_CLK>;
>> +	clock-latency = <50000>;
>> +};
>> +
>> +&cpu3 {
>> +	cpu-supply = <&vddcpu>;
>> +	operating-points-v2 = <&cpu_opp_table>;
>> +	clocks = <&clkc CLKID_CPU_CLK>;
>> +	clock-latency = <50000>;
>> +};
> 
> Just curious where this max clock transtion (clock-latency) value came
> from.  Were you able to measure that somehow?

It was taken from vendor tree. Haven't got chance to measure it, I assume
it's a safe value for now.

> 
> Kevin
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
