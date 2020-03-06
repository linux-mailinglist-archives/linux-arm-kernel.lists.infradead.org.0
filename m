Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2331417C2FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Mar 2020 17:30:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWG3Va7eEj2nAh2xb6LClQV+izM+LQEdRYJ3B9CUWFk=; b=Q3PCCxWRf9dIR/
	4RqPCGz6vfd0D4BM+mNqpHAJg7IFMd/A/9eEMQjT7AI/xH60ghOGVzJm94MPfVgE02lMLgd8Dgvtw
	77x22lU4w84exGGz9TfIQnMaIOmkXO0xdsMnr9cVMkeVBMlDO+ZwV0YKcmZ0QaEtcjXdw1QOgvh8P
	11Kx+6rCIk2R0GjZFSaJRecWLkWaxuC6DZf9xH3sSndnRaOtNRcYtIn2tEWg+l4a9kNOmkg+dBQK2
	xaS5ySv5xbfNbEy6wcZzjhK7YdGIkByCXBlSG2ORzzlwi1UIFz6VJojVnqNF0Lapv+Bazd25Ngvnq
	pZhMW1Jdkf9ikFZTyPUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAFrz-0006KY-I6; Fri, 06 Mar 2020 16:30:39 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAFrl-0006Jh-0F; Fri, 06 Mar 2020 16:30:27 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 098DD29681D
Subject: Re: [PATCH v11 3/5] soc: mediatek: Move mt8173 MMSYS to platform
 driver
To: Stephen Boyd <sboyd@kernel.org>, airlied@linux.ie, ck.hu@mediatek.com,
 laurent.pinchart@ideasonboard.com, mark.rutland@arm.com,
 mturquette@baylibre.com, p.zabel@pengutronix.de, robh+dt@kernel.org,
 ulrich.hecht+renesas@gmail.com
References: <20200302110128.2664251-1-enric.balletbo@collabora.com>
 <20200302110128.2664251-4-enric.balletbo@collabora.com>
 <158344207340.7173.8369925839829696256@swboyd.mtv.corp.google.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <8bfc4350-6e92-e657-18f2-3624a2558521@collabora.com>
Date: Fri, 6 Mar 2020 17:30:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <158344207340.7173.8369925839829696256@swboyd.mtv.corp.google.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_083025_303488_A82D9781 
X-CRM114-Status: GOOD (  22.33  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>,
 Collabora Kernel ML <kernel@collabora.com>, linux-clk@vger.kernel.org,
 Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, mtk01761 <wendell.lin@mediatek.com>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, rdunlap@infradead.org,
 linux-kernel@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

On 5/3/20 22:01, Stephen Boyd wrote:
> Quoting Enric Balletbo i Serra (2020-03-02 03:01:26)
>> From: Matthias Brugger <mbrugger@suse.com>
>>
>> There is no strong reason for this to use CLK_OF_DECLARE instead of
>> being a platform driver.
> 
> Cool.
> 
>> Plus, this driver provides clocks but also
>> a shared register space for the mediatek-drm and the mediatek-mdp
>> driver. So move to drivers/soc/mediatek as a platform driver.
>>
>> Signed-off-by: Matthias Brugger <mbrugger@suse.com>
>> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
>> Reviewed-by: CK Hu <ck.hu@mediatek.com>
>> ---
>>
>> Changes in v11: None
>> Changes in v10:
>> - Renamed to be generic mtk-mmsys
>> - Add driver data support to be able to support diferent SoCs
>>
>> Changes in v9:
>> - Move mmsys to drivers/soc/mediatek (CK)
>>
>> Changes in v8:
>> - Be a builtin_platform_driver like other mediatek mmsys drivers.
>>
>> Changes in v7:
>> - Free clk_data->clks as well
>> - Get rid of private data structure
>>
>>  drivers/clk/mediatek/clk-mt8173.c | 104 --------------------
>>  drivers/soc/mediatek/Kconfig      |   7 ++
>>  drivers/soc/mediatek/Makefile     |   1 +
>>  drivers/soc/mediatek/mtk-mmsys.c  | 154 ++++++++++++++++++++++++++++++
> 
> Can you generate with -M so that we can see what has actually changed?
> 

Sure, sorry about that.

>>  4 files changed, 162 insertions(+), 104 deletions(-)
>>  create mode 100644 drivers/soc/mediatek/mtk-mmsys.c
>>
>> diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
>> index 2114b563478c..7a156944d50e 100644
>> --- a/drivers/soc/mediatek/Kconfig
>> +++ b/drivers/soc/mediatek/Kconfig
>> @@ -44,4 +44,11 @@ config MTK_SCPSYS
>>           Say yes here to add support for the MediaTek SCPSYS power domain
>>           driver.
>>  
>> +config MTK_MMSYS
>> +       bool "MediaTek MMSYS Support"
>> +       depends on COMMON_CLK_MT8173
> 
> Does it need some default so that defconfig updates don't break things?
> 

Right.

>> +       help
>> +         Say yes here to add support for the MediaTek Multimedia
>> +         Subsystem (MMSYS).
>> +
>>  endmenu
>> diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
>> index b01733074ad6..01f9f873634a 100644
>> --- a/drivers/soc/mediatek/Makefile
>> +++ b/drivers/soc/mediatek/Makefile
>> @@ -3,3 +3,4 @@ obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
>>  obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o
>>  obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
>>  obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
>> +obj-$(CONFIG_MTK_MMSYS) += mtk-mmsys.o
>> diff --git a/drivers/soc/mediatek/mtk-mmsys.c b/drivers/soc/mediatek/mtk-mmsys.c
>> new file mode 100644
>> index 000000000000..473cdf732fb5
>> --- /dev/null
>> +++ b/drivers/soc/mediatek/mtk-mmsys.c
>> @@ -0,0 +1,154 @@
>> +// SPDX-License-Identifier: GPL-2.0-only
>> +/*
>> + * Copyright (c) 2014 MediaTek Inc.
>> + * Author: James Liao <jamesjj.liao@mediatek.com>
>> + */
>> +
>> +#include <linux/clk-provider.h>
>> +#include <linux/of_device.h>
>> +#include <linux/platform_device.h>
>> +
>> +#include "../../clk/mediatek/clk-gate.h"
>> +#include "../../clk/mediatek/clk-mtk.h"
> 
> Why not use include/linux/clk/?
> 

I can move these files to include, this will impact a lot more of drivers but,
yes, I think is the right way.

> But I also don't understand why the clk driver is moved outside of
> drivers/clk/ into drivers/soc/. Commit text saying that it has shared
> registers doesn't mean it can't still keep the clk driver part in the
> drivers/clk/ area.
> 

Actually moving this to the soc directory has been requested by CK (mediatek) as
a change in v8. You can see the discussion in [1]

Thanks,
 Enric

[1] https://patchwork.kernel.org/cover/11394709/

>> +
>> +#include <dt-bindings/clock/mt8173-clk.h>
>> +
>> +static const struct mtk_gate_regs mm0_cg_regs = {
>> +       .set_ofs = 0x0104,
>> +       .clr_ofs = 0x0108,
>> +       .sta_ofs = 0x0100,
>> +};
>> +
>> +static const struct mtk_gate_regs mm1_cg_regs = {
>> +       .set_ofs = 0x0114,
>> +       .clr_ofs = 0x0118,
>> +       .sta_ofs = 0x0110,
>> +};

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
