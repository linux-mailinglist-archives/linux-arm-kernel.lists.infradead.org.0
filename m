Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16AF895706
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 07:57:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wyMEzM7clpZnveGsfcii32AQE+0mQpWN8ajWPtgAJ4w=; b=u11OwDGWDNkVtZ
	L+Qt3AkCV8u3E7h3q9Pc3Z7w2k0LBq33kWf6YUK2SPP956rNNF/NqQLuIfqDg5RvFyGbZJ41Vd9Sa
	Y7/K+ZPZQC+hzRRIqubXN2B/penzbQkfJ9rTkGdlMAsDaJPyBOz+Hipkwnaw478jilT3ku4ZtPwK0
	00SdqEDOViCOtj0VGsxkxWL5bkousWBBeFwbS5ayU9LLnC8suICBdhTqJ5pCJMU66/zxoDADKZmDm
	vt3Gr71IqVOQJySXs+brzAEW0dmS/HJyye9rfMXU2URdeeXnTP4N2Xu7BBnhS6UUeIQF7GFA+mM03
	M/z5ctVoQ9HR5ZhDySig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzx8g-0007g0-BR; Tue, 20 Aug 2019 05:57:02 +0000
Received: from mail-eopbgr150042.outbound.protection.outlook.com
 ([40.107.15.42] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzx8R-0007eB-Ny
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 05:56:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aUwEY7tb/RbfNk6/646no1pIpFlTmY1u67I08zdfjBziu4qmZaEnLGEmEDcKNu82HBoItOUk9A3biVREE4efsYEHSiTfCAd0ICvSUj2oOzz7AVquw3F5XUT3DDPMqISC+sZZ768g7ZkmFvJm7uwunob8ynuwKegJHRTpWE//sC58Hpyu2wJsuPdGL828IKjVIbUAihjXyzqE1SHbE2iHWHlYxwhvaWJeKHqT6Sw6KzhCyLvOldhXkp+uLGwxJgdC8lABvgdyv/Be3vDAPnmwJ8BIXs3jQYOFIOuSH5amyksU8B/OcCaxlHvlv/T1tflQ89U8tVeCG+A9Q2xcZjUa2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vuTTLkQWm+BW7NTa3WJWdm9fMGHe5C2RQzAhXSUjuJ8=;
 b=fNrOXGYcrI4pgGhV01aREIEs8YDmkwYhHlmNmPZ7zWyK9YmGvp5e9xIFvQT/ybhbhzbyuvmBEjohiw9GZ63lBwDPmc4ugD9M+1gBsOhmU2SRSxQ0noMfB1SLa0U3ybXvZcuExF9FGV/ZM+9LTBqYdbxTELx3/TwNiA7lqlFeVRyF9oeVs1I154AntjE/ToDrPhTD0AscADAFIR3IMKPUbB9XSmBqb5tJQFgRo9CPoySmw2EREVWIqfcoa/lzPRThv2L+yd5OvqukmddDiwL25gDIHqb3a963+eYvTv8ziHnBAtU2HLmcUeMK1xJIShVWkYRRVKDpg54Bo/rd8Lyb5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vuTTLkQWm+BW7NTa3WJWdm9fMGHe5C2RQzAhXSUjuJ8=;
 b=J+7GVeLEkhNWktV0vcP3JgTV52mmFQx08xZdvI1IwAWHerAvauhBuEfe/FazDRExHyPVcIpf7ditKLBvoWzy4VTzohrlG0n+fNPcDyNL3k9ctSv2ozIrtCFrF6VQAug3rSEi74iQh58CVml0bZU4g4CfSpt4dZ74smftfRn8K5M=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3836.eurprd04.prod.outlook.com (52.134.71.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Tue, 20 Aug 2019 05:56:40 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2178.018; Tue, 20 Aug 2019
 05:56:40 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] pwm: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Topic: [PATCH] pwm: mxs: use devm_platform_ioremap_resource() to
 simplify code
Thread-Index: AQHVPQnp3vOphZGlaUm/vNIIqkC+RKbPuYMAgDQEZAA=
Date: Tue, 20 Aug 2019 05:56:40 +0000
Message-ID: <DB3PR0402MB3916423A6E334EDD4C06B884F5AB0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190718013205.24919-1-Anson.Huang@nxp.com>
 <AM0PR04MB42116F0753C9C6A619A2D8EC80C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB42116F0753C9C6A619A2D8EC80C80@AM0PR04MB4211.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24ae674c-b55e-436e-6ef9-08d725332c18
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3836; 
x-ms-traffictypediagnostic: DB3PR0402MB3836:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB383666A63D8A14708B5B761BF5AB0@DB3PR0402MB3836.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:446;
x-forefront-prvs: 013568035E
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(366004)(346002)(39860400002)(136003)(199004)(189003)(52536014)(44832011)(229853002)(9686003)(486006)(26005)(446003)(25786009)(11346002)(305945005)(55016002)(186003)(33656002)(74316002)(6436002)(7736002)(86362001)(256004)(2201001)(6116002)(3846002)(53936002)(478600001)(4744005)(476003)(76176011)(316002)(110136005)(81156014)(99286004)(8676002)(81166006)(71190400001)(71200400001)(2906002)(102836004)(4326008)(8936002)(66446008)(14454004)(66946007)(66476007)(66556008)(64756008)(76116006)(66066001)(5660300002)(2501003)(6246003)(6506007)(7696005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3836;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: sFRvB4KPU/Zzbs2AAX+CsemkWtHdhjjSk6rtYcDawN9H/YabBwHqDbl36vjMFzYoVVNPvZnA7nBz6Wk/l2GAhaqYpBd/WpGI61p3dSSqNQvzg4/FAzvyV7FvjSyc10tL+mcILxRBiyOy2GpayeyA5jXMqp9lM2MsXCrr+PR+bvN0UTrNwA24az3TQLbxkrzCjQbbdsUAgIrr/yog6XYzRRXWyjIwV+eAyfL00HxwEPRcNHumMnyWbMTKlvB2PoFXD5o4iWZAQZD0lJqbu7ioJzxMsQJ8YdI8xG41TTS+8+JqU4V7kl1tUXMr7P6dxC9Ugg8Foe/vuMnPGaFdJWFOur4j1o5hd4ZfMFl8BEwbuDjWcshI3wdzBVf1ESIQ7ms3QRE9YF3LoTNwMxxWr9AxqI3xfhnvLxwzTodD/+imEbo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24ae674c-b55e-436e-6ef9-08d725332c18
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Aug 2019 05:56:40.8353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JIKu1LigEsV1VdNxZ+ULPEQ+th0/u2zVolUQKhKFEc0SggLA7WqoGtFUF2RGVWeh6j74kORaBrHONXD+4SYNlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3836
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_225647_865375_3CC224B8 
X-CRM114-Status: UNSURE (   8.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gentle ping...

> > From: Anson.Huang@nxp.com <Anson.Huang@nxp.com>
> > Sent: Thursday, July 18, 2019 9:32 AM
> >
> > Use the new helper devm_platform_ioremap_resource() which wraps the
> > platform_get_resource() and devm_ioremap_resource() together, to
> > simplify the code.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> 
> Regards
> Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
