Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969462001E4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 08:21:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEUxdTV6ANA8WkSZKZ92CaIN+hrzeZiZxHKsZ2wKo3o=; b=CgdjMGpB+v57Pj
	FNe5ZROveAcJdVf7dX3oBLvknqRcg04im4vOHOAsAbPx84rDv75dnqZDBIGIyfvNS0rTdxX+xbOc3
	8iR6jgWeZcF/PHhYR630PZkfd476/6S/2DbKV4DHfd77C/vbshV9Rltg/BuRPovmihxojLujedZas
	UIoWmeHR+kq4bLFJSI0WYTyMzPWRThGATN63riLfERcslvS2JOLmLUiE970hPs6QRksZYbPgBM3XK
	bc2oK0VGuvV1mvElshJdrCEFbF3V7xa+fStL/5cCr101Yzf894DpwOp3Wco3Kq4ZVz4tqD5VAdLX2
	DIvvowW7EKFuOie4PiXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmAOc-0007ug-C9; Fri, 19 Jun 2020 06:21:02 +0000
Received: from mail-am6eur05on2070.outbound.protection.outlook.com
 ([40.107.22.70] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmAOR-0007u2-Q6
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 06:20:55 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TbQbBisL9CxAGxMb73JXC8UJaOe/pSsVP1f7R1LD4zPHNMVgqiJBNGnEaWN0glp92dEm36ZDV9ZZs4wPtxalAgDBO09Z/AJLMbxp5ld6KjMUJuJj+4MG5RfDwcUn3oeb+v4KjDJ79Av0I/JkCjQGWY3KljzCFbVU7SG/iPq9evnXp4c3EJOykkRUu0KJKT6F6SvsdjGorTiUiB6hUUuZaHEzMvRooz6sFYCmB4LpYKPTZzBW0XOOO6MTdr4fbRMfSEUeRd6dg4R1zARoc7Q4eq5nJSZj3LKIS9BN3VtomUBI9v5u1cMQtEg5N4ZZ6RpaHnM7m8mLLIhSNNx4/kw1qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y0zNMfSmGrTwHaOMwUXWOGvzk5fJCcUBU4/AzdLNa/o=;
 b=RqjLP0DUyJ9KwqxnXRclyeQV/OFBTHJCFmEKdGc9hUZwGdxatJG2vg8U9A+KS+9dR5PhH4OsWUlhzB9Wm0i2x8pIUdpDUT1mxz+rJ5HOL/ntj3Oa+IdbLPwnkEGCtZM10cf9OxEBluARTB4m2XGYXS3AOjpqL4vTAyD295nudmaBlELisMxS+J7ZX2/XiqAzyKyS+J3LllESIgNHXSGoOsrOghGCtwlCwJ5WKDuTRv/epWSSo4dk7WlfWEValZD0j4V0jow6b71q2XWfhksY7B/B+paMVK+aEfCBEP3I2p1HaTyoYsEKk5hcpMa//fEuChNvWp75tn0kFweyBGDXxg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y0zNMfSmGrTwHaOMwUXWOGvzk5fJCcUBU4/AzdLNa/o=;
 b=ZEqN6cvq4V0qCwSWNouKcBcjRJRYSg0NCy2oybEywrW6eJZnbtPSAdLSzdIhHaNAYgixNRQwk5bh5V+bd4Roiii6LKOtpPsyvuitlUFmGso7Ambh0WnowUGHfK6tY9Yb3jYM+XwI5M04/JTRkQ3XCIVAQqj9CuVRDYc7VtwX3wY=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB5640.eurprd04.prod.outlook.com (2603:10a6:20b:a3::28) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3109.22; Fri, 19 Jun
 2020 06:20:41 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3088.028; Fri, 19 Jun 2020
 06:20:41 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Arnd Bergmann <arnd@arndb.de>, Anson Huang <anson.huang@nxp.com>
Subject: RE: [PATCH] soc: imx-scu: Support module build
Thread-Topic: [PATCH] soc: imx-scu: Support module build
Thread-Index: AQHWRGTWXA/Y7jtl6U620nWhqctCc6jccHNQgAABg4CAABwbAIABayQAgAGBIrA=
Date: Fri, 19 Jun 2020 06:20:40 +0000
Message-ID: <AM6PR04MB496696A8695FA85D1EEE276B80980@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1592369623-10723-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49667E1B41DC2A77B3E2FEBF809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <AM6PR0402MB3911B852B49E194E5FE84505F59A0@AM6PR0402MB3911.eurprd04.prod.outlook.com>
 <DB3PR0402MB39167727A8B7CEDAC531D94EF59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAK8P3a3zHBRqSg1VeuKcmyQquE7n5wrEViw5KFbDGJNaMjtZRw@mail.gmail.com>
In-Reply-To: <CAK8P3a3zHBRqSg1VeuKcmyQquE7n5wrEViw5KFbDGJNaMjtZRw@mail.gmail.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 9c8f3446-93f4-4daf-aece-08d81418e469
x-ms-traffictypediagnostic: AM6PR04MB5640:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5640239C080EEB8189CC11E780980@AM6PR04MB5640.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0439571D1D
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HJIfXdMcdy8GAY9VBz9RJhfpQmz0byu5l+GG9QHtEJuJsrW+cNjiMxPx5Cs2bR+KbFwAQQ4lcQZPgjUH2p1x/nAiZTKf1zlLbrgR1IoNoaenl4wLoKrH4i/dmZn8jsrLgjJ6d9r03l4CV7pZXsusC/6zCB30SrRqFeE5/n6MgP027pdyjiUCKx1Pw6jzMR0Y4jV3w4iVaMym8OhxJjhgcg23kFv0VtIamhKKugtlFtrxDCwsJwgTxnhvbojg4sl1X6LO2on3o6N8zIW/Ox0UXbkk/mpxgc4KahzP+AiPZl2algeYAFH9JrDIa4l/iPHi
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(396003)(366004)(346002)(376002)(136003)(83380400001)(186003)(86362001)(26005)(8936002)(8676002)(66476007)(478600001)(66446008)(66556008)(64756008)(66946007)(2906002)(5660300002)(6636002)(33656002)(52536014)(7696005)(71200400001)(9686003)(316002)(54906003)(110136005)(4326008)(55016002)(6506007)(76116006)(44832011)(53546011);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: NnNTpgEwOAaaP+vvHPsgCZrK83xmB21sR79cCW4N8EXhtuJ474hQyDUis3poMgN8wifWu9Rug3y2S9uZ6d8nDiio5wEjhOvKVwwN6/p0uDHaqGQeOAjNiAebevCjmIhOzBDpo8zOMwpsCBxbxZ+YM7NgvF11uRfPQF3EumexZQp7Vqrff8vUhGy/qyErccyUy84OWpGsJr2U/Cokr0fIPYxTlH52MLHpe1pdkytvFsUIzr1VRoYj+6gVPseWSfU7r4ig4u7hdyWInZ3xJjUg1pAj92SYOJCIvgXPctYpWkVUiScRhKN/AP0SNc/LEdx9Gen6g7roILgkg3Pp1UXOOHXFHayZS4YD5dYSGDQxN/GpyuUiSdk7d+XxIX2WoEIQ9faW69UHnpHSc00mewbWEfmxexJM/IvVpHMhQ0zhv0vyLdqpdKYn5T2UJE3pkXnmsr4hx0xwYVGxg7FCPIWKKnc4OVuCB8dpacux/0Yz2hk=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c8f3446-93f4-4daf-aece-08d81418e469
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2020 06:20:41.4938 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R3IB1EDqY1K5GhgThSqhLIsGU+5wvu3hzEhhs5EBFirTS5F1WBLwVIxapVL/rdgC3ESK9MOynikiKcGpnmSauw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5640
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_232051_847825_1AAD75B3 
X-CRM114-Status: GOOD (  20.87  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.22.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.22.70 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Daniel Baluta <daniel.baluta@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> From: Arnd Bergmann <arnd@arndb.de>
> Sent: Thursday, June 18, 2020 3:21 PM
> 
> On Wed, Jun 17, 2020 at 11:41 AM Anson Huang <anson.huang@nxp.com>
> wrote:
> 
> > > >
> > > > I'm ok with the change. But I'm curious how can this module be
> > > > autoloaded without MODULE_DEVICE_TABLE.
> > > > Have you tested if it can work?
> > > >
> > >
> > > I ONLY tested the manual insmod, if want to support auto load, may
> > > need some more change, will try it later and send out a V2 if needed.
> >
> > The further check shows that, if want to support auto load, the
> > platform device register needs to be done in somewhere else which is
> > built-in (in my test, I move it to clk-imx8qxp.c's probe), and also
> > need to add below module alias in this driver, because it has no device node in
> DT and no device table in driver.
> >
> > +MODULE_ALIAS("platform:imx-scu-soc");
> >
> > Since this driver has no device node in DT, and the target is to build
> > all SoC specific drivers as module, so the best way is to add a
> > virtual device node in DT in order to support auto load?
> 
> I see that there is indeed a driver for the device node in
> drivers/firmware/imx/imx-scu.c, the only reason for this module using
> device_initcall() with a manual
> platform_device_register_simple() seems to be that we cannot have two
> platform drivers bind to the same device node.
> 
> I think a cleaner way to handle this would be to just move the entire soc driver
> into the firmware driver and then remove the duplication.
> 

Yes, sounds like a good idea to me.

Regards
Aisheng

>        Arnd
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
