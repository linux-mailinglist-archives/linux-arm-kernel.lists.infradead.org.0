Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D197319ADAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 16:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=OcaSdPSHtV1X1M8WHQaGfjOUCus3TqHTxSCbum74jQw=; b=HrLlhU9/BRws84
	t7+DuuA4MxKFDv/A6N8mF/GwtNyZj2F0qxl8Y9UJ2hQ6JvV4NXRyW168Jjdh43hGww+lOi8mo0+Lg
	zfdXyrK9Yzs45m8vIu+hj8DdMZTiETCJZf6J5uTuLF8wvS36l+o8DiG59U6+tYbx6gxMtGgdCgxIv
	TVZBx4XdPkqU+kcKRTCvMMSPqH6krxqpgEa56nmK7vifR92qulQhqP4M5ylUuDkFxznt2Py3puFZ6
	ZWoG7PUaD/zcS2wstb7g1BG3dbegv0lD67BLFiP5TzjwKUGEwrpvGzX5qxbu2mNmWBt/BYefjSduF
	Hl7TKnfQ5SinsDPkx8wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJeDT-0001nK-Nm; Wed, 01 Apr 2020 14:19:39 +0000
Received: from mail-am6eur05on2042.outbound.protection.outlook.com
 ([40.107.22.42] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJeDL-0001mp-5f
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 14:19:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VKi9NojMqLuHMjNfVTZ0v+bb/47av/1Ku9nHE7cFOjPnVo6BhnR95kTRoOZOYoyyMIJZ7LedD4/+RLY/DUFlGaGl0E1IKn8TSSIG7uttCFJFw0StnGVZwElSnMsaM/zmIMEiCzcJNQU3+SuShW7eg3b7VRTO889QZRlNSF7gtBwobraGFBtOWxdWondl4Bq61opkr6ft7p/JSlrtteCR3OgV6izPAajFrYcvMHrha1w2VXNqD6h1rKpUk6kjN0ZpH6ZFNO77TiRzIi3C+uYVGNf+cABgl7D6aChxqnKehGNdEjhGEBoAjKB8BDr9OmZZu+3LkbnJmfwkCM6tzIGoZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iZON0vePQo02YO9wOK93g9/7aoG+gBPSD0Us18yyTo4=;
 b=CKmh2M7sIhloTngceT/kY6h07K+HUTAeZ6SyUQZlYamvWdIuhlU/DcZ9fJtIXg+8TZf5xLctK8mGhojfJEOMPKhiwSk6c+j+731X1Ae8DYm22sbGZ173ex3qqSxHZkrwqi55+v7jEg/FDbQPjU26J06jmcdOIElAuZFtF+qRv4ctBVqxONTBPqZ8s7/EarKDFdbzVZQUQfreU/eqB0B291YRSFI8h1cbccxKjHwj/PJrGIDNtyfLR1PmxSEmeF9pull3avJF2Wt+otG9nygF33DA2MmSUH/FnrYMZknmL7+akpn70MbkXi34oRv3dHf1TQ/6yfSaWZDmsuCRF2M1dQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iZON0vePQo02YO9wOK93g9/7aoG+gBPSD0Us18yyTo4=;
 b=DJmiU5Ak8N/GoSXgNN6WY9M3ocz8kbx10MtmPwbo8LACFVFR32mr4eXymGVD7DQqcYYAsmZb/++rzXq50nkQ66juEbP1vz4N29xXX2XXQcghlugpbJY9BfJMXw1qAQGVLpfnFBMQ4OSiBZksjoPR1hbd0Q3fwzhSVrneCn/qJZ4=
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com (52.133.244.87) by
 VI1PR04MB6960.eurprd04.prod.outlook.com (52.133.244.10) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2856.20; Wed, 1 Apr 2020 14:19:25 +0000
Received: from VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200]) by VI1PR04MB6941.eurprd04.prod.outlook.com
 ([fe80::289c:fdf8:faf0:3200%2]) with mapi id 15.20.2856.019; Wed, 1 Apr 2020
 14:19:25 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, Georgi Djakov
 <georgi.djakov@linaro.org>, Rob Herring <robh+dt@kernel.org>, Martin
 Kepplinger <martink@posteo.de>
