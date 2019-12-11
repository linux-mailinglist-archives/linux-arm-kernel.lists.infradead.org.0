Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E224A11ABCF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 14:15:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GhkWR7z0jMIbIS89mw9VKFEaIs5gopJMH9VrLxxnDP4=; b=hZ3SBNm8li8/QkNUwP/iSOTAg
	GElw8ahwVCwE/8vt7mnOA2giDlA0ztEXcGvPhbSEQug5p5FDtQHCEouLydPHnwrnQC86JgLUcYkWi
	MFDQGr1ggxE6JNzyB0JgTfXMqnGuLTTt8xYpuG4OnqNg7lpYObfrA5W3VVhwHDt3aBmj8ETUtTPbA
	Y9p1ZRbyvRMptFvJdK1yak34f828sX5Q9c5nWtcjFy5WSoTtkz4BwUeLMq/EM3Y1lbIB70d9spz+3
	+WzqG8RCeRI5ShL+/TZ3UvPDY4gJ8cPZhoqfwL2lo798CvcRgrTEu+qOtIcxeGL5LApiJPFcKpOLz
	YY5UHPMRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if1qH-00028u-M9; Wed, 11 Dec 2019 13:15:49 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if1qA-00028I-Iw; Wed, 11 Dec 2019 13:15:43 +0000
Received: from [10.28.39.99] (10.28.39.99) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Wed, 11 Dec
 2019 21:16:13 +0800
Subject: Re: [PATCH] arm64: dts: meson: add A1 periphs and PLL clock nodes
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
References: <20191211070835.83489-1-jian.hu@amlogic.com>
 <1jimmnkxj5.fsf@starbuckisacylon.baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <a171b388-7f92-17cd-8b9a-dcb1c846b6f7@amlogic.com>
Date: Wed, 11 Dec 2019 21:16:13 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1jimmnkxj5.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.99]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_051542_627555_4863FB1F 
X-CRM114-Status: GOOD (  16.35  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Rob Herring <robh@kernel.org>, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>, devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2019/12/11 17:43, Jerome Brunet wrote:
> 
> On Wed 11 Dec 2019 at 08:08, Jian Hu <jian.hu@amlogic.com> wrote:
> 
>> Add A1 periphs and PLL clock controller nodes, Some clocks
>> in periphs controller are the parents of PLL clocks, Meanwhile
>> some clocks in PLL controller are those of periphs clocks.
>> They rely on each other.
> 
>> Compared with the previous series,
>> the register region is only for the clock. So syscon is not
>> used in A1.
> 
> Again, while this is valuable information for the maintainer to keep up,
> it is not something that should appear in the commit description.
> 
> The evolution of your commit should be described after the '---'
> 
OK, I will put the compared message after the '---'
> Also, this obviously depends on another series. It should be mentioned
> accordingly
OK, I will add the dependent clock patchset.
> 
>>
>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>> ---
>>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 26 +++++++++++++++++++++++
>>   1 file changed, 26 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> index 7210ad049d1d..de43a010fa6e 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> @@ -5,6 +5,8 @@
>>   
>>   #include <dt-bindings/interrupt-controller/irq.h>
>>   #include <dt-bindings/interrupt-controller/arm-gic.h>
>> +#include <dt-bindings/clock/a1-pll-clkc.h>
>> +#include <dt-bindings/clock/a1-clkc.h>
> 
> When possible, please order the includes alpha-numerically
> 
OK, I will reorder it.
>>   
>>   / {
>>   	compatible = "amlogic,a1";
>> @@ -74,6 +76,30 @@
>>   			#size-cells = <2>;
>>   			ranges = <0x0 0x0 0x0 0xfe000000 0x0 0x1000000>;
>>   
>> +			clkc_periphs: periphs-clock-controller@800 {
>                                               ^
>>From DT spec: "The name of a node should be somewhat generic, reflecting
> the function of the device and not its precise programming model."
> 
> Here, an appropriate node name would be "clock-controller", not
> "periphs-clock-controller"
OK, I will change the node name.
> 
>> +				compatible = "amlogic,a1-periphs-clkc";
>> +				#clock-cells = <1>;
>> +				reg = <0 0x800 0 0x104>;
>> +				clocks = <&clkc_pll CLKID_FCLK_DIV2>,
>> +					<&clkc_pll CLKID_FCLK_DIV3>,
>> +					<&clkc_pll CLKID_FCLK_DIV5>,
>> +					<&clkc_pll CLKID_FCLK_DIV7>,
>> +					<&clkc_pll CLKID_HIFI_PLL>,
>> +					<&xtal>;
>> +				clock-names = "fclk_div2", "fclk_div3",
>> +					"fclk_div5", "fclk_div7",
>> +					"hifi_pll", "xtal";
>> +			};
>> +
>> +			clkc_pll: pll-clock-controller@7c80 {
> 
> Please order nodes by address when they have one.
> This clock controller should appear after the uarts
OK, I will reorder it.
> 
>> +				compatible = "amlogic,a1-pll-clkc";
>> +				#clock-cells = <1>;
>> +				reg = <0 0x7c80 0 0x21c>;
>> +				clocks = <&clkc_periphs CLKID_XTAL_FIXPLL>,
>> +					<&clkc_periphs CLKID_XTAL_HIFIPLL>;
>> +				clock-names = "xtal_fixpll", "xtal_hifipll";
>> +			};
>> +
>>   			uart_AO: serial@1c00 {
>>   				compatible = "amlogic,meson-gx-uart",
>>   					     "amlogic,meson-ao-uart";
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
