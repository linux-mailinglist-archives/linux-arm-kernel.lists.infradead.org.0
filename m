Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E3BC9DF87
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 09:55:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KzfivNOy9fsGePIpyC777rGyycTNcMxzumVlAfO4CQk=; b=EcyLKeZ/UzaTMbDd/9wMgVvFF
	vye0z5iw9Im8uBlQfWF+oDUdnWMcdfNBTaxeR4KWf6stBLULk1inpZl6K8USZCsbQa7cSg/DH0Skl
	v+NHXnFM0GrSAQ3znJn2sCBWpr3kPTYMhIu/45AjTfHIJa4AEBPaIOB40becxhCgKbz7rMEK9IwqC
	3g1mJjmjy/wGmVkOOXhBJwbYJZtB8Gb9RrQdjgORRtIBT53GF1pvCzu+MF0d5nN6RQE+eJO+X83t9
	MJuTZcl6pB57NUqYF2LbKCQcFcVBIT3oFEU8hMFfhwTpd4QKGu/TdQJxqfJM5oyGDLVzSTOI1hQtB
	nlX0F2c2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2WKI-0004BG-CI; Tue, 27 Aug 2019 07:55:38 +0000
Received: from protonic.xs4all.nl ([83.163.252.89] helo=protonic.nl)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2WK3-0004A4-LD
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 07:55:25 +0000
Received: from webmail.promanet.nl (edge2.prtnl [192.168.1.170])
 by sparta (Postfix) with ESMTP id EE15344A009E;
 Tue, 27 Aug 2019 09:57:15 +0200 (CEST)
MIME-Version: 1.0
Date: Tue, 27 Aug 2019 09:55:18 +0200
From: robin <robin@protonic.nl>
To: Robin Gong <yibin.gong@nxp.com>
Subject: Re: [PATCH] input: keyboard: snvs_pwrkey: Send press and release
 event for i.MX6 S,DL and Q
In-Reply-To: <VE1PR04MB6638754916357F551502102589A00@VE1PR04MB6638.eurprd04.prod.outlook.com>
References: <20190823123002.10448-1-robin@protonic.nl>
 <VE1PR04MB6638754916357F551502102589A00@VE1PR04MB6638.eurprd04.prod.outlook.com>
Message-ID: <83c033a20f5f2e3ce15525a1efd072bb@protonic.nl>
X-Sender: robin@protonic.nl
User-Agent: Roundcube Webmail/1.3.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_005524_050670_E9FAE5B3 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, linux-input@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-08-27 08:17, Robin Gong wrote:
> On Fri, Aug 23, 2019 at 02:30:02PM +0200, Robin van der Gracht wrote:>
>> The older generation i.MX6 processors send a powerdown request 
>> interrupt
>> if the powerkey is released before a hard shutdown (5 second press). 
>> This
>> should allow software to bring down the SoC safely.
>> 
>> For this driver to work as a regular powerkey with the older SoCs, we 
>> need to
>> send a keypress AND release when we get the powerdown request 
>> interrupt.
> Please clarify here more clearly that because there is NO press
> interrupt triggered
> but only release interrupt on elder i.mx6 processors and that HW issue
> fixed from
> i.mx6sx.

ACK

>> 
>> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
>> ---
>>  arch/arm/boot/dts/imx6qdl.dtsi       |  2 +-
>>  arch/arm/boot/dts/imx6sll.dtsi       |  2 +-
>>  arch/arm/boot/dts/imx6sx.dtsi        |  2 +-
>>  arch/arm/boot/dts/imx6ul.dtsi        |  2 +-
>>  arch/arm/boot/dts/imx7s.dtsi         |  2 +-
> As Shawn talked, please keep the original "fsl,sec-v4.0-pwrkey", just 
> add
> 'imx6qdl-snvs-pwrkey' for elder i.mx6 processor i.mx6q/dl/sl, thus no 
> need
> to touch other newer processor's dts.

ACK

> 
>> 
>>  static void imx_imx_snvs_check_for_events(struct timer_list *t) @@ 
>> -67,13
>> +85,23 @@ static irqreturn_t imx_snvs_pwrkey_interrupt(int irq, void
>> *dev_id)  {
>>  	struct platform_device *pdev = dev_id;
>>  	struct pwrkey_drv_data *pdata = platform_get_drvdata(pdev);
>> +	struct input_dev *input = pdata->input;
>>  	u32 lp_status;
>> 
>> -	pm_wakeup_event(pdata->input->dev.parent, 0);
>> +	pm_wakeup_event(input->dev.parent, 0);
>> 
>>  	regmap_read(pdata->snvs, SNVS_LPSR_REG, &lp_status);
>> -	if (lp_status & SNVS_LPSR_SPO)
>> -		mod_timer(&pdata->check_timer, jiffies +
>> msecs_to_jiffies(DEBOUNCE_TIME));
>> +	if (lp_status & SNVS_LPSR_SPO) {
>> +		if (pdata->hwtype == IMX6QDL_SNVS) {
>> +			input_report_key(input, pdata->keycode, 1);
>> +			input_report_key(input, pdata->keycode, 0);
>> +			input_sync(input);
>> +			pm_relax(input->dev.parent);
> Could you move the above input event report steps into
> imx_imx_snvs_check_for_events()
> as before? That make code better to understand and less operation in 
> ISR.

I placed it here to avoid the unnessesairy debounce delay (since thats 
already
implemented in hardware).

I do agree with your arguments so I'll move emitting the events to
imx_imx_snvs_check_for_events().

Is it ok if I keep the conditional, but instead of emitting the events,
schedule imx_imx_snvs_check_for_events() immidiatly to avoid the 
debounce,
or should I choose clarity over the 30 ms delay?

>> +		} else {
>> +			mod_timer(&pdata->check_timer,
>> +				jiffies + msecs_to_jiffies(DEBOUNCE_TIME));
>> +		}
>> +	}
>> 
>>  	/* clear SPO status */
>>  	regmap_write(pdata->snvs, SNVS_LPSR_REG, SNVS_LPSR_SPO); @@
>> -88,11 +116,24 @@ static void imx_snvs_pwrkey_act(void *pdata)
>>  	del_timer_sync(&pd->check_timer);
>>  }
>> 
>> +static const struct of_device_id imx_snvs_pwrkey_ids[] = {
>> +	{
>> +		.compatible = "fsl,imx6sx-sec-v4.0-pwrkey",
>> +		.data = &imx_snvs_devtype[IMX6SX_SNVS],
>> +	}, {
>> +		.compatible = "fsl,imx6qdl-sec-v4.0-pwrkey",
>> +		.data = &imx_snvs_devtype[IMX6QDL_SNVS],
> No ' IMX6QDL_SNVS ' defined in your patch or am I missing?

I added an enum 'imx_snvs_hwtype' that defines both IMX6SX_SNVS and 
IMX6QDL_SNVS.

>> +	},
>> +	{ /* sentinel */ }
>> +};
>> +MODULE_DEVICE_TABLE(of, imx_snvs_pwrkey_ids);
>> --
>> 2.20.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
