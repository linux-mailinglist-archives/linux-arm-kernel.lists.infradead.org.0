Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60F1B1F501A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 10:13:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pxAzk1IFvCVLxr7Llh0kX05v0ktbGjS/xnvGWILuSdE=; b=ZCUBEx+c7e2/vb
	yM/w/Smkh3apxxHVCaBluu3jVqdiU7PDZYpeI1/vqQbinSpyzrBLCWXsJlgcf/xXYBsS+zcGFyTK7
	znYzAyoWdQpc3E+U+/sJwKMhqP7epiDHyHdseY81dQk15A7Z6OFjW1dugyHByUBBTtPGPKPzkrD1i
	7ld0gQ6HBMPUl1/hxd0ycwH5kF3E4itpgTngQUZ6lW9GJyiGDtDMSrwKxR5s2cvm6SfJGyzDDpQo0
	R3m7WBWyWe34XosOLxY/IuQj+2fCyU2r4pU0b5OAKk3PjTgXES0UwZETDVhywFcshbpaBdU5l6i6A
	wLbXVkk91xcjjrAadRvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivr5-0006xf-Ts; Wed, 10 Jun 2020 08:13:03 +0000
Received: from mail-eopbgr140087.outbound.protection.outlook.com
 ([40.107.14.87] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivqy-0006xC-8l
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 08:12:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PPfHUxEB5ULrYVlhmNR5Q+FtV880MsX5cGGQTqzjjOV6g6+onOqDgvNhSmIwxHdJeiulWM67IwWqfoBBczDP+WdtDkz3deu2Kn/MV5sGptwt6KRQAp0jT8oXSlku4Ytuqvb1sGBvLihedTIzeN7ZP3i/AmKHpworcug0kFoFtMYnYxhWJ4IhAJ2LK8/iCCmfQE2k3Ak2/AUrwncHwg2kQOiQ4xj0WdSSdB2QX+0WmUl28V+FfnOHJfmMRu6n2XW3eHg/9fjjA29kP5eC3AKaMBHBqMTkkL+y51b0KSnNT6zSKkxtsHz6Xezwp//4P89FZobvb8+S6ECTUk3czLch5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1JDwI2mnztvedZd/2SMmY6+rtg50guhSKI23XdFWVgk=;
 b=e0/sryr5w1GqBXJ3pvF808jFHHLdFKhb7sa11xwUvgbTNPGcQQJaf/Acl4CNP0OF8WcU01RNWxqPBoxfOPsGqIueA3o0Cs6cBdnQ/aVRdVKzoUk+RtPsM8JcnaldCZE6uaiv1W4SD+JEV59S0oUJtdpS5wHVyMom/oUVHExIBTPizfORLs1SmCDszdvgQIaVYbnpwsm2X2S1B7/2ME9qoG5ILPM9p3xlgY+W78sV/qqlql+FF7h1/QEgHF5xARewglrumeC7iv5NeL/3jgXbhUQmDzTQ71G15VvM9C/nnvK8vcAM3mk72y7EdhGFCa6VZR573IWY4RKYcLhx8M+HlQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1JDwI2mnztvedZd/2SMmY6+rtg50guhSKI23XdFWVgk=;
 b=cY+COcVmP/FonASMHFzKLN5kuTNzaxX7/Qg2jLFuXHh2vO7jkYG1/pbE/RtrloILETZqNdYZyj2F8Y8uJINi9rFr0I4Ca/hegCWvElG50EYLsTftfEs/g4uEd6YvnMQajp1Zp8zzenK0MkfnXToMOR90yE0ESWiBwNcd0RhZNEw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3787.eurprd04.prod.outlook.com (2603:10a6:8:12::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.20; Wed, 10 Jun
 2020 08:12:51 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3088.018; Wed, 10 Jun 2020
 08:12:51 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "festevam@gmail.com"
 <festevam@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "stefan@agner.ch" <stefan@agner.ch>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "linux-gpio@vger.kernel.org"
 <linux-gpio@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH V3 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Thread-Topic: [PATCH V3 0/9] Support i.MX8 SoCs pinctrl drivers built as module
Thread-Index: AQHWPmrEZsqXlE5PG069+wE7LuhWwqjRftOAgAABKNA=
Date: Wed, 10 Jun 2020 08:12:51 +0000
Message-ID: <DB3PR0402MB39167A62D9D981C2F82B7ABDF5830@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591712485-20609-1-git-send-email-Anson.Huang@nxp.com>
 <DB7PR04MB49721DEE875099E086E2486E80830@DB7PR04MB4972.eurprd04.prod.outlook.com>
In-Reply-To: <DB7PR04MB49721DEE875099E086E2486E80830@DB7PR04MB4972.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 73b96d15-ed44-4c74-3a4e-08d80d161205
x-ms-traffictypediagnostic: DB3PR0402MB3787:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3787EB3A388D7EB0A712EDC0F5830@DB3PR0402MB3787.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0430FA5CB7
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: O3txY9FON3foiMHwDmtKkGkj5JpC7Y20ralU5r4RXiP2IWfSwzWCi+WJ7twNR9ggUQsNLpNdEP8lDWEFm1gIkt4UyIV7G3J6qg0fB+BNmQ7ubeVqWCJ8D85jjCK41DU56i93kLK8iC13DzzMCENv7t5XTpunNODGJ7FhzegwBWPo0W8CMRmyoxisQXXiyRTXnNDzLGXwwapFa3hCntxCFu9/53fUdPt89bQ8JPxiRwTyAEb2XzByoTdxCBMWTMM0cswwVoNa2s4/kSmI2kBnjWntSU7hupBE/5rk4wO8obG4BKhsfuYot9pfv/Lf0iSnFe+XURyNciLeN0u9P2CZIJsHabkSw9SQs62TARCB8l7ObZ/IHDnfuWNCJBQob/lS
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(4636009)(366004)(346002)(136003)(39860400002)(396003)(376002)(55016002)(186003)(33656002)(8936002)(86362001)(478600001)(66446008)(6506007)(44832011)(26005)(9686003)(66946007)(110136005)(83380400001)(7696005)(316002)(64756008)(2906002)(66476007)(66556008)(5660300002)(8676002)(76116006)(4326008)(71200400001)(4744005)(52536014)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: Djoc0rad0iJpRdXR8GmvecziynuRxRQ4fz11QQrf9izj9iJu77Ww+m/1B/GxA94sf28q3rTUTsc4sCPVzzx+pU044mXEDjwTO9M6WWRAU7Q0poEyKpmtEJD7OqmOBR91K5RBuUreTTYPORNJA9b2PlKap97cQcA6Buw3kWwidZ0WBTz79vpK9TXy3zzwXYbE6gge6clDMPrT6o1n4GdvldXaKY4IJbXANhMhESk2NESsg+JLmMw39QQItsvIooK7JpIhpXDQwlc7oG+mybF7vH2IekxqDZJW6lq0cT/AMqOGcdWW5HCvCsj6yDKTP3Di1Z2gRXOefLTuRaa5uov+I5gISJtB8HLWCDtqqFJxasuxh0Bhg6iqvSiDvmE2YXXXXRXnyaQWh/oeqgko+b57TduPde9duQHTbyvVp7CAVQAul0hN9y9QbIzw4rgF8qwVmpvSxKur1i0qjb9OvYq/XFzJs6nQqVUItWRghq2YHr4l+LMiPwT1Frj66IzgaItM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73b96d15-ed44-4c74-3a4e-08d80d161205
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2020 08:12:51.5029 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 1NLAvDM+U+JbQPmvIs0q7RHbDpDEI/f1tQuUQv35t5F5Me4Ls94+V/vUUSeCUZYt2xG5SOMBJro0ufPK5S1uRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3787
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_011256_309421_0162B2F3 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.14.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.87 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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




> Subject: RE: [PATCH V3 0/9] Support i.MX8 SoCs pinctrl drivers built as module
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Tuesday, June 9, 2020 10:21 PM
> >
> > There are more and mroe requirements that SoC specific modules should
> > be built as module in order to support generic kernel image, such as
> > Android GKI concept.
> >
> > This patch series supports i.MX8 SoCs pinctrl drivers to be built as
> > module, including i.MX8MQ/MM/MN/MP/QXP/QM/DXL SoCs, and it also
> > supports building i.MX common pinctrl driver and i.MX SCU common
> > pinctrl driver as module.
> >
> 
> This patch series also changed the driver initcall level from arch_initcall to
> module_init.
> Maybe you could provide some test information to help the reviewer to better
> understand the change impact.

There are still some more changes in V4 I just sent out, which is to cover various config combination,
will add test info in next version. 

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
