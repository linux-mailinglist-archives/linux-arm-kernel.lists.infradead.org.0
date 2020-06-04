Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFEED1EE489
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 14:37:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ydERlL/N6jcZy7BzPaUS1SqPmgYX33bYLNi5y4u4Pzg=; b=kJbRzEoU0UXkk7
	3ALYIn7vcwxZcn29jAKPDvzoAO37jNODtVA8Ki5gr3x/iqw1fJ66wI51FsS71AxbWAonw97JaFTKg
	o9sOND3DRQ0hOPzc3c9V6qP5Vd/eKNEczvD+OTXoESGC1HezKiDLPvKdX0lKL21KO6UoxNuiyN9ae
	yqg8KR2ZI6Cl/lSQTX4K5JSea+jscnK6TFu+i+Zn2bpnYtJmGHeyvKtcKJQw5PGj8Z/T369pSj8Z5
	+tthi3dRjxctolG2I99bmg2JnBwkNbPubslB5Wvab3DwGQW5B6Ocx9+HuEJoJDIDsc8uivpyVCYJO
	XxoAS9mj8Y2EC/NG90tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgp7k-0006dH-Ub; Thu, 04 Jun 2020 12:37:32 +0000
Received: from mail-db8eur05on2072.outbound.protection.outlook.com
 ([40.107.20.72] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgp7d-0006cM-FQ
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 12:37:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYgTQG0y/jWK9hwpnfo/AUc+WLsperhvEvAWZttZTaJGFDxZSTsjDoKJ/zDrgK51rcZ2Elme5e0duyBlq12jVHqVbSjLsVPN/u72E18AxXuK03eocC7WKtFA451OZkaP27vshUWUmcv3iAwEPi2QWs/MHUNsopXWphPl1xI0cuPJM/BHFgKiNgvMnnMzDbScds9x55HbdvJPBezpuesqyMrmBoArvp4pFK8ofZ0+XyEYjFgfGgj2nqQ6vlZKkO8C8oxt+riMpLsE/XFPGt4ZjQrBdoiqfvGgK+MVo51b6mBIw4PEv6Nt9k0+eyxrW2ZTcrND+1n+VPwCSnFnFZ1geg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BiID6nbMwIEbUdYPBIT977KdMSZkLiX1RamZ0KIA42s=;
 b=j7c6Nk31+nef/+JumpbvxiOL1Zd80ZvA+CUrBoMGm+g9EcDzTdjaTa5T148EeK22GPTc4wvQ4+w49nUN/+wPpLL+mabQJZCVa2oPkfDCTu2eU/66p2Ar1UUZej+amHO0jhybYHWZl5emf/3jcVQxk7e/E5lgPVkwe2vr14n1OEFVvLsNWKkV8pHAD6X5tBw1BMxGcd9sv41PqSQill3jV6DYq1udaXg1WLO68fKAHDEhRKn69aP4vVCaLit0vqfLo5VDSpda7Y1C+aHnIRi3pzbGMVDfhvqPdaMj2qlw5E6QjRNZ5iuGd6TP6yu4BYWOV+w29rpWPcj96XGMxuaQ5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BiID6nbMwIEbUdYPBIT977KdMSZkLiX1RamZ0KIA42s=;
 b=M8SNW47ztRUtxdSlAlan+sxpS+tr04pFh2l7C4zWAXmP8y4XtO4PoMGE/kkmzmsSabhueQrrPL8kKQ/W+gp6ZLfWkhHyCRrDcxSf6a49O4xBJafZflgEeU/Ucct/BKFQWs7XfWl6wMq/IXD+AeV+KPWnsyRoznvNV47JdUIK9CM=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2791.eurprd04.prod.outlook.com (2603:10a6:4:95::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.18; Thu, 4 Jun
 2020 12:37:20 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Thu, 4 Jun 2020
 12:37:20 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH V2 2/3] firmware: imx: add resource management api
Thread-Topic: [PATCH V2 2/3] firmware: imx: add resource management api
Thread-Index: AQHWOVkUV/d/QUBfA0uwA7/SsB5Hc6jIHhaAgABIxgA=
Date: Thu, 4 Jun 2020 12:37:20 +0000
Message-ID: <DB6PR0402MB2760AD01A54A194A711A7AC388890@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1591155143-25972-1-git-send-email-peng.fan@nxp.com>
 <1591155143-25972-3-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB4966B2E779E2B7718A1D99A580890@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966B2E779E2B7718A1D99A580890@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [92.121.68.129]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e074843d-5545-4bea-4932-08d808840658
x-ms-traffictypediagnostic: DB6PR0402MB2791:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB279161AEEF3335F49EC1B78388890@DB6PR0402MB2791.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 04244E0DC5
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ujQEkAGuqWH5ssvJByfLuHbtfEf0oTt7DxbiuqrgVzXJDfdmpIN5tp5CSsJtJDSfSuo4olZtMz/W2JW+6/IRaCUlA/5HboBdK27A0IEC02IExITkHUjSyUE/9tTiJmjnidxv/CdkE0AJBPcXfU0BgqLimEqYK7j9mM/JoLW6V4o6ALHqanX1H48NCe2qZMl3O3DrC2PWhIJezqt7zVHLdiRX4CqW4cAj/OLBQ+iDrcwdw8vr6Kz17gp8Vf1EWr25kZ8ggzPdvCKb9IiNrmMGKFE5eYWNXhZXLjWrFFgWxtjaGI2yY8I75ab3rl4A2ZHRxzwodXoGSSi/lhtSk0ZrIA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(136003)(39860400002)(366004)(376002)(346002)(26005)(2906002)(4326008)(186003)(8936002)(44832011)(54906003)(6506007)(4744005)(7696005)(110136005)(478600001)(33656002)(316002)(71200400001)(76116006)(52536014)(66946007)(5660300002)(86362001)(8676002)(64756008)(66556008)(66476007)(9686003)(66446008)(83380400001)(55016002);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: /WWRfRRAT3rcO5Ac6dAeo8TdtgQIy0/9zDKp/y9ONC4EN7hkGPxTkGyOiRSwWNGL3NY1+TiIkOuTGHxXEzd1SORUhE3ip64LoaGT/JC8OdqwvUeKzHbVKvXhH5p5o6Stmf/fgVM6G53vliDAvS9Lgp5u2jkR3VzyYRiS7Q3AXxQ8GeHpqZ+E7TvQYn/9mbVYaz1CMs8En0iyeSgLC+7NACrUfpXvaRRzV3ft7tZHNIR3SqN9fc1Ho8tFsWOWotY5PuvEaha7ZohXrUeAWLZAszkz2zsCrSNLMb1MUKSylh6NWiXIK6JyFPPmyhvk9Fv187pX4g7K/zsQFcp1Pst7S2fByjE0XdcyO6c8YLCAQeLwBJjwtJSc4mTL0gR+ijgRZXve2Q2c00YsWaNsJnluH7e+hRFDOYkt9HoTkZtSGtrvAUzAGbGWYK2piaTp6JtGtKIXEC5EJZFhAblwhvb+sRCED7P3s/1SnpBTtUP9c/Q=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e074843d-5545-4bea-4932-08d808840658
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jun 2020 12:37:20.5420 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +NYPfcnffheMB2g3+LgoqZsEUDOlpctlsp0J+TyMkr2f74MgwYtLEQ/3vAiUHuc6Z1hXU5+5wqy8vUPAnRUpxQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_053725_598432_48D79729 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.20.72 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.72 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "festevam@gmail.com" <festevam@gmail.com>,
 Joakim Zhang <qiangqing.zhang@nxp.com>,
 "linux@rempel-privat.de" <linux@rempel-privat.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> Subject: RE: [PATCH V2 2/3] firmware: imx: add resource management api
> 
[...]

> > +/*
> > + * Copyright (C) 2016 Freescale Semiconductor, Inc.
> > + * Copyright 2017-2020 NXP
> > + *
> > + * Header file containing the public API for the System Controller
> > +(SC)
> > + * Power Management (PM) function. This includes functions for power
> > +state
> > + * control, clock control, reset control, and wake-up event control.
> 
> Fix the code comments.

Oops, forgot this comment in v1. Will fix in v3.

Thanks,
Peng.

> Otherwise:
> Dong Aisheng <aisheng.dong@nxp.com>
> 
> Regards
> Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
