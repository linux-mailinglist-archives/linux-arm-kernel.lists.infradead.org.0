Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FFD1FC81B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 10:00:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgZO73lRvCZj/MRNZfYIsCAplvof22Et4z7sqXiyPD4=; b=gqZmF64tCFJ6Ul
	dgL5wFSpBBbI1hA14kT8Tbd6muxrGC85dE8pjlGYgchofRwahdxMQrTcV4HMOsLv0PROnBy5KK3M5
	uawvmQ+SopvmAszw8vdxCsThhV9pvHNaR7rjgvKVFeIZFGu8IyjAn+o8oYUJo1ZvsVCJAtkqKnHCJ
	OGhlS+yD+J//m1EBri5GK4ErP/qZBgWAcnuq0ZggR8rM4QzxbtO8BWnrELQHbN85KFUxjjhHrNymV
	HKvXea0orxa5ComMO4vPNa2WVsJl481JR9NWivdyYPPbQwAAFZj8HHT+jtvqyaULXcTTiavLXsLyJ
	CbEE+zAzGtCZ9FaaZW8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlT03-0001Qi-9g; Wed, 17 Jun 2020 08:00:47 +0000
Received: from mail-eopbgr150089.outbound.protection.outlook.com
 ([40.107.15.89] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlSzu-0001Q2-0K
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 08:00:39 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HM9M1e7TS0xgZ2rweoxVZ/wcJcptPk7wRyBGseKbQlLWH4KuepdqKDLSY1glfEsMktf0f4JBMXakTcOw197n3stvf6G/noYQ0c1GkK7EMIhautnSfZQBbcqJZuw2Zob3YnqBwQ+AZJyy3p/VE4qwW33rqvQhj/bh0R5ivbIGm6aTewMhSNfT82irpGifpWgiQzaVKEzJYnLvU701jCSqwzfsF532Bcnnb5NZVoUdJjkKuKZdKqEMkheIqBcUWKrZWcbTkvipfw0YdEz1G6NEJ06tZW3kpHD8huOgRXbaysWqvV5RcfN1Sj2LA+ANLRohhF6R50KIMQcDqz98daxrEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQcOuL8qsaE7bT+7mjSkUEGgWbiIqyU1hEOyR45OKUY=;
 b=dmZ3A8kUNjpzMwz9t4eL2GycLck011CkSJBLJ4WQYJCbaLT8HdqhP+tWNqtZE2NN/mSFisvpmYnCntJwAr+4OYdNG2g8so9Ha0xPd/O1q9JcvKdIR0yI6FW5OwRmV8Bcuj3NMu9ObW4zKYyLmwIP+gzHpPv+leGv29QRBDNUXby95aEbn2557dIq5kYXUzm5/L062HtwXRAjhVCcggjIJir6vFdDQxcngJdSBAjyo51XYHGupGFORCQv0Mve9sKfFLwoIyWF2VIp72ZdILvH35aSSfl6lsWpXPNf5qZ8U3kn1HpRJEkSR/MacRgwumxx7KGMapBIHTMjpXWCRMEKhw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=UQcOuL8qsaE7bT+7mjSkUEGgWbiIqyU1hEOyR45OKUY=;
 b=P/U43JXOzyoRpWllmOOwV8J4CSAN/Jdu3Y85D+t5FF0y055ss693oyXonPE3gFOPS5IKZxoPYLKN6Yr2Q1ugbgDfH4JGME+j4rM+dowpB0VjTFqA1d8lAKOT9llzwJ1OcpiP/iGL3NeL5RbeO7hhx0loq40qwv1nyametz3I54w=
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 (2603:10a6:209:1c::10) by AM6PR0402MB3445.eurprd04.prod.outlook.com
 (2603:10a6:209:7::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.18; Wed, 17 Jun
 2020 08:00:33 +0000
Received: from AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::8df1:e619:369e:404f]) by AM6PR0402MB3911.eurprd04.prod.outlook.com
 ([fe80::8df1:e619:369e:404f%4]) with mapi id 15.20.3088.029; Wed, 17 Jun 2020
 08:00:33 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>, "arnd@arndb.de"
 <arnd@arndb.de>, Leonard Crestez <leonard.crestez@nxp.com>, "krzk@kernel.org"
 <krzk@kernel.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] soc: imx-scu: Support module build