Subject: Re: [PATCH 3/8] PM / devfreq: imx: Register interconnect device
Thread-Topic: [PATCH 3/8] PM / devfreq: imx: Register interconnect device
Thread-Index: AQHWAxSP9L4B6rBWik25MwbLPhOt4g==
Date: Wed, 1 Apr 2020 14:19:25 +0000
Message-ID: <VI1PR04MB69415B72B48122BB3B6FC85AEEC90@VI1PR04MB6941.eurprd04.prod.outlook.com>
References: <cover.1585188174.git.leonard.crestez@nxp.com>
 <CGME20200326021638epcas1p1626d266c8dcfa051b7c590838e62b097@epcas1p1.samsung.com>
 <f4553b6aacc88a91ed407eb709097e2cd1bf1a19.1585188174.git.leonard.crestez@nxp.com>
 <ea021693-c22b-27be-8346-011673ae0831@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [92.121.36.197]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ece15031-f705-43dd-aeb4-08d7d647ae65
x-ms-traffictypediagnostic: VI1PR04MB6960:|VI1PR04MB6960:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB6960BD37AB24134FE9D18BDEEEC90@VI1PR04MB6960.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03607C04F0
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VI1PR04MB6941.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(366004)(396003)(346002)(136003)(376002)(39860400002)(6506007)(71200400001)(26005)(44832011)(66946007)(91956017)(186003)(33656002)(7696005)(5660300002)(66476007)(66446008)(52536014)(76116006)(478600001)(2906002)(53546011)(316002)(81156014)(86362001)(7416002)(8676002)(55016002)(81166006)(64756008)(54906003)(110136005)(4326008)(9686003)(66556008)(8936002);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Dsn7uqGUvSINYnBRO1RISB8rbaKjL3E3VKaCOiQOtw7pdoZlS/y0ko2vQJvSzGjaP5SZmKqHVB56AAbUCnZdJIDo7iZEz47y2vZHpc+jmkFD5kBuEPhIOg0hEi/4CK11bhGE3Xio+AOVVuoUBwqtJzx4E9DSFOizkwTqL6EujL4VFUs+CljnaRktGQRYPlHfNEI/kUEUSSWogfVg9cCeDg22KWVdIPgUF3IptDg2RJyrjJVxayYZlpA8fpYGuqjGzZ1F6701ABuZb82ArAp/9hp3auV6AeUV4Ym4CwUsR2aH8acfwpzkf8U+SlbCwgTvUS8+w4QBa2MYKdkxBXD7NY7Ewws9iPgsrj0qEZfvQev6YptPCgNutgOPbLEMoztnx5VKlGiURpeWXiBJx5JlxpmLJyY9eRG3CRKurpgN0+Qhz+rhOFOyu1gGZydHupV+
x-ms-exchange-antispam-messagedata: UGKzLKN1sWh82zfGXenZgpsoH1Z/0UKp1YCORweF3eJmsLWGQYXZRMkSJ+mSwUGlvXSnXcwbt6G/AjsRlQkacHIj+w65oBS3VDQkOOd8JO/JHs2SFqhRAjmfAQjm8tIiVquz+hwQ7xen9Cda5vluKg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ece15031-f705-43dd-aeb4-08d7d647ae65
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Apr 2020 14:19:25.1040 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iCiCm/P5rGYcURX7aX7Te/GGlT1tBAUJjPSZxzbDmJZ4t3KMJxZfvmDtHSwr9K58JsB42oX8VSP80W/wilYqwQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6960
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_071931_214305_9EEBA2D8 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.42 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 Michael Turquette <mturquette@baylibre.com>, Angus Ainslie <angus@akkea.ca>,
 =?iso-8859-2?Q?Artur_=A6wigo=F1?= <a.swigon@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>, Matthias Kaehlcke <mka@chromium.org>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
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

