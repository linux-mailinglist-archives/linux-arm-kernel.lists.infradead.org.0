Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C08A6F8A5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 22 Jul 2019 06:57:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjJ31rbbcEoXeofemV9wOwXIZ8jd2cd+Q2uHvi6zCfg=; b=ZWMbiA2TeqYBUp
	a6xG77hZCFnpDRySHgxGkKBUraMOA/8OQCgxdDLKH+SsUmJWj/dECZwVOvaWJVc4Db5ZEpdmJqLXi
	6Cw/bPyKzhU6EoWypXYrarHHKvsgjPZ2V09dS2J5sSI3323FMO5kYYHIFjy8EMR+eOCRoh0jzqqq2
	S/z1apfMgzDj2XP7Ft3iQU6mgZ2QnpNf8rrlz49Y+xNPiitsgpbX0nwRAa1GPH6SRXBQsy7PIoay4
	HG2oPKSSMqc8mnzTZgT9bDWPznNbrYaEXhKAR/TqqZ4Le00lP/vbbUR5iPrGT0djaIBt/SupcNvUD
	C9B2wsa06Y9S8eFSVRUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQO6-0008Ux-BN; Mon, 22 Jul 2019 04:57:26 +0000
Received: from mail-eopbgr790052.outbound.protection.outlook.com
 ([40.107.79.52] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQNO-0008UR-Of; Mon, 22 Jul 2019 04:56:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VC0Miixz3gErrA2YjzQ7nxO0hXwGMhrEdAU/FuH4TUx3InHRrjy0lljxhpBDR7HFEaEiP0Ok5sjkLvibf+nFBXi6HPBF9pk1fOw/JUS+MCCS1uFk6T9sti3XXZLufIWQxWi+Ryz27vqQgO1B+eW6QYLLrS+q7dtYkbT2rVDMvvvWbN3qrpCrQ4OQneb16CJh5gOd1dcVnLx8GOH7f3PNbl/92GXUUI7HKwmoFTTZg2XxSkzUD0qg/eM5YUWWA+6iUlzhDztZhfzj3OsLV4FM//wqmRaYsMgeeVSvNKqohV9gD7dPo7b49g5lvGAPgp7sjZONaOkGayPyUxiaZMViSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WiCfUx+MKBeJr8hRM8GXbxr64uAYl/NAyGXyHnYiOCQ=;
 b=kQiKr1QxQgwO83D5PU1XqSlk+CxEYOCwYryxgKxDcTLRJ2yAyVLL9alHMhI8+EWpyv8lhfwwIqT4p1+l8jN3PvoWrIakaDtcbl8A9HEyX0kevUsvmOxZWs5/rOzbK1RHYuEom7omZ1tM/vAWrYQuYEOI+KdKCeuS2j3MVSLmMIT3w2h8x7Ig7loLpndC15BbY8oiS4bd4BNMSQrubORbwpCq5nevn+20q0HH9mwRHIqRtiytoztpOdpfb1DTc6gHYPQ5jeLjPq42OugFWRlaKQ/Dhs1osMUDswyNLTfZUxACt31gAOm1Bv/V1u4cXgPYd+2cP92j/2kG2AHne/kfXw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=xilinx.com;dmarc=pass action=none
 header.from=xilinx.com;dkim=pass header.d=xilinx.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=WiCfUx+MKBeJr8hRM8GXbxr64uAYl/NAyGXyHnYiOCQ=;
 b=H+T5M/VyzrvGeWbaG4DhAm2e2gZhUtSvGgb/cLrCXj5O6/7EFpvFtPX9LQYnhbYBIzpQpgdFztEFM0m1Ofjk+t26sAWk7unUVBkSeHHXPC+HjejSeD7UQLHAQQ6ofP8l50eTLwkZ4qiMO5BMZaQqn+kMWz2knCWKj+LIOC12aT0=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB6687.namprd02.prod.outlook.com (52.135.50.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2094.16; Mon, 22 Jul 2019 04:56:38 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e880:6205:6aac:21a3]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e880:6205:6aac:21a3%7]) with mapi id 15.20.2094.013; Mon, 22 Jul 2019
 04:56:38 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: "ulf.hansson@linaro.org" <ulf.hansson@linaro.org>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "heiko@sntech.de" <heiko@sntech.de>, Michal Simek <michals@xilinx.com>,
 "adrian.hunter@intel.com" <adrian.hunter@intel.com>,
 "christoph.muellner@theobroma-systems.com"
 <christoph.muellner@theobroma-systems.com>,
 "philipp.tomsich@theobroma-systems.com"
 <philipp.tomsich@theobroma-systems.com>, "viresh.kumar@linaro.org"
 <viresh.kumar@linaro.org>, "scott.branden@broadcom.com"
 <scott.branden@broadcom.com>, "ayaka@soulik.info" <ayaka@soulik.info>,
 "kernel@esmil.dk" <kernel@esmil.dk>, "tony.xie@rock-chips.com"
 <tony.xie@rock-chips.com>, "mdf@kernel.org" <mdf@kernel.org>,
 "olof@lixom.net" <olof@lixom.net>
