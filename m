Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FBB41FCD82
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:36:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TIV8nSX/EYR6kzS440V4IH0CoEBCxD8XBpmX0kU7KIU=; b=Uu4W+ZCB+2sNuK
	KYyWqmyeApTAvs3zIy8PSH0pG/4zkixj2sStaBoR3wTKSCFNjTxq0GuNm2oockvDNlVVyPjjIvQvd
	s3kDJFCRC7rC48MArS6O0R+mAcYwuHwRTLsLROq87NR2SxrUQat6A1qZgr0tOq7xYPH7WTyrybIsk
	+VZPe7QN7DY6hwKKVExjKNI1B8amUWnQbuS+tA7fvz3Nd6MZ5Bzrx6Nyifh3/wvm5HzSQG+XvsJjk
	CrMP54g8+hbr3TwMePTAfcJib5gSrLdfGrPEf6lquoWnmmTOBaOFg1PFRlgfy5AK7mkhcrnfHZ5qe
	NRDUERLAg7xp/wcBLyrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlXIz-0006Q1-0g; Wed, 17 Jun 2020 12:36:37 +0000
Received: from mail-eopbgr60049.outbound.protection.outlook.com ([40.107.6.49]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlXIo-0006PJ-7r
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 12:36:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d4Em+dFIlZ8AQ0/Z8agCyxrTIWN9tze3uF8zIPHkvhj9BPnwpj9sfZZ8C9X60+vMQc6qNl4kAmGiM8eQrCIO31Xedf6+M9SDADmNVaCqS4P8aX6L+PVNIlkHW+X6kUu/rmIA2wdD90WP3sJpumTvByCbGh3ZMQExrD2p4KCXasXwoIGwq8+kuheymT7yS68Em70rxLsT73jC7gY16MTldu/LQpQKVRLCUjjw9L0o22tEbYXI/K92pWewoAX461gBVKdMEtfZ6CDcY9p7M7kbHhvf8gSyv8CllJdtiHeis9zhM1vJLomqkpH6/oG1N3PKBsepMyproTRr4f2OWICNIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0+sUt8tKWYWO2FFFau4ww39BKchkOB152/TJQzVqBUA=;
 b=c2TTPMb/VDcy6aNb4sUDLwzhPOQ4BFw94xg96bXNveD+AYvJzyP6kCC1Ym7MIta0KbZAL0aAI0poWCJ+N7RVxbi0GikG7Nw4OSixLPiO80o4NucaDFdD3xOLqOpvxLuwBpMdjWJqzt5Tqivv8BwfLNQmkJjdlwXjrrXKcHYTiA5KZ1GugczBkVBcTZnuZMnsJh0UeRnmfyM3SGS8wjX/tuiFJKH7xpAvEH4rV9rWiQdvO7s/uULtqBxeke8TFbZ3uF7RZ/37Oof+J0HVpJR1Jkx4MjuV0ScqvfJcKg0r84sDNTpMiQbUdyyfqhI+svgesVqf+Yza1SIq3y5/U6WAgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0+sUt8tKWYWO2FFFau4ww39BKchkOB152/TJQzVqBUA=;
 b=J578COvgig6Sk/jmgiBpKsGVtJRV/Lb+q0l6QSs8xP05hIG2x09yZmoIn1YcKVGq3E/jKLZabk/qVf/VXblVoNR0kP6uem5OBgvWmJAF8h/vzz1XZIj0VKyxq83jeWJrjNK5PkZxmtlOJuDYRyom9JlxtpsC6lkQqFMykaZ5L2g=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3818.eurprd04.prod.outlook.com (2603:10a6:8:e::29) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Wed, 17 Jun
 2020 12:36:22 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3109.021; Wed, 17 Jun 2020
 12:36:22 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "linux@armlinux.org.uk"
 <linux@armlinux.org.uk>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "sboyd@kernel.org"
 <sboyd@kernel.org>, "oleksandr.suvorov@toradex.com"
 <oleksandr.suvorov@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 "arnd@arndb.de" <arnd@arndb.de>, Abel Vesa <abel.vesa@nxp.com>, Peng Fan
 <peng.fan@nxp.com>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "allison@lohutok.net" <allison@lohutok.net>, "gregkh@linuxfoundation.org"
 <gregkh@linuxfoundation.org>, "info@metux.net" <info@metux.net>, Leonard
 Crestez <leonard.crestez@nxp.com>, Andy Duan <fugang.duan@nxp.com>, Daniel
 Baluta <daniel.baluta@nxp.com>, "yuehaibing@huawei.com"
 <yuehaibing@huawei.com>, "sfr@canb.auug.org.au" <sfr@canb.auug.org.au>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Topic: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
Thread-Index: AQHWPjGj2zNwfnTiD0imGsOupBSBz6jcqXKAgAAhTUA=
Date: Wed, 17 Jun 2020 12:36:22 +0000
Message-ID: <DB3PR0402MB39160682846B99E0A3762AF1F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-3-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966F4A5E0276AEDB5605260809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966F4A5E0276AEDB5605260809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fac64e68-f590-4969-8818-08d812bb0b21
x-ms-traffictypediagnostic: DB3PR0402MB3818:
x-ld-processed: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3818B651762299D651A187DAF59A0@DB3PR0402MB3818.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 04371797A5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bfij161nQ9qgC1jABe4PGCKsn2TWVtJl+olCXprOjQGI6LM3OTGUqgXZb8gVENruav2yzTnXOBm6HtlQ2XMc1QXJ9u4MnlNKXm5fW57WYWCbR+6B1jJWsaNQsGYs+IanoT0bKezIrYyxCSgpeuMwHZUXiakhdClou3QyEXZvTeGUh5D4rnzByfwC7r2es2tfOZeaUzZyvrJKe3wRACP85ScPAC9ankgOMay1u459DU4M4OEdvY0NQ9Dfr6t7osOLNeqMblus2YiJA9b/qyjUS1NDVzmTwtWpn6T56yg+FhbedFEta72lG+xIrY7PWoN1xJmmtryjF8nvq+XXP8a0vIClTxalY3Y6BvieF43Z1SS0V30cSHglA5r1CT4s7cjCwi3igScRlpkA2cl8dSWC5Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(136003)(39860400002)(396003)(366004)(346002)(186003)(8936002)(5660300002)(86362001)(4744005)(2906002)(71200400001)(52536014)(6506007)(26005)(33656002)(83380400001)(8676002)(4326008)(7416002)(7696005)(316002)(478600001)(9686003)(44832011)(66476007)(66556008)(66946007)(76116006)(64756008)(66446008)(110136005)(55016002)(21314003)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: M1F/27Yr7LHBUs8u2QHQ0UyQ4E3dJ3XxvQavO5QFhpIesmjb5qqPsg8yA1a5wTIQDqjVsaJ/AXEfnnZ3PMVzgfBkCzmig1exthPU0HrLoADDnT2cRlCbfPYQSB0QAPDtS5RC67twRczVq3jcOa1q/nGAicwfZOkbUHWJqqnJWtnWI8XNFSypUnKPj71/p4ha29463LOy4dMioQlK1yvejuTEK2tDlEXmRN5WDR2GcWrBdZkWGL6PJU0umuY3dN1C3/as1XCuXCH8ncYJXev0I7duxG3pBXpYDJziTLX3/xpYqLJF7ReE6UY5Be+o5VRNP23Irz/p1Wo+WbPrQeirzjNzdVOjLl+f/QeKXovFpENfin5it2LZrGenBMtBgaa/IyDx14jwoR5PotKQfKqPbG2RAREOrkmlLufSUoOpoHyFUj4eRJrYpGiJdR79IQzrfb3M4+UQn9dAxVhWfb2phuf8LZj1MrvP/NMyWHr55jlZO5N2AbZii+dwDLzM/MxJ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fac64e68-f590-4969-8818-08d812bb0b21
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jun 2020 12:36:22.6227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QfMYLYH+ZFNJglbtX4cqkXPAeFSwr/JU3BL1A+S3ffUcVOXHiQORb2abGPyB4ckXb2SYh51vTsvVvCwqzkaBHw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3818
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_053626_282457_E616F7A9 
X-CRM114-Status: GOOD (  10.05  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.6.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.6.49 listed in wl.mailspike.net]
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



> Subject: RE: [PATCH V2 2/9] ARM: imx: Select MXC_CLK for ARCH_MXC
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Tuesday, June 9, 2020 3:32 PM
> >
> > i.MX common clock drivers may support module build, so it is NOT
> > selected by default, for ARCH_MXC ARMv7 platforms, need to select it
> > manually to make build pass.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> Can't the original def_xxx work?
> 
> config MXC_CLK
>         tristate
>         def_tristate ARCH_MXC

Such change will make MXC_CLK=y even all i.MX8 SoCs clock drivers are selected as module,
so it does NOT meet the requirement of module support. Below is from .config when all
i.MX8 SoCs clock drivers are configured to module.

 CONFIG_MXC_CLK=y
 CONFIG_MXC_CLK_SCU=m
 CONFIG_CLK_IMX8MM=m
 CONFIG_CLK_IMX8MN=m
 CONFIG_CLK_IMX8MP=m
 CONFIG_CLK_IMX8MQ=m
 CONFIG_CLK_IMX8QXP=m

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
