Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B7889150A
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 18 Aug 2019 08:20:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0gxj2HJXrz6P0o9TbXds8aFSBr7r2rnd47sLHfysUrE=; b=Weata6D/0Zt/zF
	/CqZxA1scXloIdscV3aGbCfs/K2rh5HRiEoKfdIRqKiH/bDzoLG9yD5by6kJWuOXEVtNtlyF/jZeR
	+fopgsEcEh0MrjS1M9YQLQxAdLSo+OhCYCsEgevwJ9TRRxXdoo8vyEWlEbisulpuu/H8uV9fFQXAN
	TFEIBvQGYnPOWpIpFILA7wm1RkowymkTdbPbWADSFP9vzIKwq1oFFebl3ghkXtxafVv8VBaxp4RsQ
	uIUJp5PZG/qmhg62TKQmWP+S2D3N76LWxICwGGSCSx57Toz4pr30Z1IoI1X6ZOiS99BSAO/JHcRgy
	DJoA3yJ2eyXvCG2OcVTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzEXV-0001Cy-6L; Sun, 18 Aug 2019 06:19:41 +0000
Received: from mail-eopbgr70049.outbound.protection.outlook.com ([40.107.7.49]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzEXE-00012A-Ch
 for linux-arm-kernel@lists.infradead.org; Sun, 18 Aug 2019 06:19:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PNBkBlGduWc+yqexTu5BXEnCTAP8KktfWGRl7EzWZNcdV83PqekdLaw+G5iTbtE8KLOAJPWdzkADD0P/qtJydmI1VOyv5rieAyWdfVyCZmcdIxh0e1O5kS5qt+t123CszQ+Tmhuq24eDKKbP+OldHFGnw2julWoeRpz/IskjPY6y86uhlg+c+ohyFX1HqtLQxEppSjrIcTYsIBjJaMREzGOIOYzh12eJ8Dy8i5cMtmwBVgSX63rFcY07sh4zUhIeT4V1DEHX2sjH2BHlKWN2STGrAMmbEvILQfPmeKRgiTIn5aTdxRp/HfCnQxTyEwW9IKEWamttkKfAfBn4NKMRcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VrdefZeLSSCjJ5v6ejDuYQueRtbu9YhTZjC1uV7NtzU=;
 b=O3YAvqe4CWpYGDfyRQ3TlnttjJTCeKLtvTVahoTbNmR69q37Nx271jGq73Mtm6Ns7kZf5CL7WKZstQITCzQ6/NSC1IGq5c7UbV9UmM/Wv9jQo+XatnT0EiaS42wllHGL+vVPSqomCYxEP0mMdjxLrRJ/V1GRyIblFqBcJ5bT6GoadFCz6RadnjvBtEYUM3+6nZgnbXTejBwBu+XY341iaxTHgk7j5yzqGSx9M0LFkfygyBKalEVyVk7TfFn6et001KHGhjormRgF33DaLlyDt23fxf68u6iYfJ725g6CZLDZCYCMcQKDYPFlUQYQ/UlpS+jKwyOeDOW+QNWl4uhR/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VrdefZeLSSCjJ5v6ejDuYQueRtbu9YhTZjC1uV7NtzU=;
 b=LZerwB4Kj2h/iGnpN62vivsVyVSP9Dyj+zXrj7tOD/I8C4V9KGhSZI4L2PLKvFzn6RgBvuX+sEL8WdRp5fDDR3155zaEkedyEyrtnxtHzZKvqGSh2BCB5stpFgGMZZ344O0X56YcDWobE1UkkqTCSp38f3OE4qwnMvrsnUxU1fw=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3931.eurprd04.prod.outlook.com (52.134.65.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Sun, 18 Aug 2019 06:19:14 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::7cdf:bddc:212c:f77e%4]) with mapi id 15.20.2178.018; Sun, 18 Aug 2019
 06:19:14 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Stephen Boyd <sboyd@kernel.org>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "festevam@gmail.com" <festevam@gmail.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-clk@vger.kernel.org"
 <linux-clk@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-pm@vger.kernel.org"
 <linux-pm@vger.kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "mturquette@baylibre.com" <mturquette@baylibre.com>, "rjw@rjwysocki.net"
 <rjw@rjwysocki.net>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "viresh.kumar@linaro.org" <viresh.kumar@linaro.org>,
 Abel Vesa <abel.vesa@nxp.com>, Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH 5/6] clk: imx8mn: Add necessary frequency support for ARM
 PLL table
Thread-Topic: [PATCH 5/6] clk: imx8mn: Add necessary frequency support for ARM
 PLL table
