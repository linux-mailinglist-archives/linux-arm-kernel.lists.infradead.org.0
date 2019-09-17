Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B20EAB4BFC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 12:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cndOXrYfsn2wcpe/kKCn+/nMSOEyAVwOb/QkMTfOHrA=; b=QVZQV/a+lAYbYK
	XYpfXBkkwFD2HwE8vncp0TXRBsCS6M6DLARiN/aZz8193fXNHy4xwI/5ieamRNXjgMC8NgRF83Jvg
	3eFKdwgvgYsk7ql/QC384ZGG4aGzBbAWO1+9qSGOaJqWTVJhRgEZMKgNnq/YtO+d557atHxAdBG9q
	asr4WjFVDxXAAP/a9ZQ0QvsCt+YGL/MzV8TWnrwXrtPZya112yDrzGFq+b5qLVX6zJ+IWxzU4Sweb
	JgPy5neor+nJqNN++gqBp8vRzm11MFxXNsrsLigEkHLL9birgorwQpjZ6EsomUI+LW2u8HzFuqlww
	eP52FO//FzA4t1/XkM+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAAjF-0001Yy-FB; Tue, 17 Sep 2019 10:29:01 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAAik-0001XV-L1; Tue, 17 Sep 2019 10:28:33 +0000
Received: from [10.28.18.45] (10.28.18.45) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 17 Sep
 2019 18:29:23 +0800
Subject: Re: [PATCH 1/3] pinctrl: add compatible for Amlogic Meson A1 pin
 controller
To: Neil Armstrong <narmstrong@baylibre.com>, Linus Walleij
 <linus.walleij@linaro.org>, <linux-gpio@vger.kernel.org>
References: <1568700442-18540-1-git-send-email-qianggui.song@amlogic.com>
 <1568700442-18540-2-git-send-email-qianggui.song@amlogic.com>
 <131cf06f-2530-4524-9f86-3c07641bb460@baylibre.com>
From: Qianggui Song <qianggui.song@amlogic.com>
Message-ID: <3a4bdcbf-883a-cf31-6af1-a692a10cb9a5@amlogic.com>
Date: Tue, 17 Sep 2019 18:29:23 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <131cf06f-2530-4524-9f86-3c07641bb460@baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.18.45]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_032830_692327_72E972CC 
X-CRM114-Status: GOOD (  14.96  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 Carlo Caione <carlo@caione.org>, linux-amlogic@lists.infradead.org,
 Xingyu Chen <xingyu.chen@amlogic.com>, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Neil
	Thanks for your review

On 2019/9/17 15:18, Neil Armstrong wrote:
> Hi,
> 
> On 17/09/2019 08:07, Qianggui Song wrote:
>> Add new compatible name for Amlogic's Meson-A1 pin controller
>> add a dt-binding header file which document the detail pin names.
> 
> Please add in the commit log that A1 doesn't need the DS bank reg,
> so when we will convert these bindings to yaml we will be aware of it.
> 
OK, will add it in the next patch
>>
>> Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
>> Signed-off-by: Xingyu Chen <xingyu.chen@amlogic.com>
>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> ---
>>  .../devicetree/bindings/pinctrl/meson,pinctrl.txt  |  1 +
>>  include/dt-bindings/gpio/meson-a1-gpio.h           | 73 ++++++++++++++++++++++
>>  2 files changed, 74 insertions(+)
>>  create mode 100644 include/dt-bindings/gpio/meson-a1-gpio.h
>>
>> diff --git a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
>> index 10dc4f7..0aff1f2 100644
>> --- a/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
>> +++ b/Documentation/devicetree/bindings/pinctrl/meson,pinctrl.txt
>> @@ -15,6 +15,7 @@ Required properties for the root node:
>>  		      "amlogic,meson-axg-aobus-pinctrl"
>>  		      "amlogic,meson-g12a-periphs-pinctrl"
>>  		      "amlogic,meson-g12a-aobus-pinctrl"
>> +		      "amlogic,meson-a1-periphs-pinctrl"
>>   - reg: address and size of registers controlling irq functionality
>>  
>>  === GPIO sub-nodes ===
>> diff --git a/include/dt-bindings/gpio/meson-a1-gpio.h b/include/dt-bindings/gpio/meson-a1-gpio.h
>> new file mode 100644
>> index 0000000..40e57a5
>> --- /dev/null
>> +++ b/include/dt-bindings/gpio/meson-a1-gpio.h
>> @@ -0,0 +1,73 @@
>> +/* SPDX-License-Identifier: (GPL-2.0+ OR MIT) */
>> +/*
>> + * Copyright (c) 2019 Amlogic, Inc. All rights reserved.
>> + * Author: Qianggui Song <qianggui.song@amlogic.com>
>> + */
>> +
>> +#ifndef _DT_BINDINGS_MESON_A1_GPIO_H
>> +#define _DT_BINDINGS_MESON_A1_GPIO_H
>> +
>> +#define GPIOP_0		0
>> +#define GPIOP_1		1
>> +#define GPIOP_2		2
>> +#define GPIOP_3		3
>> +#define GPIOP_4		4
>> +#define GPIOP_5		5
>> +#define GPIOP_6		6
>> +#define GPIOP_7		7
>> +#define GPIOP_8		8
>> +#define GPIOP_9		9
>> +#define GPIOP_10	10
>> +#define GPIOP_11	11
>> +#define GPIOP_12	12
>> +#define GPIOB_0		13
>> +#define GPIOB_1		14
>> +#define GPIOB_2		15
>> +#define GPIOB_3		16
>> +#define GPIOB_4		17
>> +#define GPIOB_5		18
>> +#define GPIOB_6		19
>> +#define GPIOX_0		20
>> +#define GPIOX_1		21
>> +#define GPIOX_2		22
>> +#define GPIOX_3		23
>> +#define GPIOX_4		24
>> +#define GPIOX_5		25
>> +#define GPIOX_6		26
>> +#define GPIOX_7		27
>> +#define GPIOX_8		28
>> +#define GPIOX_9		29
>> +#define GPIOX_10	30
>> +#define GPIOX_11	31
>> +#define GPIOX_12	32
>> +#define GPIOX_13	33
>> +#define GPIOX_14	34
>> +#define GPIOX_15	35
>> +#define GPIOX_16	36
>> +#define GPIOF_0		37
>> +#define GPIOF_1		38
>> +#define GPIOF_2		39
>> +#define GPIOF_3		40
>> +#define GPIOF_4		41
>> +#define GPIOF_5		42
>> +#define GPIOF_6		43
>> +#define GPIOF_7		44
>> +#define GPIOF_8		45
>> +#define GPIOF_9		46
>> +#define GPIOF_10	47
>> +#define GPIOF_11	48
>> +#define GPIOF_12	49
>> +#define GPIOA_0		50
>> +#define GPIOA_1		51
>> +#define GPIOA_2		52
>> +#define GPIOA_3		53
>> +#define GPIOA_4		54
>> +#define GPIOA_5		55
>> +#define GPIOA_6		56
>> +#define GPIOA_7		57
>> +#define GPIOA_8		58
>> +#define GPIOA_9		59
>> +#define GPIOA_10	60
>> +#define GPIOA_11	61
>> +
>> +#endif /* _DT_BINDINGS_MESON_A1_GPIO_H */
>>
> 
> 
> With that fixed,
> 
> Reviewed-by: Neil Armstrong <narmstrong@baylibre.com>
> 
> Neil
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
