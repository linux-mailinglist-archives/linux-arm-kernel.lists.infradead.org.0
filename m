Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD571D8DC8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 04:51:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KqxUeDNxA9W3EZq0ViKJWbo58Fvgj87EPrpwAo6p1Zc=; b=C/rbTIz4DizGM6
	ZkPHYxJ9Kj4cKrs4ER1PLKe1yjlNyh8PEkOJnx+z5dJnvIyIwkbEJ4M7zOSWB/w8jsx5CIpJhpj/+
	aUUKAPSXigctzStjGwSqqn19sEWR8z4I/cgWgPnp6RShJFGxIWLOOyQA0I/nPHAI/Z2zW1jntm8zb
	yfpoCRmRj5fWxJGs5uzxKqPVZeplMjmkAppXoN7P61qYl1QZ29c9GSmNQvmsnqf5IgOn867cw0nGK
	vGwPsJ70KfG4BXzIfLF2kGqFMcSghImUJdFdXx87/R9psCQBW4rwAc1f2QkNe+67WjYHJukAkw3h2
	+JSUWqsN+gS4K1lNmP0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jasM0-0005Gg-UR; Tue, 19 May 2020 02:51:40 +0000
Received: from mail-eopbgr10065.outbound.protection.outlook.com ([40.107.1.65]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jasLs-0005GB-4u
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 02:51:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ksQ48CgRnyBuvk2XCxaDTjOdbqbBXZsjG7waBjJG0PEYHKThxpFp+fdNBwBQZa1Ccazm9u6IxeWYV6jUZsW5RYWEmVCbbsd8lml4SVUXo6LPn+MPphZIqldCSB8Q2MYvzVtjYzvA6UK2/e8IrERIfprevjgtSHiNWRb24HTQx/BdCAy46xULgO96cqbMntWbexMF1YlgSrqKNSclnSwWMhNjgviIRrj9RGnk6NllEBKQj/U/ne9MlaPchGwe/FH7F1Rfg5ikmxhTGbvwQYOeqDL0MwaaJiz0ITn+HDitgiOhJeNBfvic6pee99/WCig4GExTbstO6y/KY/uasVLQ4Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ARtortMlLjX8cO3Hnge+IhZE4+tor8CFU9CiW4ifFqE=;
 b=O9VZd0fHgNr4oAyd2DnjfDefaZpZ20K5C/IqxxTGeCK5aqTIBg3qT76S4s//0xRpA7Jv8xaK7Ub854tNbPUf8RbSB5pMdS6TnR5Ms+PEd8M7wr2vixzsF1NyvTXEo1BmAG637Wdb+afCGP69GAWN+sWDNXMNGQWh7E25aa2JIIIPYQvBvxT1NxYUdeS6Yp4iXY0L/6xFOWzNC0lrHftOB2HiNOeKcAz5zxDFNVfNlBgbf7Lnnj0/NdqPV0ewsK/lVyKn2LTPah87C4OurgZJlXrYOt1/yzoCazyC+MsHaZF6Xy3zNPgdMKJuyjzEPc9wqX2zMlXx9n1M+gtmbV4D9A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ARtortMlLjX8cO3Hnge+IhZE4+tor8CFU9CiW4ifFqE=;
 b=imBkZM1WwmtkQmrr2BI8rBNQJgOyNkXhnKG4hYBU2Qdks35MrXABZa63OSYc5HkQEGMG8znPIsqv575+cZuIftdKVSbfz+y6OlPPwmugiUEziD3jsUAv+VVGsuzCwQeXrT+GAKlFwrKeIPgFFa85Xx+p0RF4QGRbAea5ea7x72g=
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com (2603:10a6:20b:2::14)
 by AM6PR04MB4150.eurprd04.prod.outlook.com (2603:10a6:209:43::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.27; Tue, 19 May
 2020 02:51:29 +0000
Received: from AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d]) by AM6PR04MB4966.eurprd04.prod.outlook.com
 ([fe80::3c6c:a0e9:9a4e:c51d%7]) with mapi id 15.20.3000.034; Tue, 19 May 2020
 02:51:29 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "daniel.lezcano@linaro.org"
 <daniel.lezcano@linaro.org>, "tglx@linutronix.de" <tglx@linutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, Jacky Bai <ping.bai@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [PATCH 3/3] dt-bindings: timer: Convert i.MX SYSCTR to json-schema
