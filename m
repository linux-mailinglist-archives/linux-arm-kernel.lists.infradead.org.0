Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAC7F15147E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 04:12:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZSsLW95cklapeOfB7oRgwUNav+Ism5zcliXzpeWeCcM=; b=jp9zdWtHC9NSCAlR4wyxckw6f
	SJ0a2DXKwkmUH3PwOtNPNDaDO1TF8q/QrNzeuTg3hbZfBXt8822NKBMK/YwEX/pVRCGvmrjayHBtW
	w50NIEPexgB2bGKfhknOiDglmLYZOV2+LffqpE8HFn4LPApq6Q7XJyVxY8VBqffzZ5hICMSbNtUIN
	H2H9venhu+TCXxRYz+66i+8XMKmseTPVpejQNVRmeaGVPzcguWKzOcdDMAEavn/nQ1B4s5pxh9XoE
	IWbIl+2Pk8g7hA3ErQaCOFo4j1B2Xea+VO0RaXNjjFE6v3WLAmP93n2KRB8yxPMQxNApPwZhEBluY
	TUUu0qsMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyodh-0004hi-DV; Tue, 04 Feb 2020 03:12:37 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyoda-0004hH-F8; Tue, 04 Feb 2020 03:12:33 +0000
Received: from [10.7.0.4] (10.28.11.250) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 4 Feb
 2020 11:12:48 +0800
Subject: Re: [PATCH v7 1/5] dt-bindings: clock: meson: add A1 PLL clock
 controller bindings
To: Rob Herring <robh@kernel.org>
References: <20200120034937.128600-1-jian.hu@amlogic.com>
 <20200120034937.128600-2-jian.hu@amlogic.com> <20200121220038.GA13566@bogus>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <af5e7bf9-84d1-0e23-4167-a800d18408d8@amlogic.com>
Date: Tue, 4 Feb 2020 11:12:48 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200121220038.GA13566@bogus>
Content-Language: en-US
X-Originating-IP: [10.28.11.250]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_191231_984769_B3530864 
X-CRM114-Status: GOOD (  12.21  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, Victor Wan <victor.wan@amlogic.com>,
 Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-kernel@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Qiufang Dai <qiufang.dai@amlogic.com>,
 Chandle Zou <chandle.zou@amlogic.com>, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2020/1/22 6:00, Rob Herring wrote:
> On Mon, 20 Jan 2020 11:49:33 +0800, Jian Hu wrote:
>> Add the documentation to support Amlogic A1 PLL clock driver,
>> and add A1 PLL clock controller bindings.
>>
>> Signed-off-by: Jian Hu <jian.hu@amlogic.com>
>> ---
>>   .../bindings/clock/amlogic,a1-pll-clkc.yaml   | 52 +++++++++++++++++++
>>   include/dt-bindings/clock/a1-pll-clkc.h       | 16 ++++++
>>   2 files changed, 68 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
>>   create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h
>>
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.
> 
> .
> 
I had gotten your Reviewed-by tag in v5 version, And the tag is missing 
in v6, I am sorry about it. There is something wrong in v6, it can not 
be compiled by dt_binding_check. It had been fixed in v7. Should I wait 
for your tag again?

I will send v8 because the driver is changed a bit. Could I add your tag?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
