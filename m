Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843D91B66CA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 00:29:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pGrdEQQsH9jAB2VubdEp2HTdvvvp0qKfVn6/ScQk6fA=; b=UIu5ciiaoxdOt2
	josGNXr1Oh0v5EQ6lyPFKOBCLmVrD+83po2fU5/vUmDQytOIly55rOJxfSyyLngOBcIJxtEB76d0w
	OBUWWXYT3PXbBik0l2ANaxscYvP+PfaBUAjHsB/elydwXffj1yJ1woZj/edq2PTi0Ll0MAhJULA0w
	rC4wTO10JKk/SANRENHWiUSBQv8Ec7OdP1eAxQ4IFBCy8VZJkSEZa5WVDaBc8lRs+sjVQgdI2yhiS
	mEmPk1cBI7onNuay+2juvepZcwKDaZYX+RMkpQdzOJ4vYAmZ7aL1Ea+SrUZgrBKDKdCVfBz5rmM/k
	Onvt8yMjP3BkxVvZ45qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRkLE-0006qS-Cu; Thu, 23 Apr 2020 22:29:08 +0000
Received: from mail-am6eur05on2041.outbound.protection.outlook.com
 ([40.107.22.41] helo=EUR05-AM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRkL4-0006p3-2A
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 22:29:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Yp83+fOeF/8VIKdVi7E8CdZjQ8xfB1z0ZfE7ZiReZ5/bcrwSXkEKWM+HXI4YFs99Qdh8yFDr/k5mchsEk9vlZfkk3mRKnVud+ikac/h9hB0H/K+0iG0o+EvCGQbol0Tp24Kc+JyFRlCnxGAoMKbrcuGr9gfTJwh8IayMwzdGoOxWK60N2gh5NZ2eL6kQaucV0qIRBtvlsSgDLe4r30vovLtv55JZy+tH8178wrN0Kgb3mL2F/b6kXVMAGf+94cWU4EbVQ13urcwSA7scGAYqw/4d5x+Zkx8yU6sFn1QX8xNlbldKTy71DYUkrohG2ev2syZu0AJ1ULcO/np4DLbh0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2sje7wFswqOj3yOxtyDEZzfmlCTPQDzRx5br9haas2k=;
 b=CiCWl+m6UV6oixAu1+dAHtr/joY2zyIlIExBkL9sGIyFvYggHfxYUFSVjoUaZEQ8gjKHLcz4OOmSTVOlEUe5faxIA1HTHoHA85pU9QvhmdImLj7lcnX4VBCMsYL8PFPghsojlzxFTIfQi7GPYzmylGzwxRZmLdDsCoiWHdcqK3D9+/YBm7JlOu5vg3bamQB7svyGYVE4q+zxtbyl+VDZnmb7NQi3DzT23FkxNFxA2Qa0r532pUFKVOd+Glppnb7cDg7QJ58SwDsbn9BxbHUHcsVm7zl0zkK1WGdSPd8AtAcqI+qdhiPp31nKVHafF4fvGdOtHAwRMZZNl05xUhRWBw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=2sje7wFswqOj3yOxtyDEZzfmlCTPQDzRx5br9haas2k=;
 b=akugVlet94ll5d9IJMNs7zZFJcgdNMoxX8liIYLlfKPLhdHtPARbyxAJn5ShLG2YtGWWf5w7cOzcXccSzYC0q72zql4eh5ioaD+JPSOqALjuTDc6j3Wn5sg5nPHLe/bupSUiQGkVET0R87xy7dTZmcB8AkOjfi3Gg9Tv1n/Y5DE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (2603:10a6:8:10::18)
 by DB3PR0402MB3930.eurprd04.prod.outlook.com (2603:10a6:8:f::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Thu, 23 Apr
 2020 22:28:53 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2921.035; Thu, 23 Apr 2020
 22:28:52 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "rui.zhang@intel.com" <rui.zhang@intel.com>,
 "daniel.lezcano@linaro.org" <daniel.lezcano@linaro.org>,
 "amit.kucheria@verdurent.com" <amit.kucheria@verdurent.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Leonard Crestez
 <leonard.crestez@nxp.com>, "linux@rempel-privat.de" <linux@rempel-privat.de>, 
 Peng Fan <peng.fan@nxp.com>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>
Subject: RE: [PATCH V2] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Topic: [PATCH V2] dt-bindings: firmware: imx: Move system control into
 dt-binding headfile
Thread-Index: AQHWGYYRHw3KZsZM0UG42O+lWsXrlaiG3HaAgABrSDA=
Date: Thu, 23 Apr 2020 22:28:52 +0000
Message-ID: <DB3PR0402MB3916489B8ADCA1F487F7A748F5D30@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1587656148-24581-1-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB4966AF54A95ACF4F33634AD080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB4966AF54A95ACF4F33634AD080D30@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 87e96c26-b302-407e-06a5-08d7e7d5b3f4
x-ms-traffictypediagnostic: DB3PR0402MB3930:|DB3PR0402MB3930:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3930046C180BCB0CDE81E5CAF5D30@DB3PR0402MB3930.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:862;
x-forefront-prvs: 03827AF76E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(39860400002)(136003)(346002)(376002)(396003)(33656002)(66446008)(66556008)(55016002)(7416002)(26005)(76116006)(66476007)(66946007)(71200400001)(7696005)(52536014)(6506007)(44832011)(4326008)(8936002)(2906002)(5660300002)(186003)(64756008)(9686003)(81156014)(86362001)(8676002)(478600001)(110136005)(316002)(921003);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: s5ViQKdwzyEOlS1cabz2C+yn1QcMa8+LOzC9RNwx9Y/F3ps57DJCoPDbcO8Q8zxHrY1qJ3p5J7Zodh1RCXp4oTgPXbFHobpH4dRz7FBh++YsaL8aGYUeC3lTzc8JEuhsQR2f5UiJ0vfYKOK9QNlwqOxFLVS/wJNWkyTK3rNUu4/ZK1PgoQoSJVw4rpHaLNS1q7z1TqalbrFlh881OX++xEbCjigsqCOUtgNXl3cToeAhGfX3359zHqftT+eMf8pEAlO1ngwrdRbC54e7pn1MPnTSzLKImdl5b9RKenSszZtSFPD7LUGFkm0t7KHGOawzrH4Z4whPcaowwdHCF/LmVsx8UMhgK6bbn9xNNARe2u94avILW/jifX6U565eb/RrCDagefJm0Kujwh4EWrGBsHKtVca4ye65NLo7w2N7OKvPCBcgi/XGJ/vpjgKPC/C63BGPTAHNiscPjaRckZLspfTyWN4Ek2+Sno4R6VzbsUM=
x-ms-exchange-antispam-messagedata: qYePP3GUcCqIgSG8dME5B5EhR3J87pg3OtnywGkj97uGP+HOLknpYD581d/bPg+XL12BgXDwk7HVhk2/cHCIfmX4k4mQ0k67WuvpPK8rb2GpTzimXx7k4KS9jkDZnSArd/Z6c+SDbizYpfdJax4uMNMzJ3LGwagKpgQcLt5OTCOJWnK+95cB19sdcjTze2VEUbCG6p2JWjaU524yVzUC9yg60Ku8Z1TQ21vRXA9xSDZnB4h6leGvhY9/YL+s26LnoDE69BXSZwrZTGEswitmMSo8Yk6hPqSD/SScZaM8oZakvSN115AgoFTiCKLWLhvLGbhdnk+PZOCFiScUDR5SXJEkAuF0DNGmyZpoCkbaS278/taUsOVEV8ws0v2O8K0gHhG4+5Nm5ILI6OhFjFguBpJekQi1E6LeoJCZsovbHUj/yln07AvTwD7FjJNEMWZGxKi5jLk1/HwA84CruFKMeJK6rt8O3GSPyfMCjFf8Isgy66fjXL1Qq3hvLiAHQyDw6ymZZILHKGmd4O4ytsg/i4GpklelmbqoTpNwIqpgXXGheKdB+wCKpqpapwhdM4cyeZQKd8FhZ8IgggmTHkGQvSnvW0k2ywIdNtZXlNBAx7lctFXngYnN0HGFf4kdwRCpXdD7/WKoA+UWW1ti1TWoxcaC5e4xKcwwC/Gckr33PwrgU5lb7SItkgfPoIBqYqsAA9QgCEBsZnR4dpQfIipuTL+pcC23zZZGKjBU3iaWys7lnhgwbg+AVXuAcuf9nMbk7nUIkFvd2v8P2FXGR9jNHp7RsEPo3wY5aru/224aKlA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 87e96c26-b302-407e-06a5-08d7e7d5b3f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Apr 2020 22:28:52.8049 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: bU+fzP5GzYCWZYQ58KglAVIt9gjUlnJsADBgnTx2Bjee2rD99MBxMeWY/QsIUqG54LdOdLxGD6gk88mXQaou8Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3930
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_152858_188275_497EDCDA 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.22.41 listed in list.dnswl.org]
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: RE: [PATCH V2] dt-bindings: firmware: imx: Move system control into
> dt-binding headfile
> 
> > From: Anson Huang <Anson.Huang@nxp.com>
> > Sent: Thursday, April 23, 2020 11:36 PM
> >
> > i.MX8 SoCs DTS file needs system control macro definitions, so move
> > them into dt-binding headfile, then include/linux/firmware/imx/types.h
> > can be removed and those drivers using it should be changed accordingly.
> >
> > Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> 
> You seems ignored my comments in V1.
> Usually we'd better to keep original author when sending patches if no
> fundamental changes.

Here is the details, the aim of this patch is to get rid of below patch in internal tree,
I did NOT check the details of internal tree and did the patch manually and did NOT 
check how many patches I need in internal tree in order to make the build passed. After
checking it, looks like there are 3 patches, 2 are from you, and 1 from Jacky. Since these patches
need to be squashed into 1 patch, also fix minor comment in code and improve the comment,
so, should I put you as author or Jacky as author??

commit cb6603999367aeae57004638a4b8e43ee618dbec
Author: Jacky Bai <ping.bai@nxp.com>
Date:   Mon Mar 9 14:41:44 2020 +0800

    thermal: imx_sc_thermal: fix the build break caused non existent types.h

    The types.h has been move to the dt-bindings/, so correct the included
    header file to fix the build break.
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
