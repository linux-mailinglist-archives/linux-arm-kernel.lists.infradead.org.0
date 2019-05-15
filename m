Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 071AB1ED70
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 13:10:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z33Yi33/CVTZ4s4ZdpmWn7FXfZrkWz/qrfo42H4RH1Q=; b=AMdO0RY07vp+i4
	R+hQ9KEYiXzsJV0ftnhiYH4w6VUwFezGOKebEaLpvitbtAWUqojS5RaVKW9fZM/L/gdNGvuODcki+
	Efv0LbIttGw+5NYSLcO/jonFIaY5SXAx22KbfBLmMM24k0PTn1Ok3RyoiZD0Geo1Fu+RC2MdvT39A
	DP2MPkVIHW8fwL6rLvWzdE9CjvmuDkftX3knD+Ax57DteLxcOsqgaZkGVyKGDKJ9GUsYA7yOgSEIO
	RsY5RlbA9aZCu4tkGvn3Ntt5vbwycUPE1u+udrF7YVDQ5BW+75JuIxoccoZFAiYzUG0M/8SDLUw2X
	s25IKOcYiieIDnStJ2Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQro1-0008Fa-9A; Wed, 15 May 2019 11:10:41 +0000
Received: from mail-eopbgr70051.outbound.protection.outlook.com ([40.107.7.51]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQrnt-0008El-7e
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 11:10:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5WVVNA4cKGt/UxrXGJFOcJZrjHtOZEc5fmxG/3Pxjo8=;
 b=nKySQ9h9Mk7Y/BdWsGtmWAaOIkkHzKcb9C+5SRvxHyJHghmF5yJapP/QN0zEYMUMsc7PuvOGUWMY5ateeUX4TdJMfEaEkBj1O8McfdPm9bGGgS5yoccby43bf29kyaOH6ABbVPCOP6FpluZurtXEEvpQ33NWAb9csaqgDXap29E=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3786.eurprd04.prod.outlook.com (52.134.71.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Wed, 15 May 2019 11:10:29 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1900.010; Wed, 15 May 2019
 11:10:28 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>
Subject: RE: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
Thread-Topic: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
Thread-Index: AQHVCvixb1MFrIDHlECOalYM+lyDeaZsB0hQ
Date: Wed, 15 May 2019 11:10:28 +0000
Message-ID: <DB3PR0402MB3916D8523F78E0190AB3E9D6F5090@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1557908823-11349-1-git-send-email-Anson.Huang@nxp.com>
 <AM0PR04MB6434C2BCE2116836CFC0FEBFEE090@AM0PR04MB6434.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB6434C2BCE2116836CFC0FEBFEE090@AM0PR04MB6434.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.68]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 5b9856ae-8022-4275-c88e-08d6d925f067
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3786; 
x-ms-traffictypediagnostic: DB3PR0402MB3786:
x-microsoft-antispam-prvs: <DB3PR0402MB3786CE5792D0B35C2A836DE4F5090@DB3PR0402MB3786.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0038DE95A2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(376002)(346002)(39860400002)(13464003)(199004)(189003)(6246003)(81156014)(6506007)(53936002)(476003)(54906003)(102836004)(7696005)(2906002)(14444005)(256004)(76176011)(8936002)(6862004)(4326008)(316002)(5660300002)(99286004)(68736007)(33656002)(305945005)(7736002)(44832011)(3846002)(8676002)(25786009)(6116002)(53546011)(52536014)(7416002)(64756008)(66556008)(66476007)(66446008)(86362001)(73956011)(26005)(76116006)(186003)(14454004)(81166006)(66066001)(11346002)(486006)(446003)(74316002)(478600001)(71200400001)(71190400001)(6436002)(9686003)(55016002)(66946007)(229853002)(6636002)(15866825006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3786;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: /KXIOWlEYpFn3beA4CB6fHIyJEdEmPxI0PrNW2smrh7Rb3C0vJOfmvm6Wb7ftCiTHNHTM45C5lALeK90uhEDtRb/PbphILnrIjGCe6NGFSG0xSpsFSSHLD1g+a4ij7WqntWLJpz2hi93kHAQc8aemfnh3bzPSNv5OWU+Tq++yjydL7PIZIBrQc7lmTNQagMpd6gF3rrn76Mxow2mAngwAHJsHf3q+Q7B/oGADLjk3R1SHS25gxkZB+LnkDu8oC35D2PRqotOCMl9tlGnMisK7zhcDfXjgI+SxUPzBJETh16e/x4qjHBt5FI0Hy6uEMzvvH6LjQFloIgcqNSQjTHm7EEuJtwGrq3PQCH2aeMWziztEIKaBVprJ292kfxMgXzzCuD5O75iTTnQ2OYnf8auwTEadY6V/otsIJNsFTIvvEc=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5b9856ae-8022-4275-c88e-08d6d925f067
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 May 2019 11:10:28.8003 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3786
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_041033_273479_F0DAEDCF 
X-CRM114-Status: GOOD (  14.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "maxime.ripard@bootlin.com" <maxime.ripard@bootlin.com>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "will.deacon@arm.com" <will.deacon@arm.com>,
 "bjorn.andersson@linaro.org" <bjorn.andersson@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>, "robh@kernel.org" <robh@kernel.org>,
 Abel Vesa <abel.vesa@nxp.com>, "agross@kernel.org" <agross@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "jagan@amarulasolutions.com" <jagan@amarulasolutions.com>,
 "marc.w.gonzalez@free.fr" <marc.w.gonzalez@free.fr>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Aisheng Dong <aisheng.dong@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "dinguyen@kernel.org" <dinguyen@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Leonard

> -----Original Message-----
> From: Leonard Crestez
> Sent: Wednesday, May 15, 2019 6:05 PM
> To: Anson Huang <anson.huang@nxp.com>
> Cc: catalin.marinas@arm.com; will.deacon@arm.com;
> shawnguo@kernel.org; s.hauer@pengutronix.de; kernel@pengutronix.de;
> festevam@gmail.com; agross@kernel.org; maxime.ripard@bootlin.com;
> olof@lixom.net; horms+renesas@verge.net.au;
> jagan@amarulasolutions.com; bjorn.andersson@linaro.org;
> marc.w.gonzalez@free.fr; dinguyen@kernel.org;
> enric.balletbo@collabora.com; l.stach@pengutronix.de; Abel Vesa
> <abel.vesa@nxp.com>; robh@kernel.org; linux-arm-
> kernel@lists.infradead.org; linux-kernel@vger.kernel.org; dl-linux-imx
> <linux-imx@nxp.com>; Aisheng Dong <aisheng.dong@nxp.com>
> Subject: Re: [PATCH V2 1/2] soc: imx: Add SCU SoC info driver support
> 
> On 15.05.2019 11:32, Anson Huang wrote:
> > Add i.MX SCU SoC info driver to support i.MX8QXP SoC, introduce driver
> > dependency into Kconfig as CONFIG_IMX_SCU must be selected to support
> > i.MX SCU SoC driver, also need to use platform driver model to make
> > sure IMX_SCU driver is probed before i.MX SCU SoC driver.
> >
> > With this patch, SoC info can be read from sysfs:
> 
> > +	id = of_match_node(imx_scu_soc_match, root);
> > +	if (!id) {
> > +		of_node_put(root);
> > +		return -ENODEV;
> > +	}
> 
> Perhaps this check should be moved from imx_scu_soc_probe to
> imx_scu_soc_init? As far as I can tell this "probe" function will be attempted
> on all SOCs (even non-imx). Better to check if we're on a SCU-based soc early
> and avoid temporary allocations.

Make sense, I will move this check block into imx_scu_soc_init() function and
ONLY register platform driver when check passed.

> 
> > +module_init(imx_scu_soc_init);
> > +module_exit(imx_scu_soc_exit);
> 
> Please don't make this a module

OK, will fix it in V3.

Thanks,
Anson.

> 
> --
> Regards,
> Leonard
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
