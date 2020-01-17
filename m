Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62A5B140524
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 09:16:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wU4I03ml6qbwEOxp2GQBLcTAjW6sVb6sqE+jd03jSrM=; b=P4rU7Tv1oJmB6t
	l4vz/mU6uKKZvVjL5cMtQAPeJWsunFiKnmgjq/9Wrz8Dy7yRMdYYsPuiJoSUi5bI9F+UFC4LB3Hxq
	vBgKEI33bN2gMYCsNC1rDFFRC7KaZ3NmwObKNI4c13i1nSG2fO95yYltkVlXk4cZt9t7bOQwMx/D3
	k85KCGguAkJICmPuzpp6qzf1Kqwd7QNPTk/whNX0Z5M7Ba62ie+GTDb+tw42RzWHjEwTopqb+MuKO
	7S4PhyRObDM59o15N6KHIHfUbYbP24jqQMN1yCLHRVerNQezpIEd9jE33pQK+dsK/LUxDrvfcPeBS
	UYnx4aDVvFsETXpdacOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMna-0006rd-SD; Fri, 17 Jan 2020 08:16:10 +0000
Received: from mail-db8eur05on2070.outbound.protection.outlook.com
 ([40.107.20.70] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMnO-0006qh-RM
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 08:16:03 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GpM3zemjxjT6Ud5B5H0qo9g+JzttRXrPAat9yV0iPGhe/e9QhJ4Mn7MdHL/ILy2tLWPkEcMitIbCcBkQ28+WAGdPBqEQorEMj7L9XnIAhv8Kki8ea3DtZ/KnpL9xg1Wdt/q/4+T6ztJZpi+i9UV00SPqoTEdCnfTXbdJ4ncb3j8n99RTnnJZHlruOG5lpf9xhxwXuRMUP382t/VkGp5kAwU2jZshXxfF2iI4lCLakVse6VDGIWrQybqC16O4x7GUhlD5YB3A1hbeFe8CgYMLwE8egQ4WEw996NRqtAAkvv2bWOlA8Sepnma+64YN8nGAF2R9rLvXNYKFQKwC0vTWLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvI8/OloIvPgqme2D7TtRw4oMunjLtIUXFWADQjT41s=;
 b=A6mSEBIynNnU12sp1tY0ZMU7lwoLSn0m0u2IGeMeEgEsi4FFOp2Iv5RZbXzy7HVb0V4oqB25t9knLE2dB8tcYcDH/L6n/eyVCaeykP7lFmPSGmLAkaBOxHHsc3ZPZxNrT0v0++8YcxYFTmr8QfwQbyhwXD3nttSDlZplGzDHvcDZEMTJAK+bxyBVb0SxQfqiDxXMMGCmxgkOV1IibiAS1oZZ0eNfxunsDZ5vFq8kaq2MB0iJ3xiQwp0j26Y0qbN1Azv7dicVwjTCY1s/MohQ5vUTFhlUtjN0TCwA/AUvOAh2Jhy4WSaUhxrbN7uydTZtNm8JiGnJAER8Y61pZ06fHQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zvI8/OloIvPgqme2D7TtRw4oMunjLtIUXFWADQjT41s=;
 b=SSmpS/coTPoJn2W33kMqCl3le6Mqnz96uHn9RziMZwrk9ZMxPJI9e6HJ2yMNzEtwCwh06FpzUhf9rwxyp6zO5oGO/F3Wk1azb7dlkIERGNabyaGoTfp4CjUjOXRj576U03x+IhIMoRMUPrGHqGTXNe0dIQu8dLMO8vv6vKggPQ8=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4739.eurprd04.prod.outlook.com (20.176.214.224) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.19; Fri, 17 Jan 2020 08:15:54 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Fri, 17 Jan 2020
 08:15:54 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>, 
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: RE: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Thread-Topic: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Thread-Index: AQHVzFB5yGe49vkt3U6MybEMHs/GuKfuHFMAgABnHtA=
Date: Fri, 17 Jan 2020 08:15:54 +0000
Message-ID: <AM0PR04MB448103B7C47B9AA5621A731A88310@AM0PR04MB4481.eurprd04.prod.outlook.com>
References: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
 <1579167145-1480-2-git-send-email-peng.fan@nxp.com>
 <AM7PR04MB6981B45633536729EBEB427487310@AM7PR04MB6981.eurprd04.prod.outlook.com>
In-Reply-To: <AM7PR04MB6981B45633536729EBEB427487310@AM7PR04MB6981.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c420424a-58ba-4320-17b1-08d79b25794b
x-ms-traffictypediagnostic: AM0PR04MB4739:|AM0PR04MB4739:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4739752E289A166B01553CD588310@AM0PR04MB4739.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 0285201563
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(396003)(346002)(366004)(136003)(189003)(199004)(81166006)(81156014)(7696005)(316002)(54906003)(71200400001)(8936002)(6506007)(110136005)(26005)(186003)(66446008)(44832011)(66946007)(76116006)(64756008)(66476007)(66556008)(4326008)(55016002)(9686003)(7416002)(478600001)(33656002)(8676002)(52536014)(86362001)(5660300002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4739;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: nzdgZFb0vYkHIvU77SWhOjgkWZ0HI/fPEArY71kAE0rlsV+O3V6xsoRiikehl3pq9OwWW9rd4N30t+slOYjg+E7fP+pOePcWKe/uiDaPgi0lKeEJw1FhM6UEnzH/BIoJvqIkTbEmlNrAM1VyTa9u9IKL5i+N20PgHe4w3CLp8anI7WRaff3h1X1DXCOOzx1wsyPl3SHYFjmDX3YYZEGmI7UFuA9Jmd1Tj/ffEUtZU19/ImhimGIZkbm4xR590r2Y1bLR/VwQuA8GTv8o7oGi6YJjGO72wW7avSv8p9lN/hXCe64Thxog/rIiufs3UrUJYm1udvPG49+YkAEXPs7HWGf6bbUMzV4D9px8VJyP5Gvle31U8M/JpEn9kS+cFh+CPnTsB7+rUNlcfV+1cgYmg3uKCKFgwMteNY64IG7eiiFedil98JKbR9dWWjblM7ty
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c420424a-58ba-4320-17b1-08d79b25794b
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jan 2020 08:15:54.5854 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: LVx+qN+lKmEnQ2xqEgRqyo/PFySOjmZEw2FPgReMeXWe/gfoDiOzJRr0pzfw9Ygh3O9fHLyZfQXteUWaKDyPTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4739
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_001559_119295_91E55CFB 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.70 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "git@andred.net" <git@andred.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "info@metux.net" <info@metux.net>, "allison@lohutok.net" <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> > Subject: [RFC 1/4] ARM: imx: use device_initcall for
> > imx_soc_device_init
> >
> > From: Peng Fan <peng.fan@nxp.com>
> >
> > This is preparation to move imx_soc_device_init to drivers/soc/imx/
> >
> > There is no reason to must put dt devices under /sys/devices/soc0,
> > they could also be under /sys/devices/platform, so we could pass NULL
> > as parent when calling of_platform_default_populate.
> >
> 
> This change will impact various internal test case & userspace lib, I think.
> Need to ask test team & other developer to double check the impact.

/sys/devices/soc0 is still there, the patchset only moves
the platform devices which under /sys/devices/soc0 to /sys/devices/platform

In this way, we aligned with ARM64. And simplify arch code by moving
the code to drivers/soc/imx. In future, considering more cleanup,
we could merge the code to soc-imx8.c, since they share similar
silicon rev ocotp logic.

Thanks,
Peng.

> 
> BR
> Jacky Bai
> > Following soc-imx8.c soc-imx-scu.c using device_initcall, need to
> > change return type to int type for imx_soc_device_init.
> >
> > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > ---
> >  arch/arm/mach-imx/common.h       | 1 -
> >  arch/arm/mach-imx/cpu.c          | 9 +++++----
> >  arch/arm/mach-imx/mach-imx6q.c   | 8 +-------
> >  arch/arm/mach-imx/mach-imx6sl.c  | 8 +-------
> > arch/arm/mach-imx/mach-imx6sx.c  | 8 +-------
> > arch/arm/mach-imx/mach-imx6ul.c  | 8 +-------
> >  arch/arm/mach-imx/mach-imx7d.c   | 6 ------
> >  arch/arm/mach-imx/mach-imx7ulp.c | 2 +-
> >  8 files changed, 10 insertions(+), 40 deletions(-)
> >
> > diff --git a/arch/arm/mach-imx/common.h
> b/arch/arm/mach-imx/common.h
> > index 912aeceb4ff8..09e89aa7be50 100644
> > --- a/arch/arm/mach-imx/common.h
> > +++ b/arch/arm/mach-imx/common.h
> > @@ -49,7 +49,6 @@ void imx_aips_allow_unprivileged_access(const char
> > *compat);  int mxc_device_init(void);  void
> > imx_set_soc_revision(unsigned int rev);  void
> > imx_init_revision_from_anatop(void);
> > -struct device *imx_soc_device_init(void);  void imx6_enable_rbc(bool
> > enable);  void imx_gpc_check_dt(void);  void
> > imx_gpc_set_arm_power_in_lpm(bool power_off); diff --git
> > a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c index
> > 06f8d64b65af..2df649a84697 100644
> > --- a/arch/arm/mach-imx/cpu.c
> > +++ b/arch/arm/mach-imx/cpu.c
> > @@ -83,7 +83,7 @@ void __init imx_aips_allow_unprivileged_access(
> >  	}
> >  }
> >
> > -struct device * __init imx_soc_device_init(void)
> > +static int __init imx_soc_device_init(void)
> >  {
> >  	struct soc_device_attribute *soc_dev_attr;
> >  	const char *ocotp_compat = NULL;
> > @@ -97,7 +97,7 @@ struct device * __init imx_soc_device_init(void)
> >
> >  	soc_dev_attr = kzalloc(sizeof(*soc_dev_attr), GFP_KERNEL);
> >  	if (!soc_dev_attr)
> > -		return NULL;
> > +		return PTR_ERR(soc_dev_attr);
> >
> >  	soc_dev_attr->family = "Freescale i.MX";
> >
> > @@ -219,7 +219,7 @@ struct device * __init imx_soc_device_init(void)
> >  	if (IS_ERR(soc_dev))
> >  		goto free_serial_number;
> >
> > -	return soc_device_to_device(soc_dev);
> > +	return 0;
> >
> >  free_serial_number:
> >  	kfree(soc_dev_attr->serial_number);
> > @@ -227,5 +227,6 @@ struct device * __init imx_soc_device_init(void)
> >  	kfree(soc_dev_attr->revision);
> >  free_soc:
> >  	kfree(soc_dev_attr);
> > -	return NULL;
> > +	return -ENOMEM;
> >  }
> > +device_initcall(imx_soc_device_init);
> > diff --git a/arch/arm/mach-imx/mach-imx6q.c
> > b/arch/arm/mach-imx/mach-imx6q.c index edd26e0ffeec..735da3311320
> > 100644
> > --- a/arch/arm/mach-imx/mach-imx6q.c
> > +++ b/arch/arm/mach-imx/mach-imx6q.c
> > @@ -258,21 +258,15 @@ static void __init imx6q_axi_init(void)
> >
> >  static void __init imx6q_init_machine(void)  {
> > -	struct device *parent;
> > -
> >  	if (cpu_is_imx6q() && imx_get_soc_revision() ==
> > IMX_CHIP_REVISION_2_0)
> >  		imx_print_silicon_rev("i.MX6QP", IMX_CHIP_REVISION_1_0);
> >  	else
> >  		imx_print_silicon_rev(cpu_is_imx6dl() ? "i.MX6DL" : "i.MX6Q",
> >  				imx_get_soc_revision());
> >
> > -	parent = imx_soc_device_init();
> > -	if (parent == NULL)
> > -		pr_warn("failed to initialize soc device\n");
> > -
> >  	imx6q_enet_phy_init();
> >
> > -	of_platform_default_populate(NULL, NULL, parent);
> > +	of_platform_default_populate(NULL, NULL, NULL);
> >
> >  	imx_anatop_init();
> >  	cpu_is_imx6q() ?  imx6q_pm_init() : imx6dl_pm_init(); diff --git
> > a/arch/arm/mach-imx/mach-imx6sl.c
> b/arch/arm/mach-imx/mach-imx6sl.c
> > index e00818abe54d..0f046a37dc73 100644
> > --- a/arch/arm/mach-imx/mach-imx6sl.c
> > +++ b/arch/arm/mach-imx/mach-imx6sl.c
> > @@ -46,13 +46,7 @@ static void __init imx6sl_init_late(void)
> >
> >  static void __init imx6sl_init_machine(void)  {
> > -	struct device *parent;
> > -
> > -	parent = imx_soc_device_init();
> > -	if (parent == NULL)
> > -		pr_warn("failed to initialize soc device\n");
> > -
> > -	of_platform_default_populate(NULL, NULL, parent);
> > +	of_platform_default_populate(NULL, NULL, NULL);
> >
> >  	if (cpu_is_imx6sl())
> >  		imx6sl_fec_init();
> > diff --git a/arch/arm/mach-imx/mach-imx6sx.c
> > b/arch/arm/mach-imx/mach-imx6sx.c index d5310bf307ff..781e2a94fdd7
> > 100644
> > --- a/arch/arm/mach-imx/mach-imx6sx.c
> > +++ b/arch/arm/mach-imx/mach-imx6sx.c
> > @@ -63,13 +63,7 @@ static inline void imx6sx_enet_init(void)
> >
> >  static void __init imx6sx_init_machine(void)  {
> > -	struct device *parent;
> > -
> > -	parent = imx_soc_device_init();
> > -	if (parent == NULL)
> > -		pr_warn("failed to initialize soc device\n");
> > -
> > -	of_platform_default_populate(NULL, NULL, parent);
> > +	of_platform_default_populate(NULL, NULL, NULL);
> >
> >  	imx6sx_enet_init();
> >  	imx_anatop_init();
> > diff --git a/arch/arm/mach-imx/mach-imx6ul.c
> > b/arch/arm/mach-imx/mach-imx6ul.c index 311f5e4ff723..9db8e567c6b5
> > 100644
> > --- a/arch/arm/mach-imx/mach-imx6ul.c
> > +++ b/arch/arm/mach-imx/mach-imx6ul.c
> > @@ -56,13 +56,7 @@ static inline void imx6ul_enet_init(void)
> >
> >  static void __init imx6ul_init_machine(void)  {
> > -	struct device *parent;
> > -
> > -	parent = imx_soc_device_init();
> > -	if (parent == NULL)
> > -		pr_warn("failed to initialize soc device\n");
> > -
> > -	of_platform_default_populate(NULL, NULL, parent);
> > +	of_platform_default_populate(NULL, NULL, NULL);
> >  	imx6ul_enet_init();
> >  	imx_anatop_init();
> >  	imx6ul_pm_init();
> > diff --git a/arch/arm/mach-imx/mach-imx7d.c
> > b/arch/arm/mach-imx/mach-imx7d.c index ebb27592a9f7..879c35929a13
> > 100644
> > --- a/arch/arm/mach-imx/mach-imx7d.c
> > +++ b/arch/arm/mach-imx/mach-imx7d.c
> > @@ -78,12 +78,6 @@ static inline void imx7d_enet_init(void)
> >
> >  static void __init imx7d_init_machine(void)  {
> > -	struct device *parent;
> > -
> > -	parent = imx_soc_device_init();
> > -	if (parent == NULL)
> > -		pr_warn("failed to initialize soc device\n");
> > -
> >  	imx_anatop_init();
> >  	imx7d_enet_init();
> >  }
> > diff --git a/arch/arm/mach-imx/mach-imx7ulp.c
> > b/arch/arm/mach-imx/mach-imx7ulp.c
> > index 11ac71aaf965..128cf4c92aab 100644
> > --- a/arch/arm/mach-imx/mach-imx7ulp.c
> > +++ b/arch/arm/mach-imx/mach-imx7ulp.c
> > @@ -57,7 +57,7 @@ static void __init imx7ulp_init_machine(void)
> >
> >  	mxc_set_cpu_type(MXC_CPU_IMX7ULP);
> >  	imx7ulp_set_revision();
> > -	of_platform_default_populate(NULL, NULL, imx_soc_device_init());
> > +	of_platform_default_populate(NULL, NULL, NULL);
> >  }
> >
> >  static const char *const imx7ulp_dt_compat[] __initconst = {
> > --
> > 2.16.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
