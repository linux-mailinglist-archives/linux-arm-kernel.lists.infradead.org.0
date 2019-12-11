Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A492F11ACF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 15:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=oJtXisrY9Fu3fxqr792iADiA2Xa0Y+ouYnS+FZcAXAc=; b=bQWaWCOoj9fSXO
	mqvIHsBZFaaOWHmtRBUzXZQWaPuMXQt/9ZdrmjP3UDoUnxYh/7pBl+XxW4fb9ud8ytsf9r2Wnf9g1
	CjmkdjJQIubpef/hBxrNuA3LtfHb6Xstby17SKliH6+iKRELJLfwrifo8NlE3tCVhda+SUuTVjAYT
	uKaqc+oUIPOdfb9oOEOowQxNAGTTMztsqQd3wcnq2P+l8VAhNOzDRGiWLFiuPwcc+xGVEK790nN2a
	GmE/zTjRwsETR8kfv0f7am+7vJ1WRIO/w51+Ck7jscMt1hVB79O6tOHCLhFL7TeLgnX5krmWgAQ8p
	T7J3VKnnpsiXRb2LbsYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if2cc-0001MO-Si; Wed, 11 Dec 2019 14:05:46 +0000
Received: from mail-db3eur04on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::60f]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if2c0-0008OQ-3c
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 14:05:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NSZu5zZAeyVjxYUM/gI0VqMUiioah4+gCcBq1YX24prX06M8CtwvLMj4vQ9JZnNEJAaTq9M3HJha75/RkzJb/uPvOB5zzXXK1x1+ysb4jS6UIWDmEI/OG+veaz4UV/1KzJYsYO/QFwlDb7DLtKXaacyUKruOgSCLn72hBXoBsDPaYpKpeS7h6uwRUbgyc56GROuGAEfsOSD2hRmlISKWDJ7FiZ0YMoxOW5gOM8HfT8lEnaoiX/KD/7KdxZdR3KslZPgJ7s9Lr6vOBdEl2sG226aV6sOdsRxXr6ZsvTqpbVkGySGpe2gs7yfX83LNXIHBQar+FoNIrudUrh6LJVXNUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hZZlLwLU3GIhr/NHNIYf0N/zzpnHJwEk4VsdgM4jTIw=;
 b=ZQgbJYPLtiWFfT5Qg3WF3CxANXqeRiISdzn1HDm5AckEeFwz/0VELMnfrJeT5fnwWddKQIJfqrn4WLjIz4//Q6OjPK9qZudLFuOYpoeluDa2pG8wjKSqMxXWUYJ6UBLx6RJAQbhdYHf8WpY1s5iB5qHwmGTuHSjJUZI0KTaIc7yE8mJFoOxgmFnQ4Vw/sdI/qOg/4BnJEvUndgOYHnh8UVfdaXdncGVyotV5OmOgWUst3AmsxdvEqW4MSs+8Xf0cn/WRXfnvzcGb17vtNdXO3srhaavdqoszWU7BOQdpbPwz50SKUtyHqBOPVFlvDE3comoqQ/IUuHKOMaLXc9O32Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hZZlLwLU3GIhr/NHNIYf0N/zzpnHJwEk4VsdgM4jTIw=;
 b=O6yU7IBOAkF5C0pTbtRk08w1uJJQHph46LDX2RXLDqHSm8gaL4yJh3s0TeFen793+V4W4aDWsdCGVzv+mGROG7nIyz1MUJZTZpFKI6mqcFxO1k544VhzUUjR+n/VIxVFGZdHf0eOfyYq8HOx72bvG4a877Sy4jkam6T/7xrJbmY=
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com (10.186.159.144) by
 VI1PR04MB6223.eurprd04.prod.outlook.com (20.179.26.148) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.17; Wed, 11 Dec 2019 14:05:05 +0000
