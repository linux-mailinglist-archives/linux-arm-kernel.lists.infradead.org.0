Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69440122ED6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 15:34:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=rJxtdB4U6P7JB++1mr5qWZ3/2vLW4gzUN+UXl+kJ318=; b=oytCVuCn/YTJCE
	KySwTg85TCOKd5dSp+qFASxsV/hNeQM3W9LUtsZicGkLQ3ip+Rkw/EZLOckkIO3VI80QRE0JFBaga
	LdXbJi4H0/+6klZoZd5O+plrNBMwlL4m6wprv3FurkfOApO967K9wCHEQzZqX9hdCRsnm6+n0myUD
	tDhGnVWBzFonLHeWKvUv83/r2sCHdnUFwtxQQ/E/wYTHerw4cr2+Qsnb/n3P8YZAP47oeE2YCotii
	f46JM1I6rFAl150JpLcoaq7/trovRvFsoDJ2Qskp27fyz0NJ/k/cAMsOBZ2RkSIlCiRXAE5m2/qpC
	mjJqJ920ao9Lkuvmog1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihDvJ-00015U-St; Tue, 17 Dec 2019 14:34:05 +0000
Received: from mail-eopbgr70075.outbound.protection.outlook.com ([40.107.7.75]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihDv9-00014w-Dg; Tue, 17 Dec 2019 14:33:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iAFNgzKIJoRvNuhTqtN+AEnIfYt3BaHIb1xlz63RafhKFB2Py6AkQXj/+SbW/pxo6Q+8rGUAkhEB+kRuRewuw+3d17s2pyGE28rt+vJ5FNq1D5rIlJh9aiduIXfPI/R1rEicjACSg7qaBvc4Am3WlM2epSseZPZc3BsT0CkcHUnCyFoM4GpsiwXmRfOQld1dFZurCwg2kJ60O9IbgOP/MOfe0l92y7YIJEu2BqlBKSA1iFg+TJzSqBwLmCbLRvmQO1gRg0G07bnQktg11SJABmQGz8zYW/NhB8YvUyJT0YXkrpticDkElEFy1C80f1YgC+Vb5tAvwkp8vkkDhV347Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a67BXvFyL5lSprSXzZpMAHmyDRdW/sb9BrE3UvsM554=;
 b=m8zkFz++YpeGQyTjQQPJqRfzZGfJbPM+sVDcbR2yRbsWQgBIfAMVEWmrFioHaPDpPMjINNOfJ/x9eifLUqpSDypc/wXlykBqumV4i3kcPUKD+hsjDiBWbfyffw2hKlL4mfXlKM2V9ekZNWoqa059342EOREogCyipKX/owCec5r2kKi65ysSHvhcMnX8uQ+WfA92bDuuSpf9njNcHBejpE1wnyHvzXQrZGgv++QZZVp69EQQT/2NmQXAkI/uC9zwNRNMqKAstjhUDMAuTek/u1T/q40mctWEZSb1VCCZ8h6fdk4pmIMZdFa0tV23puBpyZvzIWPRKGzjcpUTnQ+hyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a67BXvFyL5lSprSXzZpMAHmyDRdW/sb9BrE3UvsM554=;
 b=VZf0Iayo2fYacEUCid43vgViRZXQiK8CcDk2PbIhvsAGmu4PPoTG8Hfg7vvU7CPbpBVuTzMUJ4thqz+m+rWw0LCWrRb6ziP2aHyDZ9NGUZdX5GCRvoCVWIdPoSamG6meOZpoTlt3AoZWIxdarLULrVPhxApFPDoSDj4JjMSAkEo=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB5359.eurprd04.prod.outlook.com (20.178.122.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Tue, 17 Dec 2019 14:33:52 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.019; Tue, 17 Dec 2019
 14:33:52 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>, "krzk@kernel.org" <krzk@kernel.org>, 
 "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: Re: [PATCH 2/9] PM / devfreq: Remove devfreq_get_devfreq_by_phandle
 function
Thread-Topic: [PATCH 2/9] PM / devfreq: Remove devfreq_get_devfreq_by_phandle
 function
Thread-Index: AQHVtJ3+QgbB6+oDD0SBl418fSrNCQ==
Date: Tue, 17 Dec 2019 14:33:52 +0000
Message-ID: <VI1PR04MB70231FA16F12ACA3A3C01772EE500@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <20191217055738.28445-1-cw00.choi@samsung.com>
 <CGME20191217055105epcas1p2d2930402a559e381a7854f515a683d15@epcas1p2.samsung.com>
 <20191217055738.28445-3-cw00.choi@samsung.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 87c4335f-9303-4162-ffab-08d782fe2352
x-ms-traffictypediagnostic: VI1PR04MB5359:
x-microsoft-antispam-prvs: <VI1PR04MB53598C0A2E09F242C3EBE713EE500@VI1PR04MB5359.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(366004)(39860400002)(199004)(189003)(8676002)(478600001)(6506007)(53546011)(86362001)(52536014)(5660300002)(186003)(8936002)(4326008)(81156014)(91956017)(55016002)(316002)(7416002)(76116006)(54906003)(110136005)(66946007)(66446008)(9686003)(64756008)(26005)(66556008)(66476007)(2906002)(44832011)(33656002)(7696005)(71200400001)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5359;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kaGmMq+qiqRfPVQdn72HkdkScAhoAYVLa3DcRyr26+4wclZT/udrnlICDOwuJOQqkqtzG7CjIGdL/xd4wPPMoFdH+kPvaR6QCkX5ya+reIsDyD3Fr9YjVgnuxlgCNu8+YByclMIf9eGhjMDVvwtFuLY3BdryN/2Nasdawn81ZRyegeSJptP0puza1I0c2bTUPcear6VZwEYt5jfwIkrENCrxdyav2YCA7IXzFzZJ3ji6XZi5r7inpnSAlEMZt2Wsg0gUBwmyMI849UyT2j9n3j83CsXwCj9tJEe6gKms8JtmhbV96xaOp2u44cwVSyQ6lS89E8LxK8ogXmrnv5dUN/LfcLWnZlkFAq21h1IKutnIWV7PQwS9MrvDz/YCO+GRINmssKz97y/Pfub4QksBK+fBpIbpuUDEOHjUr7gTmVM9VAlw7g/kFvh9OEKZ3Q+V
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87c4335f-9303-4162-ffab-08d782fe2352
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 14:33:52.0428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hD8RERiaMu7LEB27PHVR24KtbWvJDBWmUGf0gwwyfvvy1uHj12fk8lTfZXyEPD8VpnL3ycjOkskGVRqsYz35yQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5359
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_063355_460835_16EC9712 
X-CRM114-Status: GOOD (  16.83  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.75 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "kyungmin.park@samsung.com" <kyungmin.park@samsung.com>,
 "kgene@kernel.org" <kgene@kernel.org>,
 "myungjoo.ham@samsung.com" <myungjoo.ham@samsung.com>,
 "lukasz.luba@arm.com" <lukasz.luba@arm.com>,
 "m.szyprowski@samsung.com" <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17.12.2019 07:51, Chanwoo Choi wrote:
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
>   drivers/devfreq/exynos-bus.c | 14 ++++++++++++--
>   include/linux/devfreq.h      |  8 --------
>   3 files changed, 12 insertions(+), 45 deletions(-)
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
> index 7f5917d59072..9aac2db956d5 100644
> --- a/drivers/devfreq/exynos-bus.c
> +++ b/drivers/devfreq/exynos-bus.c
> @@ -146,6 +146,16 @@ static int exynos_bus_get_dev_status(struct device *dev,
>   	return ret;
>   }
>   
> +static struct devfreq *get_parent_devfreq_by_node(struct device_node *np)
> +{
> +	struct device_node *node = of_parse_phandle(np, "devfreq", 0);
> +
> +	if (!node)
> +		return ERR_PTR(-ENODEV);
> +
> +	return devfreq_get_devfreq_by_node(node);
> +}

The _by_node suffix here is confusing because it actually fetches a 
property of the node unlike devfreq_get_devfreq_by_node. Maybe call this 
get_parent_devfreq_from_node?

Since it's a static function it could just be called get_parent_devfreq?

> +
>   static void exynos_bus_exit(struct device *dev)
>   {
>   	struct exynos_bus *bus = dev_get_drvdata(dev);
> @@ -353,8 +363,8 @@ static int exynos_bus_profile_init_passive(struct exynos_bus *bus,
>   	profile->exit = exynos_bus_passive_exit;
>   
>   	/* Get the instance of parent devfreq device */
> -	parent_devfreq = devfreq_get_devfreq_by_phandle(dev, 0);
> -	if (IS_ERR(parent_devfreq))
> +	parent_devfreq = get_parent_devfreq_by_node(dev->of_node);
> +	if (IS_ERR(parent_devfreq)) {
>   		return -EPROBE_DEFER;
>   
>   	passive_data = devm_kzalloc(dev, sizeof(*passive_data), GFP_KERNEL);
> diff --git a/include/linux/devfreq.h b/include/linux/devfreq.h
> index e3633ae43349..3ed96426302e 100644
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
> @@ -413,12 +411,6 @@ struct devfreq *devfreq_get_devfreq_by_node(struct device_node *node)
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
