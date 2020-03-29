Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 474B7196ADA
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Mar 2020 05:29:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0isqfavJ4sPL7jnkvA/xSXznESGBXG0J9Va7GxWflg=; b=p6+0S0kjbgt6Fv
	Vu4MOQvzOhvnBNw44dCyWBlJb+oV23eKUDum2v5LtO+oiA00+JCu3s2P1I6xAPY9fsOCKPfPetODC
	jjkFh4kz0i59Al9Hds06Fkya5zbKJRyX+w8fVaPF4FYj+l/+X8TMpLZaX+IKl4z1nvajoy4C3nFK0
	yTO8+YYMhvR3m+3YbJGy+bYCuZiqPUA/365iqN4cWpD3on5rMfGk+/TIPUBuZ8mIn+K0X3AqL4/ZD
	w019zWpDLBTEH+VVCb+cO4LOSp9mOmJX0cWjIHB5I5mRO9gGsrByjaCUPg6+ZOi51HWyyG7VakMle
	Tg9CR4UrOkygHxB1qgcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIOdZ-0002Ri-Q6; Sun, 29 Mar 2020 03:29:25 +0000
Received: from mail-db8eur05on2073.outbound.protection.outlook.com
 ([40.107.20.73] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIOdP-0002Qt-6Y
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Mar 2020 03:29:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IKMY6n/1hnJn9BQ23/PjERyFXJ7qL3xmrAonA5aK/Z786kFbo7TLVMyQQN0KFAk3KE6xxwtW4uATkHdeNqL75nlGjaML3Z13K6lBUzFE95YTxYbLiaS9QBBPbjMG+g6RyXbowW0ma8IRNEiHmJr1HwGIaiR9kPdXKVXbX9CY4xGekDSUVXuOrFoQ/U1YT+fTu/WvoCRKIUL7jb4ILmznMTd2E3c7goblL50EFvWNwjgVajDfF6b9UEh/N5yKnJTBOT3C8UZKTfH4FZUBgO/CR03VOxzOfT2zgNyxGq2JwzZt5yrcTjiYQ5DKZDV+/RUelCDDcU5tAZYkZIQDyHZ81Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2fWXS6xmfJn15rnRTyiaMAue6UClySmO72gaQsHptQ=;
 b=Gj/G0EEh4/5Tp8DZVA16K+GVPkNy0DJ8PNljZPhIF/DYhegd4zEg8T15AIsgqdl0p5mLnKGQVV42vxItQuICT6Ug6n+kkdSnNwAmGxPGtz1PAgkniiVwRdFW1wWOye/sSSF8iNjOgXbBMogwcYlOEXq1/zr6H7qo0Xu4hCJdSp7Qt0TEhC+ekuxl5Og9s8J0bmxVVAvNgWE1uC677oeQnCl49a2F09Gf+dV2/0a8Q+P4pi32+fOxtPwxyILDD4eeZPs4so935piXcH1kTGOo+ywnkWQBLkCNqPudfTsksl2TA8OBNG31XlU2VKaCFFWYFSqrdXdCjhOt0a8dZFpm2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=s2fWXS6xmfJn15rnRTyiaMAue6UClySmO72gaQsHptQ=;
 b=WUN0wBLwIm/1dqW7kU/70tY6jPxe06ekshMIihnvWcsg9nUAwVIeBP9vKhfwBoWmtSEaPgfWk0Sdqh1P5FgrR2YQV/gMkflljsXUmtgAahkqkTROL3HMUvrOfmeG/dODQO3BZGNQQAYMmY9D77eCK6Q8eAH7ow9Cl+HqDVkfsnE=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3738.eurprd04.prod.outlook.com (52.134.70.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2835.23; Sun, 29 Mar 2020 03:29:08 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3143:c46:62e4:8a8b%7]) with mapi id 15.20.2856.019; Sun, 29 Mar 2020
 03:29:08 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Adam Ford <aford173@gmail.com>
Subject: RE: i.MX8MN Errors on 5.6-RC7
Thread-Topic: i.MX8MN Errors on 5.6-RC7
Thread-Index: AQHWBKuViOa/vuBTwkqHT9gRBvnGdKhd5InggAANSwCAAPjnwA==
Date: Sun, 29 Mar 2020 03:29:08 +0000
Message-ID: <DB3PR0402MB3916B68A1B0F37EA34825F69F5CA0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <CAHCN7xJSKH-gXA5ncFS3h6_2R28rn70O3HfT=ActS1XVgCFSeg@mail.gmail.com>
 <DB3PR0402MB39160D3F0D03B968B7CBE25AF5CD0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <CAHCN7xJ2m3LRB3oGBb5QKbacYyTBQK1CdzGcTh3w=hj18H=4Pw@mail.gmail.com>
