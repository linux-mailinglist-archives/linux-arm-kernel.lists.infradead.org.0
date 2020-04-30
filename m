Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6DB61C005F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 17:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2Gc/R9KS2Px/vx+m/uRf4+ZlY6YViT9QjJqgK/ncqVc=; b=jFPOmEur23xHxM
	DwnSwoJPD+T/TmOX3vePA7rs/T1V3f0knnTNdcP+D00bCczuNJMpJ/sllidWOKTPXh0gTdToCnZ52
	e1QGpZAwZZN1F7QEApdStouftBJhI4BoRsZ0PFdtOaSuVw+Kcc0D9dzvMOsbe8TLJNC5on1SyXfTl
	YhdHppdlsI72xmtdevXenS8d8zrrvV5XkcVtKu/rNbhXJqKSn6pH0477DsUnYa917dAZbP+DO/8j2
	1EheCgDOD4w84cNzuJCbeO4MkPr4MIeFx/pVyogzv09DcmWYDchkiWcb12MbpKiSMKSGxb50SqsYG
	nJC0HzAP90JmeDGx2NXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUBAJ-0001Qn-5X; Thu, 30 Apr 2020 15:31:55 +0000
Received: from skedge03.snt-world.com ([91.208.41.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUBA4-0001OW-9c
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 15:31:43 +0000
Received: from sntmail10s.snt-is.com (unknown [10.203.32.183])
 by skedge03.snt-world.com (Postfix) with ESMTP id 2B4B167A90D;
 Thu, 30 Apr 2020 17:31:38 +0200 (CEST)
Received: from sntmail12r.snt-is.com (10.203.32.182) by sntmail10s.snt-is.com
 (10.203.32.183) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Thu, 30 Apr
 2020 17:31:37 +0200
Received: from sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305]) by
 sntmail12r.snt-is.com ([fe80::e551:8750:7bba:3305%3]) with mapi id
 15.01.1913.007; Thu, 30 Apr 2020 17:31:37 +0200
From: Schrempf Frieder <frieder.schrempf@kontron.de>
To: Lucas Stach <l.stach@pengutronix.de>, Adam Ford <aford173@gmail.com>,
 Anson Huang <Anson.Huang@nxp.com>, Christian Gmeiner
 <christian.gmeiner@gmail.com>, Daniel Baluta <daniel.baluta@nxp.com>, "Fabio
 Estevam" <festevam@gmail.com>, Leonard Crestez <leonard.crestez@nxp.com>, "Li
 Jun" <jun.li@nxp.com>, NXP Linux Team <linux-imx@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, Pengutronix Kernel Team <kernel@pengutronix.de>, "Russell
 King" <linux+etnaviv@armlinux.org.uk>, Sascha Hauer <s.hauer@pengutronix.de>, 
 Shawn Guo <shawnguo@kernel.org>, "S.j. Wang" <shengjiu.wang@nxp.com>
Subject: Re: [RFC PATCH 1/4] drm/etnaviv: Prevent IRQ triggering at probe time
 on i.MX8MM
Thread-Topic: [RFC PATCH 1/4] drm/etnaviv: Prevent IRQ triggering at probe
 time on i.MX8MM
Thread-Index: AQHWHu1RaS/QCZFEh0aIMChy0QTuwqiRmPWAgAAQiIA=
Date: Thu, 30 Apr 2020 15:31:37 +0000
Message-ID: <6a5fbb8a-bf28-9c8e-53c7-7a3e5f338a2c@kontron.de>
References: <20200430124602.14463-1-frieder.schrempf@kontron.de>
 <20200430124602.14463-2-frieder.schrempf@kontron.de>
 <5e1f804c4c27927d10b2283747c1cae6606abe7c.camel@pengutronix.de>
In-Reply-To: <5e1f804c4c27927d10b2283747c1cae6606abe7c.camel@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.25.9.193]
x-c2processedorg: 51b406b7-48a2-4d03-b652-521f56ac89f3
Content-ID: <BA4382012F57B34A874DFB7B14B0BD99@snt-world.com>
MIME-Version: 1.0
X-SnT-MailScanner-Information: Please contact the ISP for more information
X-SnT-MailScanner-ID: 2B4B167A90D.A1282
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
X-CRM114-CacheID: sfid-20200430_083140_653836_5D234523 
X-CRM114-Status: GOOD (  20.96  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.208.41.68 listed in list.dnswl.org]
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

