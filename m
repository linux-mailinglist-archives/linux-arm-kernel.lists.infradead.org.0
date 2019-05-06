Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D162E1479B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 May 2019 11:30:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=24l/sZBhXgPMbau/LZvYPoicBR6i3xpR51+HwPNFma0=; b=n2lEmlVYmiwolK
	ubol4KV9xLWtMcBsD+KZfIKY+0Botm2a9fOGXPdcEjhGpaVRD+SjZvEeHGJz60EqAeXz3fvLA0AFc
	YPaLt6IFS6pVkkfEOaoK2D1QxLdv5ttlMH0CdDYdKyxrAXTIF9btYCrmoelbCRiFs760ueF3GCfO/
	lPKZ4Q7l8oBL+LfVThfWOTPTPxW530xIyRjGlFmT9YVwXRwspH464G31ZaSOkbHzPuMnrEKZjwKgZ
	I+7hk3C7jBWg8/tDT8BcHlcSPZQwbLEAgtFZMYqKwowgMQLYbwEWwNlC+hjenDicvOI1hhgZLKb++
	+odpxcnhPNDBHnNBReFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNZwz-0000Cj-DP; Mon, 06 May 2019 09:30:21 +0000
Received: from mail-am5eur02on0627.outbound.protection.outlook.com
 ([2a01:111:f400:fe07::627]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNZwq-0000CK-Qs
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 09:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bTG/POUK8UI/L0ujDd/y+Ucvg0OFnOcCmy4xYS9HtZo=;
 b=PNUkiwvx6qPm+5ZXmvD9FEq9Em9iw3DD5aGZW0eEmCoe84xUE8NEsba6BjnWincgQWfAW9Bec5vFMaTjUlEkr5pXsJej4+8nR7FPdYUsqBdhGiHbpIlklhyq53kKbVTBJpLtGERgj1q30nbrvSiYRy/AN2sSxuQEv2ctuNubmXY=
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com (52.134.92.158) by
 AM0PR04MB5139.eurprd04.prod.outlook.com (20.176.215.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.12; Mon, 6 May 2019 09:30:08 +0000
Received: from AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13]) by AM0PR04MB4211.eurprd04.prod.outlook.com
 ([fe80::c415:3cab:a042:2e13%6]) with mapi id 15.20.1856.012; Mon, 6 May 2019
 09:30:08 +0000
From: Aisheng Dong <aisheng.dong@nxp.com>
To: Anson Huang <anson.huang@nxp.com>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>, Leonard
 Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>
Subject: RE: [PATCH 1/3] dt-bindings: clock: imx8mm: Add GPIO clocks
Thread-Topic: [PATCH 1/3] dt-bindings: clock: imx8mm: Add GPIO clocks
Thread-Index: AQHVA+yfLsIhjcoiP0Cce7rahIcrWaZd1FwA
Date: Mon, 6 May 2019 09:30:08 +0000
Message-ID: <AM0PR04MB42114F9CDDAF2A740FC8E66A80300@AM0PR04MB4211.eurprd04.prod.outlook.com>
References: <1557133994-5061-1-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1557133994-5061-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aisheng.dong@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 32b606ce-5565-4421-6141-08d6d2056e34
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM0PR04MB5139; 
x-ms-traffictypediagnostic: AM0PR04MB5139:
x-microsoft-antispam-prvs: <AM0PR04MB5139CD02F6CF645FB3B9F86580300@AM0PR04MB5139.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 0029F17A3F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(136003)(396003)(366004)(39860400002)(376002)(199004)(189003)(2501003)(478600001)(6436002)(64756008)(7696005)(9686003)(66946007)(66476007)(66446008)(66556008)(99286004)(55016002)(76176011)(52536014)(316002)(256004)(3846002)(6116002)(25786009)(229853002)(476003)(8936002)(558084003)(446003)(11346002)(486006)(81166006)(186003)(81156014)(8676002)(7736002)(5660300002)(26005)(305945005)(6246003)(74316002)(33656002)(7416002)(53936002)(102836004)(2906002)(4326008)(44832011)(6506007)(53546011)(110136005)(14454004)(71190400001)(86362001)(71200400001)(2201001)(66066001)(73956011)(76116006)(68736007)(32563001)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5139;
 H:AM0PR04MB4211.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: +NmZgdY2eKAwLknMbsl8josCsxRZQzY/njRhgc1fDfYeGDMzLzokImT44twz2S8yjqkoHv0LC2zTURqKqecKrc9vxmiq7JNvIUkHssVvY1WGcxub8FhrUEakS1NcD6UBmnne/3TXQj226pIo/4MUEkzQo/NnslYy1tSKJja0/4Z8r/hkv/29xggiRdnHouAYVXk5s5LC9GQUCWJ4gCPK+HChO5DXh7Vsf4kApPwok6rppljFjgd6Pqqwj/xBd+gsT+IEJ/D7Y/DgZaGsfq0ANHLhqJOI4f/ZTMDgFbPK2SvImO7lTxwoW5q4QeVjhljOuyL+RJiZazUxs4hUEk4m2ie1jv1HJCfwmO46AaYXulD+fEBUvNgGKuWFKiIcd3Ct+F2LHnW0P83Ma0uJs+StydIPdr8rHuCpABXurpVDCkg=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 32b606ce-5565-4421-6141-08d6d2056e34
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 May 2019 09:30:08.4500 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5139
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_023012_876091_4C52D7F2 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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

> From: Anson Huang
> Sent: Monday, May 6, 2019 5:18 PM
> Subject: [PATCH 1/3] dt-bindings: clock: imx8mm: Add GPIO clocks
> 
> Add macro for the GPIO clocks of the i.MX8MM.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>

Regards
Dong Aisheng
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
