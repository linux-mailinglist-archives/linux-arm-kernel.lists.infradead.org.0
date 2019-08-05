Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD204815B6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 11:42:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjqfAOqIuPHSlxPCMR7n8NeZ6vW/0Wv5wShcXak0o/4=; b=gvdQHiXjM8hi1E
	dJZ3h4Bwb4cczKXAjWkB6vy63zRuXDko/cGViCLOkJDajFSmiX5o3nsWrJcZe/PTCI16zkK4iL/19
	oRiLrNNE+S0gFtQm4BDA0O8Y+njUQAom5qFEvgY5aY2m25JgHdKmq0tCgqtkf3PnhbxGFijcamNZS
	7Fm/0U0zf8mpPSpYMMExArmrLmDADezpj0uA4Isr4eyDbYwHSHP6zQWLosJJiE2zKg5U+laNjhGgC
	iPp5Smr5JDa9v6s/9cCAlAn7lYy3DbDK+ORXy6H98CZ7+ZRvKBp9DnX93dCQZrpd8Qo6vbGjbR0IW
	1VxYn5JlE8Ca8JGEFl9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZVB-0004kA-Hv; Mon, 05 Aug 2019 09:42:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZUu-0004iJ-3G
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 09:41:45 +0000
Received: by mail-wm1-x342.google.com with SMTP id a15so74044811wmj.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 02:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=zwVFHt+48HDHPxY5b54ZFa7xoeFEjvHa3khRmzD7FKU=;
 b=uemqmpa5kVFXiavwLe6yqYrDmEZZV7Fcfsv21+JFTYqvKAtB5dvFEWIr4grJOpmSRp
 denJH6xQUZDRMwrqyhoKWcKx0lvzboWIwlSDmy82BgpPOXrpCKAxdpqxVSKSRipCOh7s
 pqGeT1q/7andPM62LzouFLClYDxeAW+3CDCE5wWZakpPw1H0n1TCp398yGA/dFMJ2T0S
 I3uOcmxbIsoZudjPF9sJzz8l55xuAM7Wb6TgrxVG7WuwkXdtusMHMerDRBUXnVZpPVOA
 RCE8ecEsdXVrfBZech4vOgi8/sgNY60ua7JQ/cuqCB0kbeyI2qT2Z5HQrvdQndmit9Mq
 2diA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=zwVFHt+48HDHPxY5b54ZFa7xoeFEjvHa3khRmzD7FKU=;
 b=EbSVj2U4Xoq2EJiNvOs5PGXDd55Xazkcz3gx0Cm6CVQJ9+rwddWW6TNzphm3iwTExy
 soqRomG9dixMP4LbqqhynMZW9VaSatwwHsJPbtlh8lhv8iMDF8TZvVFV9mWezXEFYnNe
 5ahg39Cdo58VnZcS0d/DkCibQ84WbLHs299WpAmzrUjXNbLnPUgC87c4VeaeCVjBWcpO
 f+3BZU5ADnmnOir0Dta4g+Lblmtr6DDd8H+ksSkwS6H5B079JXczRVJRoP+xk7She1tg
 bi0R2zDgSeY8JO75bkpbEBz81C0d5JWXug1YcVAeJCUIpjkUFd26r6wETl298BYjeTcX
 L/5A==
X-Gm-Message-State: APjAAAWxPLQ97eeZl8b1FiFXTMk4IG4i0SIA7JKxiwoL5WWmWqb+ogaA
 MmO6plJK+kDo0ZlriuktSgyY3A==
X-Google-Smtp-Source: APXvYqxUqLSyKoX3kBT5LqfmayHxL8IsZIurFOcWjSA/ZAELqlanwnjiTdxfqjeBVGrR1f0Qv4G6Aw==
X-Received: by 2002:a1c:1a87:: with SMTP id a129mr17580112wma.21.1564998101244; 
 Mon, 05 Aug 2019 02:41:41 -0700 (PDT)
Received: from [10.1.4.98] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id a81sm90371174wmh.3.2019.08.05.02.41.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 05 Aug 2019 02:41:40 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] arm64: dts: amlogic: g12: add temperature sensor
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <20190731153529.30159-1-glaroque@baylibre.com>
 <20190731153529.30159-4-glaroque@baylibre.com>
 <CAFBinCBYPiLgmTNk+7Db3EPSPePwbnAshCbomYPXWdse8i0oJw@mail.gmail.com>
From: guillaume La Roque <glaroque@baylibre.com>
Message-ID: <d702eb8b-f0b7-0b3b-9a17-1d158d7c072f@baylibre.com>
Date: Mon, 5 Aug 2019 11:41:39 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCBYPiLgmTNk+7Db3EPSPePwbnAshCbomYPXWdse8i0oJw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_024144_275546_40550737 
X-CRM114-Status: GOOD (  14.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

hi Martin,


thanks for comments i will fix in v3.


guillaume

On 8/3/19 7:52 PM, Martin Blumenstingl wrote:
> Hi Guillaume,
>
> On Wed, Jul 31, 2019 at 5:36 PM Guillaume La Roque
> <glaroque@baylibre.com> wrote:
>> Add cpu and ddr temperature sensors for G12 Socs
>>
>> Signed-off-by: Guillaume La Roque <glaroque@baylibre.com>
> with the nit-pick below addressed:
> Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
>
>> ---
>>  .../boot/dts/amlogic/meson-g12-common.dtsi    | 22 +++++++++++++++++++
>>  1 file changed, 22 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> index 06e186ca41e3..7f862a3490fb 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
>> @@ -1353,6 +1353,28 @@
>>                                 };
>>                         };
>>
>> +                       cpu_temp: temperature-sensor@34800 {
>> +                               compatible = "amlogic,g12-cpu-thermal",
>> +                                            "amlogic,g12-thermal";
>> +                               reg = <0x0 0x34800 0x0 0x50>;
>> +                               interrupts = <GIC_SPI 35 IRQ_TYPE_EDGE_RISING>;
>> +                               clocks = <&clkc CLKID_TS>;
>> +                               status = "okay";
> I believe nodes are enabled automatically if they don't have a status property
>
>> +                               #thermal-sensor-cells = <0>;
>> +                               amlogic,ao-secure = <&sec_AO>;
>> +                       };
>> +
>> +                       ddr_temp: temperature-sensor@34c00 {
>> +                               compatible = "amlogic,g12-ddr-thermal",
>> +                                            "amlogic,g12-thermal";
>> +                               reg = <0x0 0x34c00 0x0 0x50>;
>> +                               interrupts = <GIC_SPI 36 IRQ_TYPE_EDGE_RISING>;
>> +                               clocks = <&clkc CLKID_TS>;
>> +                               status = "okay";
> same here
>
>
> Martin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
