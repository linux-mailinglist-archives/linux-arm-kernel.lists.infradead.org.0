Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 109C51C0074
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:36:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MR4m+DGRLEBEZrThSEQG32TEcHQkCLruN83IfDwOoVw=; b=LnFmka5K3te29Y
	5h5OEgOCFHNLYvsz7Davz326S4zTF1YeED7z7ofLNvhfCah85zJb7b5J/c1Gy0mX3I7+h8YxsgXPx
	EqDRMSl9tUxiiS8Pyk1IX4E8XFQ+gq7MfqN+m9PLSQvLyYq0LbHzXal7onWF677x2aFVYUViPtWmT
	d2pQHZgnXJvXrRMFrsEo/JFTF6LwiaBvn7alD4GMnl4FNuwkZEJZnnKPIOJyHKMouFSr5JXxcJOzK
	kHCiq6P3W4Pj+GJTaELxLa9h5JmnMYXXLCqLhjNb0i1X3V1cevU2etJGIvpOy6j8L5w9jEl/xcLgh
	I+/McAOlb5Ola1EIlz7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBEF-0005P0-Fh; Thu, 30 Apr 2020 15:35:59 +0000
Received: from skedge04.snt-world.com ([91.208.41.69])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBE6-0005NC-5F
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:35:52 +0000
Received: from sntmail14r.snt-is.com (unknown [10.203.32.184])
 by skedge04.snt-world.com (Postfix) with ESMTP id 29A1567A7D8;
 Thu, 30 Apr 2020 17:35:47 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail14r.snt-is.com
 (10.203.32.184) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 30 Apr
 2020 17:35:46 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Thu, 30 Apr 2020 17:35:46 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 Anson Huang <Anson.Huang@nxp.com>, Christian Gmeiner
 <christian.gmeiner@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>, "Fabio
 Estevam" <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, "Li
 Jun" <jun.li@nxp.com>, NXP Linux Team <linux-imx@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, "Russell
 King" <linux+etnaviv@armlinux.org.uk>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Shawn Guo <shawnguo@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>
Subject: Re: [RFC PATCH 3/4] drm/etnaviv: Change order of enabling clocks to
 fix boot on i.MX8MM
Thread-Topic: [RFC PATCH 3/4] drm/etnaviv: Change order of enabling clocks to
 fix boot on i.MX8MM
Thread-Index: AQHWHu1V9EwL5xxa+UiJnz7nneFudaiRmbMAgAAQ8oA=
Date: Thu, 30 Apr 2020 15:35:46 +0000
Message-ID: <72e8618b-856e-de42-9282-958cd03b239f@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-4-frieder.schrempf@kontron.de>
 <3895f202cf5919e41a56878a62f6d5259dea12d3.camel@pengutronix.de>
