Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAFDBD667
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Sep 2019 04:36:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hav19DJIpmy2kgBlBf0R8ZzgXAqTGwUEtyN3pRfNGdw=; b=fD4tKZzMz00oV7
	oDoxrMwgc7tTyNboEOcbfxM/2nlhvZKErOojbf6qELCf7EopAhjqB+WQsEsg/STiD/Qme48fk0NEp
	3ICbZcFn71KY5lh23sBUtxOWLdIyNOO962UrhylSxwpvNe+q9hG5GGEaKQRDOzat2BQeS6jG7+pEH
	Nwhsx5jHJcECvX5fr9BBCcrhb7KxCVL8iDfQW6vO2KIauZMnJxsOJIQ0obVHik5VP7NFcwHYfDhs2
	Lq4cF3fU/u1Ot4mubT/rfPathhHil+kyxDiob6cPoOy6ul4C+D3uvt7A5n4lntQl5qN14LxFqiiFN
	MNtgfWMdGsZLqxBQZIyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iCxAQ-0001Xo-D5; Wed, 25 Sep 2019 02:36:34 +0000
Received: from mail-eopbgr130053.outbound.protection.outlook.com
 ([40.107.13.53] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iCxAF-0001X5-EY
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Sep 2019 02:36:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mBtoDBtkoz0lQkfdualSj5SI9idwkkgIS4StGySE2GclLxRajBHCpJx+nQexPnXTpIdbOVUtOXHRm3pWRfqmAf5e31kxV6GK1Zpj37wxXGIEMDtqdT6GnJrZz/CObH/s4yYJKzmvzeHIoE/b/gcOlBmBCU72RIDD2T8QuIoCCJTTORao8Uc2wspF6EoCxdT06rokIRsWYSakBRbPJ4yrdGpJsBl77lxj8Bd1J/790Jh6iMa+nN7RnSKOB7sSiviRnq999557z+Zcwss98WgCQMnUIpzlNgtO7uo/ez+o9JUNqvIKc7/gg5qPj5f6Uutf+6eS5uPzKAebVMrAyLS5nQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oTMY0GcYbBLTZctPnUK/z/R3ID7zD3s50PYhxLe9Mdg=;
 b=XMGVsxEwOlAYqOe6Svjot1evG/Qn4bkJNUIMcxrCwB5H4AEDYl3rEEeZEecaHPAM/KkheTf74PGDA5MUbMpN8MP9gPZoG1B+TrLCed9sDyCOPbWvuWOU6W2lfwMrE/T+CYLFpB8StYASYyBjYSStkuzKTzR2jcsY/UU11gBucn6H8yoWciaFPid2/DW0xZ0x8kX3hZAlFoCPpXsLcVbW0fe1P9i9CyqoaesVbirDeLdcgk9DBX1aK3TkRygEm6MMg80+0AFVGsJdcbQ6RMhWk13sLJkNcFVrvH2svc8kEQqrFa065Gge/OSiBo+rmz6Huk39Gh1QnKjSchIk72muuQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oTMY0GcYbBLTZctPnUK/z/R3ID7zD3s50PYhxLe9Mdg=;
 b=ZCNkPX0Y8ErBdzktxHStLv4zMflH4OX5JFpLC0fpLwNiwHoOYVPAU5IiODLvS5j7MCfvbKlhbnn9NTEuOmsNdFaIFHMug6q+q+KqUJvMcqyxz9DHdbSmmyqIQxuwRGQsjRy5M2PNaTwigzpAeunAlERaXjmKusHBLyZ1jjKmDIc=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3913.eurprd04.prod.outlook.com (52.134.65.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Wed, 25 Sep 2019 02:36:16 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::8958:299c:bc54:2a38%7]) with mapi id 15.20.2284.023; Wed, 25 Sep 2019
 02:36:16 +0000
From: Anson Huang <anson.huang@nxp.com>
To: David Laight <David.Laight@ACULAB.COM>, "thierry.reding@gmail.com"
 <thierry.reding@gmail.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "linux-pwm@vger.kernel.org" <linux-pwm@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: RE: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Thread-Topic: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
 repeatedly
Thread-Index: AQHVcra4SlIMDowCwkO5fDgX0dE1dKc6lGgAgAADXwCAAAyggIABCfgA
Date: Wed, 25 Sep 2019 02:36:16 +0000
Message-ID: <DB3PR0402MB3916A7A0C79C10B82B304BAAF5870@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1569315593-769-1-git-send-email-Anson.Huang@nxp.com>
 <6cfb1595992b46dc884731555e6f0334@AcuMS.aculab.com>
 <DB3PR0402MB3916FFD66797DAC0AB1110D8F5840@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <37b2481ac9094f27bf21325e2770abdb@AcuMS.aculab.com>
