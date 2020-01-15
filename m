Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30BA113C8EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 17:14:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chgWmKz5vBuvDxYRUr7UlX4k5gccD9Y9MCEoUIHAYg8=; b=fZ/pTmJRvB/St3
	gN6quxKq7TmvCeuYLEl6XWSesKBPkQZYSpSKCHO1eEzcWkjN3gNI2/ZcD4yaxKtA+/uD0mNq/0G0x
	+V6X0vgsZ8NgBa8nPBc+KDbWEaJmr1HkT+9Hbyea30A3CATdsYAmDnf3Kjplw/xhFeBMBsvQrtmV2
	jWtrpwK2FK/uO3wiVFQWJ9NWXOnc5p5YNdKo+9gWUacWw0ubTOtJhYVQumVpiACGNPu/+ObqsZ5X/
	wUGp+cNQNPjPZTxdbrXbeV1PKihsdlZXpumHykhWI0b9q7BiAfblJwyTffYvfETHqZlYDJYhEaaQT
	zJX2DG7XHdsVYY5aBF3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irlJP-0006Vm-3b; Wed, 15 Jan 2020 16:14:31 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irlJ8-0006Tr-K7; Wed, 15 Jan 2020 16:14:18 +0000
Received: by mail-wr1-x442.google.com with SMTP id y11so16319980wrt.6;
 Wed, 15 Jan 2020 08:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:autocrypt:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=PKmcwPAXcEUUQYmrMhX2O1WqkdYVsA4sNnen1+ao7Bk=;
 b=fysuDEva0CXxXvQjC5ibhnperRStCDq9zd4CKMXskYrXvdf/WZRRmjQF5RWx8NMKpW
 XCyGW01XYCOIon0zeRWGuj4D6RkzdJe8TbCasajdTFLFMT8ooNqnZV+Mk2JENlwZUWRw
 LCKOUMEdBk+eBr0WOHQ09XAVepAZNQ+gyFHMYRWmxysbWSaI8ehII5/+1KWSUMlLCL32
 AUCiMrbxbD5EDV+Ve/PxXPd5jY74h47xbgAQwn9pB4pb9KNGeZRRZNXRo4LoiElSPqra
 hndmpc9VXT7aW+T1WtuLSQAkEl+XzHoFc6WtCZ/QxodK7TJhHVZKsQYKRF2jar7/d4Qu
 gOoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:autocrypt
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=PKmcwPAXcEUUQYmrMhX2O1WqkdYVsA4sNnen1+ao7Bk=;
 b=aDwUfp9elD5dbE2xWsvYTJ/Z5DpGRC1vHbKxqKZ/EQIXFv6xZm5JSeObGjDvjNYJQG
 l1ilJoKFleuVfkCsUU6l1dLd8rKQEV7p7QjmjmlEZWh3Y2sjqxZQHr5LovaNl15yx160
 ZN1IDV5fmqrcjCgd+IuRyRJEMv/uZISyvRDHAj1EAXknpSsLWOtFMy3lDyO1yPY11YUE
 v23KuvWYBkXVPGbHtbdIf2imfqM/WC1NyYH4ququQKMg2ogoFnhPzYp7W1/ibUTYMzXT
 FNgWqorU8CrcuGBJqSQrbuVSjEBg3i7QPpbLyeKmDb7+8LcBIQNNsXkzdO5uwXyTFX3J
 p+Zw==
X-Gm-Message-State: APjAAAW6IDbnuBe9op/Q3w+FkHhXW7pKYHtmRSuAO4OeWVR5/ECgVh5l
 Jqy2PJqdov7pb/A4hiR2uFk=
X-Google-Smtp-Source: APXvYqzKk+UaJJBJb3e7I0pnoPDq7491LQFNbmCTt10TWay5Cjuyp8h7qQX6DIP4XldPH8Sb/tRlTg==
X-Received: by 2002:a5d:4f90:: with SMTP id d16mr13587442wru.395.1579104852420; 
 Wed, 15 Jan 2020 08:14:12 -0800 (PST)
Received: from ziggy.stardust ([37.223.145.31])
 by smtp.gmail.com with ESMTPSA id z8sm24889211wrq.22.2020.01.15.08.14.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 15 Jan 2020 08:14:11 -0800 (PST)
