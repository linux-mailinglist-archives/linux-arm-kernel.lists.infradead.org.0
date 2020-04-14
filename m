Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638CB1A7E32
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 15:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irZJ3iUYMPDlF6FRxPid3f8fvTB4EdoyExzghE/LkRI=; b=tTSfeitsmONZL0
	nIZNW0yPOTolvDdWWEnWvM2vI2m6SI233KDzi/PkDOQLpcS71S6s9ttCY4K6O/WTO0RlkKRbWX4R+
	bq2glC8dsFPtZjA+yhHTu4DyeIpKozA/9wl8LI4Pt4uTJjpR96MUAh7VM/PDL4fB9wxFvEeYV0Phj
	n2L3u8G3asUAFx8UGyJylQVgTL8CnRn1nWdXoncuor3Vmv/phTmR2H9KseOM8h58j5CgNpRp+Qcp+
	G74o8HaJphjNpg8TriVJ/Rjv4vIbTnGlzzcMzbjpCX0KMNgj9yryjZKzCCAtQbPmGxCZAdK/1AypP
	ozr/3B6ui4gYSddGXsHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOLhu-0007Fw-UF; Tue, 14 Apr 2020 13:34:30 +0000
Received: from mail-am6eur05on2068.outbound.protection.outlook.com
 ([40.107.22.68] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOLhm-0007FM-R2
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 13:34:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZeJ6k4wxEdK2zYWOeeuDL6u1H8YrLIfwLeuHTqfG0pGxUwnwJq035xUNsxEY/fZpbCSa1T3n+KSkqHRR6UPOiyYOjU7f+o6Uf68667X/rYu70IDYYZRiWZfWPdp0w+pPNwiGnmDm8MQqoow0WcKCr5KFAHGt4072i6VZmboULREoPQZuqzEj3Eqe11D3Ke559muzPh9Bn8fuJk5cayxniBOpqIreQNtSZci4P2UyMVFrlqLikrKc/vWJrtW8e3cKS2Z86H0AEc6CuOeTtO5wl0X/9I/1p4YkKeJHOCd06nUKpGxIC7eNQC7pET7NoipRLuteBKWRoCs8OIzqRVxNLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WwmGGOYnBgwFKBhGKd+Oi3bygyZv05RHLcgJPFunLCg=;
 b=F6+QJbNZRkF0UKuknFNjjsAHp/GJqzgkxQs4+sBJas4Xdo77oMuDdPEGpDbheBrLizEtfqhVAGvgQyMcS2y7Io2g9dqCmAzAulD9PsbR7VohmigwGveetk+0L3OdDRxeQRMF5AnTTKMO1kfUaRst/WU9QYGSB4ETSGPDj3Hl17X9xLHUkraQ22UAluyG6SeYmflp9zmxRHfOosqW2xNJMPZ+8lgJABQkvaQsqoinj2T+0zQl9S8c50Y46VxM3C4/MMHW+zt2s+yO5Rp4xv/u3WJz/I/4T6ZdZ8fBQxZRml1VGCkGttZV55tCzQB45wrGKmOsTBGanScn3s4fdWEoyQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WwmGGOYnBgwFKBhGKd+Oi3bygyZv05RHLcgJPFunLCg=;
 b=HI9a5upTNZQBJfstQp+aNIWq0Z/zzI0oJpO94uMoO32eoPQGztSZsAumlDloAZXvAi3fQQmsqspGlOgSH0aQyLeBTxUdT0QFReFWf4ikHPxHKYyDP7VcMQgAAiI+TPjDhp5Aqtwn/Ldb1hQVluDh4rR5bom8zqiugqaZxauBZ6Q=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
 by AM0PR04MB6868.eurprd04.prod.outlook.com (2603:10a6:208:18c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2900.15; Tue, 14 Apr
 2020 13:34:20 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::ad44:6b0d:205d:f8fc%7]) with mapi id 15.20.2900.028; Tue, 14 Apr 2020
 13:34:20 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Fabio Estevam <festevam@gmail.com>
