Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBBA7449F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 07:02:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LETemdhdngRIDPGh1DhWSbvhHShVcI3Iz2w7O6yD8b0=; b=X1qg9tSOGu99lP
	PKiz3hE1TCpvNj02ZG4Ww2uwJKVDJj7u2IrNzDDCGC0RM1HdoQOhomfYHHSu1CmlfU10PBDvI7D3n
	uUZGdU9hQ4uHLPNsbyw/vqhNOjDhisTwolCV1HlJ39GjmxJEtn2E9BXXY+BRE6kHfcR0Fp71mGJvN
	8tgczuDmP51KIP9FYmX8OGqlakR2rE5bOACUS3NzvDQS4SddHEpYFYy9t1OJhWiYJWZtdIpW9XRA+
	BSXPFL2z+pllefSV4PyP/bawtMPQTulpTSWSZtyCh1AzlTeLqh6/8XtaSR+2AWGDWX89pDHAlY3Ci
	vnT/T+dEsYNxDIK3wgdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqVt6-0000H6-7m; Thu, 25 Jul 2019 05:01:56 +0000
Received: from mail-eopbgr150040.outbound.protection.outlook.com
 ([40.107.15.40] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqVsS-0000Fh-Vc
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 05:01:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W1uqln14pPNXeBBG06PljrKrep6/JF8Zv+uDRZVA6NLDUrPa/5OeXpVgi26bI8SQaq2Lhu4ODuWxpE5lKSTJCW24Qiuwa6W0XRsjaxFYNL4FENiI/8HRFctz2FZMsekClEVJyD76tJLn8jxw7zSoU9IUVCkuhD74aBrKe32zNEjX0+KMgJyJ9rlhD+JLbX8IYNqa8F6HPznqCtErrZM/z3AzCWSnQqG8MFhW+avwP2s51FLZSlyQgsvBm7VleAQQHtFK41dJRf7hX1zMlM1Y+6IGOMcCMBnQitAGlE2bjlFj1RW/P0RHdT93cceTcBexEJqqmNNsM7I4CVCOUd1ssA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a0QMxqmWkFDkSsvkTqEc8WQd+7/KxSQSAZ5sD/pnr6I=;
 b=f76Okh12szXQ+vOt55C2A+RovguDrS/MyNOsmxNFDeNvxV9C67+KJj7ppp/zmlflxkFavk8L1ihBxy4/QvCbJl21++R1GY3qW5E8H/FD3KVy4A5sz3P2mQ8oLgV3uDx2tBQOgPrWan0yZ7MubmCwlb4UFFngo95WPgyfTz2yAbhD2NpzfYzO7e0ZuC0ZIz96KtAt3tLiTsltEY6A12j6wqNc1+gNrfzBHpclFe0eoChftcC35x/W/GbpnE+BuKAXZjdie1nkcYgWJ55WBvTG2+XxbMK6eTVpegpbm7B14bU/8UwZ/ZKzgZEVtiNt5m4rJqr/jd7p4mZA6GHFkqFT0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=nxp.com;dmarc=pass action=none header.from=nxp.com;dkim=pass
 header.d=nxp.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a0QMxqmWkFDkSsvkTqEc8WQd+7/KxSQSAZ5sD/pnr6I=;
 b=SYoHO8XWFUC+1wG1qZzC0HDU7shXenrck2t8SClzXb2hFHvKdBPEEdAiL+9NI2nR0xupyKnnizQAwbSJZoAcIJBkjc2d/cyaXduxMxUzgTFI7My5rTG3SoV7gWEKRw5P66oq1BQICUxMxJY1tjoQLovaGtZJXrVLvhY46JSKpq4=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3754.eurprd04.prod.outlook.com (52.134.67.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Thu, 25 Jul 2019 05:01:07 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2094.017; Thu, 25 Jul 2019
 05:01:07 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Viresh Kumar <viresh.kumar@linaro.org>, Shawn Guo <shawnguo@kernel.org>
Subject: RE: [PATCH V2 1/4] dt-bindings: opp: Support multiple opp-suspend
 properties
Thread-Topic: [PATCH V2 1/4] dt-bindings: opp: Support multiple opp-suspend
 properties
Thread-Index: AQHVNi2qV9keysXgFk2WQTpmSP5dxqbatEqAgAAq9PA=
Date: Thu, 25 Jul 2019 05:01:06 +0000
Message-ID: <DB3PR0402MB3916B85B1CEAADF83DA04C68F5C10@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190709080015.43442-1-Anson.Huang@nxp.com>
 <20190725022611.f6dirdstu3yndcwy@vireshk-i7>
In-Reply-To: <20190725022611.f6dirdstu3yndcwy@vireshk-i7>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 43b77ee7-6127-4938-de61-08d710bd1a4a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3754; 
x-ms-traffictypediagnostic: DB3PR0402MB3754:
x-microsoft-antispam-prvs: <DB3PR0402MB3754E440152CEFCA1BC7275EF5C10@DB3PR0402MB3754.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0109D382B0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(376002)(366004)(346002)(199004)(189003)(25786009)(14444005)(8936002)(5660300002)(6116002)(110136005)(54906003)(6246003)(81156014)(8676002)(74316002)(4326008)(3846002)(15650500001)(2906002)(316002)(14454004)(53936002)(305945005)(446003)(81166006)(256004)(186003)(53546011)(476003)(7736002)(52536014)(66066001)(478600001)(66476007)(68736007)(64756008)(66556008)(76176011)(44832011)(7696005)(66446008)(33656002)(76116006)(4744005)(486006)(71190400001)(9686003)(6506007)(71200400001)(26005)(229853002)(55016002)(86362001)(11346002)(99286004)(102836004)(6436002)(66946007)(7416002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3754;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cr308nxpIAAhlvWK3El329hoZGhvE12f2oXKylq76FoESYD0LgKcTMJtKD43CCpw2Z52jjd9hnjAxmC3uFxK5ZWXEZswborGpDzhSLTv9QlG4F42A6QipW1wZDl/TEakOkws+ThlGeNYqsie1/dXZxX2wd6VOm8lkyM4JWsP+7iSbflDYi+C2ihOQcq90i6j3Ok1sW82nsrZSur3JkJst6MB1+RehhqUZI9usfGwjqQpi1wpLHi5tYB3ZkefIuLY0IYC852vU+Au+4lxiYA+TSPK2viBgwoYFSj7sxZLJvtAPVmmvoJwMCM3x6rpxvLb/siCJ+V3f9yRadKebbkotKqYYEvtgJqdWl50ry0c2DhVLftNwLpMCcCI0fgavS5UgdLzshoQJGwo2QPJ1PAHV+RWSLIuQhgA/F4C9nks+4M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43b77ee7-6127-4938-de61-08d710bd1a4a
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jul 2019 05:01:06.8554 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3754
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_220117_025318_A7BE0E37 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.40 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "nm@ti.com" <nm@ti.com>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Jacky Bai <ping.bai@nxp.com>, "ccaione@baylibre.com" <ccaione@baylibre.com>,
 "agx@sigxcpu.org" <agx@sigxcpu.org>, "angus@akkea.ca" <angus@akkea.ca>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 "andrew.smirnov@gmail.com" <andrew.smirnov@gmail.com>,
 "vireshk@kernel.org" <vireshk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "sboyd@kernel.org" <sboyd@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Shawn

> On 09-07-19, 16:00, Anson.Huang@nxp.com wrote:
> > From: Anson Huang <Anson.Huang@nxp.com>
> >
> > Update opp-suspend property's description to support multiple
> > opp-suspend properties defined in DT, the OPP with highest opp-hz and
> > with opp-suspend property present will be used as suspend opp.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> > ---
> > New patch.
> > ---
> >  Documentation/devicetree/bindings/opp/opp.txt | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> Applied. Thanks.

Would you pick up the DT patches in this series? Thanks.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