In-Reply-To: <37b2481ac9094f27bf21325e2770abdb@AcuMS.aculab.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 966542ed-75ff-4499-c164-08d741612403
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3913; 
x-ms-traffictypediagnostic: DB3PR0402MB3913:|DB3PR0402MB3913:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3913AA66297A44A31AADAA38F5870@DB3PR0402MB3913.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 01713B2841
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(376002)(396003)(39860400002)(189003)(199004)(71200400001)(6246003)(6506007)(186003)(5660300002)(76176011)(6436002)(7696005)(316002)(81166006)(55016002)(99286004)(86362001)(25786009)(2501003)(446003)(26005)(102836004)(229853002)(110136005)(6116002)(52536014)(8936002)(256004)(8676002)(81156014)(14444005)(476003)(66066001)(66946007)(2201001)(66446008)(3846002)(2906002)(76116006)(4326008)(11346002)(9686003)(14454004)(478600001)(66476007)(66556008)(7736002)(33656002)(305945005)(44832011)(486006)(74316002)(71190400001)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3913;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: otlQjttsMe/3TA8fYLn6yB0Nt4RxCdK+hWQAkTzLh+NRPMmm2CpLOdJAek9ohhaDhfo8Vo3/0crbftFZFZIMZl3xSZSbjR9PuRGMunzkvWHkNM8Pz6Av0iXl6zu+qrJa5VNtWvhfo7B31W6JIe5sBQ5tCf8pwNz713kFTkVRtl1WOnm21jMDFHpL0Zzg0aQ+uZwoR0Z0R+CfYWlfLPo/7HOGTIPWYC23XwiqawSSsHYy2MmDYYNoh4yJhoKeGAFpbfdnq7kvjC+qM/pHwDaV0aMUZb91cmwOYm1nQGQu7zbglRnwYswaAFltWAsmQpuTncEN/4keqqEWb1jZ1aHn6w+p53i5j4as4eThrCZC0aQIU1QjT2XbHoNFREXFBcetuyB/bDgvALb+mqya6R6N0vBuu3h6qNFg6JcVP9gRPuo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 966542ed-75ff-4499-c164-08d741612403
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Sep 2019 02:36:16.6934 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2qjkrbUiVkHnw1imT2VaYrznRiYBDRgUub4oFYSjX1xzliuGItB8yzRC4+uexH4Eq4rDSlmol4ZUe/XfXcrz0g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3913
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190924_193623_501892_A97F4648 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.53 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Hi, David

> Subject: RE: [PATCH] pwm: pwm-imx27: Use 'dev' instead of dereferencing it
> repeatedly
> 
> From: Anson Huang
> > Sent: 24 September 2019 11:03
> > Hi, David
> >
> > > Subject: RE: [PATCH] pwm: pwm-imx27: Use 'dev' instead of
> > > dereferencing it repeatedly
> > >
> > > From: Anson Huang
> > > > Sent: 24 September 2019 10:00
> > > > Add helper variable dev = &pdev->dev to simply the code.
> > > >
> ...
> > > >  static int pwm_imx27_probe(struct platform_device *pdev)  {
> > > > +	struct device *dev = &pdev->dev;
> > > >  	struct pwm_imx27_chip *imx;
> > > >
> > > > -	imx = devm_kzalloc(&pdev->dev, sizeof(*imx), GFP_KERNEL);
> > > > +	imx = devm_kzalloc(dev, sizeof(*imx), GFP_KERNEL);
> ...
> > > Hopefully the compiler will optimise this back otherwise you've
> > > added another local variable which may cause spilling to stack.
> > > For a setup function it probably doesn't matter, but in general it
> > > might have a small negative performance impact.
> > >
> > > In any case this doesn't shorten any lines enough to remove
> > > line-wrap and using &pdev->dev is really one less variable to
> > > mentally track when reading the code.
> >
> > Do we know which compiler will optimize this? I saw many of the
> > patches doing this to avoid a lot of dereference, I understand it does
> > NOT save lines, but my intention is to avoid dereference which might save
> some instructions.
> >
> > I thought saving instructions is more important. So now there are
> > different opinion about doing this?
> 
> Remember &pdev->dev is just 'pdev + constant'.
> Assuming 'pdev' is held in a callee saved register (which you want it to be)
> then to access
> dev->foo the compiler can remember the constant and use an offset from
> dev->'pdev' instead of
> an extra 'dev' variable.
> On most modern ABI the first function call arguments are passed in registers.
> So an add  instruction (probably lea) can be used to add the constant offset
> at the same time as the value is moved into the argument register.
> 
> However your extra variable could easily get spilled out to the stack.
> So you get an extra memory read rather than (at most) an extra 'add'
> instruction.
> 
> Even if pdev->dev were a pointer, repeatedly reading it from pdev->dev
> could easily generate better code than having an extra variable that would
> mean the value was repeatedly read from the stack.

Thanks for detail education about it, please ignore these patches.

Thanks,
Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