Thread-Index: AQHVU1smspIlsoJa7UagSycBskV9A6b+t5+AgAE1uXCAAC+xgIAAVbXw
Date: Sun, 18 Aug 2019 06:19:14 +0000
Message-ID: <DB3PR0402MB3916710B3613D6C08A68438BF5A90@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1565866783-19672-1-git-send-email-Anson.Huang@nxp.com>
 <1565866783-19672-5-git-send-email-Anson.Huang@nxp.com>
 <20190817035220.268F32173B@mail.kernel.org>
 <DB3PR0402MB3916D320EB51B2D9E28D55E1F5AE0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <20190818011133.CE6F52173B@mail.kernel.org>
In-Reply-To: <20190818011133.CE6F52173B@mail.kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 65473061-7e63-4afb-8f02-08d723a3fe45
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3931; 
x-ms-traffictypediagnostic: DB3PR0402MB3931:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3931856C43F375B6D4B52526F5A90@DB3PR0402MB3931.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-forefront-prvs: 01334458E5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(396003)(39860400002)(136003)(199004)(189003)(66946007)(64756008)(99286004)(66476007)(66446008)(74316002)(66556008)(71190400001)(71200400001)(76116006)(305945005)(52536014)(229853002)(6436002)(4326008)(7736002)(7696005)(76176011)(33656002)(8936002)(81166006)(7416002)(8676002)(81156014)(2906002)(25786009)(6246003)(256004)(5660300002)(6636002)(110136005)(53936002)(9686003)(316002)(3846002)(11346002)(2501003)(26005)(486006)(44832011)(102836004)(66066001)(446003)(6506007)(2201001)(478600001)(186003)(86362001)(55016002)(14454004)(6116002)(476003)(921003)(32563001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3931;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: tPLY4+nxi1Uv3yaPxiDpAtdrX6QNp9iM29EL4mjX84lLK8XCHqbNpDVi6vmKK9l15wykat+zuKdZO66hLnwgbiR+wYzxcEqeXbQDtUPOGQChGA7u63ZBS3Oa5k4LDk+cpeAgVl2TsEfoCkzHdDx1gqqo5sDVYwB8BesWEz5h5HPXgtYTk6dHw1UUpDSg11+mRvCgNA0wjM0L3tvEcUm7NxRlnig+sbLTLKDv7xvNn267Y/8VAh1NuPyTtmYTOL/YOmeA0u1zmFisxZhfDbv571ThZgRts3FvE05djuphScUrZ2VWi0sRToooUl6opyDeN4FRppu4YL8bAkfGPV5GktZby1IArKWpFbW/P83TsKmrL8ZKBHitK15HWiPkZoVT24LPtUXQZM1S/0Bwewz97re8t9Pu3Sz1MO1Rec+o46M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 65473061-7e63-4afb-8f02-08d723a3fe45
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Aug 2019 06:19:14.7478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GIUWUOhytTMGNC5Ru5tvgwV5OKTeZoY/omHRBQa+Bwtp4u9sDGkBgrkcnqMXSFX8nL0b5B4shsVPFyAPpClLOw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3931
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190817_231924_543019_C1AF09A4 
X-CRM114-Status: GOOD (  13.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.49 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Hi, Stephen

> Quoting Anson Huang (2019-08-17 15:22:01)
> > Hi, Stephen
> >
> > > Quoting Anson.Huang@nxp.com (2019-08-15 03:59:42)
> > > > diff --git a/drivers/clk/imx/clk-imx8mn.c
> > > > b/drivers/clk/imx/clk-imx8mn.c index ecd1062..3f1239a 100644
> > > > --- a/drivers/clk/imx/clk-imx8mn.c
> > > > +++ b/drivers/clk/imx/clk-imx8mn.c
> > > > @@ -82,6 +84,7 @@ static struct imx_pll14xx_clk imx8mn_dram_pll =
> > > > { static struct imx_pll14xx_clk imx8mn_arm_pll = {
> > > >                 .type = PLL_1416X,
> > > >                 .rate_table = imx8mn_pll1416x_tbl,
> > > > +               .rate_count = ARRAY_SIZE(imx8mn_pll1416x_tbl),
> > >
> > > Why is rate_count added? That's not described in the commit text.
> >
> > rate_count is necessary for table search during set_rate, it was
> > missed previously, I will add it into commit text in V2.
> >
> 
> Right, isn't that a more critical fix to make by itself instead of rolling into this
> change that adds a few more frequencies?

Right, let me split this patch into two patches and resend the V2.

Thanks,
Anson.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