In-Reply-To: <3895f202cf5919e41a56878a62f6d5259dea12d3.camel@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <9F9D967AC7E63B45A2B9F9A531BF74C8@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 29A1567A7D8.A090B
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
X-CRM114-CacheID: sfid-20200430_083550_513330_2FEDC5B5 
X-CRM114-Status: GOOD (  16.84  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.69 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [91.208.41.69 listed in wl.mailspike.net]
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "etnaviv@lists.freedesktop.org" <etnaviv@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30.04.20 16:35, Lucas Stach wrote:
> Am Donnerstag, den 30.04.2020, 12:46 +0000 schrieb Schrempf Frieder:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> On some i.MX8MM devices the boot hangs when enabling the GPU clocks.
>> Changing the order of clock initalization to
>>
>> core -> shader -> bus -> reg
>>
>> fixes the issue. This is the same order used in the imx platform code
>> of the downstream GPU driver in the NXP kernel [1]. For the sake of
>> consistency we also adjust the order of disabling the clocks to the
>> reverse.
>>
>> [1] https://eur04.safelinks.protection.outlook.com/?url=https%3A%2F%2Fsource.codeaurora.org%2Fexternal%2Fimx%2Flinux-imx%2Ftree%2Fdrivers%2Fmxc%2Fgpu-viv%2Fhal%2Fos%2Flinux%2Fkernel%2Fplatform%2Ffreescale%2Fgc_hal_kernel_platform_imx.c%3Fh%3Dimx_5.4.3_2.0.0%23n1538&amp;data=02%7C01%7Cfrieder.schrempf%40kontron.de%7Cdae15f14ed4a4999065508d7ed13ae87%7C8c9d3c973fd941c8a2b1646f3942daf1%7C0%7C0%7C637238541095594019&amp;sdata=%2BImteXNH%2FqJDionnJVHtjVnXJk%2BG%2BVlgvBdRGfnlQro%3D&amp;reserved=0
> 
> I don't see why the order of the clocks is important. Is this really a
> GPU issue? As in: does a GPU access hang when enabling the clocks in
> the wrong order? Or is this a clock driver issue with a clock access
> hanging due to an upstream clock still being disabled?

Actually you might be right with this being a clock driver issue. The 
hanging happens while enabling the clocks (unrelated to any GPU register 
access). The strange thing is that most of the devices we have don't 
care and work as is and some devices reliably fail each time when 
enabling the clocks in the "wrong" order.

So I guess this could indeed be some clock being enabled with an 
upstream PLL not having locked yet or something.

> 
> Regards,
> Lucas
> 
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> ---
>>   drivers/gpu/drm/etnaviv/etnaviv_gpu.c | 42 +++++++++++++--------------
>>   1 file changed, 21 insertions(+), 21 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>> index 7b138d4dd068..424b2e5951f0 100644
>> --- a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>> @@ -1487,55 +1487,55 @@ static int etnaviv_gpu_clk_enable(struct etnaviv_gpu *gpu)
>>   {
>>   	int ret;
>>   
>> -	if (gpu->clk_reg) {
>> -		ret = clk_prepare_enable(gpu->clk_reg);
>> +	if (gpu->clk_core) {
>> +		ret = clk_prepare_enable(gpu->clk_core);
>>   		if (ret)
>>   			return ret;
>>   	}
>>   
>> -	if (gpu->clk_bus) {
>> -		ret = clk_prepare_enable(gpu->clk_bus);
>> +	if (gpu->clk_shader) {
>> +		ret = clk_prepare_enable(gpu->clk_shader);
>>   		if (ret)
>> -			goto disable_clk_reg;
>> +			goto disable_clk_core;
>>   	}
>>   
>> -	if (gpu->clk_core) {
>> -		ret = clk_prepare_enable(gpu->clk_core);
>> +	if (gpu->clk_bus) {
>> +		ret = clk_prepare_enable(gpu->clk_bus);
>>   		if (ret)
>> -			goto disable_clk_bus;
>> +			goto disable_clk_shader;
>>   	}
>>   
>> -	if (gpu->clk_shader) {
>> -		ret = clk_prepare_enable(gpu->clk_shader);
>> +	if (gpu->clk_reg) {
>> +		ret = clk_prepare_enable(gpu->clk_reg);
>>   		if (ret)
>> -			goto disable_clk_core;
>> +			goto disable_clk_bus;
>>   	}
>>   
>>   	return 0;
>>   
>> -disable_clk_core:
>> -	if (gpu->clk_core)
>> -		clk_disable_unprepare(gpu->clk_core);
>>   disable_clk_bus:
>>   	if (gpu->clk_bus)
>>   		clk_disable_unprepare(gpu->clk_bus);
>> -disable_clk_reg:
>> -	if (gpu->clk_reg)
>> -		clk_disable_unprepare(gpu->clk_reg);
>> +disable_clk_shader:
>> +	if (gpu->clk_shader)
>> +		clk_disable_unprepare(gpu->clk_shader);
>> +disable_clk_core:
>> +	if (gpu->clk_core)
>> +		clk_disable_unprepare(gpu->clk_core);
>>   
>>   	return ret;
>>   }
>>   
>>   static int etnaviv_gpu_clk_disable(struct etnaviv_gpu *gpu)
>>   {
>> +	if (gpu->clk_reg)
>> +		clk_disable_unprepare(gpu->clk_reg);
>> +	if (gpu->clk_bus)
>> +		clk_disable_unprepare(gpu->clk_bus);
>>   	if (gpu->clk_shader)
>>   		clk_disable_unprepare(gpu->clk_shader);
>>   	if (gpu->clk_core)
>>   		clk_disable_unprepare(gpu->clk_core);
>> -	if (gpu->clk_bus)
>> -		clk_disable_unprepare(gpu->clk_bus);
>> -	if (gpu->clk_reg)
>> -		clk_disable_unprepare(gpu->clk_reg);
>>   
>>   	return 0;
>>   }
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
