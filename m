Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 171D71C6F4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 13:27:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mAbpC3x8MSFjgRYq2lmx+DkSC2ZcVspOLs+GEKZu2p8=; b=JqTxycs+dsflcg
	l/cWTIXnkpwE78kX510ToXYXcnfnyIQz8hCAoZ2n7lf+mIeu1/HaWF9NV/6qcMZYMeCTDtlQcptHF
	kI/sJSMvyPgY60AH6QsrglIK9UqRm0w1U4Tl2/DrLL1esnG0tB1/IpMcYa2n1yXCid+MAm+fEKA2Z
	gXU0aiVDWnYRNxdnsJ/fFtiY8ezk+ldqjF4PY21ip4vBsoySYJ0f7mu1NVpuDo6tt2n6pGQJGxDFs
	ik60G1LHSLeIBLi7w/vR1A10DbX0Mutj/asdYWDxt8KDcYepOumfqniZkeeS4E9gtIqJlQ4bK1Bl1
	yRYCausKB51mqFjRJWkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWID4-0002Hq-50; Wed, 06 May 2020 11:27:30 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWICu-0002GC-1c
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 11:27:22 +0000
Received: from sntmail11s.snt-is.com (unknown [10.203.32.181])
 by skedge04.snt-world.com (Postfix) with ESMTP id 44AF067A6F2;
 Wed,  6 May 2020 13:27:11 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail11s.snt-is.com
 (10.203.32.181) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Wed, 6 May 2020
 13:27:10 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Wed, 6 May 2020 13:27:10 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Peng Fan <peng.fan@nxp.com>, Lucas Stach <l.stach@pengutronix.de>, "Adam
 Ford" <aford173@gmail.com>, Anson Huang <anson.huang@nxp.com>, "Christian
 Gmeiner" <christian.gmeiner@gmail.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, Fabio Estevam <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Jun Li <jun.li@nxp.com>, dl-linux-imx
 <linux-imx@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 "Russell King" <linux+etnaviv@armlinux.org.uk>, Sascha Hauer
 <s.hauer@pengutronix.de>, Shawn Guo <shawnguo@kernel.org>, "S.j. Wang"
 <shengjiu.wang@nxp.com>
Subject: Re: [RFC PATCH 3/4] drm/etnaviv: Change order of enabling clocks to
 fix boot on i.MX8MM
Thread-Topic: [RFC PATCH 3/4] drm/etnaviv: Change order of enabling clocks to
 fix boot on i.MX8MM
Thread-Index: AQHWHu1V9EwL5xxa+UiJnz7nneFudaiRmbMAgAAQ8oCAAWBPgIAHyDoA
Date: Wed, 6 May 2020 11:27:10 +0000
Message-ID: <24a5aceb-9c47-2029-aa5b-8fa7f9ba5670@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-4-frieder.schrempf@kontron.de>
 <3895f202cf5919e41a56878a62f6d5259dea12d3.camel@pengutronix.de>
 <72e8618b-856e-de42-9282-958cd03b239f@kontron.de>
 <DB6PR0402MB276059A8D612ECBA8812379988AB0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
In-Reply-To: <DB6PR0402MB276059A8D612ECBA8812379988AB0@DB6PR0402MB2760.eurprd04.prod.outlook.com>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <D25527CCBDEB3645AAE31FCF6D268574@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 44AF067A6F2.A23F9
X-SnT-MailScanner: Not scanned: please contact your Internet E-Mail Service
 Provider for details
X-SnT-MailScanner-SpamCheck: 
X-SnT-MailScanner-From: frieder.schrempf@kontron.de
X-SnT-MailScanner-To: aford173@gmail.com, anson.huang@nxp.com,
 christian.gmeiner@gmail.com, daniel.baluta@nxp.com,
 devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 etnaviv@lists.freedesktop.org, festevam@gmail.com, jun.li@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de,
 leonard.crestez@nxp.com, linux+etnaviv@armlinux.org.uk,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com,
 linux-kernel@vger.kernel.org, peng.fan@nxp.com,
 s.hauer@pengutronix.de, shawnguo@kernel.org, shengjiu.wang@nxp.com
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_042720_426262_620ED5D6 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Peng,

