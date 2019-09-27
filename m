Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B193BFEDD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 08:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vLkhqz9e9kPMkNkKGB9z5FvuDnbzE6edAE2+HOOFKGM=; b=NpGUfCjpgLqYCZ86xPyUxFS8m
	99zwa3a3H2vlTpR9vzXSAaERBXighwja36BDWJ4VZbgsGbTVX7nJ6fg3ro/eKG8GEzhS3U1QtoTTn
	858DGTpq/TWXX27F250XXalFIT6EYlI2liU95u7VjY8U6iMulnmvYPcLFFgGgC+TNVMao3NtIA5xQ
	mpVz26O048+0nbFzEQdtAIedFNeqUTuw6tWoWy9/Pt2ZTRO0koO/tiaSXOeFdjs3gFBAMp4lyWDY/
	/EVHQWwxuGko9ml0EsGGrItPqhIXoL47Rt2xq3KnhPueWCw09dCvgv+XAINtZRPULcjXSvRCn+Ixb
	Su0lFqJlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDjRD-000784-77; Fri, 27 Sep 2019 06:09:07 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDjQk-000778-8N; Fri, 27 Sep 2019 06:08:42 +0000
Received: from [10.28.19.114] (10.28.19.114) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Fri, 27 Sep
 2019 14:08:34 +0800
Subject: Re: [PATCH 1/2] dt-bindings: clock: meson: add A1 clock controller
 bindings
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
References: <1569411888-98116-1-git-send-email-jian.hu@amlogic.com>
 <1569411888-98116-2-git-send-email-jian.hu@amlogic.com>
 <1j4l10motk.fsf@starbuckisacylon.baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <d9b23872-3d6f-ddb0-d44b-174fb2984232@amlogic.com>
Date: Fri, 27 Sep 2019 14:08:34 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.3.3
MIME-Version: 1.0
In-Reply-To: <1j4l10motk.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.19.114]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_230838_295918_E3C3B513 
X-CRM114-Status: GOOD (  15.24  )
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
Cc: Rob Herring <robh@kernel.org>, Jianxin Pan <jianxin.pan@amlogic.com>,
 devicetree@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Jerome

Thank you for review.

On 2019/9/25 22:29, Jerome Brunet wrote:
> On Wed 25 Sep 2019 at 19:44, Jian Hu <jian.hu@amlogic.com> wrote:
> 
> In addition to the comment expressed by Stephen on patch 2
> 
got it.
>> Add the documentation to support Amlogic A1 clock driver,
>> and add A1 clock controller bindings.
>>
>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> ---
>>   .../devicetree/bindings/clock/amlogic,a1-clkc.yaml |  65 +++++++++++++
>>   include/dt-bindings/clock/a1-clkc.h                | 102 +++++++++++++++++++++
>>   2 files changed, 167 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>>   create mode 100644 include/dt-bindings/clock/a1-clkc.h
>>
>> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>> new file mode 100644
>> index 0000000..f012eb2
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>> @@ -0,0 +1,65 @@
>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>> +/*
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + */
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/clock/amlogic,a1-clkc.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +title: Amlogic Meson A1 Clock Control Unit Device Tree Bindings
>> +
>> +maintainers:
>> +  - Neil Armstrong <narmstrong@baylibre.com>
>> +  - Jerome Brunet <jbrunet@baylibre.com>
>> +  - Jian Hu <jian.hu@jian.hu.com>
>> +
>> +properties:
>> +  compatible:
>> +    - enum:
>> +        - amlogic,a1-clkc
>> +
>> +  reg:
>> +    minItems: 1
>> +    maxItems: 3
>> +    items:
>> +      - description: peripheral registers
>> +      - description: cpu registers
>> +      - description: pll registers
>> +
>> +  reg-names:
>> +    items:
>> +      - const: peripheral
>> +      - const: pll
>> +      - const: cpu
>> +
>> +  clocks:
>> +    maxItems: 1
>> +    items:
>> +      - description: Input Oscillator (usually at 24MHz)
>> +
>> +  clock-names:
>> +    maxItems: 1
>> +    items:
>> +      - const: xtal
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - reg-names
>> +  - clocks
>> +  - clock-names
>> +  - "#clock-cells"
>> +
>> +examples:
>> +  - |
>> +    clkc: clock-controller {
>> +        compatible = "amlogic,a1-clkc";
>> +        reg = <0x0 0xfe000800 0x0 0x100>,
>> +              <0x0 0xfe007c00 0x0 0x21c>,
>> +              <0x0 0xfd000080 0x0 0x20>;
>> +        reg-names = "peripheral", "pll", "cpu";
> 
> I'm sorry but I don't agree with this. You are trying to regroup several
> controllers into one with this, and it is not OK
> 
> By the looks of it there are 3 different controllers, including one you
> did not implement in the driver.
> 
Yes, In A1, the clock registers include three regions.

I agree with your opinion. I will implement the two clock drivers of 
peripheral and plls first in PATCH V2. And CPU clock driver will be sent 
after the patches are merged.

>> +        clocks = <&xtal;
>> +        clock-names = "xtal";
>> +        #clock-cells = <1>;
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
