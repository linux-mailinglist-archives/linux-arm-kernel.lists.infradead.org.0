Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF3010C3B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 06:25:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=34Q+cPbN1flEhw4cXKn+GpwSpKni0OWrKi7YJmLQjqI=; b=TFuitLetbM8Ij7k70a+McEw6p
	qoFDO5t1dmMPHFS+ZpNqkATDMUpj0yp7cSK5ZZKoMXaZtK1331nQM5CvOsIM5I0tW/bODCxWsitjR
	aH/JC6XW9woWNJs+USP+/2NPHhIEkFEunQaxjc604LaXDJQlN1kY4GcAPqk89edCGUJ1i6tE8gzRr
	CDhqyfsLu8J9b9CkuDl+f9ryEUFRvpPSr8VdnYeBjUr0OtcGUd7vqw6mnU4yEXSeqmPeJB9fg7ax3
	2zWKc24YkYw+wYPv71JyLRoYXeXP0Z/TsUpu46SoZrRldrnUJT6lPie2mL2VZSGfeTisfFwu4GKbK
	c/0xwazmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaCIX-0000ke-ST; Thu, 28 Nov 2019 05:25:01 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaCIL-0000iW-Va
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 05:24:51 +0000
Received: from fsav102.sakura.ne.jp (fsav102.sakura.ne.jp [27.133.134.229])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id xAS5Oc8o054443;
 Thu, 28 Nov 2019 14:24:38 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav102.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav102.sakura.ne.jp);
 Thu, 28 Nov 2019 14:24:38 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav102.sakura.ne.jp)
Received: from [192.168.1.2] (121.252.232.153.ap.dti.ne.jp [153.232.252.121])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id xAS5Obwk054428
 (version=TLSv1.2 cipher=AES256-SHA bits=256 verify=NO);
 Thu, 28 Nov 2019 14:24:38 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH] arm64: dts: rockchip: split rk3399-rockpro64 for v2 and
 v2.1 boards
To: Vasily Khoruzhick <anarsoul@gmail.com>
References: <20191126165529.30703-1-katsuhiro@katsuster.net>
 <CA+E=qVcqu7OJayOdrEXRaWYW1JBhJKk7dPDTEJtCD-hDAKohxg@mail.gmail.com>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <0e187cef-c263-cb04-325c-43968fa77047@katsuster.net>