Thread-Topic: [PATCH 3/3] dt-bindings: timer: Convert i.MX SYSCTR to
 json-schema
Thread-Index: AQHWLSSnD0dCvszIr0qNnsfgnwi1pKiutiDg
Date: Tue, 19 May 2020 02:51:29 +0000
Message-ID: <AM6PR04MB496607C298DA6647FCF82D3D80B90@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1589813260-20036-1-git-send-email-Anson.Huang@nxp.com>
 <1589813260-20036-4-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1589813260-20036-4-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 643593e7-c95c-4e2f-d0a3-08d7fb9f87c7
x-ms-traffictypediagnostic: AM6PR04MB4150:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB4150E31E1FC4417C9324953580B90@AM6PR04MB4150.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:605;
x-forefront-prvs: 040866B734
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: oxJrZzY1GMnjVX/RL2LPq3SYdZ9v0oWKjlKf8hyOkBLuetyPPSm0Q/VNagOVA0TCJIefWxvOYqY9zlgo8mh+ZtMYKbMHjfJwaRAcrxSfUgPpCJdRMsiC/RzZk4odWNy0l0cIClwDZ4iq4tp5VXDAXh5URiMh8t9fMQt8ajIDqyoVasMsX+Xd2hX6PebhHzvLBnqE2HIntyXRoriU+tWQstx7/dXFZfbVwB6RD062xeJR1jpAIXkMr/+03RrAZx7m8mir0/7mVN3vFtUVQMSiDC/8bGXIyhISdLU/Dol5/w7tjsSXUeZuDYaDnrP/Kj2Uv6PsjTFvW9tqtCCIjV0y1rKcfR14YaMk8h3AE9+tBr0okCce3vOIlQqZtSm4Fv1272Q46hwkfaSf6oZA6hBuJ+v/kOMAPNhF7Fd9IjMIyhYlGoLfoo+Q8aro2tFQdnyfDWk6s+uBPEFlp9svgbpBDR54uWxdL4K+ifOo6WJW62Y=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB4966.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(366004)(136003)(376002)(396003)(346002)(316002)(66446008)(110136005)(558084003)(52536014)(7416002)(86362001)(9686003)(6506007)(4326008)(8676002)(64756008)(478600001)(71200400001)(186003)(5660300002)(26005)(76116006)(66556008)(66476007)(66946007)(2906002)(44832011)(55016002)(8936002)(7696005)(33656002)(921003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: p1PlWyPXwHD4e7uaNcJOdprkqGJ921IrQZv0OxEuLaLM9SHDcLLdggHOsGlt1x5k1jBkDJneE/hJNBDBaJ1TSDaHh9c9Zs3bXEuaBS/ZRamaA0lAQJGwGR9mVX3tnji1S+xTsCT87467z3yI8Rr0LsoV6VL136O2zS3P8d8CJcOVfPj30bhjnHSzZaD7Dy501yHq3rQTz455nce+vaH7T4ySZWhb3zEorVU/lDKx0/z4D+2/o4pqNEeHruD11s/SX0aAhfHcYujiIhbJqixyCyNWIiEjPcwFb+ewBHEYlmCZty9WlIgjcEEZWwrll2hEyanMmcm7pXRRv2VPkI+bvE553OdZgYinpmzWz19Y0twTq6cYz3ZdJ67Cs7Fjn6K3VqkqTJuPKigSJ1VqFvCNk87jObAA7Q2ZDPlD6Roqa2e+idTjJrZ5uYb4f9ncIwmY2IfTdJ+RwmC47i8ivaeJWNcdvS8GcilrXy/+8Pegu0hvSXJuHOtJW3DfOYcqiCvE
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 643593e7-c95c-4e2f-d0a3-08d7fb9f87c7
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 May 2020 02:51:29.1945 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kE5GS8IcioQzQGcw4iaW2gJB1JaT/N9zxNm2bsvgQCvaJCbv8h4IBbb8z/SkXVAWq0i6XJ841fD3rAI0MQus5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4150
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_195132_187977_69AD753A 
X-CRM114-Status: UNSURE (   7.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.1.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.1.65 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

> From: Anson Huang <Anson.Huang@nxp.com>
> Sent: Monday, May 18, 2020 10:48 PM
> 
> Convert the i.MX SYSCTR binding to DT schema format using json-schema.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
