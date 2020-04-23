Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F6C1B58BA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 12:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UriT325CfQa1eAG2cEgOW/OdyeFQpllGjUGBMm8hGU=; b=R8l5ygBUO6G7+l
	fw4EfHoQsb74mkRQ3bgmoZdyyNimSX2AlfLKkb9mkVK/u66lV81psmzj0kIvKrvxDb2zDpIr0H4cx
	PSI/apnty7MijUH/ZGzzkFIMloOEpZuItjBE3pePUod51t6V5oqyEEQIVDEBVdQ3H4XMy5y21roGZ
	l3hu8ryrPDPuhfBr4FXhVVUwos2CHYcr6o43y+1AqZ1jJvwyTej4UDKeyqgRlPz/qHJoA76oOoh2h
	aeCMJflL/NO/sgHuhE4CnPArLsLFl7WfLuf5tjYHnokM6rypFymsN+f4ttEfBUFGcvabzz7BM6Act
	FlJ1N7bmaV9zMbBg2kFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRYgX-0002an-6B; Thu, 23 Apr 2020 10:02:21 +0000
Received: from mail-eopbgr150087.outbound.protection.outlook.com
 ([40.107.15.87] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRYgO-0002Ye-7g
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 10:02:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QDiVinCM3WcwpmakFi79F1Sab5qPgLH0n8zr97O2DQbVa2pkVwk44lpzqBpOHxnVNgdyAQqAc12Fyt0GnBWQXn1cw2tPZnVPk7P09GzJCW4htrIzdp2fPrQjfba2oKjPD3ijU2XdsB4MH9F0SfEePUPwPuzd6EwAUggS8IRK+dVfalf4zQAtr9B/D4xm5/ORL4Z4lvQBQmCI3X++7w+J4L/PEdMLu8gIU5tqNTTTFg5ZbXPMX+ehc4rwRvRban7hrtGrjX0k50TuhjZFvBnmDmkcmTfFTcaQT80Rv6gn9BvO2nV/gkzl3vnvfAYMV913bi4rdNh0SQ3TsJZlHLYQ8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMQt660BLVzDqkGMpNs+cPVtVPVVG47FWBE384a/Kak=;
 b=HqGZf+gEf4qzGkNBFjDxJ8P0jn9LZ0zF3FZ9UtE/DcRtlYRdB7QU6rVd6stkEV56bvzlCHAmlauISzDvokBlZ5pWk4hsNQkiwC1y3/oSth1AhnLT5eNvePcam6pln+uzROUs2jVVbviXohU/mzfKV6G+J9Ky+Tlw8IXhcfN+sDNCoEtyuapk5tFKht3qDQw0+NwZ+d/8GIklfzoUHiMiJcqlGPVdXN1YCGL9z8JxqFuqXGF3FrtU4twcWgYKNky8v7sLAaNXDpWzdvkILFjCJxl7T9Ek6NylQZvANTZp0inVaqrTgG0MG9AUjl7EJdJfbX9/8imYl00OffvT/59+Dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pMQt660BLVzDqkGMpNs+cPVtVPVVG47FWBE384a/Kak=;
 b=Z/dVk1AjDnDGVbwCXuSgUDptWlZpAYxbB3LIb9+S26umEd1+xJ9V1zPdQcVNYHLwg70pA9fSWVIma/G9yh6FxYhCSMfi5YDHpFVhz9nLtNdRXe+VQZdtySJF2Bo4QPeH+7wpIk77dz6qiOGDtTLeOmzp1i9TMP5Qd7yG3IyR9WI=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4853.eurprd04.prod.outlook.com (2603:10a6:20b:8::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2921.29; Thu, 23 Apr
 2020 10:02:08 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::d9f7:5527:e89d:1ae3%7]) with mapi id 15.20.2921.032; Thu, 23 Apr 2020
 10:02:08 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Peng Fan <peng.fan@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [PATCH 1/4] firmware: imx: scu-pd: fix cm40 power domain
Thread-Topic: [PATCH 1/4] firmware: imx: scu-pd: fix cm40 power domain
Thread-Index: AQHWGT35VS4Ec8+XLk2j+LeMphRmTqiGed4g
Date: Thu, 23 Apr 2020 10:02:07 +0000
Message-ID: <AM6PR04MB4966F959C6B5BF0154AE097880D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1587625174-32668-1-git-send-email-peng.fan@nxp.com>
 <1587625174-32668-2-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1587625174-32668-2-git-send-email-peng.fan@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 73c99456-876e-49a6-b5c7-08d7e76d6227
x-ms-traffictypediagnostic: AM6PR04MB4853:|AM6PR04MB4853:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4853A2BB1825E12FDFE2BFA680D30@AM6PR04MB4853.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(376002)(136003)(39860400002)(396003)(366004)(346002)(55016002)(110136005)(33656002)(2906002)(8676002)(8936002)(81156014)(54906003)(9686003)(4744005)(5660300002)(478600001)(4326008)(71200400001)(316002)(86362001)(26005)(6506007)(44832011)(66946007)(52536014)(7696005)(186003)(66446008)(64756008)(66556008)(66476007)(76116006);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uX0DkNPOxvrnIdc0knavpiVJSyXKS6bSFKV8dddij6aJftU8rJzj+T4oWCTlFcNrqmlz9z6UNrbpJTiROQJPCReKPrRXUTHOxx2NRAWn4lJFkxQXr42QFfxk93IiaLL62ijKSorWvwyWqf5M5P0MLI+K6HZupR9OK3IGY6K7+ln8ktKL9xcdP62OdhsNv2a4h3F4WW3AYhxHWtJ9Kh/4WVssFrQlYLOBf9jkJQKC5f17xcWbHRpRUKR3l5qLFpFMzH6BhksS11pr1aqqNIiox3j8F45ItDigVJ/kOmZeXCRYJecvVasC8CqhuiK8YFX27Ii92/CoyJzfXYvns5dTDeRbLWe8rwcTjXlXekmG+n4/GH+OSUevYoLFpjBOSHmHDmLIaKZ0cPjT8ZeUtnfPBq3M6G3rMOqz871Xy0HmogrhDbk8LxoNGtMIi8dxGPxv
x-ms-exchange-antispam-messagedata: n5M0V4OySkAi4Q8d7N3V/MZmULriayv2BKEtL7zEkW/87RnkaLytm8MOCwvusXpppIpkE+mVsIsbuGgtUJ3PKPBSYrB9gAEfNP+ba1c7UjsXyGG4UJM7bZTpftZaEiBmfUyXjEeUBLQ3OYmL+XR/nQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73c99456-876e-49a6-b5c7-08d7e76d6227
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 10:02:07.9572 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: c+waojMn5NTNO2TOW0aZ7tNCwlyRrkD5aJzgAvarhQ0tOXWQgGfLk3xi3AW5uQWLLYj370GWFHnyEQPD0tXL0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4853
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_030212_278035_83F6D82D 
X-CRM114-Status: UNSURE (   7.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.87 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

> From: Peng Fan <peng.fan@nxp.com>
> Sent: Thursday, April 23, 2020 3:00 PM
> 
> The postfix needs to be false. Alought compiler use 0 for postfix now, and take
> start_from as 0, it is better we add explicit false to postfix.
> 
> Fixes: 705dcca91d0a("firmware: imx: scu-pd: add power domain for I2C and
> INTMUX in CM40 SS")
> Signed-off-by: Peng Fan <peng.fan@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
