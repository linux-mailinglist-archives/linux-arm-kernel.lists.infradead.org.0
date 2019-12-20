Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDDAA1272E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 02:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=8WbWbc9ZlzbWpn2lGirlRpeUceVbtpmLO+FC+jPEvFw=; b=KoRTrzTiBT5g5B
	Vz0URphFTkNRjTrzDMbiDusY+kyJvoDwnIjAOWwJr3Gwc4hzAJMa06VdbIYwGE5JkedBNY3/TrgPB
	XkGO/xLi3JMTiNXhz/q+MF2azF6X9QxXKBoGzuQ8p6XqE1jPUD+bOljto1NRDw0tJW1mmkyhwWUJu
	C3bJOiQSmc5l8+CJcA+iYD+dojBK4b7BWNulhHooyR3ZFUFKVJUG/HiDIpugInbSPxvi3xt/xeBWb
	4I/4N/7WPguknTPsUfXXXbB3839PHV+27qoyze7N4FlEXEFu/purw/asVIJxeP4EX2ovyH0Y/v10G
	1pDnbvOSxjHKBNYiCkKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii7Hj-0004kv-Ul; Fri, 20 Dec 2019 01:40:55 +0000
Received: from mail-eopbgr50055.outbound.protection.outlook.com ([40.107.5.55]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii7HZ-0004kJ-KS; Fri, 20 Dec 2019 01:40:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BXzfkDsHZQvvAybyER+a+UtT41ci/MiQNCuHKW9vN8R3k2CgfU9gdKa8bKTNxAEB7F8w1WWOjbMgkNmTm7Z9eCArVuJ6V092Ajjc3AqoVP0rjocBGKL/raMVqVnM9o8Lb/6/X7VbF2LZhFZkb7N1oEQSvU5EEF7UTw8fXsbiJdlvZjLMiLzgbagZSf7mXUxUJCD9kpVgd7ej+zzF5mv9/z/Fl1EHFBhpIj06dchUOmDGxQqp3ZHQDBFCj3byEgrYoGb2ixMDquidO9u/VSO8UEbNSIAAec4xZlGcnFq4yNESEcan19TvjLFjNSOAGROfZA1CS8URhlcaJjodPi6tVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OGfyoNkDOUhTxHWDgsxnI7Cuzr1LiYe8XTYfCwZNPNo=;
 b=D64N3Io+BK63lq1PeOQtrOhpHQhE1JcNutykdPn/0zELohe9bIgxStQkn2X45lN5baRooX9pAw5kVRwGs6e6Gm/W8Whw3l2SSeBxZ9SpwgfG4aoS4hYB8k40ZKDGPHJaXw5I2ADoWpKzJjjW4RB4Theuqf6OXZAW3K1EE22U0rOUyZXJzAExUc6O8Ht/zTXWlz3HhFImgpXaHaX/5qWu+UYQreOu0iI7KDETqJWTiKEO2DKYa/VTgJK1p4dcgwTHj2EegWLoWRYUu1UhEPxscCLRtjHiK2skAPWhcd5Ilfi3qkc6LgeJ4JxO4+vsGQ7YR7G6BtN/0ENW4VCpFMl09g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OGfyoNkDOUhTxHWDgsxnI7Cuzr1LiYe8XTYfCwZNPNo=;
 b=PapXLfr8OExqvruY7NhUuy1FzJ7Rta/+uSJWHZ8Ern8VTZR1BgSR/Bh6MLlOyaITprXxYnLYBZ33/F83agQwuE3wsR4YXCClk0EgSQhsBz9rmfp6epoI4V8WghdKcQmCcKZl7JKGFVRsHHfuGwdytwnbc9FMhQ3WZ4FCrFJQWd8=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5679.eurprd04.prod.outlook.com (20.178.204.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.16; Fri, 20 Dec 2019 01:40:42 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.015; Fri, 20 Dec 2019
 01:40:42 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, "krzk@kernel.org" <krzk@kernel.org>
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
Thread-Topic: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
Thread-Index: AQHVtsr1Ef7RVp7/TE+8KfVTQarunQ==
Date: Fri, 20 Dec 2019 01:40:42 +0000
Message-ID: <VI1PR04MB7023160888F88B5800A90189EE2D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
 <20191220002430.11995-3-cw00.choi@samsung.com>
 <VI1PR04MB70235291D8E40CB6225A0AF0EE2D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <46e629e0-fee4-21a6-3baa-f347ff6417d8@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [95.76.3.179]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ac34ac72-32fe-4605-8195-08d784eda011
x-ms-traffictypediagnostic: VI1PR04MB5679:
x-microsoft-antispam-prvs: <VI1PR04MB56798BEF1EEE51081717EEF3EE2D0@VI1PR04MB5679.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(136003)(376002)(39860400002)(366004)(199004)(189003)(53546011)(6506007)(76116006)(2906002)(55016002)(71200400001)(66446008)(66556008)(66946007)(64756008)(66476007)(9686003)(26005)(4001150100001)(186003)(316002)(7696005)(44832011)(5660300002)(4326008)(8676002)(478600001)(33656002)(8936002)(81166006)(7416002)(54906003)(52536014)(86362001)(81156014)(110136005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5679;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fXJemzerAYZ1m5hAQJkLaAFUCqvqaOnnyqmsbGa/UfeS0HGYejj2jPrkbkE7EuuTB9QFb/E43d/Ty64pG5I7XKhGWMN9nMcfZaItEgkKizFj5/+xc8brq04n8ixB+6UT0E6Go3bHzbVrxxgddKBdnS/c3CMGc3aCYubi4f+rt5HiuP8rCpkBJkB5SPQORb23G0mJEgt0tE3+ra3qkDh8Z5T6MqWu3lzxmZ6eQE4zG1WxWyOmicQy07k19XcsMlVCuqvC/HD+36/wPEin+CNhmVt+ewR5GAnp5YVPie8D4iMMQxlJalcRZb4xo1JkEUS+HJ4pNMeIG7X6+YYH6aWncG3Fb2lK5p+7Wj2LWuefolqr7oasH/FN4H/MHJVH7XOCe7DpaJ4RXfWP2t7qBMnRubPu4QfqXq9kiQr59ntwZcubaDa2INZ0+Ot01FkIWXn/
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ac34ac72-32fe-4605-8195-08d784eda011
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 01:40:42.3523 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kL/sXX1K8QLkQT3YyKmgrC0OQPrgG4OgV3LJMyScTSK+2JJ4NC7JrN7NmUv6QYv5Dc3cZlm1T5usTadblNNmhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5679
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_174045_677487_26336CB2 
X-CRM114-Status: GOOD (  13.31  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.55 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 "heiko@sntech.de" <heiko@sntech.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "a.swigon@samsung.com" <a.swigon@samsung.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
 "lukasz.luba@arm.com" <lukasz.luba@arm.com>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-12-20 2:54 AM, Chanwoo Choi wrote:
> On 12/20/19 9:46 AM, Leonard Crestez wrote:
>> On 20.12.2019 02:18, Chanwoo Choi wrote:
>>> Previously, devfreq core support 'devfreq' property in order to get
>>> the devfreq device by phandle. But, 'devfreq' property name is not proper
>>> on devicetree binding because this name doesn't mean the any h/w attribute.
>>>
>>> The devfreq core hand over the right to decide the property name
>>> for getting the devfreq device on devicetree. Each devfreq driver
>>> will decide the property name on devicetree binding and then get
>>> the devfreq device by using devfreq_get_devfreq_by_node().
>>>
>>> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
>>> ---
>>>    drivers/devfreq/devfreq.c    | 35 -----------------------------------
>>>    drivers/devfreq/exynos-bus.c | 12 +++++++++++-
>>>    include/linux/devfreq.h      |  8 --------
>>>    3 files changed, 11 insertions(+), 44 deletions(-)
>>>
>>> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
>>> index cb8ca81c8973..c3d3c7c802a0 100644
>>> --- a/drivers/devfreq/devfreq.c
>>> +++ b/drivers/devfreq/devfreq.c
>>> @@ -991,48 +991,13 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>>    
>>>    	return ERR_PTR(-ENODEV);
>>>    }
>>> -
>>> -/*
>>> - * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
>>> - * @dev - instance to the given device
>>> - * @index - index into list of devfreq
>>> - *
>>> - * return the instance of devfreq device
>>> - */
>>> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>>> -{
>>> -	struct device_node *node;
>>> -	struct devfreq *devfreq;
>>> -
>>> -	if (!dev)
>>> -		return ERR_PTR(-EINVAL);
>>> -
>>> -	if (!dev->of_node)
>>> -		return ERR_PTR(-EINVAL);
>>> -
>>> -	node = of_parse_phandle(dev->of_node, "devfreq", index);
>>> -	if (!node)
>>> -		return ERR_PTR(-ENODEV);
>>> -
>>> -	devfreq = devfreq_get_devfreq_by_node(node);
>>> -	of_node_put(node);
>>> -
>>> -	return devfreq;
>>> -}
>>> -
>>>    #else
>>>    struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>>>    {
>>>    	return ERR_PTR(-ENODEV);
>>>    }
>>> -
>>> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
>>> -{
>>> -	return ERR_PTR(-ENODEV);
>>> -}
>>>    #endif /* CONFIG_OF */
>>>    EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
>>> -EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
>>>    
>>>    /**
>>>     * devm_devfreq_remove_device() - Resource-managed devfreq_remove_device()
>>> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
>>> index 7f5917d59072..1bc4e3c81115 100644
>>> --- a/drivers/devfreq/exynos-bus.c
>>> +++ b/drivers/devfreq/exynos-bus.c
>>> @@ -86,6 +86,16 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
>>>    	return ret;
>>>    }
>>>    
>>> +static struct devfreq *exynos_bus_get_parent_devfreq(struct device_node *np)
>>> +{
>>> +	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
>>> +
>>> +	if (!node)
>>> +		return ERR_PTR(-ENODEV);
>>> +
>>> +	return devfreq_get_devfreq_by_node(node);
>>
>> You need to call of_node_put(node) here and in several other places.
>>
>> The old devfreq_get_devfreq_by_phandle API handled this internally but
>> devfreq_get_devfreq_by_node doesn't.
> 
> Thanks. I'll fix it.
> 
>>
>> Maybe the _by_phandle API could be kept and just take the property name
>> instead of always using "devfreq"?
> 
> Do you mean like below?
> devfreq_get_devfreq_by_phandle(struct device *dev, int index)
> -> devfreq_get_devfreq_by_phandle(struct device *dev, char *property_name, int index)
> 
> In case of devfreq-event.c,
> struct devfreq_event_dev *devfreq_event_get_edev_by_phandle(
> 						struct device *dev,
> 						char property_name,
> 						int index)
> int devfreq_event_get_edev_count(struct device *dev, char *property_name)

Yes. These helpers would avoid the need for explicit of_node_put.

> 
>>
>>> +}
>>> +
>>>    /*
>>>     * devfreq function for both simple-ondemand and passive governor
>>>     */
>>> @@ -353,7 +363,7 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
>>>    	profile->exit = exynos_bus_passive_exit;
>>>    
>>>    	/* Get the instance of parent devfreq device */
>>> -	parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
>>> +	parent_devfreq = exynos_bus_get_parent_devfreq(dev->of_node);
>>>    	if (IS_ERR(parent_devfreq))
>>>    		return -EPROBE_DEFER;
>>>    
>>> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
>>> index 1dccc47acbce..a4351698fb64 100644
>>> --- a/include/linux/devfreq.h
>>> +++ b/include/linux/devfreq.h
>>> @@ -254,8 +254,6 @@ extern void devm_devfreq_unregister_notifier(struct device *dev,
>>>    				struct notifier_block *nb,
>>>    				unsigned int list);
>>>    extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node);
>>> -extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>>> -						int index);
>>>    
>>>    #if IS_ENABLED(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)
>>>    /**
>>> @@ -413,12 +411,6 @@ static inline struct devfreq *devfreq_get_devfreq_by_node(struct device_node *no
>>>    	return ERR_PTR(-ENODEV);
>>>    }
>>>    
>>> -static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
>>> -							int index)
>>> -{
>>> -	return ERR_PTR(-ENODEV);
>>> -}
>>> -
>>>    static inline int devfreq_update_stats(struct devfreq *df)
>>>    {
>>>    	return -EINVAL;


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