Subject: Re: [PATCH v2 2/2] arm64: dts: mediatek: add mt8173 elm and hana board
To: Hsin-Yi Wang <hsinyi@chromium.org>
References: <20200110073730.213789-1-hsinyi@chromium.org>
 <20200110073730.213789-3-hsinyi@chromium.org>
 <7d137ab6-d57b-8471-bb6a-37556e5e2a01@gmail.com>
 <CAJMQK-j1CfXKDCpyycp5F7pbuESGgbzb=8h-adGrjw1oZcCBnw@mail.gmail.com>
 <a7dd5632-e58b-ecf0-b48f-78b72d6f2fb3@gmail.com>
 <CAJMQK-i3TzrxgSQpt8pfN_bc+XZ9jfe537i0eeYFdKqwa_M3gA@mail.gmail.com>
From: Matthias Brugger <matthias.bgg@gmail.com>
Autocrypt: addr=matthias.bgg@gmail.com; prefer-encrypt=mutual; keydata=
 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
Message-ID: <df0824f0-b546-89fb-e219-a47ad83a0c62@gmail.com>
Date: Wed, 15 Jan 2020 17:14:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <CAJMQK-i3TzrxgSQpt8pfN_bc+XZ9jfe537i0eeYFdKqwa_M3gA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_081414_691664_9328E938 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (matthias.bgg[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Devicetree List <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, lkml <linux-kernel@vger.kernel.org>,
 Daniel Kurtz <djkurtz@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 15/01/2020 09:53, Hsin-Yi Wang wrote:
> On Tue, Jan 14, 2020 at 11:10 PM Matthias Brugger
> <matthias.bgg@gmail.com> wrote:
>>
>>
>>
>> On 13/01/2020 19:01, Hsin-Yi Wang wrote:
>>> On Fri, Jan 10, 2020 at 9:42 PM Matthias Brugger <matthias.bgg@gmail.com> wrote:
>>>>
>>>>
>>> Thanks, I will address the comments and send next version
>>>>
>>>> On 10/01/2020 08:37, Hsin-Yi Wang wrote:
>>>>> Elm is Acer Chromebook R13. Hana is Lenovo Chromebook. Both uses mt8173
>>>>> SoC.
>>>>>
>>>>> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
>>>>> ---
>>>>> Changes in v2:
>>>>> - remove downstream nodes and unused nodes
>>>>> - use GPIO_ACTIVE_LOW for ps8640 gpios
>>>>> - move trackpad to hana
>>>>> ---
>>>>>  arch/arm64/boot/dts/mediatek/Makefile         |    3 +
>>>>>  .../dts/mediatek/mt8173-elm-hana-rev7.dts     |   27 +
>>>>>  .../boot/dts/mediatek/mt8173-elm-hana.dts     |   16 +
>>>>>  .../boot/dts/mediatek/mt8173-elm-hana.dtsi    |   60 +
>>>>>  arch/arm64/boot/dts/mediatek/mt8173-elm.dts   |   15 +
>>>>>  arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi  | 1040 +++++++++++++++++
>>>>>  6 files changed, 1161 insertions(+)
>>>>>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana-rev7.dts
>>>>>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dts
>>>>>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm-hana.dtsi
>>>>>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dts
>>>>>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8173-elm.dtsi
>>>>>

[...]

>>>>> +                     compatible = "mediatek,mt6397-rtc";
>>>>> +             };
>>>>> +
>>>>> +             syscfg_pctl_pmic: syscfg_pctl_pmic@c000 {
>>>>> +                     compatible = "mediatek,mt6397-pctl-pmic-syscfg",
>>>>> +                                  "syscon";
>>>>> +                     reg = <0 0x0000c000 0 0x0108>;
>>>>
>>>> not an upstream compatible, please delete the node.
>>>>
>>
>> I think my comment was not correct. I'll have to dig more to understand why we
>> have a compatible without a binding description.
>>
> Here's a similar syscon node that is in a binding document's example:
> 
> syscfg_pctl_a: syscfg-pctl-a@10005000 {
>         compatible = "mediatek,mt8135-pctl-a-syscfg", "syscon";
>         reg = <0 0x10005000 0 0x1000>;
> };
> 
> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/pinctrl/pinctrl-mt65xx.txt#L81
> 

Yes I know, that's why I said that my first comment was not correct. Just leave
it in.

Regards,
Matthias

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
