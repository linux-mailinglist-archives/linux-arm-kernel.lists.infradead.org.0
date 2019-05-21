Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D17D24A81
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 May 2019 10:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ziqu/NVCgsNw6z92+gKpLXZVN2UrHyI5J7N4B7iupsM=; b=RdVBwi9pe3eVKi
	k+5RrW5fgu7Q1kqsdwmum9SFEvKyabSfqgrIWT4TrAcFvTcpkqKEGb7mQ4WXZ2VxooLZzYn337UP5
	44kcJUkfiOjU5k+NTEDlFUEPcDpxl+6X0bvwzYagJyioF0vFgNXhH5sszPnxdICy7SXo7t66ZnuuN
	ToS0AznvsXlDvgaEkHVJddE6ZY3ER7I8LOZPgWiwR/rkY6O6NNp+EmSZ/PhsbU2XsptskGWQwpsZb
	b1cL0FVHs+XeyeVDQpKVjs+KD6oa223zk8vTrI72PC7SuS/963J6X81b7RL7wEe34GjpVm8Jjsrj0
	FikqpqvXG5lxkLPQPCUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0Eu-00026E-Jf; Tue, 21 May 2019 08:35:16 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0Ei-0001Uq-74
 for linux-arm-kernel@lists.infradead.org; Tue, 21 May 2019 08:35:06 +0000
Received: by mail-wm1-x342.google.com with SMTP id q15so1930449wmj.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 May 2019 01:35:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=KbeeGujfdpWAaKWmtvzwlipu4OGzzpibM4zbaDGQkD0=;
 b=RZXGuIuzHtBZURrj15qgLEcXH9BqCtgbLv3ixLuD3lF4lpUXBqSIRdyegUBLGO1+uS
 vfbZOjEYcWM4TfvDB0OwPX/dfiwl2kC4U5SbRO/n8N5bXHqMAGlifJZTnOuTap2qmZhS
 aGo+umuDPdlDR7KwWEOV/pV+7xkesxl5YAQkzIQRrPlxcGPzU8K6Sw1Q9VqLRoX7L3rR
 TNDG4gGV5i4MlzG4girN4uaTCMCeRG/rbM8ia1S3bkwZvNcgHr8UI+88pJRsyzX4kLmu
 bMwL59UyDBYWigWQu1ZtM4nIWPgipJ8P6sO/VxllMr3eiz+8pOFJ+HiZD+Eq0xnrPWKb
 ExyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=KbeeGujfdpWAaKWmtvzwlipu4OGzzpibM4zbaDGQkD0=;
 b=Kd2MJ04b+7ZBqui9fGijEnuMGeUKvxigxrsurXdEWPzt5Ztd7O7klUL7mHDZzHb+v0
 rDZXkOgHyXjDWb5IqCzxrJSl4Rxa13FECZg5+fGl3V5k4MJYmbkoP0/jkXy8r3IElF8a
 QNkYDK4/NWWnobReW+NIgxLtSuYuuCvf9/hHIHf+HOUL0dd4dWADTrrFITIXzqDz9l9o
 XjQGbJFW7FXHBTpVrmKOEUXeded4tLx1os5QO7DCrKrjeBMlCkHobn3Uldw065ag2CfJ
 dS2+pIRdgfJc7SO0qsPF4e2PwlYnaarbiO0qOHligXjtzNPbcAibsr5m17sfk8LM9Pc8
 GddA==
X-Gm-Message-State: APjAAAXbzNWFGc7+BZsRUU7Q4GOV4znNw59A5EHEDDt9GICocOQ1HrRA
 amT8a3WER3wWL8WEMSF/oO1yNkzB/tFMxA==
X-Google-Smtp-Source: APXvYqy7r61mAXvIsDO2txsWXAh13YuMmTLlhQAjAZibEi/GE5CEIrbKOtqEvjr4375SGGAVbiQUOQ==
X-Received: by 2002:a1c:7c0d:: with SMTP id x13mr2267880wmc.89.1558427702015; 
 Tue, 21 May 2019 01:35:02 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id h11sm26096432wrr.44.2019.05.21.01.35.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 01:35:01 -0700 (PDT)
Subject: Re: [PATCH] arm64: dts: meson-g12a-x96-max: Add Gigabit Ethernet
 Support
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20190520134336.24737-1-narmstrong@baylibre.com>
 <CAFBinCCvERE1V9aBhwNadwPRAi3Fy3EPQ_MGTGX23CQaHi0_kA@mail.gmail.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <90bad489-4186-08c9-8073-b3eafce273e4@baylibre.com>
Date: Tue, 21 May 2019 10:35:00 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAFBinCCvERE1V9aBhwNadwPRAi3Fy3EPQ_MGTGX23CQaHi0_kA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_013504_274332_DF87F7BA 
X-CRM114-Status: GOOD (  18.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: khilman@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 20/05/2019 19:49, Martin Blumenstingl wrote:
> Hi Neil,
> 
> On Mon, May 20, 2019 at 3:43 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Enable the network interface of the X96 Mac using an external
>> Realtek RTL8211F gigabit PHY, needing the same broken-eee properties
>> as the previous Amlogic SoC generations.
>>
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  .../boot/dts/amlogic/meson-g12a-x96-max.dts   | 22 +++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
>> index 5cdc263b03e6..5ca79109c250 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12a-x96-max.dts
>> @@ -15,6 +15,7 @@
>>
>>         aliases {
>>                 serial0 = &uart_AO;
>> +               ethernet0 = &ethmac;
>>         };
>>         chosen {
>>                 stdout-path = "serial0:115200n8";
>> @@ -150,6 +151,27 @@
>>         pinctrl-names = "default";
>>  };
>>
>> +&ext_mdio {
>> +       external_phy: ethernet-phy@0 {
>> +               /* Realtek RTL8211F (0x001cc916) */
>> +               reg = <0>;
>> +               max-speed = <1000>;
>> +               eee-broken-1000t;
> do we still need eee-broken-1000t? there are only 2 boards left which
> set it and I'm not sure whether those still need it after Carlo's
> fixes

In our tests, this boards really needs it... otherwise the network stalls
pretty quickly. I'd prefer to avoid it but seems it's necessary.

> 
>> +       };
>> +};
>> +
>> +&ethmac {
>> +       pinctrl-0 = <&eth_rmii_pins>, <&eth_rgmii_pins>;
> Jerome renamed "eth_rmii_pins" to "eth_pins" in v2 of his Ethernet
> pinctrl patch: [0]
> you missed his update only by a few minutes


Damn...
Thx.

Neil

> 
> 
> Martin
> 
> 
> [0] https://patchwork.kernel.org/patch/10951103/
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
