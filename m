Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F4A213D931
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 12:41:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+S6XsTeqiAmea9dbV3qL4hK/kSCqn8oMqFsynaV4T2c=; b=c4jIzoTNHwtovD
	lqDE75RTxmHZsHOT3pIH6yDTCVxE5gpEnLfq5iK20xNliw/7561vc+o6O9mq3JTc0gjwLcXfjMxYY
	PCoHNoE8cH7SL/Xo4xUoAAr89gFfIJtg50iMymHDrLGZDvw05p+9XcfoheZayT6t4TEj/2pAnGCZM
	fZdiJV9eEfgnRaLK7pKoHc0vSGEcyqAiCwkMswONO+5DJkWuUR2rjM9X6fqHg3+sdLZ140/aMR6/c
	W2S6Phyd1MWe6Z+zgNez9kmFhOq/b7z9NQsGGE8aKXZ2ZT6aDm90Jft8It6shUK/0tJm9m/JuO6ht
	sAS0WRkdADyVVUQRKMpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is3Ww-0003rg-0T; Thu, 16 Jan 2020 11:41:42 +0000
Received: from mail-bn8nam11on2061.outbound.protection.outlook.com
 ([40.107.236.61] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is3Wk-0003qx-VB
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 11:41:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IDC6o+ecfcG3EA05Muid8ikkaYdj59fImLz8GFCmHlKslTGVYf7F4KW24bdrlaQ3AnR2TB1Dptx9C5hpwj8EkWUlPF8bwXUL2rFE0dk12hks180hmFZj3S6PhvHYRIETY/L/yAHBYemIHHz445pi1bSejrBoLj86IsfRXENmXp2RwJ24ntCOjnaDER1SxaSmnRxEBibkXQUFDH28oCE30KcZNCSkRjwr06t/u8uqaf2gJjaLC9dcvb0V9kYZwGkU/sFhMAcapkIHlkX8ny2G3oLo7IwOu+fS2j1b4ZYvCBE+bcEZGNts7ABpWLM8wf3pd6GJIUzLIxL+ppZpVHd8fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SKup4/XUMY8qX58+CZySttIZaRAxOxZVoNjXFr4HkYM=;
 b=E/GDHHziwMenKKYY5PR8iDLLlnXZCDYjq15QaJvArjv728wQJflE+zLr9PVPAX1krLWD8cUaOFcuf8WLJqlQde0AqTVKRTWh5r02tmvgis+fktE4yzAXMr9thB0TdVOv59JSJiNdZZFHPveB/SOwEdCS4yx7rSbtd4sF0YAwhlQRtupz/h3APaziwlCzb/LviYCPsXqr79yseJKVpF5ElKgDHv3wAuBD9dKQts3xG63T9GL7cuvcjXfj4qvJugU15v/P/llYw0qP+cUfHcMET+Leo0BsKsYi8fsP7cBwabpSMvad4TIXVVXGAMNHvHfohkLR4OFS0fCDHSTkzhf2bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=xilinx.com; dmarc=pass action=none header.from=xilinx.com;
 dkim=pass header.d=xilinx.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SKup4/XUMY8qX58+CZySttIZaRAxOxZVoNjXFr4HkYM=;
 b=jy17ehUkCr0gnBD3NeNQGq0Cfwl3rnye/URvHDWO5/gcw7+gmBI4RF8079K/nXyYC95iIIQarEVFJDHzk47psE9dIn2l8DrzvPEoZoC4M6CHUsZs5/bf+YvGA+LB5J7kTuZOTnlsuAYysYvc8Ejn+Ei+i7osyobMSO0kmZ35mXo=
Received: from BYAPR02MB4055.namprd02.prod.outlook.com (52.135.202.143) by
 BYAPR02MB5462.namprd02.prod.outlook.com (20.177.229.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18; Thu, 16 Jan 2020 11:41:28 +0000
Received: from BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::f964:6ae7:834b:8fa7]) by BYAPR02MB4055.namprd02.prod.outlook.com
 ([fe80::f964:6ae7:834b:8fa7%5]) with mapi id 15.20.2644.015; Thu, 16 Jan 2020
 11:41:28 +0000
From: Rajan Vaja <RAJANV@xilinx.com>
To: Michal Simek <michals@xilinx.com>, "mturquette@baylibre.com"
 <mturquette@baylibre.com>, "sboyd@kernel.org" <sboyd@kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, Michal Simek <michals@xilinx.com>, Jolly Shah
 <JOLLYS@xilinx.com>, "m.tretter@pengutronix.de" <m.tretter@pengutronix.de>,
 "gustavo@embeddedor.com" <gustavo@embeddedor.com>, Tejas Patel
 <TEJASP@xilinx.com>, Nava kishore Manne <navam@xilinx.com>, "mdf@kernel.org"
 <mdf@kernel.org>
Subject: RE: [PATCH v3 0/6] clk: zynqmp: Extend and fix zynqmp clock driver
Thread-Topic: [PATCH v3 0/6] clk: zynqmp: Extend and fix zynqmp clock driver
Thread-Index: AQHVqzaKZfjuMgYuu0e5sIMWLWz5cqe2qOMAgDbD6rA=
Date: Thu, 16 Jan 2020 11:41:27 +0000
Message-ID: <BYAPR02MB405593B79AB01004F0BB9101B7360@BYAPR02MB4055.namprd02.prod.outlook.com>
References: <1574415814-19797-1-git-send-email-rajan.vaja@xilinx.com>
 <1575527759-26452-1-git-send-email-rajan.vaja@xilinx.com>
 <19c5f918-7e00-75e4-10d1-53f0a30748b2@xilinx.com>
