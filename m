Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CEDBF6F42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 08:55:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c86E2dDNUQm8DHKOmWojLqbUnOqFzCJFOsn6ZTM3OM8=; b=NQvvjUg9CvneW5
	PBzdKQ/PEQdLcd4e/hfabQK39vIqiLpfMEtmg5gi2V0AekByvFKYCDkZa35ZDIwHIrqb9cIQp1S0J
	cYoPOxp1wHmYmU+ULL4i5tDYoowx0iC4RZKEd1piSpqP91mnSxUhxifdkFIVzep502HZMH1QWBYAB
	8+LRz2N4R5a8oy1HeHEfXTA+Pznp0Lz7m8V7T9w0q+1yJ8x4C24dY/2b3FoNhD4CZ0XwKZkajPYyH
	MVq/lhwUbTIF7Zm3qTTZYOa1gRLbUkgPfsisAYjO+HNxNLfhX7SCKVynAn/etghFXL876MWH41S7E
	MBcU6E/9jeBSmX/y47Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iU4XQ-00085w-IT; Mon, 11 Nov 2019 07:55:04 +0000
Received: from mail-eopbgr20068.outbound.protection.outlook.com ([40.107.2.68]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iU4XB-00085S-0B
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 07:54:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mANoakNXYnhzeIkh14cErE2NjZE5zv4a9MbRNc1Sfe85dyEd60rFutps4lrlYvRNulO6qPrhR7Ei+7zZGmfc1oFxicLiS4KCFeSWlBJk99KF5zDVRhNmjkII31nCP4lsbycgmr3cZ7dy3bqLXUVBnHUKcG1vK2fSssa1G9K998uCSnJUHLQAkjXnO6fWGF6OBBAevn8N3EqgNySC8H6f8Rp0BZjZUX9h5CtxBoLPB7Jb5EnaesIRXQnCzN8AAcqE47q08i8HtacUsvpHHsUUpMQddozGdU6giAX6TIOMiOkQkqVP4SHTM5KG7D5Q6t26oLwcmgoRGtyctlPynxQ5iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CvbbnzIryOVVl80iIfs8Ei12JSMdoYhPRXKeWzn0DPY=;
 b=NuTJASCnvFwWqsPzzNAZ5jrcYwYBQhydVSzHw75Krbtd5xTA3cZEc7wGOP7iQqJzQCtCbdSquRoqSzi3knejRJ5WKtSjgpThbbIdvt7Tb06n32zyfJzy9K5MjRx8KilMpFN3s5yLBxoZKEQCRbsrXqXVGXBk7ovwl/ijdq69bttxuOTsb7DyFR3KCoyYaF6eSTGtjdmxxy/Mh74N7BMO6bpaeByRJ0sQGcMrIXVz6jw3BAF+O08xopsvXLSvItEIRYhLRVLuvgIXbyxLxzykNFXYRkcMPgaoU6uxXFPQ1WzkbyIj5V4qcQ2wfIZQkVaGLIclhXJv2wHye0fCKyXlCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CvbbnzIryOVVl80iIfs8Ei12JSMdoYhPRXKeWzn0DPY=;
 b=W6mXA4S5ZIt+1KilR30CLXWKqGc1FibgQtb6/p5soBP06r9wNUd/RgkQthns2ZfDvhN+UR591m0BLMBVqsNXND5fn9DvQ3M+KdA6rhWzCXOLg0KPKx5FMF/9dtEXHaW1hHBLd2NZlZqXQFwKz8NZcftE8qDO/ly+AYTcDhcdWe8=
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com (20.178.202.151) by
 AM0PR04MB4915.eurprd04.prod.outlook.com (20.176.215.212) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Mon, 11 Nov 2019 07:54:43 +0000
Received: from AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde]) by AM0PR04MB5779.eurprd04.prod.outlook.com
 ([fe80::fd44:1b14:587c:9fde%7]) with mapi id 15.20.2430.023; Mon, 11 Nov 2019
 07:54:43 +0000
From: Abel Vesa <abel.vesa@nxp.com>
To: Martin Kepplinger <martink@posteo.de>
Subject: Re: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Topic: [RFC 0/2] Add workaround for core wake-up on IPI for i.MX8MQ
Thread-Index: AQHVH4Y/3naZJOmQTkOgrNdQmlNuA6eCDj6AgAAIBACAACkeAIAETB+A
Date: Mon, 11 Nov 2019 07:54:42 +0000
Message-ID: <20191111075441.usbd62w45vxnwcj4@fsr-ub1664-175>
References: <d217a9d2-fc60-e057-6775-116542e39e8d@posteo.de>
 <7d3a868a-768c-3cb1-c6d8-bf5fcd1ddd1c@posteo.de>
 <20191030080727.7pcvhd4466dproy4@fsr-ub1664-175>
 <523f92bd-7e89-b48a-afd0-0a9a8bca8344@posteo.de>
 <20191104103525.qjkxh2zhhgaaectk@fsr-ub1664-175>
 <433f3f03-f780-c327-f1e8-fbf046a8374c@posteo.de>
 <VI1PR04MB70231EA80BB20C9A84B1B799EE790@VI1PR04MB7023.eurprd04.prod.outlook.com>
 <c3519156-9769-980b-d9e7-af372ced8797@posteo.de>
 <20191108115002.cqzvpxydzwos64vp@fsr-ub1664-175>
 <26d3834d-6fba-be48-5b3c-5abf86d121a7@posteo.de>