Received: from VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1]) by VI1PR04MB7023.eurprd04.prod.outlook.com
 ([fe80::2c49:44c8:2c02:68b1%5]) with mapi id 15.20.2538.016; Wed, 11 Dec 2019
 14:05:05 +0000
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: Re: [PATCH] ARM: dts: imx6ul-evk: Fix peripheral regulator
Thread-Topic: [PATCH] ARM: dts: imx6ul-evk: Fix peripheral regulator
Thread-Index: AQHVsCBT5ndQAXLLfUGkesRmAFDUKg==
Date: Wed, 11 Dec 2019 14:05:04 +0000
Message-ID: <VI1PR04MB70236F1E6EDA459C66648455EE5A0@VI1PR04MB7023.eurprd04.prod.outlook.com>
References: <ccd182469476d43739ebdb4eedb2497bf72146ea.1576067880.git.leonard.crestez@nxp.com>
 <20191211130347.gsd3loxxdjdvmf73@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=leonard.crestez@nxp.com; 
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 45ddf51e-27ad-49a3-5c3f-08d77e431f6c
x-ms-traffictypediagnostic: VI1PR04MB6223:|VI1PR04MB6223:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR04MB62239EDB37D514965A258B0EEE5A0@VI1PR04MB6223.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 024847EE92
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(39860400002)(136003)(396003)(376002)(189003)(199004)(81156014)(8676002)(86362001)(54906003)(76116006)(53546011)(4326008)(66946007)(9686003)(81166006)(6506007)(33656002)(71200400001)(44832011)(66476007)(64756008)(186003)(66446008)(478600001)(52536014)(6916009)(26005)(66556008)(55016002)(316002)(5660300002)(7696005)(2906002)(91956017)(8936002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB6223;
 H:VI1PR04MB7023.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: M57sRrintTBK6prJH+VhAVqwInsfVZ07NgQhRvAvcJgIvaT6Vd2FOrsHsuB57lUKNA2WcJqYNNs7Xsc/Ke65miseXdNPzfWxkGrBZh1W0fk2q+7ZoOkJzh9mWx67fsnza+VzZPBU/gBI5XDWJ61ge/PGi28pGAi+frlqP7ASKXHxs1lUGfSBbmt4A7ekoP53jZVyTOTIgF7J/qRpKH7/tbPQ1pgR79UFlylkqbLweAm/AO0tRiDpFBPxJkfS/ng179NO/sXGfztybSQJBfJ+cpHsonpjXKs3E+178WakG5dDJSyYY93/MyLeJNBOlWJoYe986+ctGgM8T4L+d1I5lHgggXZHL/rQD6QLU1m/bn31+ULzJvcTyzhMW1wuHvLueVMvyU4mc8iTKqjJ0TWCCrPJPqH3GeT6VmW8NrDuXmgvC6XOPvXtzRkHskUNm4VI35f5Z3NPWmD1a3nWcWqdo7GkrMB5ULOtPx4QbocbwK0vGQijxkCxU2VkYLy7b7wK
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 45ddf51e-27ad-49a3-5c3f-08d77e431f6c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Dec 2019 14:05:04.9765 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zHjBwIqDEKuEYjrjIU8ZBkAT0bsWsKBixbH/8RvJqpZzaZcBYFxkvqJc94wKVbYoFYgB25phXSitvtDLnWnUiA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB6223
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_060508_208147_960D4070 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:60f listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 1.0 FORGED_SPF_HELO        No description available.
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11.12.2019 15:03, Marco Felsch wrote:
> Hi Leonard,
> 
> On 19-12-11 14:41, Leonard Crestez wrote:
>> Many peripherals are affected by gpio5/2, not just sensors. One of those
>> is ethernet phy so network boot is current broken.
>>
>> Fix by renaming reg_sensors and marking it as "always on". Also add a
>> comment asking for careful testing if this is to be made dynamic in the
>> future.
>>
>> The "peri-3v3" naming mirrors imx6sx and schematics.
> 
> Nitpick: You named it "peri_3v3".

Yes. Is there any recommended naming convention for regulator-name? 
Currently there's a chaotic mix of upper/lower case and dashes/underscores.

>> Fixes: 09e2b1048954 ("ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO regulator")
>> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
>> ---
>>   arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 19 +++++++++++++------
>>   1 file changed, 13 insertions(+), 6 deletions(-)
>>
>> diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
>> index e5dafb49ef12..96853f42c050 100644
>> --- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
>> +++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
>> @@ -28,18 +28,23 @@
>>   		regulator-max-microvolt = <3300000>;
>>   		gpio = <&gpio1 9 GPIO_ACTIVE_HIGH>;
>>   		enable-active-high;
>>   	};
>>   
>> -	reg_sensors: regulator-sensors {
>> +	reg_peri_3v3: regulator-peri-3v3 {
>>   		compatible = "regulator-fixed";
>>   		pinctrl-names = "default";
>> -		pinctrl-0 = <&pinctrl_sensors_reg>;
>> -		regulator-name = "sensors-supply";
>> +		pinctrl-0 = <&pinctrl_peri_3v3>;
>> +		regulator-name = "peri_3v3";
>>   		regulator-min-microvolt = <3300000>;
>>   		regulator-max-microvolt = <3300000>;
>>   		gpio = <&gpio5 2 GPIO_ACTIVE_LOW>;
>> +		/*
>> +		 * If you want to want to make this dynamic please
>> +		 * check schematics and test all affected peripherals
>> +		 */
> 
> Should we list the peripherals here so it is easire to find them?

My expectation is that people who adjust dts regulators will search 
through schematics pdf, the line is called "VPERI_3V3".

--
Regards,
Leonard

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
