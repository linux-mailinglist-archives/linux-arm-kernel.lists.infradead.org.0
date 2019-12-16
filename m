Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA280120929
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 16:00:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=n+ANBmdfDhIiKsvm56fYjZfjbmF6S8zxch5LpA70Y7M=; b=UclDrhUH32ZNGp
	FhyJ0cDA4F8vCne5ewHuw7HdSm13IujJkzv5R2XZOiP8lPv3QsBR6FcYO3WLV15vxp8TVuSPG7vNU
	Py81hJIr6sZM6k6xiu+QPOldg8HJsUNLapr1j3Aa/TBShET74wwse8F0qEtsBVe1MlUmnqQZ/sNKh
	gLPUcB/E9FABNc2WedqMbE3jO75mNo93tV5bx62balLVflrX71ZQWpQMRT/xrAnhi977g/SQ+M69S
	pP7rEOw3TAqlOJzO4ftOt0yUERfINRd8w5ELTSVhx/vaSdMCD9bDOt29lPXc3YQRDeY5/jF6kOjV2
	EY00Qmw3+9ahXKMiil3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igrrN-00065Q-5q; Mon, 16 Dec 2019 15:00:33 +0000
Received: from mail-eopbgr20051.outbound.protection.outlook.com ([40.107.2.51]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igrr8-00062v-TC
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 15:00:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YJzWFNHLOmfw/JcGnGFm4VFcX7VLWZA/Sk1nASY+LC1F6oSqCrwGp2wApvquYLcyxs9XKQbNne0FYWT3gdAc587yZfW7iMY7Y+AAyQFCiJHE8z5HyTqBDbnvF5Zh2/mij/QB05FKG0EHpKFNvdYnu6ENK5YDaDt5yEfrLIYVP34sMDXSFuIsnqaMSAAuv6+wKzKGhjzI54MumDfWwd3ww34PNPBvZ8bRsanh8WsdPz37EdyDSGfL8EpqKperHkUG9fooXtVRtILIyzp2+h1Fc+55ohUpaFFz7uLc09/yYfWz8WwiWB9CwI76nTVmaCIQWKKWH201UL8JEqEMR9GcXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CfNepnL8buTDc+Hu8Ko6tEcLEA07C7uyvIytlRIfbWY=;
 b=LuwECGLuXh1DbEf2FyBrUT7gbk4meDslmZh2NvWLXLlTnvebJr+65olKjpxAeBKWky3U6gte/KXFuKgwwnir6155c7Ptfho0MhM01HKMP36u4mB69xaFtIhQ8qT8I7d8WkopcMKVORn+d2K7x5/omMJvq08iWsdlVPvgv8BXFBvg3p33wbJLlqrZPNdoUxsgyG41Srsr2VyN/kWjbT/BjBbxoMBO9uoweXsmg50tHqzeztKc95Om53mcwL3Aq8bCK7hQmAknnwi7P20S3eDuUTH3s3cD+JUsH4eZ7vRzanYGIJLWRx3yoTyN6+D/Uq7pgNyWWENI8AdPukaJtggJVg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CfNepnL8buTDc+Hu8Ko6tEcLEA07C7uyvIytlRIfbWY=;
 b=NNvLXvEbTVCauem5wRQBkuKfQ7UHvS16uqQtSToy/HYJSU+iq4+KIEnQGZ4ft42trJLUXexJ7Qaz7AEE6+m/vj3zrm+IJuVRzFqevDpxQ8n0ibAO/Yfqz0R6YO9/53tcEzzZ/bvDILPHhzMO8AkUq++s7BfExtcG2MgRw927M7o=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6925.eurprd04.prod.outlook.com (52.133.246.11) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Mon, 16 Dec 2019 15:00:15 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.019; Mon, 16 Dec 2019
 15:00:15 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>
Subject: Re: [PATCH RFC v6 3/9] PM / devfreq: imx: Register interconnect device
Thread-Topic: [PATCH RFC v6 3/9] PM / devfreq: imx: Register interconnect
 device
Thread-Index: AQHVmyeZRYeaOo08e0y/DVNQANceVQ==
Date: Mon, 16 Dec 2019 15:00:14 +0000
Message-ID: <VI1PR04MB7023F511BAE7D1EDF971CC48EE510@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <cover.1573761527.git.leonard.crestez@nxp.com>
 <CGME20191114201049epcas5p370853a1d78584bf00d8493ce20320bf9@epcas5p3.samsung.com>
 <e0e6a1685ccdad95c9d0c922801afdda8adb9f05.1573761527.git.leonard.crestez@nxp.com>
 <4d45cd39-24df-1714-0a27-5019c1367063@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: b3f674cc-8aff-4354-56a5-08d78238a861
x-ms-traffictypediagnostic: VI1PR04MB6925:|VI1PR04MB6925:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB692515D8FD41DBC1CB4F8154EE510@VI1PR04MB6925.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 02530BD3AA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(346002)(136003)(366004)(376002)(396003)(189003)(199004)(76116006)(91956017)(110136005)(52536014)(55016002)(54906003)(44832011)(66946007)(26005)(66476007)(66556008)(64756008)(66446008)(2906002)(316002)(71200400001)(5660300002)(7696005)(8936002)(6506007)(81156014)(8676002)(81166006)(9686003)(4326008)(53546011)(478600001)(186003)(33656002)(86362001)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6925;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KX1vIoyuYZcVylHjekncO4NrM7Y5IS/vlJnxNXPdimBaZGRoTr1Q+r5c00DJc+kWxe102vvGtibaZ0jZvr8KcP6Sw90ggJTGuzJYvRRlQC3zqqvL23EUbJnFBlQCBZJ9QjjKPPHdx34KaOl9yGwK9X42MoDljdyb5wGfvicsXum1tdf9QXrdONM4QJQOkUtGCipRyvwgykpFf/cGob9Qa1Ozk5Rya575yXMExDbagr67/lPXkVdPGfXy635bgGZtMibcAJNzEN6F5hMLaa8XSo7zB4ufplWeMuE7IWi/pBaAUk81KwhTOpc5ytv1Gbg+EGPVMjqySAXikCHyz22qgpRu1Yj05ujFSnfpM/r4+afIpMJTgLICFFi4EnyGLM5JyDgp4KECnQZmYvj93EVXiRZuOInK4Kul+zoBKJx0xUQtBdiEfbb5ISKZ4W9ZkJDy
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b3f674cc-8aff-4354-56a5-08d78238a861
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Dec 2019 15:00:14.9382 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: enHazzlzv3gDECOvlX2xslXJzmLJqQlxzPlJkRbqm0DGhR86G68xZfeIR+sjUHOn55iqlF1G6yEKXdSMianGWg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6925
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_070020_627259_C50B5E43 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@partner.samsung.com>,
 Jacky Bai <ping.bai@nxp.com>, "Rafael J. Wysocki" <rafael@kernel.org>,
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

On 13.12.2019 06:22, Chanwoo Choi wrote:
> Hi,
> 
> On 11/15/19 5:09 AM, Leonard Crestez wrote:
>> There is no single device which can represent the imx interconnect.
>> Instead of adding a virtual one just make the main &noc act as the
>> global interconnect provider.
>>
>> The imx interconnect provider driver will scale the NOC and DDRC based
>> on bandwidth request. More scalable nodes can be added in the future,
>> for example for audio/display/vpu/gpu NICs.
>>
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   drivers/devfreq/imx-devfreq.c | 37 +++++++++++++++++++++++++++++++++++
>>   1 file changed, 37 insertions(+)
>>
>> diff --git a/drivers/devfreq/imx-devfreq.c b/drivers/devfreq/imx-devfreq.c
>> index 620b344e87aa..585d340c0f6e 100644
>> --- a/drivers/devfreq/imx-devfreq.c
>> +++ b/drivers/devfreq/imx-devfreq.c
>> @@ -15,10 +15,11 @@
>>   struct imx_devfreq {
>>   	struct devfreq_dev_profile profile;
>>   	struct devfreq *devfreq;
>>   	struct clk *clk;
>>   	struct devfreq_passive_data passive_data;
>> +	struct platform_device *icc_pdev;
>>   };
>>   
>>   static int imx_devfreq_target(struct device *dev,
>>   			      unsigned long *freq, u32 flags)
>>   {
>> @@ -60,11 +61,40 @@ static int imx_devfreq_get_dev_status(struct device *dev,
>>   	return 0;
>>   }
>>   
>>   static void imx_devfreq_exit(struct device *dev)
>>   {
>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>> +
>>   	dev_pm_opp_of_remove_table(dev);
>> +	platform_device_unregister(priv->icc_pdev);
>> +}
>> +
>> +/* imx_devfreq_init_icc() - register matching icc provider if required */
>> +static int imx_devfreq_init_icc(struct device *dev)
>> +{
>> +	struct imx_devfreq *priv = dev_get_drvdata(dev);
>> +	const char *icc_driver_name;
>> +
>> +	if (!IS_ENABLED(CONFIG_INTERCONNECT_IMX))
>> +		return 0;
> 
> It is not proper to check the enable state of CONFIG_INTERCONNECT_IMX configuration
> on device driver. Why don't you add the 'select CONFIG_INTERCONNECT_IMX' on Kconfig?

Because it's optional.

You can disable interconnect support and just tweak frequencies using 
the devfreq sysfs API. But indeed would only really be useful for debugging.

>> +	if (!of_get_property(dev->of_node, "#interconnect-cells", 0))
>> +		return 0;
>> +
>> +	icc_driver_name = of_device_get_match_data(dev);
>> +	if (!icc_driver_name)
>> +		return 0;
>> +
>> +	priv->icc_pdev = platform_device_register_data(
>> +			dev, icc_driver_name, 0, NULL, 0);
>> +	if (IS_ERR(priv->icc_pdev)) {
>> +		dev_err(dev, "failed to register icc provider %s: %ld\n",
>> +				icc_driver_name, PTR_ERR(priv->devfreq));
>> +		return PTR_ERR(priv->devfreq);
>> +	}
>> +
>> +	return 0;
>>   }
>>   
>>   static int imx_devfreq_probe(struct platform_device *pdev)
>>   {
>>   	struct device *dev = &pdev->dev;
>> @@ -120,18 +150,25 @@ static int imx_devfreq_probe(struct platform_device *pdev)
>>   		ret = PTR_ERR(priv->devfreq);
>>   		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>   		goto err;
>>   	}
>>   
>> +	ret = imx_devfreq_init_icc(dev);
>> +	if (ret)
>> +		goto err;
>> +
>>   	return 0;
>>   
>>   err:
>>   	dev_pm_opp_of_remove_table(dev);
>>   	return ret;
>>   }
>>   
>>   static const struct of_device_id imx_devfreq_of_match[] = {
>> +	{ .compatible = "fsl,imx8mq-noc", .data = "imx8mq-interconnect", },
>> +	{ .compatible = "fsl,imx8mm-noc", .data = "imx8mm-interconnect", },
>> +	{ .compatible = "fsl,imx8mn-noc", .data = "imx8mn-interconnect", },
>>   	{ .compatible = "fsl,imx8m-noc", },
>>   	{ .compatible = "fsl,imx8m-nic", },
>>   	{ /* sentinel */ },
>>   };
>>   MODULE_DEVICE_TABLE(of, imx_devfreq_of_match);

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
