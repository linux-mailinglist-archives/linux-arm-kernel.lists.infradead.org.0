Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D60091994BA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 13:07:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AQowy6wzgEoZG2qXExBtjWmvS0zOpZtoTAgG8lXUSps=; b=O7u8H2EyXO4y/m1JbzLioaEVk
	IcxtI/0GBlb3jfO1/BlyQG+xLiISBqVgMSeVcEmGrXxW0XMEppvHEeGuGyifXMjRy2KK6VOC615Y4
	THPGKSuT0gjyRap8ThAe//FFup0KZhNLUmKcWbZwuVJYiKwSm1UqOBq89ia7DIM8h/pqD3jXJzCQJ
	NCkwX/0rHv743+O8QiyUpJw3nTSVLvBfbHAXq4mKBzVM7y38zFdf/08/ziYAwI9uVG3NGIrIOu36M
	DNDwrQTYJGvfNMaich7KsnTl7qAzx/Gydfelpfo0RvhaM6wQ877e+k4kLDLKW74vw/4m6KummhTYg
	gDvJh7kBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJEjs-0006rX-1n; Tue, 31 Mar 2020 11:07:24 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJEjf-0006oZ-2q; Tue, 31 Mar 2020 11:07:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0AFBF1FB;
 Tue, 31 Mar 2020 04:07:10 -0700 (PDT)
Received: from [10.57.60.204] (unknown [10.57.60.204])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 77EEE3F52E;
 Tue, 31 Mar 2020 04:07:08 -0700 (PDT)
Subject: Re: [PATCH 1/6] arm64: dts: rockchip: rk3399-roc-pc: Fix MMC
 numbering for LED triggers
To: Chen-Yu Tsai <wens@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>
References: <20200327030414.5903-2-wens@kernel.org>
 <684a08e6-7dfe-4cb1-2ae5-c1fb4128976b@gmail.com>
 <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <ccf35a92-7005-9c6d-a8a2-c17b714a60bc@arm.com>
Date: Tue, 31 Mar 2020 12:07:07 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAGb2v65ayZwN14S-Pzu2ip1K=fgzTbNB=ZzUcpou-jtv8m6vBA@mail.gmail.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_040711_210584_6B27D110 
X-CRM114-Status: GOOD (  20.12  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>, jacek.anaszewski@gmail.com, pavel@ucw.cz,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

[ +cc LED binding maintainers]

On 2020-03-29 5:36 pm, Chen-Yu Tsai wrote:
> On Fri, Mar 27, 2020 at 5:58 PM Johan Jonker <jbx6244@gmail.com> wrote:
>>
>> Hi Chen-Yu Tsai,
>>
>> The led node names need some changes.
>> 'linux,default-trigger' value does not fit.
>>
>>  From leds-gpio.yaml:
>>
>> patternProperties:
>>    # The first form is preferred, but fall back to just 'led' anywhere in the
>>    # node name to at least catch some child nodes.
>>    "(^led-[0-9a-f]$|led)":
>>      type: object
>>
>> Rename led nodenames to 'led-0' form
>>
>> Also include all mail lists found with:
>> ./scripts/get_maintainer.pl --nogit-fallback --nogit
>>
>> devicetree@vger.kernel.org
> 
> Oops...
> 
>> If you like change the rest of dts with leds as well...
>>
>>    DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
>>    CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml
>> arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
>> yellow-led:linux,default-trigger:0: 'mmc0' is not one of ['backlight',
>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
>> arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dt.yaml: leds:
>> diy-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
>>    DTC     arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
>>    CHECK   arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml
>> arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
>> diy-led:linux,default-trigger:0: 'mmc2' is not one of ['backlight',
>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
>> arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dt.yaml: leds:
>> yellow-led:linux,default-trigger:0: 'mmc1' is not one of ['backlight',
>> 'default-on', 'heartbeat', 'disk-activity', 'ide-disk', 'timer', 'pattern']
> 
> Maybe we should just get rid of linux,default-trigger then?

In this particular case, I'd say it's probably time to reevaluate the 
rather out-of-date binding. The apparent intent of the 
"linux,default-trigger" property seems to be to describe any trigger 
supported by Linux, so either the binding wants to be kept in sync with 
all the triggers Linux actually supports, or perhaps it should just be 
redefined as a free-form string. FWIW I'd be slightly inclined towards 
the latter, since the schema validator can't know whether the given 
trigger actually corresponds to the correct thing for whatever the LED 
is physically labelled on the board/case, nor whether the version(s) of 
Linux that people intend to use actually support that trigger (since it 
doesn't have to be the version contemporary with the schema definition), 
so strict validation of this particular property seems to be of limited 
value.

Robin.

> 
> Heiko?
> 
> ChenYu
> 
>> make -k ARCH=arm64 dtbs_check
>> DT_SCHEMA_FILES=Documentation/devicetree/bindings/leds/leds-gpio.yaml
>>
>>> From: Chen-Yu Tsai <wens@csie.org>
>>>
>>> With SDIO now enabled, the numbering of the existing MMC host controllers
>>> gets incremented by 1, as the SDIO host is the first one.
>>>
>>> Increment the numbering of the MMC LED triggers to match.
>>>
>>> Fixes: cf3c5397835f ("arm64: dts: rockchip: Enable sdio0 and uart0 on rk3399-roc-pc-mezzanine")
>>> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts | 8 ++++++++
>>>   arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi          | 4 ++--
>>>   2 files changed, 10 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>> index 2acb3d500fb9..f0686fc276be 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc-mezzanine.dts
>>> @@ -38,6 +38,10 @@ vcc3v3_pcie: vcc3v3-pcie {
>>>        };
>>>   };
>>>
>>> +&diy_led {
>>> +     linux,default-trigger = "mmc2";
>>> +};
>>> +
>>>   &pcie_phy {
>>>        status = "okay";
>>>   };
>>> @@ -91,3 +95,7 @@ &uart0 {
>>>        pinctrl-0 = <&uart0_xfer &uart0_cts &uart0_rts>;
>>>        status = "okay";
>>>   };
>>> +
>>> +&yellow_led {
>>> +     linux,default-trigger = "mmc1";
>>> +};
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>> index 9f225e9c3d54..bc060ac7972d 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi
>>> @@ -70,14 +70,14 @@ work-led {
>>>                        linux,default-trigger = "heartbeat";
>>>                };
>>>
>>> -             diy-led {
>>> +             diy_led: diy-led {
>>>                        label = "red:diy";
>>>                        gpios = <&gpio0 RK_PB5 GPIO_ACTIVE_HIGH>;
>>>                        default-state = "off";
>>>                        linux,default-trigger = "mmc1";
>>>                };
>>>
>>> -             yellow-led {
>>> +             yellow_led: yellow-led {
>>>                        label = "yellow:yellow-led";
>>>                        gpios = <&gpio0 RK_PA2 GPIO_ACTIVE_HIGH>;
>>>                        default-state = "off";
>>> --
>>> 2.25.1
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
