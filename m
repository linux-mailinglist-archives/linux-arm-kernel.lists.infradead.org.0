Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25B5912728C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:47:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=tdBarCHOzyr4y0XmrwEcprKETyHFJ6rYu0o+jscyg8I=; b=Qh3sPWi4DjXDO2
	y5g6dgAm9zwcA7UQreHnIUGTEo3thjdfCmwTNTEJ24tl1Bxz+Cn5BE7RzybyNQmd6o6uiUGgP0+/E
	fS9JlIcORkQAdgGQHoeF8M0kNl7kTNDHsAw3Fv69cijjEUgMRrqb2DJOOzB1GH1moojQJzMM6TlBI
	70BhfAGm/yqInH+Of/Cj72bSRJZFpSvH49NPoh00ad/HH/2IGCrkAWNxBdkfMXMC7BFepJs2REwbj
	go9OEyQpgSqwrrCMS+OR2R7n7OfChKRR0A/V8uWv7Kj7aKunn5GCkwVDdZeyzp9Ry/FzXGbsZahhk
	AEe0njVslVB3IKmo5rjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii6Rl-0003ge-FV; Fri, 20 Dec 2019 00:47:13 +0000
Received: from mail-eopbgr80073.outbound.protection.outlook.com ([40.107.8.73]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii6RZ-0003fv-Bm; Fri, 20 Dec 2019 00:47:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AmQ3X+Jub1TiczYr/rs2cEpD8gyE98ozKlvAPewzURVJ+tgcDd/utsc4hv0fnkMRaYuxu0oGzgDvdHv5bHUm6fMe2kxvTuW4gLGlYsg6kkDKc8ZbWlW+W6sHMMxUGgHhm8r3Ev/ZkVd+dpzSRj+G6JoMsaS6ewi+7eFT1MOcTHL9aOk5k/+PgxJu3KQJnX5jwuMuh+HdmAPjD6G6qBuGWalv8PaPMCdLV1Ra4nkr7i2SifMTToFOLP+3BFZDM62X/o1SQewyZntOzgxIwiYNIafd1eKcLIWpPR+w2HEI7aIIAs7ETqX2ck/ocj/R6YB82FO2jhqTvZUlvlzvsznLow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6IYQhJ5t8iIeO1QLyP707096MFdjnkNprb9e5jTf9Vs=;
 b=Us8jGh07DfD40S/H0ckJMDHsfMrnOeklm7ztiGEn3f+pThVMfuE/gCQSB5t/m6t6r4fQzLm6+so0ZJqxHXBErOUhbg8pqpLvnC1KCcdnE2cfHvw0vL700Y/2DVoBB2BBz/l8I2OU1OVW8+eii0fKUtd9hp/sHREA9WTdQtDX1axyCO0xifqG5NuNsAm47qevPOcT/B3UhzLZVNXmYuv3REl+DsohbCg/0gGzI5s9hRnYxSL4aSZqmXqMnvJ2gy9kr0PadCBqn7bnFRlLaj1hzXjEXxIPh0ygi9MyeeXcgY8JzIU7NwxlGfyIWz6EBTVo9/FmAhf5+57Pr9FZppv3JQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=6IYQhJ5t8iIeO1QLyP707096MFdjnkNprb9e5jTf9Vs=;
 b=KDAyDJt0j2Y1eIwDGck6pOndv3XP5jzODbxVo1hQpP57nLUalQNXAeL/q1E66riE8eHKdykrmU1iBFBvGo7N5gSO9VyASsLKY8J8i7oPY8K+MsMkRKgwrc04axep3SudNZw7XryIEv5CaqlITvh3jLZ9DjMPP4P0w8bVGXQot0Y=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB4813.eurprd04.prod.outlook.com (20.177.48.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2559.15; Fri, 20 Dec 2019 00:46:56 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2559.015; Fri, 20 Dec 2019
 00:46:56 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, "krzk@kernel.org" <krzk@kernel.org>
Subject: Re: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
Thread-Topic: [PATCH v2 02/11] PM / devfreq: Remove
 devfreq_get_devfreq_by_phandle function
Thread-Index: AQHVtsr1Ef7RVp7/TE+8KfVTQarunQ==
Date: Fri, 20 Dec 2019 00:46:55 +0000
Message-ID: <VI1PR04MB70235291D8E40CB6225A0AF0EE2D0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20191220002430.11995-1-cw00.choi@samsung.com>
 <CGME20191220001759epcas1p4ce1c2017937a35de84eab720b9732df0@epcas1p4.samsung.com>
 <20191220002430.11995-3-cw00.choi@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [2a04:241e:500:9200:f805:7bf1:bfb9:4857]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c6f70206-b096-4fe2-2e45-08d784e61d0f
x-ms-traffictypediagnostic: VI1PR04MB4813:
x-microsoft-antispam-prvs: <VI1PR04MB4813879429BF351C8A62246BEE2D0@VI1PR04MB4813.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 025796F161
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(376002)(39860400002)(136003)(396003)(189003)(199004)(6506007)(53546011)(54906003)(5660300002)(2906002)(76116006)(66946007)(66476007)(7416002)(478600001)(186003)(7696005)(4326008)(44832011)(8676002)(8936002)(86362001)(81156014)(33656002)(81166006)(64756008)(52536014)(316002)(66446008)(66556008)(55016002)(9686003)(110136005)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB4813;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: I2lpvE5Z2Vg/tuhjjk0FI8Vu0SBeqtpeQSzAC8/JegKrepEKxkmf3kox//m/mi0L2cQR7ec/dPEGySlOkY8luARpqHj4McvZ8OX7JF+tuDd1UaWkO8L2lEH7bhlMOeHBbVOoX6neCt6+jpX0fm+BOxDrGNlUBDZLFsvNGHu5cEiDtRv1flnZfPYar6Ib3mEMTK4gVuWsQ6OjdD/OIMW4mbnQbL1HF2unsdLKaNGwtIJou8hOFml/Kqc1zXalAK0g4PQmyDE2VMDlrfFSAVbuxS+avCkbeJ0JWG0B+NIObPNswEst7X1jHcTW27MUFRpRaKtHFrOFAwm4s+pV8YVkqPZEWRbmKuAKyqcQj2o0Eh2KARWsRAhTy6jDuxHhBPKY4kWK4ZwESEFs8VUu8MAbsMrpAyoZkuZkK4+ejp0uRt/EcV75dyl74mn4jwdXn9Mr
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c6f70206-b096-4fe2-2e45-08d784e61d0f
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Dec 2019 00:46:55.9818 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: j21ZvpiOti20U8qq9H2DNxfyWiOA4g2hempYu20DHj6Tojn90aXvpJ1ox6mLg0FiZkHWU+ywqo/NkJViHihQeQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB4813
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_164701_720337_9310E933 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.73 listed in list.dnswl.org]
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

On 20.12.2019 02:18, Chanwoo Choi wrote:
> Previously, devfreq core support 'devfreq' property in order to get
> the devfreq device by phandle. But, 'devfreq' property name is not proper
> on devicetree binding because this name doesn't mean the any h/w attribute.
> 
> The devfreq core hand over the right to decide the property name
> for getting the devfreq device on devicetree. Each devfreq driver
> will decide the property name on devicetree binding and then get
> the devfreq device by using devfreq_get_devfreq_by_node().
> 
> Signed-off-by: Chanwoo Choi <cw00.choi@samsung.com>
> ---
>   drivers/devfreq/devfreq.c    | 35 -----------------------------------
>   drivers/devfreq/exynos-bus.c | 12 +++++++++++-
>   include/linux/devfreq.h      |  8 --------
>   3 files changed, 11 insertions(+), 44 deletions(-)
> 
> diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
> index cb8ca81c8973..c3d3c7c802a0 100644
> --- a/drivers/devfreq/devfreq.c
> +++ b/drivers/devfreq/devfreq.c
> @@ -991,48 +991,13 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>   
>   	return ERR_PTR(-ENODEV);
>   }
> -
> -/*
> - * devfreq_get_devfreq_by_phandle - Get the devfreq device from devicetree
> - * @dev - instance to the given device
> - * @index - index into list of devfreq
> - *
> - * return the instance of devfreq device
> - */
> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
> -{
> -	struct device_node *node;
> -	struct devfreq *devfreq;
> -
> -	if (!dev)
> -		return ERR_PTR(-EINVAL);
> -
> -	if (!dev->of_node)
> -		return ERR_PTR(-EINVAL);
> -
> -	node = of_parse_phandle(dev->of_node, "devfreq", index);
> -	if (!node)
> -		return ERR_PTR(-ENODEV);
> -
> -	devfreq = devfreq_get_devfreq_by_node(node);
> -	of_node_put(node);
> -
> -	return devfreq;
> -}
> -
>   #else
>   struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
>   {
>   	return ERR_PTR(-ENODEV);
>   }
> -
> -struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev, int index)
> -{
> -	return ERR_PTR(-ENODEV);
> -}
>   #endif /* CONFIG_OF */
>   EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_node);
> -EXPORT_SYMBOL_GPL(devfreq_get_devfreq_by_phandle);
>   
>   /**
>    * devm_devfreq_remove_device() - Resource-managed devfreq_remove_device()
> diff --git a/drivers/devfreq/exynos-bus.c b/drivers/devfreq/exynos-bus.c
> index 7f5917d59072..1bc4e3c81115 100644
> --- a/drivers/devfreq/exynos-bus.c
> +++ b/drivers/devfreq/exynos-bus.c
> @@ -86,6 +86,16 @@ static int exynos_bus_get_event(struct exynos_bus *bus,
>   	return ret;
>   }
>   
> +static struct devfreq *exynos_bus_get_parent_devfreq(struct device_node *np)
> +{
> +	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
> +
> +	if (!node)
> +		return ERR_PTR(-ENODEV);
> +
> +	return devfreq_get_devfreq_by_node(node);

You need to call of_node_put(node) here and in several other places.

The old devfreq_get_devfreq_by_phandle API handled this internally but 
devfreq_get_devfreq_by_node doesn't.

Maybe the _by_phandle API could be kept and just take the property name 
instead of always using "devfreq"?

> +}
> +
>   /*
>    * devfreq function for both simple-ondemand and passive governor
>    */
> @@ -353,7 +363,7 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
>   	profile->exit = exynos_bus_passive_exit;
>   
>   	/* Get the instance of parent devfreq device */
> -	parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
> +	parent_devfreq = exynos_bus_get_parent_devfreq(dev->of_node);
>   	if (IS_ERR(parent_devfreq))
>   		return -EPROBE_DEFER;
>   
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
> index 1dccc47acbce..a4351698fb64 100644
> --- a/include/linux/devfreq.h
> +++ b/include/linux/devfreq.h
> @@ -254,8 +254,6 @@ extern void devm_devfreq_unregister_notifier(struct device *dev,
>   				struct notifier_block *nb,
>   				unsigned int list);
>   extern struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node);
> -extern struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
> -						int index);
>   
>   #if IS_ENABLED(CONFIG_DEVFREQ_GOV_SIMPLE_ONDEMAND)
>   /**
> @@ -413,12 +411,6 @@ static inline struct devfreq *devfreq_get_devfreq_by_node(struct device_node *no
>   	return ERR_PTR(-ENODEV);
>   }
>   
> -static inline struct devfreq *devfreq_get_devfreq_by_phandle(struct device *dev,
> -							int index)
> -{
> -	return ERR_PTR(-ENODEV);
> -}
> -
>   static inline int devfreq_update_stats(struct devfreq *df)
>   {
>   	return -EINVAL;
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
