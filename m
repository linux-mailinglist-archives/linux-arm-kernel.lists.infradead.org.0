Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75F4DA63A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 10:16:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b303KJhhEiAPgOfApe4ch0fBjhici+U4jzU0FX8JnHo=; b=QRM/GOzI71+k2C
	Uz0eAImJL+7f3cvLtWVRHUmnRBLLoXnJalO6BfNsyYoLnRCvUWpavF0zdkz2AIPQK9zxYMq5o7hwD
	5JXDvcnID9g2SpCjYrNmTW9RufI/r9mi+RByGsUvkTEPGXDHtid2pfdenwHX6XvcyYbtCS0SRaoVu
	V3vK3h/pL8/QWTxCozaj+5d7UMkuPPuPxSXnAIVizQr1QIskJxHaOk2rpUCZtYYP5aj1nG5//wNIS
	oXHZLHG2gUjULLQVwF7rEdMGpfmb2gOanvnTU6IcbB5iSqsu8N82dDqUR6FB+eClDdJ3qao4cnSHJ
	x8WCd9fozaNzhuFHPl1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53zD-00022b-RN; Tue, 03 Sep 2019 08:16:23 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53z0-00022E-9A; Tue, 03 Sep 2019 08:16:11 +0000
Received: from [10.18.29.226] (10.18.29.226) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 3 Sep
 2019 16:16:57 +0800
Subject: Re: [PATCH 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman
 <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>
References: <1567493475-75451-1-git-send-email-jianxin.pan@amlogic.com>
 <1567493475-75451-5-git-send-email-jianxin.pan@amlogic.com>
 <97a462d6-d98e-f778-96d5-bacd4801df6b@baylibre.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <f06ab4c9-4b86-3b6f-062d-b5fe365bcd10@amlogic.com>
Date: Tue, 3 Sep 2019 16:16:57 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <97a462d6-d98e-f778-96d5-bacd4801df6b@baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.18.29.226]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_011610_326707_15851455 
X-CRM114-Status: GOOD (  12.12  )
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, Qiufang Dai <qiufang.dai@amlogic.com>,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, Carlo Caione <carlo@caione.org>,
 Tao Zeng <tao.zeng@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Neil,

Thanks for your time.
Please see my comments below.

On 2019/9/3 15:42, Neil Armstrong wrote:
> Hi,
> 
> On 03/09/2019 08:51, Jianxin Pan wrote:
>> Add basic support for the Amlogic A1 based Amlogic AD401 board:
>> which describe components as follows: Reserve Memory, CPU, GIC, IRQ,
[...]
>> +	chosen {
>> +		stdout-path = "serial0:115200n8";
>> +	};
>> +	memory@0 {
>> +		device_type = "memory";
>> +		linux,usable-memory = <0x0 0x0 0x0 0x8000000>;
> 
> I'll prefer usage of reg, it's handled the same but linux,usable-memory
> is not documented.
> 
OK, I will fix it in the next version. Thanks for your review.
>> +	};
>> +};
>> +
>> +&uart_AO_B {
>> +	status = "okay";
>> +	/*pinctrl-0 = <&uart_ao_a_pins>;*/
>> +	/*pinctrl-names = "default";*/
> 
> Please remove these lines instead of commenting them.
> 
OK, I will fix it in the next version.
>> +};
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> new file mode 100644
>> index 00000000..b98d648
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> @@ -0,0 +1,121 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/ {
[...]
>> +
>> +	reserved-memory {
>> +		#address-cells = <2>;
>> +		#size-cells = <2>;
>> +		ranges;
> 
> Isn't there secmon reserved memory ?
> 
A1 uses internal SRAM as secmon memory.
And there is no secmon reserved memory in ddr side.
>> +
>> +		linux,cma {
>> +			compatible = "shared-dma-pool";
>> +			reusable;
>> +			size = <0x0 0x800000>;
[...]
>>
> 
> Thanks,
> Neil
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