On 01.05.20 14:36, Peng Fan wrote:
>> Subject: Re: [RFC PATCH 3/4] drm/etnaviv: Change order of enabling clocks to
>> fix boot on i.MX8MM
>>
>> On 30.04.20 16:35, Lucas Stach wrote:
>>> Am Donnerstag, den 30.04.2020, 12:46 +0000 schrieb Schrempf Frieder:
>>>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>>>
>>>> On some i.MX8MM devices the boot hangs when enabling the GPU clocks.
>>>> Changing the order of clock initalization to
>>>>
>>>> core -> shader -> bus -> reg
>>>>
>>>> fixes the issue. This is the same order used in the imx platform code
>>>> of the downstream GPU driver in the NXP kernel [1]. For the sake of
>>>> consistency we also adjust the order of disabling the clocks to the
>>>> reverse.
>>>>
>>>> [1]
>>>> https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsou
>>>>
>> rce.codeaurora.org%2Fexternal%2Fimx%2Flinux-imx%2Ftree%2Fdrivers%2F
>> mx
>>>>
>> c%2Fgpu-viv%2Fhal%2Fos%2Flinux%2Fkernel%2Fplatform%2Ffreescale%2Fgc
>> _h
>>>>
>> al_kernel_platform_imx.c%3Fh%3Dimx_5.4.3_2.0.0%23n1538&amp;data=02
>> %7C
>>>>
>> 01%7Cpeng.fan%40nxp.com%7Cdc7da53f665e4f567e3008d7ed1c27e0%7C6
>> 86ea1d3
>>>>
>> bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637238577497969787&amp;sda
>> ta=QRHzu
>>>> C6gSKy%2F6y2FTRvlNF5t7DmJIvTgBESYKchI%2FDw%3D&amp;reserved=0
>>>
>>> I don't see why the order of the clocks is important. Is this really a
>>> GPU issue? As in: does a GPU access hang when enabling the clocks in
>>> the wrong order? Or is this a clock driver issue with a clock access
>>> hanging due to an upstream clock still being disabled?
>>
>> Actually you might be right with this being a clock driver issue. The hanging
>> happens while enabling the clocks (unrelated to any GPU register access). The
>> strange thing is that most of the devices we have don't care and work as is
>> and some devices reliably fail each time when enabling the clocks in the
>> "wrong" order.
>>
>> So I guess this could indeed be some clock being enabled with an upstream
>> PLL not having locked yet or something.
> 
> https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fpatchwork.kernel.org%2Fcover%2F11433775%2F&amp;data=02%7C01%7Cfrieder.schrempf%40kontron.de%7C1014be5f9b8b4d0c6e8108d7edcc5bde%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637239334279684748&amp;sdata=UwVVzPEvNOP6I4g78uG5O9jVYmHwqyo6hj97wvtlzs0%3D&amp;reserved=0
> 
> Will this pachset help?

Thanks for the pointer. Unfortunately the clock patches don't help. I 
tried with 5.7-rc4 and your patches on top and the issue still persists.

Also I found out that changing the order of the clock initialization as 
proposed, does not fix the problem, either. On some boards it helps, 
others still hang when the clocks are initialized.

Thanks,
Frieder