Subject: RE: [PATCH v2 00/11] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
Thread-Topic: [PATCH v2 00/11] Arasan SDHCI enhancements and ZynqMP Tap Delays
 Handling
Thread-Index: AQHVL84SOR9L6OedtU+uS2U+bXPHK6bLWgfggArYtoA=
Date: Mon, 22 Jul 2019 04:56:38 +0000
Message-ID: <MN2PR02MB60291FE74900566F4C5D359DC1C40@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
 <MN2PR02MB602959626A4F6E462A321F35C1CF0@MN2PR02MB6029.namprd02.prod.outlook.com>
In-Reply-To: <MN2PR02MB602959626A4F6E462A321F35C1CF0@MN2PR02MB6029.namprd02.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 927db028-ef40-4914-f591-08d70e60fb1e
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6687; 
x-ms-traffictypediagnostic: MN2PR02MB6687:
x-microsoft-antispam-prvs: <MN2PR02MB6687D9A9797BA6B4F5E23E4FC1C40@MN2PR02MB6687.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 01068D0A20
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(366004)(376002)(39860400002)(396003)(136003)(189003)(199004)(13464003)(486006)(66066001)(33656002)(7696005)(66556008)(64756008)(66446008)(76116006)(66476007)(76176011)(66946007)(478600001)(53546011)(6506007)(6436002)(7416002)(229853002)(68736007)(55016002)(102836004)(9686003)(71200400001)(86362001)(71190400001)(26005)(99286004)(2201001)(74316002)(4326008)(305945005)(53936002)(6246003)(81156014)(81166006)(6116002)(14444005)(2906002)(110136005)(54906003)(25786009)(316002)(256004)(3846002)(446003)(52536014)(476003)(186003)(8676002)(14454004)(2501003)(8936002)(7736002)(11346002)(5660300002)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6687;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1btVxJNO8h83GVhgOqntpBbfgldWQXuBbDqLD0/RUD1VHPiQYtCeNupcPd333jDUyPZGOueKDGzoBrl518gCXrwZTdd21E/jWxU17Y8ntlaP5WRQ3DKLcUwEfBAVrFMwkZFelQD0ruXd66zbJJkZY4sf/639XYK7oCLz/mOKOe6z/abhpySaB4i5/i+Grg2msbEeUsq1aH7GLkL5+rIBjVIb+hvEjiuuozdsn3/NuQj1dp/SdItfOlO3J88T3DiujIeL3pCrVxZwetOIkJQn+m6fz8ReDXs9HcQGf+BfBRnS/uIPZ+cknzFy1i7O4agPWMes9xm2caSx6a0uBKfhTt2xL/yxfgA8XJdWsBu+dqwRxPcMAqq1JKp5iD/nofOPAxMK7uidqhtbvlB/3CPpgd12eN7SgZy1iYzZLTGgXRw=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 927db028-ef40-4914-f591-08d70e60fb1e
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jul 2019 04:56:38.8364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnarani@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6687
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_215643_057491_9B8CA081 
X-CRM114-Status: GOOD (  18.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.52 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gentle Ping!

> -----Original Message-----
> From: Manish Narani
> Sent: Monday, July 15, 2019 12:46 PM
> To: Manish Narani <MNARANI@xilinx.com>; ulf.hansson@linaro.org;
> robh+dt@kernel.org; mark.rutland@arm.com; heiko@sntech.de; Michal Simek
> <michals@xilinx.com>; adrian.hunter@intel.com;
> christoph.muellner@theobroma-systems.com; philipp.tomsich@theobroma-
> systems.com; viresh.kumar@linaro.org; scott.branden@broadcom.com;
> ayaka@soulik.info; kernel@esmil.dk; tony.xie@rock-chips.com;
> mdf@kernel.org; olof@lixom.net
> Cc: linux-mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> rockchip@lists.infradead.org
> Subject: RE: [PATCH v2 00/11] Arasan SDHCI enhancements and ZynqMP Tap
> Delays Handling
> 
> Ping!
> 
> > -----Original Message-----
> > From: Manish Narani <manish.narani@xilinx.com>
> > Sent: Monday, July 1, 2019 11:00 AM
> > To: ulf.hansson@linaro.org; robh+dt@kernel.org; mark.rutland@arm.com;
> > heiko@sntech.de; Michal Simek <michals@xilinx.com>;
> > adrian.hunter@intel.com; christoph.muellner@theobroma-systems.com;
> > philipp.tomsich@theobroma-systems.com; viresh.kumar@linaro.org;
> > scott.branden@broadcom.com; ayaka@soulik.info; kernel@esmil.dk;
> > tony.xie@rock-chips.com; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> > <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> > mdf@kernel.org; Manish Narani <MNARANI@xilinx.com>; olof@lixom.net
> > Cc: linux-mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> > kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> > rockchip@lists.infradead.org
> > Subject: [PATCH v2 00/11] Arasan SDHCI enhancements and ZynqMP Tap
> > Delays Handling
> >
> > This patch series does the following:
> >  - Reorganize the Clock Handling in Arasan SD driver
> >  - Adds new sampling clock in Arasan SD driver
> >  - Adds support to set Clock Delays in SD Arasan Driver
> >  - Add SDIO Tap Delay handling in ZynqMP firmware driver
> >  - Add support for ZynqMP Tap Delays setting in Arasan SD driver
> >
> > Changes in v2:
> > 	- Replaced the deprecated calls to clock framework APIs
> > 	- Added support for dev_clk_get() call to work for SD card clock
> > 	- Separated the clock data struct
> > 	- Fragmented the patch series in smaller patches to make it more
> > 	  readable
> >
> > This patch series contains a DT patch, which I think should be there to
> > maintain the order of commits.
> >
> > Manish Narani (11):
> >   dt-bindings: mmc: arasan: Update documentation for SD Card Clock
> >   arm64: dts: rockchip: Add optional clock property indicating sdcard
> >     clock
> >   mmc: sdhci-of-arasan: Replace deprecated clk API calls
> >   mmc: sdhci-of-arasan: Separate out clk related data to another
> >     structure
> >   dt-bindings: mmc: arasan: Update Documentation for the input clock
> >   mmc: sdhci-of-arasan: Add sampling clock for a phy to use
> >   dt-bindings: mmc: arasan: Add optional properties for Arasan SDHCI
> >   mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
> >   firmware: xilinx: Add SDIO Tap Delay APIs
> >   dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
> >   mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup
> >
> >  .../devicetree/bindings/mmc/arasan,sdhci.txt       |  49 ++-
> >  arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   4 +-
> >  drivers/firmware/xilinx/zynqmp.c                   |  48 +++
> >  drivers/mmc/host/sdhci-of-arasan.c                 | 453
> ++++++++++++++++++++-
> >  include/linux/firmware/xlnx-zynqmp.h               |  15 +-
> >  5 files changed, 540 insertions(+), 29 deletions(-)
> >
> > --
> > 2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
