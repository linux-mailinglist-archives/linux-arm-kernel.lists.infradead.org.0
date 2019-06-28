Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1670559418
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:17:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arjpuMx3Yp/b6VkQ93XnAzDWAjSaZeNNfy6i90rGpV8=; b=comQxXT3LkxyUQ
	Oe3iVtYetWuu7++4DI4D7b5YqBAYS4YR3GZywoggrRlqxEDZ4ifhSKcChaSQU19KHFpHb3ZLU1tBC
	Fv8tNonKGPfQ2R7a6ePd6bLokCghy2o43oFCHtmakWzJ4GWE/p1rjRhFJUXxLj5upRqlWmUeAgNWW
	tkTI3EOiZRJp69ShZ+Jq2kscpqKwgphr0ttB4drIsj2KVMXsxzsjk16MP/bkF686Td/M7bmb5wKvu
	bTy+xQFhTTnHQB7qNn7n/4VIgMBqL5xT0v4j4QTII2l8rm+mxK1q+nWa3WOdGDFDrV08gpWHLcAFX
	jARkFQPDAbM/aMYbHabg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkCF-0006Yw-BG; Fri, 28 Jun 2019 06:17:19 +0000
Received: from mail-eopbgr140081.outbound.protection.outlook.com
 ([40.107.14.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkC1-0006Y5-Rb
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 06:17:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Otidic48NaX7uFm0CLUqjtm4OAKPL0s2t8BR6VoEfM=;
 b=hKTRZylDYqFaT3Nl+sxnQNDmlsp6d0GT5fY+jIvl4uUhjCGgJ123iO5A7cONg1a43ULK42ed8aUllFeDcpsFgxYNlQcDG8NaNrwz1RBKWtZtUijx0L/n9ykm2eM/Pjo5i9jXs5E20BPMn60F2CRIkf1QDFZDptVWrhKeIkE3VGc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3865.eurprd04.prod.outlook.com (52.134.73.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Fri, 28 Jun 2019 06:17:03 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.018; Fri, 28 Jun 2019
 06:17:03 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Subject: RE: [PATCH 2/2] arm64: dts: imx8mm: Correct OPP table according to
 latest datasheet
Thread-Topic: [PATCH 2/2] arm64: dts: imx8mm: Correct OPP table according to
 latest datasheet
Thread-Index: AQHVLWLHg6KdHi+3c0WVoeANpMOeYKawly3g
Date: Fri, 28 Jun 2019 06:17:02 +0000
Message-ID: <DB3PR0402MB39167143DD42C6A76B2A2A7BF5FC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190628032800.8428-1-Anson.Huang@nxp.com>
 <20190628032800.8428-2-Anson.Huang@nxp.com>
 <VI1PR04MB50555399D8A3E4890D8C91E6EEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB50555399D8A3E4890D8C91E6EEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: f195e96d-962b-4bb8-4662-08d6fb903c9c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3865; 
x-ms-traffictypediagnostic: DB3PR0402MB3865:
x-microsoft-antispam-prvs: <DB3PR0402MB386521395D4831DE55E24A07F5FC0@DB3PR0402MB3865.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(376002)(396003)(189003)(199004)(13464003)(478600001)(186003)(102836004)(316002)(26005)(110136005)(6246003)(54906003)(229853002)(11346002)(476003)(99286004)(8676002)(4326008)(8936002)(53936002)(81156014)(9686003)(55016002)(7696005)(44832011)(81166006)(6436002)(446003)(14444005)(6506007)(53546011)(256004)(76176011)(33656002)(68736007)(2501003)(74316002)(66066001)(305945005)(71190400001)(486006)(3846002)(6116002)(7736002)(14454004)(25786009)(52536014)(66446008)(76116006)(71200400001)(66476007)(66556008)(64756008)(66946007)(73956011)(5660300002)(7416002)(86362001)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3865;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 7aHZv2Z+/LQt2E4z6FNrLKUi+ryzGj/FHSH41Q6EbbDI6o5Glfzg65pIi1nlV+TNQC1sglHGChE/4zj0dw8CfnXvUXGWHcecpg+GKxGbivsH2I8DfGInpo6WzjzHSGQX5LSgM4hs0WXCK1cIurrJD15i14JoTukl0BxJzMRsttr9EQHNIjVm5G1XetEmMFcKUaDLqU+5jNPb1zya4xusJiU86jH4NUxW1CrfAvapkIXD4HF9qGqqc6kKC7f4FtrmKzD3z+cJIQ6KZloeiHKtlxEBkECRcQq9we06NTVCurOy88iX+wK7PUempNiUa1N8XL9VhK4WXgTBqBlyBElNkaBHKVfkXeDmQl2OkYFOhvgmRjk9LWR2WIwlM2z2kGdOYXpV3uA9DCACyRb1edzZ7RWEXY1LegdLVQA18qimPlU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f195e96d-962b-4bb8-4662-08d6fb903c9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 06:17:02.9001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_231705_898165_5FCACD0E 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> -----Original Message-----
> From: Leonard Crestez
> Sent: Friday, June 28, 2019 2:01 PM
> To: Anson Huang <anson.huang@nxp.com>; Jacky Bai <ping.bai@nxp.com>;
> l.stach@pengutronix.de
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; shawnguo@kernel.org;
> s.hauer@pengutronix.de; kernel@pengutronix.de; festevam@gmail.com;
> viresh.kumar@linaro.org; Daniel Baluta <daniel.baluta@nxp.com>; Abel
> Vesa <abel.vesa@nxp.com>; andrew.smirnov@gmail.com;
> ccaione@baylibre.com; angus@akkea.ca; agx@sigxcpu.org;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> kernel@vger.kernel.org; dl-linux-imx <linux-imx@nxp.com>
> Subject: Re: [PATCH 2/2] arm64: dts: imx8mm: Correct OPP table according to
> latest datasheet
> 
> On 28.06.2019 06:37, Anson.Huang@nxp.com wrote:
> 
> > According to latest datasheet (Rev.0.2, 04/2019) from below links,
> > 1.8GHz is ONLY available for consumer part, so the market segment bits
> > for 1.8GHz opp should ONLY available for consumer part accordingly.
> >
> >   			opp-hz = /bits/ 64 <1800000000>;
> >   			opp-microvolt = <1000000>;
> >   			/* Consumer only but rely on speed grading */
> > -			opp-supported-hw = <0x8>, <0x7>;
> > +			opp-supported-hw = <0x8>, <0x3>;
> 
> Only consumer parts should be fused for this highest OPP. If you don't want
> to rely on this then maybe also delete the comment above?

As I replied in previous i.MX8MQ patch, if the comments make reader confused,
should we just remove all those comments?

Thanks,
Anson.

> 
> --
> Regards,
> leonard
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