In-Reply-To: <19c5f918-7e00-75e4-10d1-53f0a30748b2@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=RAJANV@xilinx.com; 
x-originating-ip: [14.142.15.114]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 090fb488-c584-4c6a-bf1c-08d79a79061b
x-ms-traffictypediagnostic: BYAPR02MB5462:|BYAPR02MB5462:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BYAPR02MB5462D09D86D2F091F766E164B7360@BYAPR02MB5462.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(396003)(366004)(39860400002)(376002)(346002)(189003)(199004)(66476007)(86362001)(8936002)(66946007)(33656002)(64756008)(52536014)(55016002)(76116006)(7696005)(66446008)(2906002)(478600001)(66556008)(7416002)(4326008)(6506007)(55236004)(54906003)(8676002)(26005)(110136005)(81166006)(316002)(186003)(53546011)(81156014)(9686003)(71200400001)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5462;
 H:BYAPR02MB4055.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GGTMoTl5P4oXHqIvzz+N45d+gcNjCSN+sgYDN7NAMI1uHYTafGeqSdbTjH1gnhJnORv9zOak2FzYMOZsWA9wmPSp3y1lVO1T8E7UvczhmL1lQpWyUOcHceMxWj0cu6s+d9ICDTpClw4Wpm3dXY1Rv8NA7/X1AwVCyMjlvz8h96oIZSw/TU/J4nBSiiA0zsWCqnxuAF7hZchSJnTi51KQbQ3CQjhuFcii9EnBwX3YbM27rtA3q3MgoiM/INA6kGBagLswkThafm571SVUg8LoSwPwlouqyXpfiUkpiwdvufeWu3xVBa5taDh8z1cD3ixwgCzYJ1pzHsezlznnVEqndceWztWnBQKY37UQoUjigqL2aHrMPebGLEy9MvpaZ4QqXLAHfv2gLShRPcUPbf8tTSnY4hu2jdtp0+eYBWKIwXD3bZWGYUWBdT55cCyibeUpzJFKay7BeUHW93a9iYErMvcx5un0aRnKsDKAKru1orV5pgSyX17MpDQTnvVvaMJM
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 090fb488-c584-4c6a-bf1c-08d79a79061b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 11:41:27.8447 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DpvNucDhAeCtij91AgK9dbSKS9Zg5LpDkGM7LAF+1/5Dbb3Q7EY6guvWdbJm0v8RP/i1YzUQvxjxcUJ96LrnBQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_034131_000017_DB1D77F3 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.61 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Stephen,

Could please let us know if you have comment on this patch series?

Thanks,
Rajan

> -----Original Message-----
> From: Michal Simek <michal.simek@xilinx.com>
> Sent: 12 December 2019 08:50 PM
> To: Rajan Vaja <RAJANV@xilinx.com>; mturquette@baylibre.com;
> sboyd@kernel.org; robh+dt@kernel.org; mark.rutland@arm.com; Michal Simek
> <michals@xilinx.com>; Jolly Shah <JOLLYS@xilinx.com>;
> m.tretter@pengutronix.de; gustavo@embeddedor.com; Tejas Patel
> <TEJASP@xilinx.com>; Nava kishore Manne <navam@xilinx.com>; mdf@kernel.org
> Cc: linux-clk@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org
> Subject: Re: [PATCH v3 0/6] clk: zynqmp: Extend and fix zynqmp clock driver
> 
> On 05. 12. 19 7:35, Rajan Vaja wrote:
> > ZynqMP clock driver can be used for Versal platform also. Add support
> > for Versal platform in ZynqMP clock driver.
> >
> > Also this patch series fixes divider calculation and adds support for get
> > maximum divider, clock with CLK_DIVIDER_POWER_OF_TWO flag and warn user
> if
> > clock users are more than allowed.
> >
> > Rajan Vaja (5):
> >   dt-bindings: clock: Add bindings for versal clock driver
> >   clk: zynqmp: Extend driver for versal
> >   clk: zynqmp: Warn user if clock user are more than allowed
> >   clk: zynqmp: Add support for get max divider
> >   clk: zynqmp: Fix divider calculation
> >
> > Tejas Patel (1):
> >   clk: zynqmp: Add support for clock with CLK_DIVIDER_POWER_OF_TWO flag
> >
> >  .../devicetree/bindings/clock/xlnx,versal-clk.yaml |  64 +++++++++++
> >  drivers/clk/zynqmp/clkc.c                          |   3 +-
> >  drivers/clk/zynqmp/divider.c                       | 118 +++++++++++++++++++-
> >  drivers/clk/zynqmp/pll.c                           |   6 +-
> >  drivers/firmware/xilinx/zynqmp.c                   |   2 +
> >  include/dt-bindings/clock/xlnx-versal-clk.h        | 123 +++++++++++++++++++++
> >  include/linux/firmware/xlnx-zynqmp.h               |   2 +
> >  7 files changed, 310 insertions(+), 8 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/clock/xlnx,versal-
> clk.yaml
> >  create mode 100644 include/dt-bindings/clock/xlnx-versal-clk.h
> >
> 
> That firmware changes looks good. That's why feel free to add my
> Acked-by: Michal Simek <michal.simek@xilinx.com>
> to that patches.
> If you want me to take it via my tree please let me know.
> 
> Thanks,
> Michal
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
