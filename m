Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DD1E59413
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 08:16:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x2oAg5id1pVkuuN0mfaGSH60BjVTRGC20Y9dDcDMylo=; b=JEPMuW3knP+joJ
	BDczmVhhtY60svZ3+ssmiakCU0zR7eiNbPo6RqQn1dhbQtKf9X1qr976MEBBPSLxYoEvArun5lGBz
	AcReI61HG1i+MrSxBmGraql/kcXllvkX7XSLI44eSZsP6G060BuX9NfG47oT/LBOYyLzFA7g6RyKH
	C/RKr3aI/kCQHFPKEPsNCaMtCaZOUcv5lS1v8HHdq4uvyWM+o0NS6zEbvvIricxNHpVlg/2ZF8C7q
	4xTG1/JgrbAgTmrKLNdSq4a8MlVt+cyryp0r50oo1bqQvjEUtUEVLcO9kBa/Ug9aqU8RDEuHeF+IJ
	yFswWiZ0ac36kz31bslw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgkBG-0006Ei-2Q; Fri, 28 Jun 2019 06:16:18 +0000
Received: from mail-eopbgr140055.outbound.protection.outlook.com
 ([40.107.14.55] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgkB1-0006E4-HU
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 06:16:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+BV46yX/0oYx/ElfV9CKy95sbRnD1yIUVbioe7zWDhk=;
 b=VrpvgnktL4k5VQxtdztodoTMHA7ZHYu0Ts5xl/cbx4dt7sHN04CegvWMbp4BOa4A16OL6PFCB57i0asRdpwbPdypOm2fp8gXGISMK2ZAZ0jSittckl65bOpvibZPG43evLDfkY1zBuxnvgOa8+yZS8txIigOpetmNqFyxlkbpl4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3865.eurprd04.prod.outlook.com (52.134.73.19) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.17; Fri, 28 Jun 2019 06:16:00 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.018; Fri, 28 Jun 2019
 06:16:00 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, Jacky Bai <ping.bai@nxp.com>, "l.stach@pengutronix.de"
 <l.stach@pengutronix.de>
Subject: RE: [PATCH 1/2] arm64: dts: imx8mq: Correct OPP table according to
 latest datasheet
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mq: Correct OPP table according to
 latest datasheet
Thread-Index: AQHVLWLGC+RlanjcBUWXXhB78aHmNqawlITg
Date: Fri, 28 Jun 2019 06:16:00 +0000
Message-ID: <DB3PR0402MB39161C60DC780B693933F9EAF5FC0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190628032800.8428-1-Anson.Huang@nxp.com>
 <VI1PR04MB50553915C0D978A8019BDC5CEEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
In-Reply-To: <VI1PR04MB50553915C0D978A8019BDC5CEEFC0@VI1PR04MB5055.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c0d5d6b8-74ff-4637-bccc-08d6fb90172b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3865; 
x-ms-traffictypediagnostic: DB3PR0402MB3865:
x-microsoft-antispam-prvs: <DB3PR0402MB3865EA2B1D0EE068FD8DE3DFF5FC0@DB3PR0402MB3865.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 00826B6158
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(376002)(396003)(189003)(199004)(13464003)(478600001)(186003)(102836004)(316002)(26005)(110136005)(6246003)(54906003)(229853002)(11346002)(476003)(99286004)(8676002)(4326008)(8936002)(53936002)(81156014)(9686003)(55016002)(7696005)(44832011)(81166006)(6436002)(446003)(14444005)(6506007)(53546011)(256004)(76176011)(33656002)(68736007)(2501003)(74316002)(66066001)(305945005)(71190400001)(486006)(3846002)(6116002)(7736002)(14454004)(25786009)(52536014)(66446008)(76116006)(71200400001)(66476007)(66556008)(64756008)(66946007)(73956011)(5660300002)(7416002)(86362001)(2906002)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3865;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U2kfR7jcPLVwDqhJCVNT/HyW53ab6R27wCqFPaCdoac5s5Ezu3FJjKm9SqwJyCGlsHlp8dKgKcAvFK/Yu3jyxAGrdxb5+bru/wf0gLa18GZlc4ei7++84JCKAT6g6e67kOnPOeLpvdCIkEGXhK34US9fXXp5iAZzmvzhlXQU2DRf+eN+4z0VCmKGakubYs3eg++FFXPhoFMvwFBXjEceHAaCUfz4MLQU3TIt2XKC9Z20YOEUdOJRlgoQ3PXe0fYTN4Zk8MDUcyq6gVHJZlVo/TC9RxFujrz09MWNkIkbAD9OYqM8qMNu1MvPwpW8e4lD/1roP5wcp5RVjotDkk8dxWvfYPSFSMdSv+Kvi54xJGEDMk9xF1E+ebzlqd70WTz6jSQYzJ/vvgs/aIcp6bLdWPW9k8RfWKuX+my+PkqiGVY=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0d5d6b8-74ff-4637-bccc-08d6fb90172b
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2019 06:16:00.0999 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3865
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_231603_584016_FDF1F143 
X-CRM114-Status: GOOD (  19.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.55 listed in list.dnswl.org]
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
 "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "angus@akkea.ca" <angus@akkea.ca>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "agx@sigxcpu.org" <agx@sigxcpu.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> -----Original Message-----
> From: Leonard Crestez
> Sent: Friday, June 28, 2019 1:59 PM
> To: Anson Huang <anson.huang@nxp.com>; shawnguo@kernel.org; Jacky
> Bai <ping.bai@nxp.com>; l.stach@pengutronix.de
> Cc: robh+dt@kernel.org; mark.rutland@arm.com; s.hauer@pengutronix.de;
> kernel@pengutronix.de; festevam@gmail.com; viresh.kumar@linaro.org;
> Daniel Baluta <daniel.baluta@nxp.com>; Abel Vesa <abel.vesa@nxp.com>;
> andrew.smirnov@gmail.com; ccaione@baylibre.com; angus@akkea.ca;
> agx@sigxcpu.org; devicetree@vger.kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>
> Subject: Re: [PATCH 1/2] arm64: dts: imx8mq: Correct OPP table according to
> latest datasheet
> 
> On 28.06.2019 06:37, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > According to latest datasheet (Rev.1, 10/2018) from below links, in
> > the consumer datasheet, 1.5GHz is mentioned as highest opp but depends
> > on speed grading fuse, and in the industrial datasheet, 1.3GHz is
> > mentioned as highest opp but depends on speed grading fuse. 1.5GHz and
> > 1.3GHz opp use same voltage, so no need for consumer part to support
> > 1.3GHz opp, with same voltage, CPU should run at highest frequency in
> > order to go into idle as quick as possible, this can save power.
> 
> I looked at the same datasheets and it's not clear to me that 1.3 Ghz should
> be disallowed for consumer parts. Power consumption increases with both
> voltage and frequency so having two OPPs with same voltage does make
> sense.

The consumer part datasheet does NOT mention 1.3GHz at all, so consumer part ONLY
support 1GHz/1.5GHz, and industrial part ONLY support 800MHz/1.3GHz, this is what
we did in our internal tree and NPI release, so better to make them aligned, otherwise,
we have to change it when kernel upgrade.

And normally, with same voltage, i.MX SoCs always run at highest frequency, so it is better
to keep the rule, otherwise customer may ask, how about using same voltage to run at 1.2GHz or
1.1GHz?

> 
> >   			opp-hz = /bits/ 64 <1300000000>;
> >   			opp-microvolt = <1000000>;
> > -			opp-supported-hw = <0xc>, <0x7>;
> > +			/* Industrial only but rely on speed grading */
> > +			opp-supported-hw = <0xc>, <0x4>;
> 
> Comment is false, you're explicitly excluding consumer parts via the second
> element.

Yes, that is what I meant to do, as we no need to support 1.3GHz for consumer
part, with 1.0V, consumer part can run up to 1.5GHz.

> 
> >   			opp-hz = /bits/ 64 <1500000000>;
> >   			opp-microvolt = <1000000>;
> >   			/* Consumer only but rely on speed grading */
> > -			opp-supported-hw = <0x8>, <0x7>;
> > +			opp-supported-hw = <0x8>, <0x3>;
> 
> If you don't want to rely on the fact that only consumer parts should be
> fused for 1.5 Ghz then please delete the comment.

Don't quite understand, 1.5GHz is indeed consumer ONLY, but if the consumer
part is fused to 1GHz, then 1.5GHz is also NOT available, so it also rely on speed
grading. So keep the comment there is OK?

Thanks,
Anson.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
