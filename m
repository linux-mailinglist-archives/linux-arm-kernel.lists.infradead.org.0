Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2220410E5B1
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 07:01:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GgR20ANF2wP6FeftRk2b2+/rPCeozcuDu+ty1I5vnLU=; b=Q+tWxKsi4J7tChMjvecRvFzPn
	2GqffwV6AdjbO7TRXpIm/7Gp7zOOS+y/CfHmzNx1xSs1qYYGSn6W+nMJ5HvpdSbHCKeUjceWY45fG
	8xuyTjxIA3rf/E7j0ZAztbv/QjBNTpTH9UKRb1jFJKeigGnLETdDolQmFr5j12kytb9JmmxiD4pga
	kON7fopCzN9zitrIJy9ynfZ2gdkI1ybUFGtlqj4fKVSSAo6YPsOwQ6a8JYD3yFuNVAGeb+Oron1hX
	4B1t7H0k70+0XMarxrT3mps2UyER8t8ZluFAwE+len0hILlsBBlarkKhkdTRlJRGkYjy7SlaarnYw
	9IWh64Q3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibemC-0008MQ-DX; Mon, 02 Dec 2019 06:01:40 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibem2-0008La-Cq; Mon, 02 Dec 2019 06:01:32 +0000
Received: from [10.28.39.99] (10.28.39.99) by mail-sz.amlogic.com (10.28.11.5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Mon, 2 Dec
 2019 14:01:47 +0800
Subject: Re: [PATCH v3 0/7] add Amlogic A1 clock controller driver
To: Jerome Brunet <jbrunet@baylibre.com>, Neil Armstrong
 <narmstrong@baylibre.com>
References: <20191129144605.182774-1-jian.hu@amlogic.com>
 <1jwobi7lcy.fsf@starbuckisacylon.baylibre.com>
From: Jian Hu <jian.hu@amlogic.com>
Message-ID: <63d776af-6ded-02d2-cc34-1b3733e2625b@amlogic.com>
Date: Mon, 2 Dec 2019 14:01:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <1jwobi7lcy.fsf@starbuckisacylon.baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.28.39.99]
X-ClientProxiedBy: mail-sz.amlogic.com (10.28.11.5) To mail-sz.amlogic.com
 (10.28.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_220130_844212_8B887670 
X-CRM114-Status: GOOD (  15.49  )
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



On 2019/11/29 23:28, Jerome Brunet wrote:
> 
> On Fri 29 Nov 2019 at 15:45, Jian Hu <jian.hu@amlogic.com> wrote:
> 
>> add support for Amlogic A1 clock driver, the clock includes
>> three parts: peripheral clocks, pll clocks, CPU clocks.
>> sys pll and CPU clocks will be sent in next patch.
>>
>> Changes since v1 at [2]:
> 
> v2 or v1 ??
It is v2 here, I will fix it in next version.
> 
>> -add probe function for A1
>> -seperate the clock driver into two patch
>> -change some clock flags and ops
>> -add support for a1 PLL ops
>> -add A1 clock node
>>
>> Changes since v1 at [1]:
>> -place A1 config alphabetically
>> -add actual reason for RO ops, CLK_IS_CRITICAL, CLK_IGNORE_UNUSED
>> -separate the driver into two driver: peripheral and pll driver
>> -delete CLK_IGNORE_UNUSED flag for pwm b/c/d/e/f clock, dsp clock
>> -delete the change in Kconfig.platforms, address to Kevin alone
>> -remove the useless comments
>> -modify the meson pll driver to support A1 PLLs
>>
>> [1] https://lkml.kernel.org/r/1569411888-98116-1-git-send-email-jian.hu@amlogic.com
>> [2] https://lkml.kernel.org/r/1571382865-41978-1-git-send-email-jian.hu@amlogic.com
>>
>> Jian Hu (7):
>>    dt-bindings: clock: meson: add A1 PLL clock controller bindings
>>    clk: meson: add support for A1 PLL clock ops
>>    clk: meson: eeclk: refactor eeclk common driver to support A1
>>    clk: meson: a1: add support for Amlogic A1 PLL clock driver
>>    dt-bindings: clock: meson: add A1 peripheral clock controller bindings
>>    clk: meson: a1: add support for Amlogic A1 Peripheral clock driver
>>    arm64: dts: meson: add A1 PLL and periphs clock controller
> 
> The arm64 is for the DT maintainer. Please send it separately after this
> series is applied (if it gets applied)
> 
>> Please fix the underlying issue, then you can post your series again.
> 
> This was a comment on your v2. Did you fix the orphan/ordering issue ?

> If you did, you probably should mention it here.
Yes, I have fixed it in A1 periphs driver, not fixed it in CCF.
I have realised a probe function for A1 periphs driver, Not using the 
common probe interface in meson-eeclk.c. Skip registering xtal_fixedpll 
and xtal_hifipll clocks when register all periphs clocks. And after the 
provider registration. Registering xtal_fixedpll and xtal_hifipll clock 
alone.

I will add some comments here about orphan issue.

And I have noticed you have fixed it in CCF,  I will update the A1 
periphs driver, drop the probe function in the next vertion.
Could I send the v4 after your patch 'clk: walk orphan list on clock 
provider registration' is applied? Or I can send v4 based on your patch now.

> If you did not, I'm probably not going to review this further until you do.
> 
>>
>>   .../bindings/clock/amlogic,a1-clkc.yaml       |   70 +
>>   .../bindings/clock/amlogic,a1-pll-clkc.yaml   |   56 +
>>   arch/arm64/boot/dts/amlogic/meson-a1.dtsi     |   26 +
>>   drivers/clk/meson/Kconfig                     |   20 +
>>   drivers/clk/meson/Makefile                    |    2 +
>>   drivers/clk/meson/a1-pll.c                    |  334 +++
>>   drivers/clk/meson/a1-pll.h                    |   56 +
>>   drivers/clk/meson/a1.c                        | 2309 +++++++++++++++++
>>   drivers/clk/meson/a1.h                        |  120 +
>>   drivers/clk/meson/clk-pll.c                   |   21 +
>>   drivers/clk/meson/clk-pll.h                   |    1 +
>>   drivers/clk/meson/meson-eeclk.c               |   59 +-
>>   drivers/clk/meson/meson-eeclk.h               |    2 +
>>   drivers/clk/meson/parm.h                      |    1 +
>>   include/dt-bindings/clock/a1-clkc.h           |   98 +
>>   include/dt-bindings/clock/a1-pll-clkc.h       |   16 +
>>   16 files changed, 3181 insertions(+), 10 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-clkc.yaml
>>   create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-pll-clkc.yaml
>>   create mode 100644 drivers/clk/meson/a1-pll.c
>>   create mode 100644 drivers/clk/meson/a1-pll.h
>>   create mode 100644 drivers/clk/meson/a1.c
>>   create mode 100644 drivers/clk/meson/a1.h
>>   create mode 100644 include/dt-bindings/clock/a1-clkc.h
>>   create mode 100644 include/dt-bindings/clock/a1-pll-clkc.h
> 
> .
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