On 2020-04-01 2:00 AM, Chanwoo Choi wrote:
> Hi Leonard,
> 
> On 3/26/20 11:16 AM, Leonard Crestez wrote:
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
>>   drivers/devfreq/imx-bus.c | 39 +++++++++++++++++++++++++++++++++++++++
>>   1 file changed, 39 insertions(+)
>>
>> diff --git a/drivers/devfreq/imx-bus.c b/drivers/devfreq/imx-bus.c
>> index 285e0f1ae6b1..e9b13e43bf0a 100644
>> --- a/drivers/devfreq/imx-bus.c
>> +++ b/drivers/devfreq/imx-bus.c
>> @@ -15,10 +15,11 @@
>>   struct imx_bus {
>>   	struct devfreq_dev_profile profile;
>>   	struct devfreq *devfreq;
>>   	struct clk *clk;
>>   	struct devfreq_passive_data passive_data;
>> +	struct platform_device *icc_pdev;
>>   };
>>   
>>   static int imx_bus_target(struct device *dev,
>>   		unsigned long *freq, u32 flags)
>>   {
>> @@ -60,11 +61,42 @@ static int imx_bus_get_dev_status(struct device *dev,
>>   	return 0;
>>   }
>>   
>>   static void imx_bus_exit(struct device *dev)
>>   {
>> +	struct imx_bus *priv = dev_get_drvdata(dev);
>> +
>>   	dev_pm_opp_of_remove_table(dev);
>> +	platform_device_unregister(priv->icc_pdev);
>> +}
>> +
>> +/* imx_bus_init_icc() - register matching icc provider if required */
> 
> Better to add following comments without 'imx_bus_init_icc() -' comment.
> /* Register matching icc provider if required */

This form looks like standard kernel-doc


>> +static int imx_bus_init_icc(struct device *dev)
>> +{
>> +	struct imx_bus *priv = dev_get_drvdata(dev);
>> +	const char *icc_driver_name;
>> +
>> +	if (!of_get_property(dev->of_node, "#interconnect-cells", 0))
>> +		return 0;
>> +	if (!IS_ENABLED(CONFIG_INTERCONNECT_IMX)) {
>> +		dev_warn(dev, "imx interconnect drivers disabled\n");
>> +		return 0;
>> +	}
>> +
>> +	icc_driver_name = of_device_get_match_data(dev);
>> +	if (!icc_driver_name)
>> +		return 0;
> 
> Recommend to add the error or warning message.

Makes sense, imx8m-nic shouldn't have #interconnect-cells so if this 
condition is reach an error should be printed.

>> +
>> +	priv->icc_pdev = platform_device_register_data(
>> +			dev, icc_driver_name, -1, NULL, 0);
>> +	if (IS_ERR(priv->icc_pdev)) {
>> +		dev_err(dev, "failed to register icc provider %s: %ld\n",
>> +				icc_driver_name, PTR_ERR(priv->devfreq));
>> +		return PTR_ERR(priv->devfreq);
>> +	}
>> +
>> +	return 0;
>>   }
>>   
>>   static int imx_bus_probe(struct platform_device *pdev)
>>   {
>>   	struct device *dev = &pdev->dev;
>> @@ -112,18 +144,25 @@ static int imx_bus_probe(struct platform_device *pdev)
>>   		ret = PTR_ERR(priv->devfreq);
>>   		dev_err(dev, "failed to add devfreq device: %d\n", ret);
>>   		goto err;
>>   	}
>>   
>> +	ret = imx_bus_init_icc(dev);
>> +	if (ret)
> 
> Recommend to add the error message.

imx_bus_init_icc already prints errors. Printing again here would always 
result in a second message.

>> +		goto err;
>> +
>>   	return 0;
>>   
>>   err:
>>   	dev_pm_opp_of_remove_table(dev);
>>   	return ret;
>>   }
>>   
>>   static const struct of_device_id imx_bus_of_match[] = {
>> +	{ .compatible = "fsl,imx8mq-noc", .data = "imx8mq-interconnect", },
>> +	{ .compatible = "fsl,imx8mm-noc", .data = "imx8mm-interconnect", },
>> +	{ .compatible = "fsl,imx8mn-noc", .data = "imx8mn-interconnect", },
>>   	{ .compatible = "fsl,imx8m-noc", },
>>   	{ .compatible = "fsl,imx8m-nic", },
>>   	{ /* sentinel */ },
>>   };
>>   MODULE_DEVICE_TABLE(of, imx_bus_of_match);
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
