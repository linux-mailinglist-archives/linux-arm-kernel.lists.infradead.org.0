Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A0FEF1BB8FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 10:40:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pg3/YN9KQxNn2DmSSpJ7gc6fnWpxWx8yHrw9vTSGSwI=; b=VwqfSDjSL028ybAo4pgsO27if
	cg/0Pq81C4yvwilLiQ6x75HlgpJUyXGzDxYBbffemgi/EiJC2jmxjAg7LsAd+Uaqbx0q26GftjWzb
	kh7BLJdMcUSWxTZTauzdXx9jK4bFbFw5T0j8guKubxu/MuytOiMjuX8RdEXtgnDH9a8q8Vn9AD2dx
	b7iyTbeLq5zuE3Sgcki5y3638FQ+z9zoV8CMlq4D0wh69uRqCQZX14s4ku0SFzXBFz0RUJru2xsQX
	VgfVLY/3zL4FH1wzzfD/dlObyUV2MbzPWecrFbWCrhyTvkiohQVuvqAljVkVYaLRPhDd+TOPSKn7M
	pAuSchcJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTLmw-0003kh-83; Tue, 28 Apr 2020 08:40:22 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTLmg-00025u-KD
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 08:40:09 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03S8c60B007008; Tue, 28 Apr 2020 10:39:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=subject : to : cc :
 references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=STMicroelectronics;
 bh=iggMpM4k3OMpDymVeQlXTpcwpY9qozcRLBTldOVkKoU=;
 b=ZgVVGayV1fkOmkGH6tVEiAnViKYagvCVvHZ4gs+njCotETu6IBPMIARbeqWtpLLDUOXu
 O0alsGmV3KCaiHtJr4585QYfVPH8EDPYrmEPGnZGV90Ra4PW+4hm3GB16AtUBK23SMZn
 +ObngClmoUn2my2/4A9Q/C151/Ike+KAR6RaPjc5iJF/HIoIXaYM6fIwIcgeXcJlYOXk
 fcf5NoL8QzbLysXor7YtesPtyPmkiyoD+9+lNu2WRTlLxC/MTtUz4z5wdDyZFQHwj9xc
 SDynpkTE8GeokJIDKRp2LCUX1HFOdpEFbFguOOE5Ys01qbmZCI2DV5B0KSuUjX8PO1LT dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30n4j5tk7f-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 28 Apr 2020 10:39:57 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 12F85100034;
 Tue, 28 Apr 2020 10:39:55 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F3E5A220F39;
 Tue, 28 Apr 2020 10:39:54 +0200 (CEST)
Received: from lmecxl0912.tpe.st.com (10.75.127.44) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 28 Apr
 2020 10:39:50 +0200
Subject: Re: [PATCH 2/2] arm: dts: stm32f769-disco: Enable MIPI DSI display
 support
To: Adrian Pop <pop.adrian61@gmail.com>, Lee Jones <lee.jones@linaro.org>
References: <20200424182139.32190-1-pop.adrian61@gmail.com>
 <3efb57a1-283b-f2f0-66a4-97e88c6c02d6@st.com>
 <CAP-HsdS0rq4iCq1oqpTU=EXF8UWbfPivCJVZG-4b7jyvdHHXUw@mail.gmail.com>
From: Alexandre Torgue <alexandre.torgue@st.com>
Message-ID: <39c59632-e395-f7ec-12b9-ca1d667651a6@st.com>
Date: Tue, 28 Apr 2020 10:39:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAP-HsdS0rq4iCq1oqpTU=EXF8UWbfPivCJVZG-4b7jyvdHHXUw@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG7NODE1.st.com (10.75.127.19) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-28_04:2020-04-27,
 2020-04-28 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_014007_037468_4E57EBD3 
