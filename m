Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D63A35FF0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jul 2019 02:26:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B2e5YVgCBtZpMc1f1ueVKeywMljW+DicqMKQVw9Qpf4=; b=g1qsjOlHrPYwCB
	RXaSpKYyRbWZJR5RLy8MSg8CMBdqPb3naqs+f6wMnIoxNU8Z1KX1msoHLQ2c62se2j5J9X+UnzId4
	Ow1gb0gZVQa4YcokMyrG6ilLEJbCx0mPmWWFm1M4/NMzwCm3MdJ8swbqBykB66D37Rluxs472tDIL
	Bgj4fdDLykaXgBgrA3PgYAZ4aA+tVyxJuGIRhmsSN8bmnnbAbvoRMcZCVbXnO6sRBAfPRdR+lQ6aK
	BVKVHtCbV4wpjpUc9UpiAPudEPSifUYbvLLbTgb2nJ9BccYp56sBx5H6qHMuDtIRwX2U5NrOV3lk1
	kwTTHNu16j8zhG+KCXCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjC3z-0005Ut-2F; Fri, 05 Jul 2019 00:26:55 +0000
Received: from mail-am5eur03on060f.outbound.protection.outlook.com
 ([2a01:111:f400:fe08::60f]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjC3m-0005UK-0M
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jul 2019 00:26:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WGziptvsj5NuUVTGH1rzLHrnPaAuypv9P4eX/Pp1EAU=;
 b=ECL3zQYj0FpA3jFhuDSM7N2Y9edrXBKmmQUTWQ6FwJZL1gYfrz4kKCqzKZPiruRZx53yZNDQD+uauZPghxzC+es3kFFohyEEA55uvzQVE7QqHHCo79cBZdDSwxCBMhW9A95nWdEAyyCs2iza4z4mnJ6qAIBzr7617/R8obA5PDs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3755.eurprd04.prod.outlook.com (52.134.71.155) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Fri, 5 Jul 2019 00:26:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2052.010; Fri, 5 Jul 2019
 00:26:38 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Philipp Zabel <p.zabel@pengutronix.de>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>, "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Leonard Crestez
 <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>, Daniel Baluta
 <daniel.baluta@nxp.com>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH V3 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Thread-Topic: [PATCH V3 1/2] dt-bindings: reset: imx7: Add support for i.MX8MM
Thread-Index: AQHVMk5T8ePkVlGuXEKfzs7Ixfs7tqa6PluAgADs2ZA=
Date: Fri, 5 Jul 2019 00:26:38 +0000
Message-ID: <DB3PR0402MB39167B9A3CFAE6D8798B3CAEF5F50@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190704094416.4757-1-Anson.Huang@nxp.com>
 <1562235363.6641.10.camel@pengutronix.de>
In-Reply-To: <1562235363.6641.10.camel@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3f3ca13b-04a9-4221-ea51-08d700df7201
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3755; 
x-ms-traffictypediagnostic: DB3PR0402MB3755:
x-microsoft-antispam-prvs: <DB3PR0402MB37558948A0E7C199FDCA580EF5F50@DB3PR0402MB3755.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 008960E8EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(39860400002)(136003)(396003)(199004)(189003)(305945005)(6436002)(7736002)(478600001)(25786009)(53936002)(99286004)(2501003)(7696005)(26005)(446003)(11346002)(186003)(110136005)(486006)(81166006)(66556008)(8676002)(229853002)(81156014)(256004)(316002)(64756008)(66946007)(66476007)(66446008)(76116006)(476003)(73956011)(74316002)(8936002)(44832011)(2906002)(14444005)(76176011)(6246003)(71200400001)(5660300002)(9686003)(86362001)(55016002)(33656002)(6506007)(71190400001)(68736007)(2201001)(52536014)(14454004)(66066001)(3846002)(6116002)(4326008)(102836004)(7416002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3755;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 6jZk33i6j0vGIuTyoG10V9qUbvgqy2ipVxr+TYsa2zWEVUFJS97IF4I0rYgf2zg+6FV0XTYOHuhMSSbWZIZtuKq05VBiYW9wn8azb44CXh0Wn/+L19fuKM/mhezWkdkKvcjoQqv1XMww2AjqJ+tX1mDVImHLlfrjaasqVyaxCEV4HN+27Kzukw9QNEce0n3zOxwOtaODvP75uJtj4cxxHHb0qMESolkAWhMjCTTT2rKQRjz31tl1TkxW0HrbYxvWAGuV7dSCtKcVMd4GoRvlUmNILDl3PKs5/Cs2K1gRn6raD7P4pkmCpNOagQLBSL6k2ImntDwRGgbDcSMVHKzKRPaXmoM6xFI0oZvFAPr6eEgds8Fvnv2IQDl5moqxWjIzNJemTjChpTavBJOdNoihga7oWFvKiy+8zCtr4JxFr3c=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3f3ca13b-04a9-4221-ea51-08d700df7201
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Jul 2019 00:26:38.5320 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3755
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_172642_172779_34C61C78 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe08:0:0:0:60f listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Philipp

> On Thu, 2019-07-04 at 17:44 +0800, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > i.MX8MM can reuse i.MX8MQ's reset driver, update the compatible
> > property and related info to support i.MX8MM.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > Changes since V2:
> > 	- Add separate line for i.MX8MM in case anything different later for
> i.MX8MM.
> > ---
> >  Documentation/devicetree/bindings/reset/fsl,imx7-src.txt | 6 ++++--
> >  1 file changed, 4 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > index 13e0951..c2489e4 100644
> > --- a/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > +++ b/Documentation/devicetree/bindings/reset/fsl,imx7-src.txt
> > @@ -8,6 +8,7 @@ Required properties:
> >  - compatible:
> >  	- For i.MX7 SoCs should be "fsl,imx7d-src", "syscon"
> >  	- For i.MX8MQ SoCs should be "fsl,imx8mq-src", "syscon"
> > +	- For i.MX8MM SoCs should be "fsl,imx8mm-src", "fsl,imx8mq-src",
> "syscon"
> >  - reg: should be register base and length as documented in the
> >    datasheet
> >  - interrupts: Should contain SRC interrupt @@ -46,5 +47,6 @@ Example:
> >
> >
> >  For list of all valid reset indices see
> > -<dt-bindings/reset/imx7-reset.h> for i.MX7 and
> > -<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ
> > +<dt-bindings/reset/imx7-reset.h> for i.MX7,
> > +<dt-bindings/reset/imx8mq-reset.h> for i.MX8MQ and
> > +<dt-bindings/reset/imx8mq-reset.h> for i.MX8MM
> 
> The last line is misleading, as that file contains reset indices that are invalid
> for i.MX8MM.

What is your suggestion about this line? Just NOT change it? Or adding a new file
imx8mm-reset.h but still use the IMX8MQ_RESET_ as prefix ? Or keep what I changed, but
adding some comments in those macros that i.MX8MM does NOT support?

Thanks,
Anson.

> 
> regards
> Philipp
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
