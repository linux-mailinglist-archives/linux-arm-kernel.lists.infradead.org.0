Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 344871F63A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 10:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbbFIEsZjD3qbAjoStGM+beJmHU8xxPn3qfrNvLTBbI=; b=KCfJPoSkYgKqN/
	HqGtT9KctMrwdewFU+5i9flN0XE/YKdq0ft0qcMO/9sDUnbuDRABPyg5OsRlxvzWobxQHAaBBkwOs
	noH2h+s4g8ctWe7TKVyNAmyYfaVJBjzvhR/zI/MEtE8VIc8kBeC+OwMjSU3OuL/0l2j+JGwd3na5X
	BYbxKHe79vQUtaZ0T/WcolYHTQk9PyXJKSNtYUigmbZAZptFBzGx+be816VnQ24PTq2N4mX1QHr+x
	rRm2zCA/FUcz/4b6gDoKiyLCzxCr5LWAWWg1XBT9eF4UsJV012mGQnEAjMclSxrT7/LEor2W35S4P
	TG68MjiYcwsNHYp72HSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjIcn-00062S-Uc; Thu, 11 Jun 2020 08:31:49 +0000
Received: from mail-vi1eur05on2045.outbound.protection.outlook.com
 ([40.107.21.45] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjIcg-00060M-0R
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jun 2020 08:31:43 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f8gGdeDe+mysEPNYwOoKfKCbledEEk7eufptKusq8L/oV6Y+AdlovJko926yByrQeyCXO9DpA+dTxFx+kDOsT2S19XLIvsCVKFJr8u0nbwhdwJQVSEt3tC3HZzsNFlsmWyxts6wnuOjWRyY7HCy5L6HTsABm7Bdx6HcSWUsWr9uXvmfiY/1IhAfhOknYjcLeyp9M0iwI2d3H7Hh3P3ofq+9Wvgbqyk+R1kdFFGsajoiqB+BnWOdmfBuNkgLQUE1Poj9EvgLYjvJOz+joQDn7lb1TOmtbfhnJdNe8XeVfbTQUiQ+Px5RgF8jSqxsz2JmlrvR6g5gEx4r5NUNDwbuQDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MalPGz/D0wKGW3isLFT1cvddlY2qg3PoLkYYWvWzQRk=;
 b=QoG1ZkJuhGZsXzBkJPybrFU4gW5thkI1rGQgjOH9mXLTbCojShriVjaLuR6D4mgwREKZMdlZCcs5sf2jjBoc8KOoxxeXeGzavEedQF01k9hv24AGJNMHk8PRGHPSjm10tGvd0TQWCkKt0OfJk12aRh2Kdslajz52iV+vH59+7zNjahOop1tc9+N0bitxmQ3l8RPrI6d1GmkBxJNJqIXazw86Vkq47pslm2KzBwOoeVN7pWWtWa3lzwgXR6uQSpZPiUVSwpnZftJQyu+UHX2mD0rFfUGVS59bxZCGC3K6ysSpQrq3323/tpnL2aD95C1SRvChWnad06gyrfBZHFV35g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MalPGz/D0wKGW3isLFT1cvddlY2qg3PoLkYYWvWzQRk=;
 b=r8pRnAtHdcyfPo9f8tZgZm838p9BdvPqj6l8uTT3zRDfx9tQogFiikZp69vHqEHihSQL4qYTGlMjO9kmqWapFbWp5kkD2ln64jZbeIyWGpEI8NO7h7ZqneEzQg6D/69FFiJymNzNV4vcWbBEKUgz5e938+Le3xoqF3V4wFueF6U=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3675.eurprd04.prod.outlook.com (2603:10a6:8:b::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3088.20; Thu, 11 Jun
 2020 08:31:35 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::1dab:b68c:e028:acb3%6]) with mapi id 15.20.3088.018; Thu, 11 Jun 2020
 08:31:34 +0000
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
Thread-Index: AQHWPmrEZsqXlE5PG069+wE7LuhWwqjRftOAgAABKNCAAZeosA==
Date: Thu, 11 Jun 2020 08:31:34 +0000
Message-ID: <DB3PR0402MB39164A67925E322A7B9B1F31F5800@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1591712485-20609-1-git-send-email-Anson.Huang@nxp.com>
 <DB7PR04MB49721DEE875099E086E2486E80830@DB7PR04MB4972.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167A62D9D981C2F82B7ABDF5830@DB3PR0402MB3916.eurprd04.prod.outlook.com>