In-Reply-To: <26d3834d-6fba-be48-5b3c-5abf86d121a7@posteo.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR0102CA0015.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:14::28) To AM0PR04MB5779.eurprd04.prod.outlook.com
 (2603:10a6:208:131::23)
x-originating-ip: [89.37.124.34]
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=abel.vesa@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 3bf65f17-5e22-4542-ab74-08d7667c695c
x-ms-traffictypediagnostic: AM0PR04MB4915:|AM0PR04MB4915:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB491592FFE9EA7310769BEAA5F6740@AM0PR04MB4915.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0218A015FA
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(7916004)(396003)(376002)(346002)(39860400002)(366004)(136003)(189003)(199004)(51914003)(6486002)(229853002)(9686003)(478600001)(1076003)(33716001)(966005)(14454004)(6436002)(8676002)(316002)(6512007)(14444005)(256004)(45080400002)(81156014)(81166006)(6306002)(3846002)(6116002)(44832011)(54906003)(86362001)(6246003)(8936002)(186003)(7736002)(53546011)(7416002)(4326008)(26005)(476003)(6916009)(486006)(99286004)(66556008)(64756008)(66446008)(2906002)(66476007)(71190400001)(71200400001)(102836004)(76176011)(25786009)(66066001)(386003)(6506007)(66946007)(5660300002)(11346002)(52116002)(305945005)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4915;
 H:AM0PR04MB5779.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sIamg94k+hsDMYsTke51ZCjGgQRHKX4xnAi/WYpCAzFexa1b2f7oft3Jn5MDINVAG4HjDgHc7gntRFjp9J7xUQuuW3tTd4n2UMY0SurVhn0YOx85VDxDoQ2HTPLMWrpOm1bDbcq3A7O9sN9+cyr+V77em87bOeVDgvoZLWEM76rIgEO8/5y8xA2p/sLM9dBu8Ei2O5xvqc6eVzEuLhRHRfc+Gry4ciCfNMMlh+p9dO0w3obMNtYQM0cF0WgS0hVma/rDcNyqcDrQRt/Ky6VOuWq17jwPdjf6UzzoMGzwMXuN0HAIG1pSTf7PRAa+nrZPY+viOW4vnSC5Oe0qMOy5Ohw3rD2ubw9DfYCpALAGQrGE+cOEHNj+Xi6Z7mdbu0GEAHJRDy1y8oy+blBfwPG8erqHGktlPbobomvlegi/W16QnpJ98H22m00P6r4XeQEZ6wxsWyWwTMK5Q1RMYTGgNqHGNCS+QZW9jWj4H3HAFM4=
Content-ID: <F43DEB12F722184E9DC093EBCA2D3D1D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3bf65f17-5e22-4542-ab74-08d7667c695c
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Nov 2019 07:54:43.2969 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rUi6IY7vbePC1I3FB68Jzv2P+B4kCyH67K9sNreDmuZO0ehn+1CjYbfuFaZ3MOool6wbDri4gC4pTaTnDoIjtA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4915
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_235449_123980_0741266A 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.68 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, Jacky Bai <ping.bai@nxp.com>,
 Carlo Caione <ccaione@baylibre.com>, Marc Zyngier <marc.zyngier@arm.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Thomas Gleixner <tglx@linutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 19-11-08 15:17:12, Martin Kepplinger wrote:
> On 08.11.19 12:50, Abel Vesa wrote:
> > On 19-11-08 12:21:21, Martin Kepplinger wrote:
> > 
> >> Hi Leonard, hi Abel,
> >>
> >> Thanks for having a look! To sum up this problem and not to get confused:
> >>
> >> We have the workaround that changes irq-imx-gpcv2 from this very email
> >> thread, to be used with mainline ATF. when applying Abel's recent diff,
> >> Linux 5.4 boots but I still don't have a cpuidle driver.
> >>
> >> When I enable CONFIG_ARM_PSCI_CPUIDLE, the kernel hangs during boot
> >> (after probing mmc, but that doesn't tell much)
> >>
> >> What do I miss?
> >>
> > 
> > OK, please fetch the branches called "imx8mq-err11171" from both following github repos and give it a try:
> > 
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fabelvesa%2Flinux.git&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C663191bd4af6489d08f808d764565ca2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637088194388256459&amp;sdata=HydsZLtPExbRx7qDByTI%2FCYFGYS67fU9FDsLmHy7x7o%3D&amp;reserved=0
> > 
> > and
> > 
> > https://eur01.safelinks.protection.outlook.com/?url=https%3A%2F%2Fgithub.com%2Fabelvesa%2Farm-trusted-firmware.git&amp;data=02%7C01%7Cabel.vesa%40nxp.com%7C663191bd4af6489d08f808d764565ca2%7C686ea1d3bc2b4c6fa92cd99c5c301635%7C0%7C0%7C637088194388256459&amp;sdata=zkCpOrEvoiNGj7BBuVuHzTWmBFaZk0SCuePOKZA3T2o%3D&amp;reserved=0
> > 
> > I just tested it. Works with defconfig.
> > 
> 
> thanks for the reminder. I was missing IMX_SCU_PD appearently.
> 

There is no SCU on 8MQ so I don't think that was the problem.

Maybe something else.

> thanks for the effort, I hope this is useful for others too.

I'll try to keep those up-to-date.

> 
>                          martin
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
