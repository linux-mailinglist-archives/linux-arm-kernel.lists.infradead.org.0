Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88DD9BAC9D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Sep 2019 04:32:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zu5GNHIjPJys4c/BzkrlBzNehMrhrolL1NQUQiaCVU=; b=BD3sp0L2TWHBgw
	4elU+DfNegGDELO8Py+NrI2HjkwNQQM6ZPllzNCk/wRtA58RSDT0UC+DfmX84qP/1lyEPz5Rq5fXn
	ZfH4IqBNl33JtNF0XadXDpWlTRW6Xj6+vWZdS0JE8BVyEUQn5mcbpJqyage/sDxJWRgggD5V7Uwkr
	r6ZwuxFneB8yNrwXTvgmcDF6OlAfF10cD4j+fB5gybl34oszUNqYe2ti5ebxvDtbk5t2I5vHlov4u
	SZg7/CTUmMLbmAX7qylcRulGk3I8kXkWtlVQRCsoenrrit7yJwaPk1zx+3bkuEF36iFpFOpYkM7+F
	tZ9z8yXY408jxVhj6Ppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCE9I-0000HU-Ej; Mon, 23 Sep 2019 02:32:24 +0000
Received: from mail-eopbgr50048.outbound.protection.outlook.com ([40.107.5.48]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCE8x-0000GI-G4
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Sep 2019 02:32:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MiqhAYwQq/jLlgzpbB6pSqzRvy7AHC5qyqWdJmZbfHRl/BurnGZGVlF1sMRZB1oHduvhyLP+C6crwzirx1asiTF+fhEuObN2IniIFSy3RqwRNt1jGHd3/RwAlwkwTSwcKDvJL6nKG93pAL7V6aE24qqYlV4ZEsqpcXRIYwvBugVZ7LoNRj2dyhmSjeaDs/FLoWaWV2X5JknzKIYxLuxjyDN4564x+8VSn7QdtuYYX3Iy5z4FfaibRMCVw6ehV1MSdpjUsnQzkLWN0FA060sPURYsWjaFG07bVtdFfxJicCGMPwyiRTQfhrOoowQTVkrxhkRC25TXA2euDDJ//alMBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXexYZgyb30xg8+wG1kTxvsSjldWPZdcp50aSclEpA8=;
 b=cQZxIXnzJk3Zqq3IyurCcSYfJGJW8JkkcRoD5AqukzrXdI5Q6/JWkgkln7gqAsULPfXiN03Mnxbkki69fKmOMLnc/oXZ0cu9klPw0H6CIkbIBlo3j0bjHgs0hud15tB5TXU4zty2rBQefiXJ4NThDRpE0/tI4SThi2wbGPVE7pkHE2hH2PuwawN7OzU9pwZeCicNHmn4DldxZyjGQoBceGeNnBmlKd3sTAB9WCTsxksRxaPJYyshhBrU5H5ZVJFir+SkIOpcPMR/sV6Px/Mo5Ik2BknaZ2FpFipsEYqYGB4i60/GvpD+8xlhSS3M6VEeznCNiZWJ0zP6FYy+9PtsXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jXexYZgyb30xg8+wG1kTxvsSjldWPZdcp50aSclEpA8=;
 b=phZD9OxZFT3BGCsinf/olI6Yb5cUZs5BjB0DxXiZvoXsagSw6sTUhmCsXtztVs3U1UC5hnNyHTqhS9Yb48EAH14o9gflj7YM4I4rDdLzVHVFBRe7oetLybxw0IP1gFfiHKrkxLWXqpNIJePA4Dxj/BtIy+eNT23SrSz0ONxhoBk=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3643.eurprd04.prod.outlook.com (52.134.66.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.23; Mon, 23 Sep 2019 02:31:56 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.023; Mon, 23 Sep 2019
 02:31:56 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Pavel Machek <pavel@ucw.cz>
Subject: RE: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Topic: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
Thread-Index: AQHVYfv+INaxBRtrokqtKaL9fDhNpqc3/XWAgACrFbA=
Date: Mon, 23 Sep 2019 02:31:56 +0000
Message-ID: <DB3PR0402MB391673C02411B57F815DE609F5850@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1567519424-32271-1-git-send-email-Anson.Huang@nxp.com>
 <20190922161347.GB1999@bug>
In-Reply-To: <20190922161347.GB1999@bug>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cdd1d5bd-78d2-41c0-2c75-08d73fce3410
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600167)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3643; 
x-ms-traffictypediagnostic: DB3PR0402MB3643:|DB3PR0402MB3643:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB36438622B7CD3A32E6B68D4AF5850@DB3PR0402MB3643.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0169092318
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(396003)(376002)(346002)(199004)(189003)(6506007)(71200400001)(71190400001)(476003)(2906002)(7416002)(81166006)(8676002)(8936002)(3846002)(486006)(81156014)(66066001)(54906003)(55016002)(229853002)(33656002)(6436002)(7736002)(6116002)(305945005)(44832011)(74316002)(6916009)(86362001)(478600001)(25786009)(14454004)(9686003)(316002)(26005)(186003)(66946007)(6246003)(256004)(102836004)(7696005)(76176011)(99286004)(52536014)(11346002)(64756008)(66446008)(4326008)(66556008)(66476007)(5660300002)(76116006)(446003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3643;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KM/QkZvK6NilBbL8WnsRefPHUP9T7AernS6G9vG8f55IDDzZhFwb35/Ap5wHPjiAy+eUt5prAu+H+fHAtGjWmrM7J7YQh1m2nXcVdvdyvv8lV9tTMSiZDcNxale2pjYa53DkKhjHImKx2cHPzO6l+74yfBbrvqmiQhiwGx8GrSHH+Bl7DPtQFWeerH6yV7IXnnmVRmAnogSNXaAGA48nvdv9HwaE5d59xTOTkmOdkVBvUcjhwbGy+aaK5fvnLNBaKNAO74c3cxTYl63HhXFcLn16KfX5aNlA6OHypOiwYCxyskkOSfYBHnFOBzRFQiHaxMw6pk05qbwJPwgc8wzpoOCFJh5i+R7fND1VFzucbMF5+BZha65vqIAYj9ZDRaG5zgL7G7jT1DiFZJTfkdPrKdWCRtGgmJL/ngjvIKyEiLM=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdd1d5bd-78d2-41c0-2c75-08d73fce3410
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Sep 2019 02:31:56.4233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nyOnnErDz0NRiXgpBuaaBJH15IkhcVUcJPbDl3PzNRPRsMSqiyPjksWhIqE9X2BOyRkzGZfbncDqMhhoGxYPlg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3643
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190922_193203_620483_2E038D91 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>,
 Jacky Bai <ping.bai@nxp.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 Peng Fan <peng.fan@nxp.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 Leonard Crestez <leonard.crestez@nxp.com>, "will@kernel.org" <will@kernel.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "yuehaibing@huawei.com" <yuehaibing@huawei.com>,
 "marcin.juszkiewicz@linaro.org" <marcin.juszkiewicz@linaro.org>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
 "ronald@innovation.ch" <ronald@innovation.ch>,
 dl-linux-imx <linux-imx@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "mripard@kernel.org" <mripard@kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 "andriy.shevchenko@linux.intel.com" <andriy.shevchenko@linux.intel.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, Andy Duan <fugang.duan@nxp.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "dmitry.torokhov@gmail.com" <dmitry.torokhov@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Pavel

> Subject: Re: [PATCH V2 1/5] dt-bindings: fsl: scu: add scu power key binding
> 
> Hi!
> 
> > NXP i.MX8QXP is an ARMv8 SoC with a Cortex-M4 core inside as system
> > controller, the system controller is in charge of system power, clock
> > and power key event etc. management, Linux kernel has to communicate
> > with system controller via MU (message unit) IPC to get power key
> > event, add binding doc for i.MX system controller power key driver.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> > +++ b/Documentation/devicetree/bindings/arm/freescale/fsl,scu.txt
> > @@ -157,6 +157,15 @@ Required properties:
> >  Optional properties:
> >  - timeout-sec: contains the watchdog timeout in seconds.
> >
> > +Power key bindings based on SCU Message Protocol
> > +------------------------------------------------------------
> > +
> > +Required properties:
> > +- compatible: should be:
> > +              "fsl,imx8qxp-sc-pwrkey"
> > +              followed by "fsl,imx-sc-pwrkey";
> > +- linux,keycodes: See
> > +Documentation/devicetree/bindings/input/keys.txt
> 
> Actually there's no reason for having "linux,keycodes" property when it is
> always a power button.
The latest version of patch already change the compatible name to *-sc-key which
is more general as key driver, so the "linux,keycodes" is needed now for driver
to define the key function.

Thanks,
Anson 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