In-Reply-To: <CAHCN7xJ2m3LRB3oGBb5QKbacYyTBQK1CdzGcTh3w=hj18H=4Pw@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [183.192.13.100]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: fd6fd0b6-b18c-4949-d487-08d7d3915772
x-ms-traffictypediagnostic: DB3PR0402MB3738:|DB3PR0402MB3738:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB37386B0B09AEC63B31499064F5CA0@DB3PR0402MB3738.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2958;
x-forefront-prvs: 035748864E
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB3PR0402MB3916.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(376002)(346002)(39860400002)(44832011)(2906002)(6506007)(8676002)(33656002)(478600001)(6916009)(86362001)(26005)(71200400001)(45080400002)(81156014)(8936002)(4326008)(81166006)(186003)(316002)(52536014)(66476007)(54906003)(5660300002)(55016002)(53546011)(66446008)(7416002)(76116006)(7696005)(9686003)(66946007)(66556008)(64756008);
 DIR:OUT; SFP:1101; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: tWxxio5k4WhXaupmA6v8b+L8s77+X8v6+1gme4EuP9qZj6fa/7Cdmj/EKWWoQ0GdhbrrpcsciO6h+mQ0SmXoxEZPSo0OX9bkELZyYUIVyr3oT5tRfZ3fTpOhKRxVDNlzxvTsRR4kYrnSQTioHI/FgRI7eThUnDgh6unewZ9prkTP3MDp7KufIcwNPkGo/ULwY4EtdKruCEk0bRCvYl9Qlv1Cmbrf4L42Ahn7liifxp/kDCaE4HCuDq2XC8eJztvHYgbUMCqG79fX0ybmNLl/hT3FFGaTm2VEEXLJCmam6MzJTM1m81/7XYmq7hAGc2Im4rXt6uHxfW2jMapBgpiB/WgYNSZYbdglEaAq0zzABpRfMzByNFSWZ5uwRIFNay2+t3s6ICiRqCkOb+D4sLXdjKb/cITGCNmxpktrezrMZqCGsojikEUhkbflIs691mVs
