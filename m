Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBA0EAB230
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Sep 2019 07:58:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QdKSfJFNxbC8WB/KI3L6YsAM8YOaR5kifbyrjZRHg1U=; b=ey/qDbLqGGclpH
	0SQRiggLGy8hm5zO2uMwkN2yb6AOs5N3yMnccreW9lqK0gg0Lz6hhbq8yWRULolZ6JfFGe7FXFWbI
	qTQYdOQi7D7HG8mm2YGdgYIriGRmoD7+rVjPYwvp/tWtroZPSCtCbIEjX5vqsxC8Y7PM78VrNWAI8
	IK6lxQevPYEl8O1lEqCghRQhpRU9TV9amxiQEz0dY9ro0c8ueQY9h9ENv+s2BuyVfaxjK2bFAqSZd
	fKN4huSCUYIYSL35R6DsTvd9pASyNu4ag4Czp96ICpiSfnx8mE+BqttRZyCE5waDzt/Nt3gt/3PWg
	W0kLlxAiHCP9NtxwA0bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i67GX-0004If-IO; Fri, 06 Sep 2019 05:58:37 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i67GQ-0004IF-Of; Fri, 06 Sep 2019 05:58:32 +0000
Received: from [10.18.29.226] (10.18.29.226) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Fri, 6 Sep
 2019 13:59:06 +0800
Subject: Re: [PATCH v2 4/4] arm64: dts: add support for A1 based Amlogic AD401
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
References: <1567667251-33466-1-git-send-email-jianxin.pan@amlogic.com>
 <1567667251-33466-5-git-send-email-jianxin.pan@amlogic.com>
 <CAFBinCBSmW4y-Dz7EkJMV8HOU4k6Z0G-K6T77XnVrHyubaSsdg@mail.gmail.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <be032a85-b60d-f7f0-8404-b27784d809df@amlogic.com>
Date: Fri, 6 Sep 2019 13:59:05 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CAFBinCBSmW4y-Dz7EkJMV8HOU4k6Z0G-K6T77XnVrHyubaSsdg@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.18.29.226]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_225830_807229_A3FC3879 
X-CRM114-Status: GOOD (  16.77  )
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, Neil Armstrong <narmstrong@baylibre.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Qiufang Dai <qiufang.dai@amlogic.com>, Rob Herring <robh+dt@kernel.org>,
 Jian Hu <jian.hu@amlogic.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Tao Zeng <tao.zeng@amlogic.com>, Carlo Caione <carlo@caione.org>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Martin,

Thanks for the review, we really appreciate your time.
Please see my comments below.

On 2019/9/6 4:15, Martin Blumenstingl wrote:
> Hi Jianxin,
> 
> (it's great to see that you and your team are upstreaming this early)
> 
> On Thu, Sep 5, 2019 at 9:08 AM Jianxin Pan <jianxin.pan@amlogic.com> wrote:
> [...]
>> +       memory@0 {
>> +               device_type = "memory";
>> +               reg = <0x0 0x0 0x0 0x8000000>;
>> +               /*linux,usable-memory = <0x0 0x0 0x0 0x8000000>;*/
> why do we need that comment here (I don't understand it - why doesn't
> the "reg" property cover this)?
> I replaced "linux,usable-memory" with reg, but forgot to remove this comment line. 
I will remove this line in the next version. Thank you.
>> +       };
>> +};
>> +
>> +&uart_AO_B {
>> +       status = "okay";
>> +};
>> diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> new file mode 100644
>> index 00000000..4d476ac
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
>> @@ -0,0 +1,122 @@
>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +/*
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + */
>> +
>> +#include <dt-bindings/interrupt-controller/irq.h>
>> +#include <dt-bindings/interrupt-controller/arm-gic.h>
>> +
>> +/ {
>> +       compatible = "amlogic,a1";
>> +
>> +       interrupt-parent = <&gic>;
>> +       #address-cells = <2>;
>> +       #size-cells = <2>;
>> +
>> +       cpus {
>> +               #address-cells = <0x2>;
>> +               #size-cells = <0x0>;
> only now I notice that all our other .dtsi also use hex values
> (instead of decimal as just a few lines above) here
> do you know if there is a particular reason for this?
> 
I just copied from the previous series, and didn't notice the difference before.> [...]
>> +               uart_AO_B: serial@fe002000 {
>> +                       compatible = "amlogic,meson-gx-uart",
>> +                                    "amlogic,meson-ao-uart";
>> +                                    reg = <0x0 0xfe002000 0x0 0x18>;
> the indentation of the "reg" property is off here
OK, I will fix it.
> 
> also I'm a bit surprised to see no busses (like aobus, cbus, periphs, ...) here
> aren't there any busses defined in the A1 SoC implementation or are
> were you planning to add them later?
>Unlike previous series,there is no Cortex-M3 AO CPU in A1, and there is no AO/EE power domain.
Most of the registers are on the apb_32b bus.  aobus, cbus and periphs are not used in A1.
> 
> Martin
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