Thread-Topic: [PATCH] soc: imx-scu: Support module build
Thread-Index: AQHWRGTWiz8NXUZ+xUGFBcoJjUMmmqjccS8AgAAAf6A=
Date: Wed, 17 Jun 2020 08:00:33 +0000
Message-ID: <AM6PR0402MB3911B852B49E194E5FE84505F59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
References: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49667E1B41DC2A77B3E2FEBF809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49667E1B41DC2A77B3E2FEBF809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 4b403f5c-f594-4454-f6bf-08d812948335
x-ms-traffictypediagnostic: AM6PR0402MB3445:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR0402MB3445474BC15B23F87E77C155F59A0@AM6PR0402MB3445.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2449;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 31z1a1EPb6pd8LY0MvxWWW7qJfPfMgY5hKD/LQdNIIM7XmpH9H3VxCPm/Qr8YutmMjSxmu6D9FCqQTvjieSb7LxLJpL9L+CGvSrh8ExOuXqKYkC6tz77LkqvjFrdbxOqJMOCShrfPy1u3NV8KHSlu25xmQuEThCabakyfokz/lsPoXYfK8/j4Nk0lGh5z7i+UtKWr7evdvxslbhfQrw+P6X0mUKRrHbtuj9sAh/a5yZJbi3o9a0ZsSH2gOY9e5JZ8peNKxBPeMon/8K0m6/GkO4aLb07ZSPJCm4g/txprQYWybhwnyu7JkUm8bXgxWraLXiwyLvM+TsFSXDesfdaaRdjnTaG7RHDfabWCuWQ4QrRgHaTLoubZi1pPrHjG6b3
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR0402MB3911.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(376002)(346002)(136003)(396003)(71200400001)(8676002)(83380400001)(478600001)(5660300002)(110136005)(8936002)(52536014)(33656002)(4326008)(6506007)(316002)(2906002)(66476007)(26005)(66946007)(66556008)(76116006)(66446008)(64756008)(7696005)(86362001)(44832011)(55016002)(186003)(9686003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Krr62mC3yiToXl9u4CRQTOT+qQXMHelP7bG/m+QCpkEzO+6RIQLWvYoPPsJCdjAaWXAva4ldCKimS9oMMQMqIWL7NT8SQKqirB65dKVd2DhC7TY9kYlEdioZpuBtIASR5oX+rRFFcUO6awM/T6RQXeyMXXoF1AaaTiM4fJdhqg3y7IbHFAn69g0HRjiz85y5HKuMHTsKHOmO/JoQzDDLJ2upkUwU+DEsyMwmOmSbxoTKRU4/1cjxt+WwUOYJp0JK5Js7EDvxN3dZX3Gt9nI06DCBtJSM7oyibxXX/0qDlHbBvNe2P7QAzFAnmN+YL6THvwXKG3R1ghJUy16mtU2m8HwsK0O4U3eeCLYv8y5d89WU6YYZmo8kqq5kgxoHLs+NC2cOBWzozqilBUKeLmvSsWqt7zDVGMmM+gH94QK+kRdJR9+Gh4VXERo9n33PhXnHeOTdIDJ1k6Go5zZrSPCbgchwIE8cKcTb5c9yvvpak0A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4b403f5c-f594-4454-f6bf-08d812948335
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 08:00:33.7327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fhOXXckcFUCvy4hQVIbyIimEqDIM5UHTIxMFwfjWG9dGaHISJAWxCUJgeF7ya4wVLPg1ow+wzLoR4vFwyxTmEw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR0402MB3445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_010038_047672_F050A824 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.15.89 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.15.89 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: RE: [PATCH] soc: imx-scu: Support module build
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Wednesday, June 17, 2020 12:54 PM
> >
> > Change the configuration type to tristate, add module description,
> > author and license to support module build.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> >  drivers/soc/imx/Kconfig       | 2 +-
> >  drivers/soc/imx/soc-imx-scu.c | 5 +++++
> >  2 files changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> > d515d2c..c255acb 100644
> > --- a/drivers/soc/imx/Kconfig
> > +++ b/drivers/soc/imx/Kconfig
> > @@ -9,7 +9,7 @@ config IMX_GPCV2_PM_DOMAINS
> >  	default y if SOC_IMX7D
> >
> >  config IMX_SCU_SOC
> > -	bool "i.MX System Controller Unit SoC info support"
> > +	tristate "i.MX System Controller Unit SoC info support"
> >  	depends on IMX_SCU
> >  	select SOC_BUS
> >  	help
> > diff --git a/drivers/soc/imx/soc-imx-scu.c
> > b/drivers/soc/imx/soc-imx-scu.c index 20d37ea..bdd43ed 100644
> > --- a/drivers/soc/imx/soc-imx-scu.c
> > +++ b/drivers/soc/imx/soc-imx-scu.c
> > @@ -5,6 +5,7 @@
> >
> >  #include <dt-bindings/firmware/imx/rsrc.h>  #include
> > <linux/firmware/imx/sci.h>
> > +#include <linux/module.h>
> >  #include <linux/slab.h>
> >  #include <linux/sys_soc.h>
> >  #include <linux/platform_device.h>
> > @@ -185,3 +186,7 @@ static int __init imx_scu_soc_init(void)
> >  	return PTR_ERR_OR_ZERO(pdev);
> >  }
> >  device_initcall(imx_scu_soc_init);
> > +
> > +MODULE_AUTHOR("Anson Huang <anson.huang@nxp.com>");
> > +MODULE_DESCRIPTION("NXP i.MX SCU SoC driver");
> MODULE_LICENSE("GPL
> > +v2");
> 
> I'm ok with the change. But I'm curious how can this module be autoloaded
> without MODULE_DEVICE_TABLE.
> Have you tested if it can work?
> 

I ONLY tested the manual insmod, if want to support auto load, may need some more
change, will try it later and send out a V2 if needed.

Anson

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