x-ms-exchange-antispam-messagedata: Cb/010jyyuBqQpuiDwYVw3facj74TV17mYwOft25DBdxT2InzrbGaKRMfa+R29wFcQ7wmmzcX/u+4Bpe9VtM+eSeJWp89sDR4/Mr/AwODD9IFc1a0rMvG0hd2A/mGRCLhn3FXfa4s2yCbeTEV+CzFQ==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: fd6fd0b6-b18c-4949-d487-08d7d3915772
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Mar 2020 03:29:08.5057 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: spIRxHkfZLjYh8UJQ06fN8REKp4Gh33AajoI/3uUJpD7NgCscRv/0LoEE5jSu7mVD4aUlwSq9vZlgy5s1Kchcg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3738
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200328_202915_359245_778241D5 
X-CRM114-Status: GOOD (  22.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.20.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.20.73 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Adam Ford-BE <aford@beaconembedded.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> Subject: Re: i.MX8MN Errors on 5.6-RC7
> 
> On Sat, Mar 28, 2020 at 7:07 AM Anson Huang <anson.huang@nxp.com>
> wrote:
> >
> > Hi, Adam
> >
> > > Subject: i.MX8MN Errors on 5.6-RC7
> > >
> > > I am getting a few errors on the i.MX8MN:
> > >
> > > [    0.000368] Failed to get clock for /timer@306a0000
> > > [    0.000380] Failed to initialize '/timer@306a0000': -22
> > > [    7.203447] caam 30900000.caam: Failed to get clk 'ipg': -2
> > > [    7.334741] caam 30900000.caam: Failed to request all necessary clocks
> > > [    7.438651] caam: probe of 30900000.caam failed with error -2
> > > [    7.854193] imx-cpufreq-dt: probe of imx-cpufreq-dt failed with error -2
> > >
> > > I was curious to know if anyone else is seeing similar errors.  I
> > > already submitted a proposed fix for a DMA timeout (not shown here)
> > > which matched work already done on i.MX8MQ and i.MX8MM.
> > >
> > > I am not seeing huge differences between 8MM and 8MN in the nodes
> > > which address the timer, caam or imx-cpufreq-dt.
> > >
> > > If anyone has any suggestions, I'd love to try them.
> >
> 
> Fabio,
> 
> I tried your ATF suggestion, and it fixed some issues and introduced others:
> 
> [    0.767679] ------------[ cut here ]------------
> [    0.767687] coherent pool not initialised!
> [    0.767714] WARNING: CPU: 3 PID: 1 at kernel/dma/remap.c:190
> dma_alloc_from_pool+0x94/0xa0
> [    0.767718] Modules linked in:
> [    0.767728] CPU: 3 PID: 1 Comm: swapper/0 Not tainted
> 5.6.0-rc7-00471-g97c33f1ada5c-dirty #5
> [    0.767732] Hardware name: Beacon EmbeddedWorks i.MX8M Nano
> Development Kit (DT)
> [    0.767738] pstate: 60000005 (nZCv daif -PAN -UAO)
> [    0.767744] pc : dma_alloc_from_pool+0x94/0xa0
> [    0.767749] lr : dma_alloc_from_pool+0x94/0xa0
> [    0.767753] sp : ffff80001003ba10
> [    0.767756] x29: ffff80001003ba10 x28: ffff00007c868080
> [    0.767762] x27: 0000000fffffffe0 x26: ffff00007fbdd080
> [    0.767768] x25: 0000000000000000 x24: ffff800010161b3c
> [    0.767774] x23: 0000000000001000 x22: ffff00007c86bd38
> [    0.767780] x21: ffff8000112ba000 x20: ffff00007f6ed410
> [    0.767785] x19: 0000000000000000 x18: 0000000000000010
> [    0.767791] x17: 00000000000045e0 x16: 00000000000045d0
> [    0.767796] x15: ffff00007f470470 x14: ffffffffffffffff
> [    0.767802] x13: ffff80009003b777 x12: ffff80001003b77f
> [    0.767807] x11: ffff8000118e1000 x10: ffff800011abc658
> [    0.767813] x9 : 0000000000000000 x8 : 6573696c61697469
> [    0.767818] x7 : 6e6920746f6e206c x6 : 00000000000000a9
> [    0.767824] x5 : 0000000000000000 x4 : 0000000000000000
> [    0.767829] x3 : 00000000ffffffff x2 : ffff8000118e1b80
> [    0.767835] x1 : 3a4437124c5a6b00 x0 : 0000000000000000
> [    0.767840] Call trace:
> [    0.767847]  dma_alloc_from_pool+0x94/0xa0
> [    0.767853]  dma_direct_alloc_pages+0x1a4/0x1e0
> [    0.767858]  dma_direct_alloc+0xc/0x20
> [    0.767863]  dma_alloc_attrs+0x7c/0xf0
> [    0.767870]  sdma_probe+0x3d4/0x7f0
> [    0.767877]  platform_drv_probe+0x50/0xa0
> [    0.767885]  really_probe+0xd4/0x320
> [    0.767891]  driver_probe_device+0x54/0xf0
> [    0.767897]  device_driver_attach+0x6c/0x80
> [    0.767903]  __driver_attach+0x54/0xd0
> [    0.767908]  bus_for_each_dev+0x6c/0xc0
> [    0.767914]  driver_attach+0x20/0x30
> [    0.767919]  bus_add_driver+0x140/0x1f0
> [    0.767925]  driver_register+0x60/0x110
> [    0.767930]  __platform_driver_register+0x44/0x50
> [    0.767938]  sdma_driver_init+0x18/0x20
> [    0.767944]  do_one_initcall+0x50/0x190
> [    0.767950]  kernel_init_freeable+0x1cc/0x23c
> [    0.767958]  kernel_init+0x10/0x100
> [    0.767963]  ret_from_fork+0x10/0x18
> [    0.767972] ---[ end trace 796b8d949d96f5f6 ]---
> 
> 
> Anson,
> 
> > Which board did you try? I just run it on i.MX8MN-EVK board, no such
> failure:
> I have a board from Beacon EmbeddedWorks based on the i.MX8MN which
> is nearly identical to the i.MX8MM which doesn't exhibit any of these errors.
> 
> I tried Fabio's suggestion of switching the version of ATF which did fix the
> Bluetooth communication errors I was getting, but I didn't show them before.
> 
> Unfortunately, I don't have the i.MX8MN-EVK right now, I'm working on
> trying to get one.
> 
> Can I ask which version of U-Boot and ATF you're using?  I am wondering if I
> need to update something else.

I am using our latest u-boot and ATF in NXP internal tree, maybe you can get the
latest release to have a try.

Anson
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