Date: Thu, 28 Nov 2019 14:24:37 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CA+E=qVcqu7OJayOdrEXRaWYW1JBhJKk7dPDTEJtCD-hDAKohxg@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_212450_342240_98AF6FB4 
X-CRM114-Status: GOOD (  20.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-rockchip@lists.infradead.org, Hugh Cole-Baker <sigmaris@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>,
 arm-linux <linux-arm-kernel@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vasily,

On 2019/11/27 11:24, Vasily Khoruzhick wrote:
> On Tue, Nov 26, 2019 at 8:55 AM Katsuhiro Suzuki
> <katsuhiro@katsuster.net> wrote:
> 
> Hi Katsuhiro,
> 
>> This patch splits rk3399-rockpro64 dts file to 2 files for v2 and
>> v2.1 boards.
> 
> Thanks for the patch!
> 
>> Both v2 and v2.1 boards can use almost same settings but we find a
>> difference in I2C address of audio CODEC ES8136.
> 
> I'd prefer to avoid moving and renaming dts files since it can cause a
> mess if you don't upgrade your bootloader.
> 
> Can we use existing rk3399-rockpro64.dts for v2.1 (and change model
> name accordingly) and introduce new dts for v2.0?
> 

OK, so rk3399-rockpro64.dts always follows the newest board version
(currently for v2.1) and v2.1.dts will be split out if more newer
board is released from Pine64.

I'll re-post a patch.

Best Regards,
Katsuhiro Suzuki


> Regards,
> Vasily
> 
> 
>> Reported-by: Vasily Khoruzhick <anarsoul@gmail.com>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |  3 +-
>>   .../dts/rockchip/rk3399-rockpro64-v2.1.dts    | 30 +++++++++++++++++++
>>   .../boot/dts/rockchip/rk3399-rockpro64-v2.dts | 30 +++++++++++++++++++
>>   ...99-rockpro64.dts => rk3399-rockpro64.dtsi} | 18 -----------
>>   4 files changed, 62 insertions(+), 19 deletions(-)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>>   rename arch/arm64/boot/dts/rockchip/{rk3399-rockpro64.dts => rk3399-rockpro64.dtsi} (97%)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
>> index 48fb631d5451..3debaeb517fd 100644
>> --- a/arch/arm64/boot/dts/rockchip/Makefile
>> +++ b/arch/arm64/boot/dts/rockchip/Makefile
>> @@ -33,6 +33,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-roc-pc-mezzanine.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock-pi-4.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rock960.dtb
>> -dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.dtb
>> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-rockpro64-v2.1.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire.dtb
>>   dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399-sapphire-excavator.dtb
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
>> new file mode 100644
>> index 000000000000..9450207bedad
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.1.dts
>> @@ -0,0 +1,30 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
>> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> + */
>> +
>> +/dts-v1/;
>> +#include "rk3399-rockpro64.dtsi"
>> +
>> +/ {
>> +       model = "Pine64 RockPro64 v2.1";
>> +       compatible = "pine64,rockpro64", "rockchip,rk3399";
>> +};
>> +
>> +&i2c1 {
>> +       es8316: codec@11 {
>> +               compatible = "everest,es8316";
>> +               reg = <0x11>;
>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +               clock-names = "mclk";
>> +               #sound-dai-cells = <0>;
>> +
>> +               port {
>> +                       es8316_p0_0: endpoint {
>> +                               remote-endpoint = <&i2s1_p0_0>;
>> +                       };
>> +               };
>> +       };
>> +};
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>> new file mode 100644
>> index 000000000000..7bd37eaa1d57
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64-v2.dts
>> @@ -0,0 +1,30 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2017 Fuzhou Rockchip Electronics Co., Ltd.
>> + * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
>> + * Copyright (c) 2019 Katsuhiro Suzuki <katsuhiro@katsuster.net>
>> + */
>> +
>> +/dts-v1/;
>> +#include "rk3399-rockpro64.dtsi"
>> +
>> +/ {
>> +       model = "Pine64 RockPro64 v2";
>> +       compatible = "pine64,rockpro64", "rockchip,rk3399";
>> +};
>> +
>> +&i2c1 {
>> +       es8316: codec@10 {
>> +               compatible = "everest,es8316";
>> +               reg = <0x10>;
>> +               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> +               clock-names = "mclk";
>> +               #sound-dai-cells = <0>;
>> +
>> +               port {
>> +                       es8316_p0_0: endpoint {
>> +                               remote-endpoint = <&i2s1_p0_0>;
>> +                       };
>> +               };
>> +       };
>> +};
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> similarity index 97%
>> rename from arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> rename to arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> index 7f4b2eba31d4..183eda4ffb9c 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> @@ -4,16 +4,12 @@
>>    * Copyright (c) 2018 Akash Gajjar <Akash_Gajjar@mentor.com>
>>    */
>>
>> -/dts-v1/;
>>   #include <dt-bindings/input/linux-event-codes.h>
>>   #include <dt-bindings/pwm/pwm.h>
>>   #include "rk3399.dtsi"
>>   #include "rk3399-opp.dtsi"
>>
>>   / {
>> -       model = "Pine64 RockPro64";
>> -       compatible = "pine64,rockpro64", "rockchip,rk3399";
>> -
>>          chosen {
>>                  stdout-path = "serial2:1500000n8";
>>          };
>> @@ -476,20 +472,6 @@ &i2c1 {
>>          i2c-scl-rising-time-ns = <300>;
>>          i2c-scl-falling-time-ns = <15>;
>>          status = "okay";
>> -
>> -       es8316: codec@11 {
>> -               compatible = "everest,es8316";
>> -               reg = <0x11>;
>> -               clocks = <&cru SCLK_I2S_8CH_OUT>;
>> -               clock-names = "mclk";
>> -               #sound-dai-cells = <0>;
>> -
>> -               port {
>> -                       es8316_p0_0: endpoint {
>> -                               remote-endpoint = <&i2s1_p0_0>;
>> -                       };
>> -               };
>> -       };
>>   };
>>
>>   &i2c3 {
>> --
>> 2.24.0
>>
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