X-CRM114-Status: GOOD (  26.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Adrian

On 4/27/20 10:05 PM, Adrian Pop wrote:
> Added lee.jones@linaro.org.
> 
> First, thank you all for taking a look at my changes!

no pb.

> 
> Hello Alex,
> 
> On Mon, Apr 27, 2020 at 11:28 AM Alexandre Torgue
> <alexandre.torgue@st.com> wrote:
>>
>> Hi Adrian
>>
>> On 4/24/20 8:21 PM, Adrian Pop wrote:
>>> STM32f769-disco features a 4" MIPI DSI display: add support for it.
>>>
>>> Signed-off-by: Adrian Pop <pop.adrian61@gmail.com>
>>> ---
>>
>> Commit title should be ARM: dts: stm32: ...
> 
> Will fix in next version if that's ok.
> 
>>
>> Can you explain a bit more in your commit message why do you use a
>> reserved memory pool for DMA and where this pool is located. (I assume
>> it's linked to a story of DMA and cache memory attribute on cortexM7...)
> 
> Need to look more into this, but if I remove it, /dev/fb0 is not
> available anymore and I get a warning stating:
> ...
> [drm] Supports vblank timestamp caching Rev 2 (21.10.2013).
> [drm] Initialized stm 1.0.0 20170330 for 40016800.display-controller on minor 0
> ------------[ cut here ]------------
> WARNING: CPU: 0 PID: 13 at arch/arm/mm/dma-mapping-nommu.c:50 0xc000b8ed
> CPU: 0 PID: 13 Comm: kworker/0:1 Not tainted 5.6.0-next-20200412 #23
> Hardware name: STM32 (Device Tree Support)
> Workqueue: events 0xc014fa35
> Function entered at [<c000b325>] from [<c000a487>]
> ...
> 
> When I looked in arch/arm/mm/dma-mapping-nommu.c:50, there is a comment stating:
> 
>      /*
>       * dma_alloc_from_global_coherent() may fail because:
>       *
>       * - no consistent DMA region has been defined, so we can't
>       *   continue.
>       * - there is no space left in consistent DMA region, so we
>       *   only can fallback to generic allocator if we are
>       *   advertised that consistency is not required.
>       */
> 
> This is the reason I added the reserved-memory.

Note that on cortexM7 DMA can't use cached memory. For this reason you 
have to declare a dedicated memory area for DMA with no-cache attribute.
It is done thanks to a "linux,dma" node plus a kernel config: 
CONFIG_ARM_MPU. I planed to declare this dedicated memeory region in 
sram. Can you check if add it for the same reason I explain and check if 
it works using sram ?



> 
> About the location, does it need to be hardcoded? On my board
> (STM32F769I-Disco, tftp boot) in boot log I get:
> ...
> Reserved memory: created DMA memory pool at 0xc0ef1000, size 1 MiB
> OF: reserved mem: initialized node linux,dma, compatible id shared-dma-pool
> ...
> 
>>
>> Did you try this configuration with XIP boot ?
> 
> I did not try with XIP. Currently loading zImage from tftp to memory.
> Will try with XIP as well, and get back with feedback.

Ok thanks.

> 
>>
>> regards
>> alex
>>
>>>    arch/arm/boot/dts/stm32f746.dtsi      | 34 ++++++++++++++++++
>>>    arch/arm/boot/dts/stm32f769-disco.dts | 50 +++++++++++++++++++++++++++
>>>    2 files changed, 84 insertions(+)
>>>
>>> diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
>>> index 93c063796780..202bb6edc9f1 100644
>>> --- a/arch/arm/boot/dts/stm32f746.dtsi
>>> +++ b/arch/arm/boot/dts/stm32f746.dtsi
>>> @@ -48,6 +48,19 @@ / {
>>>        #address-cells = <1>;
>>>        #size-cells = <1>;
>>>
>>> +     reserved-memory {
>>> +             #address-cells = <1>;
>>> +             #size-cells = <1>;
>>> +             ranges;
>>> +
>>> +             linux,dma {
>>> +                     compatible = "shared-dma-pool";
>>> +                     linux,dma-default;
>>> +                     no-map;
>>> +                     size = <0x10F000>;
>>> +             };
>>> +     };
>>> +
>>>        clocks {
>>>                clk_hse: clk-hse {
>>>                        #clock-cells = <0>;
>>> @@ -75,6 +88,27 @@ clk_i2s_ckin: clk-i2s-ckin {
>>>        };
>>>
>>>        soc {
>>> +             ltdc: display-controller@40016800 {
>>> +                     compatible = "st,stm32-ltdc";
>>> +                     reg = <0x40016800 0x200>;
>>> +                     interrupts = <88>, <89>;
>>> +                     resets = <&rcc STM32F7_APB2_RESET(LTDC)>;
>>> +                     clocks = <&rcc 1 CLK_LCD>;
>>> +                     clock-names = "lcd";
>>> +                     status = "disabled";
>>> +             };
>>> +
>>> +             dsi: dsi@40016c00 {
>>> +                     compatible = "st,stm32-dsi";
>>> +                     reg = <0x40016c00 0x800>;
>>> +                     interrupts = <98>;
>>> +                     clocks = <&rcc 1 CLK_F769_DSI>, <&clk_hse>;
>>> +                     clock-names = "pclk", "ref";
>>> +                     resets = <&rcc STM32F7_APB2_RESET(DSI)>;
>>> +                     reset-names = "apb";
>>> +                     status = "disabled";
>>> +             };
>>> +
>>>                timer2: timer@40000000 {
>>>                        compatible = "st,stm32-timer";
>>>                        reg = <0x40000000 0x400>;
>>> diff --git a/arch/arm/boot/dts/stm32f769-disco.dts b/arch/arm/boot/dts/stm32f769-disco.dts
>>> index 1626e00bb2cb..30ebbc193e82 100644
>>> --- a/arch/arm/boot/dts/stm32f769-disco.dts
>>> +++ b/arch/arm/boot/dts/stm32f769-disco.dts
>>> @@ -153,3 +153,53 @@ &usbotg_hs {
>>>        pinctrl-names = "default";
>>>        status = "okay";
>>>    };
>>> +
>>> +&dsi {
>>> +     #address-cells = <1>;
>>> +     #size-cells = <0>;
>>> +     status = "okay";
>>> +
>>> +     ports {
>>> +             #address-cells = <1>;
>>> +             #size-cells = <0>;
>>> +
>>> +             port@0 {
>>> +                     reg = <0>;
>>> +                     dsi_in: endpoint {
>>> +                             remote-endpoint = <&ltdc_out_dsi>;
>>> +                     };
>>> +             };
>>> +
>>> +             port@1 {
>>> +                     reg = <1>;
>>> +                     dsi_out: endpoint {
>>> +                             remote-endpoint = <&dsi_in_panel>;
>>> +                     };
>>> +             };
>>> +
>>> +     };
>>> +
>>> +     panel: panel {
>>> +             compatible = "orisetech,otm8009a";
>>> +             reg = <0>; /* dsi virtual channel (0..3) */
>>> +             reset-gpios = <&gpioj 15 GPIO_ACTIVE_LOW>;
>>> +             status = "okay";
>>> +
>>> +             port {
>>> +                     dsi_in_panel: endpoint {
>>> +                             remote-endpoint = <&dsi_out>;
>>> +                     };
>>> +             };
>>> +     };
>>> +};
>>> +
>>> +&ltdc {
>>> +     dma-ranges;
> 
> Need to remove this, not needed and causes a warning.
> 
>>> +     status = "okay";
>>> +
>>> +     port {
>>> +             ltdc_out_dsi: endpoint {
>>> +                     remote-endpoint = <&dsi_in>;
>>> +             };
>>> +     };
>>> +};
>>>
> 
> Regards,
> Adrian
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
