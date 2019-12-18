Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4824D12440D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 11:14:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=bO5sh/oPIWDO8VBPceYB4YDLIwZsjieQ5I/AV2j4ygA=; b=J2k2oS2xOT9LLf
	B6wUcxoKPRUFf5zAT+3LGW23oK8dIDPcCEWurFxJmfIkdnpIANZltE8RHusw+x+SNUiY+ae94hYKQ
	k32nZ8wXz+XU07r68tQQ0cXkMIVAn2nOQFPH3e9Qn0Zg3qXI73asxPK6wBYtx0g67X8NZWCtPSKK5
	x1qsVHDZ1UZguxJBuVY1gpHeV/oduM8Mm/+N+J6wmBi1BsIv0qb6vLrsf61gRVd2vj6mOoG3+2sL3
	Ln5V9z1fQta7kb9f1PqfclZp6wKGFcFXJ2kh0qsCXIly38VKKCUSRq/thZQbbonzTmZfHUa98ZNKO
	+sXUXrTuuAqjv4R4IMJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihWL8-0002vU-OR; Wed, 18 Dec 2019 10:13:58 +0000
Received: from mail-db3eur04on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::622]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihWKx-0002v2-Mg
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 10:13:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Q2UgUqbn1hoZtsEbwueegj+a737V4bzYcUerZzW2qfeHyvnR7wL0o/0POAe+lbHLz0wK7FKmBnsW7qBNrcgp0QGFsSCyjrofMezstatiSqtpnt7nzo2+KqaBFtETVY/bk6kwBZ3oCnb/S3+oL7u9kYSqlGvfLZtT+nBC53SBimRu73ZTBgOO2u9PsRsIGnR+0Te89zTnmQl7x1Tdt5+EKkiccIpZnxbSe6l/nr3FAJv2Ic1Y8o5sRZBJQ6FI8zS0+K8X5t6h+kXpzX7TE5nZKSBF92ANet6q/tMxJmJcAK5y23F8sx7571WZOT/K/tv8eICapqqA5yhphPMve//1tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xn/ZxTBaBAaDZAsPjn+2rDktcN7KRP50Wh4CQoSfqqc=;
 b=Nqi3bgRmfNLpMi4Bo9S+PaprvBAl1Kz9pvno+cjhiFCkjy+U46vFIF/ZzXctucmrEtxxW2N9UEtciGGyf+kuXk9YtaXSrFKSf02XEJcebryLMdvmT8WKP6pC4O95mgfG4MRvhjEQBGxZAhhki8MNgmuc8TfqaRCSGOkZf7Ehdz/anDEGtsdCrw7VPi3E+77MfAzU/a3rnBZIX87ygfweqo65n9M6FwDwTvBjoGEYHny5d8/0HlFvq5dJ0d4p+EOYyJwhXqQN99QKT9Ja13VrqvkODpYuEfpNTtCtGAF2G+3YWD+yE6eRqG+52Xf0PbbxU76XznC1v+jgcOXB1LqWcA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xn/ZxTBaBAaDZAsPjn+2rDktcN7KRP50Wh4CQoSfqqc=;
 b=GPf2sCHgZzGxueuBYoK8BkyOBWbGIkeo1HepK5b8CSkE48QVnQoziJ/V4Xkvp44yXYgiU3tF8LBXIafjsP8Y+MBFK+1IuxiiyopSzbUrvWRinWFW8LmNitDFQLUHBqpVcAdIwqd6y2VQCR4A41HMqgAc4ukn9aFGdozBfFAEjTE=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5056.eurprd04.prod.outlook.com (20.177.50.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Wed, 18 Dec 2019 10:13:44 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 10:13:44 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [PATCH RFC v6 3/9] PM / devfreq: imx: Register interconnect device
Thread-Topic: [PATCH RFC v6 3/9] PM / devfreq: imx: Register interconnect
 device
Thread-Index: AQHVmyeZRYeaOo08e0y/DVNQANceVQ==
Date: Wed, 18 Dec 2019 10:13:44 +0000
Message-ID: <VI1PR04MB7023DAC69C8B4B7CF144F29EEE530@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201049epcas5p370853a1d78584bf00d8493ce20320bf9@epcas5p3.samsung.com>
 <e0e6a1685ccdad95c9d0c922801afdda8adb9f05.1573761527.git.leonard.crestez@nxp.com>
 <4d45cd39-24df-1714-0a27-5019c1367063@samsung.com>
 <VI1PR04MB7023F511BAE7D1EDF971CC48EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <60fe19c6-6e73-4133-ed7e-a13a875589c0@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:500:9200:9d5e:ad7d:41e0:989]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9dc84553-3088-4dda-f653-08d783a2f6ea