Hi Lucas,

On 30.04.20 16:32, Lucas Stach wrote:
> Hi Frieder,
> 
> Am Donnerstag, den 30.04.2020, 12:46 +0000 schrieb Schrempf Frieder:
>> From: Frieder Schrempf <frieder.schrempf@kontron.de>
>>
>> On i.MX8MM there is an interrupt getting triggered immediately after
>> requesting the IRQ, which leads to a stall as the handler accesses
>> the GPU registers whithout the clock being enabled.
>>
>> Enabling the clocks briefly seems to clear the IRQ state, so we do
>> this before requesting the IRQ.
> 
> This is most likely caused by improper power-up sequencing. Normally
> the GPC will trigger a hardware reset of the modules inside a power
> domain when the domain is powered on. This requires the clocks to be
> running at this point, as those resets are synchronous, so need clock
> pulses to propagate through the hardware.

Ok, I was suspecting something like that and your explanation makes 
total sense to me.

> 
>  From what I see the i.MX8MM is still missing the power domain
> controller integration, but I'm pretty confident that this problem
> should be solved in the power domain code, instead of the GPU driver.

Ok. I was hoping that GPU support could be added without power domain 
control, but I now see that this is probably not reasonable at all.
So I will keep on hoping that NXP comes up with an upstreamable solution 
for the power domain handling.

Thanks,
Frieder

> 
> Regards,
> Lucas
> 
>> Signed-off-by: Frieder Schrempf <frieder.schrempf@kontron.de>
>> ---
>>   drivers/gpu/drm/etnaviv/etnaviv_gpu.c | 29 ++++++++++++++++++++-----
>> --
>>   1 file changed, 22 insertions(+), 7 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>> b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>> index a31eeff2b297..23877c1f150a 100644
>> --- a/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>> +++ b/drivers/gpu/drm/etnaviv/etnaviv_gpu.c
>> @@ -1775,13 +1775,6 @@ static int etnaviv_gpu_platform_probe(struct
>> platform_device *pdev)
>>   		return gpu->irq;
>>   	}
>>   
>> -	err = devm_request_irq(&pdev->dev, gpu->irq, irq_handler, 0,
>> -			       dev_name(gpu->dev), gpu);
>> -	if (err) {
>> -		dev_err(dev, "failed to request IRQ%u: %d\n", gpu->irq,
>> err);
>> -		return err;
>> -	}
>> -
>>   	/* Get Clocks: */
>>   	gpu->clk_reg = devm_clk_get(&pdev->dev, "reg");
>>   	DBG("clk_reg: %p", gpu->clk_reg);
>> @@ -1805,6 +1798,28 @@ static int etnaviv_gpu_platform_probe(struct
>> platform_device *pdev)
>>   		gpu->clk_shader = NULL;
>>   	gpu->base_rate_shader = clk_get_rate(gpu->clk_shader);
>>   
>> +	/*
>> +	 * On i.MX8MM there is an interrupt getting triggered
>> immediately
>> +	 * after requesting the IRQ, which leads to a stall as the
>> handler
>> +	 * accesses the GPU registers whithout the clock being enabled.
>> +	 * Enabling the clocks briefly seems to clear the IRQ state, so
>> we do
>> +	 * this here before requesting the IRQ.
>> +	 */
>> +	err = etnaviv_gpu_clk_enable(gpu);
>> +	if (err)
>> +		return err;
>> +
>> +	err = etnaviv_gpu_clk_disable(gpu);
>> +	if (err)
>> +		return err;
>> +
>> +	err = devm_request_irq(&pdev->dev, gpu->irq, irq_handler, 0,
>> +			       dev_name(gpu->dev), gpu);
>> +	if (err) {
>> +		dev_err(dev, "failed to request IRQ%u: %d\n", gpu->irq,
>> err);
>> +		return err;
>> +	}
>> +
>>   	/* TODO: figure out max mapped size */
>>   	dev_set_drvdata(dev, gpu);
>>   
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