> 
> The i.MX8M CCM root mux code in Linux needs a fix.
> 
> Regards,
> Peng.
> 
>>
>>>
>>> Regards,
>>> Lucas
>>>
>>>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>>>> ---
>>>>    drivers/gpu/drm/etnaviv/etnaviv_gpu.c | 42
>> +++++++++++++--------------
>>>>    1 file changed, 21 insertions(+), 21 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>>>> b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>>>> index 7b138d4dd068..424b2e5951f0 100644
>>>> --- a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>>>> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>>>> @@ -1487,55 +1487,55 @@ static int etnaviv_gpu_clk_enable(struct
>> etnaviv_gpu *gpu)
>>>>    {
>>>>    	int ret;
>>>>
>>>> -	if (gpu->clk_reg) {
>>>> -		ret = clk_prepare_enable(gpu->clk_reg);
>>>> +	if (gpu->clk_core) {
>>>> +		ret = clk_prepare_enable(gpu->clk_core);
>>>>    		if (ret)
>>>>    			return ret;
>>>>    	}
>>>>
>>>> -	if (gpu->clk_bus) {
>>>> -		ret = clk_prepare_enable(gpu->clk_bus);
>>>> +	if (gpu->clk_shader) {
>>>> +		ret = clk_prepare_enable(gpu->clk_shader);
>>>>    		if (ret)
>>>> -			goto disable_clk_reg;
>>>> +			goto disable_clk_core;
>>>>    	}
>>>>
>>>> -	if (gpu->clk_core) {
>>>> -		ret = clk_prepare_enable(gpu->clk_core);
>>>> +	if (gpu->clk_bus) {
>>>> +		ret = clk_prepare_enable(gpu->clk_bus);
>>>>    		if (ret)
>>>> -			goto disable_clk_bus;
>>>> +			goto disable_clk_shader;
>>>>    	}
>>>>
>>>> -	if (gpu->clk_shader) {
>>>> -		ret = clk_prepare_enable(gpu->clk_shader);
>>>> +	if (gpu->clk_reg) {
>>>> +		ret = clk_prepare_enable(gpu->clk_reg);
>>>>    		if (ret)
>>>> -			goto disable_clk_core;
>>>> +			goto disable_clk_bus;
>>>>    	}
>>>>
>>>>    	return 0;
>>>>
>>>> -disable_clk_core:
>>>> -	if (gpu->clk_core)
>>>> -		clk_disable_unprepare(gpu->clk_core);
>>>>    disable_clk_bus:
>>>>    	if (gpu->clk_bus)
>>>>    		clk_disable_unprepare(gpu->clk_bus);
>>>> -disable_clk_reg:
>>>> -	if (gpu->clk_reg)
>>>> -		clk_disable_unprepare(gpu->clk_reg);
>>>> +disable_clk_shader:
>>>> +	if (gpu->clk_shader)
>>>> +		clk_disable_unprepare(gpu->clk_shader);
>>>> +disable_clk_core:
>>>> +	if (gpu->clk_core)
>>>> +		clk_disable_unprepare(gpu->clk_core);
>>>>
>>>>    	return ret;
>>>>    }
>>>>
>>>>    static int etnaviv_gpu_clk_disable(struct etnaviv_gpu *gpu)
>>>>    {
>>>> +	if (gpu->clk_reg)
>>>> +		clk_disable_unprepare(gpu->clk_reg);
>>>> +	if (gpu->clk_bus)
>>>> +		clk_disable_unprepare(gpu->clk_bus);
>>>>    	if (gpu->clk_shader)
>>>>    		clk_disable_unprepare(gpu->clk_shader);
>>>>    	if (gpu->clk_core)
>>>>    		clk_disable_unprepare(gpu->clk_core);
>>>> -	if (gpu->clk_bus)
>>>> -		clk_disable_unprepare(gpu->clk_bus);
>>>> -	if (gpu->clk_reg)
>>>> -		clk_disable_unprepare(gpu->clk_reg);
>>>>
>>>>    	return 0;
>>>>    }
>>>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> https://eur04.safelinks.protection.outlook.com/?url=http%3A%2F%2Flists.infradead.org%2Fmailman%2Flistinfo%2Flinux-arm-kernel&amp;data=02%7C01%7Cfrieder.schrempf%40kontron.de%7C1014be5f9b8b4d0c6e8108d7edcc5bde%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637239334279684748&amp;sdata=kpx6LDA6QXgR3CPGsugEIIDt2YbZuJTC7%2FxrRsDhtok%3D&amp;reserved=0
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