x-ms-traffictypediagnostic: VI1PR04MB5056:|VI1PR04MB5056:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB5056853CC7847ED32F5EDA45EE530@VI1PR04MB5056.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(39860400002)(136003)(376002)(396003)(51444003)(189003)(199004)(7696005)(81166006)(81156014)(33656002)(54906003)(5660300002)(86362001)(8676002)(44832011)(4326008)(186003)(7416002)(71200400001)(64756008)(66476007)(53546011)(91956017)(66946007)(52536014)(2906002)(6506007)(316002)(478600001)(76116006)(110136005)(9686003)(8936002)(66446008)(66556008)(55016002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5056;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uQs+bnRlX37yPajnJHvrGo8lBFwRM7CZnrZVZNvYzt60o1VPaFR6JribkR20XgI0CjBboBPOlkhVgAWfe1c7IagmYIycs2lCJoBxKedt/M1zYiJQUtX8iYT0MzHNWM9p1L4JzYCzDc/rfSzDAvO9kyglFxtbtO1dfFPoUJsNz336PF503XljLIITNVRjF47IiSv+e8+bZkKCr0FRrn0sWY/rjleBjrwMW5PWq1/oRQ4UpEY0ziFsk0zP5m712tCbDRNWbn4T0/hSd999EZ1W4TKV5D+CZCZl8Z/euIXMi9+BUL0VJC5yM+wChQtogz6LQavejggxxyrfSCxHbPC/upXRAhAYYWT47JCqbANZQYJb7d7S7ENJy5wEdSkhzXsclb10FaWPrjEcubTcRQz+NvQz3IyaBz8D599Xgr8ZAJ+jjfGQIa8d2HBuMlqX9OB59vo81NwIeaI/FobkGXIh7XzNTaFA30REeDL9GN48mtIP574r1gbxnR3hN07QZCrI
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9dc84553-3088-4dda-f653-08d783a2f6ea
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 10:13:44.4369 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: OU2doQwDWcqLoO6GYzkuUUAvyDcgCssbfba3djVBGccSBFLzmYWMJBFOXxXe/sEA38CXKXfsUc70DzI73008cQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5056
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_021347_746840_ED675ECC 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:622 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Martin Kepplinger <martink@posteo.de>,
 Silvano Di Ninno <silvano.dininno@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Saravana Kannan <saravanak@google.com>,
 Stephen Boyd <sboyd@kernel.org>, Kyungmin Park <kyungmin.park@samsung.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.12.2019 02:55, Chanwoo Choi wrote:
> On 12/17/19 12:00 AM, Leonard Crestez wrote:
>> On 13.12.2019 06:22, Chanwoo Choi wrote:
>>> Hi,
>>>
>>> On 11/15/19 5:09 AM, Leonard Crestez wrote:
>>>> There is no single device which can represent the imx interconnect.
>>>> Instead of adding a virtual one just make the main &noc act as the
>>>> global interconnect provider.
>>>>
>>>> The imx interconnect provider driver will scale the NOC and DDRC based
>>>> on bandwidth request. More scalable nodes can be added in the future,
>>>> for example for audio/display/vpu/gpu NICs.
>>>>
>>>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>>>> ---
>>>>    drivers/devfreq/imx-devfreq.c | 37 +++++++++++++++++++++++++++++++++++
>>>>    1 file changed, 37 insertions(+)
>>>>
>>>> diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
>>>> index 620b344e87aa..585d340c0f6e 100644
>>>> --- a/drivers/devfreq/imx-devfreq.c
>>>> +++ b/drivers/devfreq/imx-devfreq.c
>>>> @@ -15,10 +15,11 @@
>>>>    struct imx_devfreq {
>>>>    	struct devfreq_dev_profile profile;
>>>>    	struct devfreq *devfreq;
>>>>    	struct clk *clk;
>>>>    	struct devfreq_passive_data passive_data;
>>>> +	struct platform_device *icc_pdev;
>>>>    };
>>>>    
>>>>    static int imx_devfreq_target(struct device *dev,
>>>>    			      unsigned long *freq, u32 flags)
>>>>    {
>>>> @@ -60,11 +61,40 @@ static int imx_devfreq_get_dev_status(struct device *dev,
>>>>    	return 0;
>>>>    }
>>>>    
>>>>    static void imx_devfreq_exit(struct device *dev)
>>>>    {
>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>> +
>>>>    	dev_pm_opp_of_remove_table(dev);
>>>> +	platform_device_unregister(priv->icc_pdev);
>>>> +}
>>>> +
>>>> +/* imx_devfreq_init_icc() - register matching icc provider if required */
>>>> +static int imx_devfreq_init_icc(struct device *dev)
>>>> +{
>>>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>>>> +	const char *icc_driver_name;
>>>> +
>>>> +	if (!IS_ENABLED(CONFIG_INTERCONNECT_IMX))
>>>> +		return 0;
>>>
>>> It is not proper to check the enable state of CONFIG_INTERCONNECT_IMX configuration
>>> on device driver. Why don't you add the 'select CONFIG_INTERCONNECT_IMX' on Kconfig?
>>
>> Because it's optional.
>>
>> You can disable interconnect support and just tweak frequencies using
>> the devfreq sysfs API. But indeed would only really be useful for debugging.
> 
> Even if it's optional, I don't prefer to use 'IS_ENABLED' macro.
> 
> Generally, add or delete the property or value at DT file
> to either enable or disable the some feature provided by device driver
> instead of checking the configuration.
> 
> If user adds the property/value related to interconnect
> and imx-bus.c configuration is enabled, the behavior
> related to interconnect on imx-bus.c doesn't work. It make some confusion.

Maybe I could print a warning if #interconnect-cells is present but 
CONFIG_INTERCONNECT_IMX is off?

An explicit select in Kconfig seems like a pointless limitation but in 
practice it would almost never be useful to build one without the other.

> The imx-bus.c have to add the 'select CONFIG_INTERCONNECT_IMX'
> and hand over the right which use the interconnect feature or not, to user.
> 
> If there are any requirement to add the additional property
> to check whether interconnect feature will be used or not,
> you can add the extra property. But, I think that it is enough
> to check the '#interconnect-cells'.
> 
> In result, I think that it is right to decide the usage of feature
> of device driver by user on Devicetree.
> 
>>
>>>> +	if (!of_get_property(dev->of_node, "#interconnect-cells", 0))
>>>> +		return 0;
>>>> +
>>>> +	icc_driver_name = of_device_get_match_data(dev);
>>>> +	if (!icc_driver_name)
>>>> +		return 0;
>>>> +
>>>> +	priv->icc_pdev = platform_device_register_data(
>>>> +			dev, icc_driver_name, 0, NULL, 0);
>>>> +	if (IS_ERR(priv->icc_pdev)) {
>>>> +		dev_err(dev, "failed to register icc provider %s: %ld\n",
>>>> +				icc_driver_name, PTR_ERR(priv->devfreq));
>>>> +		return PTR_ERR(priv->devfreq);
>>>> +	}
>>>> +
>>>> +	return 0;
>>>>    }
>>>>    
>>>>    static int imx_devfreq_probe(struct platform_device *pdev)
>>>>    {
>>>>    	struct device *dev = &pdev->dev;
>>>> @@ -120,18 +150,25 @@ static int imx_devfreq_probe(struct platform_device *pdev)
>>>>    		ret = PTR_ERR(priv->devfreq);
>>>>    		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>>>    		goto err;
>>>>    	}
>>>>    
>>>> +	ret = imx_devfreq_init_icc(dev);
>>>> +	if (ret)
>>>> +		goto err;
>>>> +
>>>>    	return 0;
>>>>    
>>>>    err:
>>>>    	dev_pm_opp_of_remove_table(dev);
>>>>    	return ret;
>>>>    }
>>>>    
>>>>    static const struct of_device_id imx_devfreq_of_match[] = {
>>>> +	{ .compatible = "fsl,imx8mq-noc", .data = "imx8mq-interconnect", },
>>>> +	{ .compatible = "fsl,imx8mm-noc", .data = "imx8mm-interconnect", },
>>>> +	{ .compatible = "fsl,imx8mn-noc", .data = "imx8mn-interconnect", },
>>>>    	{ .compatible = "fsl,imx8m-noc", },
>>>>    	{ .compatible = "fsl,imx8m-nic", },
>>>>    	{ /* sentinel */ },
>>>>    };
>>>>    MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);
>>
>>
> 
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