Subject: RE: [PATCH V2] mailbox: imx-mailbox: fix scu msg header size check
Thread-Topic: [PATCH V2] mailbox: imx-mailbox: fix scu msg header size check
Thread-Index: AQHWEmDdM8QPFjiGdUiIpKIFO8zVmah4naUAgAAACBA=
Date: Tue, 14 Apr 2020 13:34:20 +0000
Message-ID: <AM0PR04MB44819E180407DF7CD1D4194488DA0@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1586870475-32532-1-git-send-email-peng.fan@nxp.com>
 <CAOMZO5APoqzvptc9gY2r69MzZ=gjTnsr2UV519xJmKmEkcx3=g@mail.gmail.com>
In-Reply-To: <CAOMZO5APoqzvptc9gY2r69MzZ=gjTnsr2UV519xJmKmEkcx3=g@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [180.107.26.236]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 424b8497-5c37-4934-36cb-08d7e078899c
x-ms-traffictypediagnostic: AM0PR04MB6868:|AM0PR04MB6868:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB68689DD9D43565D4F3C459BE88DA0@AM0PR04MB6868.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0373D94D15
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB4481.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(396003)(39860400002)(376002)(2906002)(5660300002)(15650500001)(44832011)(26005)(76116006)(86362001)(33656002)(71200400001)(6916009)(316002)(186003)(8936002)(53546011)(6506007)(4744005)(7696005)(478600001)(4326008)(81156014)(9686003)(64756008)(66446008)(52536014)(66556008)(8676002)(54906003)(66476007)(55016002)(66946007);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IGpji+Xwtyk0Ly8Rj/dqZXLNAs8Mw/eQstAJTM2vArsDCI0jrZpGtCZHn2BH5mNvsshf/ojd8wguUnduBMmfBT8ELb/Gyq/46FYwJ6VXQzQ6puzL74sKZZwo5bIBDKhMf70rSStum9RyxYII8Ux6QgdAmezKNXVRNBGJKXy8lhwRyKxIgbZRcaRK0BD3CRzYRGVrlRlq0DJPKzG1ZT+U3c1HIH+nYFRPCYIwXJeL69Z2fgjoctvEJJbKrF8sWhcXmaLvwt48ePl3ts7s7DpLbLzWe3dpemIQ5eUD9ksSVAIMiz1H19GXKUDY+H2bYHSflKNtxqWKH/uxeKyDoe3vWjAr8stOB3/4eXc0PPNwnPrMURgpyMFxa8xFkt3QgHz1tKO8hKdO5VmLc5/EF4iFOMYUbBYaLn0DGvYQpoRJmeySjtWA3OrYmGlOlRV28Nmr
x-ms-exchange-antispam-messagedata: 04GebbzK7Nrw05PGp9JYC7XLzT3UL81muYfY19BVwnwLRdLgKobvtKZBICl3uqwdrvuY419Dnnqbcex+Ydh+Md+PGLrAkcG1XMXEFfEpDXcgP+gldTuQoKSRBJEM9d8QrjH/BIJncqOJ2ELa3C1mQA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 424b8497-5c37-4934-36cb-08d7e078899c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2020 13:34:20.4158 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VwSMlxUZECQ6lOi43YCAmM0TXkgYCZT8xp1ZmfBmqF7nLDoj/TlUbln8OSmHO061NQH24g5/IrpWzcHRwih5YQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6868
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_063422_875685_4B6015EB 
X-CRM114-Status: GOOD (  11.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.68 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "jassisinghbrar@gmail.com" <jassisinghbrar@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Oleksij Rempel <o.rempel@pengutronix.de>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Fabio,

> Subject: Re: [PATCH V2] mailbox: imx-mailbox: fix scu msg header size check
> 
> Hi Peng,
> 
> On Tue, Apr 14, 2020 at 10:30 AM <peng.fan@nxp.com> wrote:
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > The i.MX8 SCU message header size is the number of "u32" elements, not
> > "u8", so fix the check.
> 
> Since this is a fix, please add a Fixes tag

The patch is in Linux-next tree, not in linus tree now, so a fixes tag would be invalid
after patch goes from next to linus tree.

Thanks,
Peng.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