In-Reply-To: <DB3PR0402MB39167A62D9D981C2F82B7ABDF5830@DB3PR0402MB3916.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 670ce306-ca4a-47d9-3c9b-08d80de1d9ed
x-ms-traffictypediagnostic: DB3PR0402MB3675:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36756A4BBE5795262F540B7AF5800@DB3PR0402MB3675.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0431F981D8
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pjXrF8qLg5azZhPgICqRof3W571cjMeOKLDzJkBcGZxl89pwyaMJ3lJguUJyDRMwrwD0j2T5sYUwq6vibecxJnBMYRjtdCmcPC0CvedpPVWsgKj3sGGdusmTHyyhraKQYOYS0N3FGxbLebns+VC1I6h5k20E1+MZu1zJtFhLIhyowBveXAG/LGQI60ObspYs5N2ap4OJHDz8viPkDHILgeM7quCuZpzTXcrqMiXX/RX5aF0zK8xsDZ3POpusmWIZAjEX2slIuj0hRHsevIt5KjoSDJrP18JTub0E9fCriQ1NQHOgai2u/5gB2bmTauHK213gPjA4cKx70jFUv3bRuAGF/Msd4dKVzylEaJat72FrpW67xyU4POGv2L1B5e9u
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(6029001)(4636009)(366004)(376002)(346002)(39860400002)(136003)(396003)(83380400001)(5660300002)(52536014)(9686003)(8676002)(55016002)(8936002)(66556008)(66476007)(44832011)(186003)(64756008)(2906002)(110136005)(66446008)(316002)(76116006)(26005)(66946007)(86362001)(478600001)(33656002)(4326008)(7696005)(6506007)(71200400001)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: x4Y1DL7ye1qMAe3wOQLzY3k1lbR0IxNXpXOWkkP22IPd0W/F3TJehocRZhNolryK7Sy8W+ozxOOBzqbGSK0iE59EkKUFGr3S5X5JJrWLuiFMY1u9Zsx1WquAIpdp46B2b+C8lWEiZ9QJDPVpuLG+PUXfTe3bTuXH2/DHdGKh3bB5fDqJsF/7kPGIplXwpkhH3Z8bfPwYlkPWwR2XR5thI1N8t7Dat/o5SbvjTmQGZ4x4WMWJAbgrdzRWqLGC8c2Wv0dZ7Rbh+v70kzWSfIkPhxv800jW/1Lh+hBZBo8iwY9Hr0I94NEhzJ4lctUGQAEQczZ9yEMHSaSwbb3X77CFWmWqiQd96ImliDTGz9pjcu23NU4EcfBaRZnngBQNORkHatSN3JrxOVs43WVFthGyV7xccXTHhmNKBWAqs47wNHQmo6JOASTiJAUL+D+xTR+RCNhtRwznECoJGH7Sih9QNNIoZwVLhPJt7zmLyjKIle9Ni3/vXDUXfJc6JRRY0Ley
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 670ce306-ca4a-47d9-3c9b-08d80de1d9ed
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Jun 2020 08:31:34.6512 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: cR/MQUat7Yuz2h/sY7yQMyn7mtPiC6JrnzfcjyKtCnenVlQkEL8NtdR7x9JsTh/wRb+wBUvhnArZSmMlCQw9sw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3675
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_013142_131860_B045D660 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.21.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.21.45 listed in wl.mailspike.net]
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
> 
> 
> 
> > Subject: RE: [PATCH V3 0/9] Support i.MX8 SoCs pinctrl drivers built
> > as module
> >
> > > From: Anson Huang <Anson.Huang@nxp.com>
> > > Sent: Tuesday, June 9, 2020 10:21 PM
> > >
> > > There are more and mroe requirements that SoC specific modules
> > > should be built as module in order to support generic kernel image,
> > > such as Android GKI concept.
> > >
> > > This patch series supports i.MX8 SoCs pinctrl drivers to be built as
> > > module, including i.MX8MQ/MM/MN/MP/QXP/QM/DXL SoCs, and it also
> > > supports building i.MX common pinctrl driver and i.MX SCU common
> > > pinctrl driver as module.
> > >
> >
> > This patch series also changed the driver initcall level from
> > arch_initcall to module_init.
> > Maybe you could provide some test information to help the reviewer to
> > better understand the change impact.
> 
> There are still some more changes in V4 I just sent out, which is to cover
> various config combination, will add test info in next version.

I will keep the arch_initcall() there in next version patch series, it can make sure the
change does NOT impact built-in config. For module build, the arch_initcall() will
be same as module_init(), user needs to insmod the .ko with correct sequence.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
