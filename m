Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D5D117DEC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 03:46:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v4JcB+uwA0olqoWHDSNSezs64ncp6sG5zcCyrU3vfc8=; b=pyh1NfPNgeUN8KEQ3Pj/+qpFi
	1IRkZQclDOme++ZJHlpVtpcruPsjfolsiMACdxhU4FDf8cKJ0APwUkkW423SljIV/tcnjmeHCGEFJ
	+yey6dA8zgWjRT8ZRV5lDjwPV/fnSruh//TIvOjrRy55SPsyeI0D7tiYWrwlUuMiZJ8+gb+BKPqfQ
	YsfggBFhgIIW+Q4dy31Kl+oMcYk3Y7IKUNbDXUCIf83CsyJUx4MaW2EfxJXd7dnF8JNJKQb13egoH
	oik1yJUHGT5qTZXF7j40j/33Rc3xh9cXazHuUK2UGWjVjwXOM7nvc0X4Qo556N8iIxYsDnPcEL/h3
	8d09QyW+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieVXZ-0003Df-Ht; Tue, 10 Dec 2019 02:46:21 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieVXP-0003Cs-VY; Tue, 10 Dec 2019 02:46:13 +0000
Received: from [10.28.39.99] (10.28.39.99) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 10 Dec
 2019 10:46:42 +0800
Subject: Re: [PATCH] arm64: dts: meson-a1: add I2C nodes
To: Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Neil Armstrong <narmstrong@baylibre.com>
References: <20191202111253.94872-1-jian.hu@amlogic.com>
 <7hsgltqfdx.fsf@baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <e90e00e1-c868-ce09-6f79-deb62da72b43@amlogic.com>
Date: Tue, 10 Dec 2019 10:46:41 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <7hsgltqfdx.fsf@baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.99]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_184612_018247_30FEF196 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Mark Rutland <mark.rutland@arm.com>, Rob Herring <robh@kernel.org>,
 Jianxin Pan <jianxin.pan@amlogic.com>, Wolfram Sang <wsa@the-dreams.de>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, linux-i2c@vger.kernel.org,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Kevin

Thanks for your review

On 2019/12/10 6:54, Kevin Hilman wrote:
> Hi Jian,
> 
> Jian Hu <jian.hu@amlogic.com> writes:
> 
>> There are four I2C controllers in A1 series,
>> Share the same comptible with AXG.The I2C nodes
>> depend on pinmux and clock controller.
>>
>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>> ---
>>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 149 ++++++++++++++++++++++
>>   1 file changed, 149 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> index eab2ecd36aa8..d0a73d953f5e 100644
>> --- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> @@ -16,6 +16,13 @@
>>   	#address-cells = <2>;
>>   	#size-cells = <2>;
>>   
>> +	aliases {
>> +		i2c0 = &i2c0;
>> +		i2c1 = &i2c1;
>> +		i2c2 = &i2c2;
>> +		i2c3 = &i2c3;
>> +	};
>> +
>>   	cpus {
>>   		#address-cells = <2>;
>>   		#size-cells = <0>;
>> @@ -117,6 +124,46 @@
>>   				};
>>   			};
>>   
>> +			i2c0: i2c@1400 {
>> +				compatible = "amlogic,meson-axg-i2c";
>> +				reg = <0x0 0x1400 0x0 0x24>;
> 
> The AXG DT files use 0x20 for the length.  You are using 0x24.  I don't
> see any additional registers added to the driver, so this doesn't look right.
In fact, For G12 series and A1, the length should be 0x24. A new 
register is added, And it is for IRQ handler timeout. If the 
transmission is exceeding a limited time, it will abort the 
transmission.Now the function is not used, There is completion to deal 
the timeout in the driver. I will set the length 0x20 becouse of the new 
register is not used.
> 
>> +				interrupts = <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				clocks = <&clkc_periphs CLKID_I2C_M_A>;
>> +				status = "disabled";
>> +			};
>> +
>> +			i2c1: i2c@5c00 {
>> +				compatible = "amlogic,meson-axg-i2c";
>> +				reg = <0x0 0x5c00 0x0 0x24>;
>> +				interrupts = <GIC_SPI 68 IRQ_TYPE_EDGE_RISING>;
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				clocks = <&clkc_periphs CLKID_I2C_M_B>;
>> +				status = "disabled";
>> +			};
>> +
>> +			i2c2: i2c@6800 {
>> +				compatible = "amlogic,meson-axg-i2c";
>> +				reg = <0x0 0x6800 0x0 0x24>;
>> +				interrupts = <GIC_SPI 76 IRQ_TYPE_EDGE_RISING>;
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				clocks = <&clkc_periphs CLKID_I2C_M_C>;
>> +				status = "disabled";
>> +			};
>> +
>> +			i2c3: i2c@6c00 {
>> +				compatible = "amlogic,meson-axg-i2c";
>> +				reg = <0x0 0x6c00 0x0 0x24>;
>> +				interrupts = <GIC_SPI 78 IRQ_TYPE_EDGE_RISING>;
>> +				#address-cells = <1>;
>> +				#size-cells = <0>;
>> +				clocks = <&clkc_periphs CLKID_I2C_M_D>;
>> +				status = "disabled";
>> +			};
>> +
>>   			uart_AO: serial@1c00 {
>>   				compatible = "amlogic,meson-gx-uart",
>>   					     "amlogic,meson-ao-uart";
>> @@ -171,3 +218,105 @@
>>   		#clock-cells = <0>;
>>   	};
>>   };
>> +
>> +&periphs_pinctrl {
>> +	i2c0_f11_pins:i2c0-f11 {
>> +		mux {
>> +			groups = "i2c0_sck_f11",
>> +				"i2c0_sda_f12";
>> +			function = "i2c0";
>> +			bias-pull-up;
>> +			drive-strength-microamp = <3000>;
> 
> Can you also add some comment to the changelog about the need for
> drive-strength compared to AXG.
OK, Drive strength function is added for GPIO pins from G12 series.
So does A1 series.
> 
>> +		};
>> +	};
> 
> Kevin
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
