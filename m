Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61F87683FC
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 09:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6MrdTpRmGKYzqrG0bsLSlN9vWSrD9gQP7Dw+j1G0UVI=; b=XO9Gdt22GIHcef
	cqL/iDo7FHQwWBGBcLk5Qwz3WC8s7uGtAYV5zFDEWH73YRYfrKZ8p7K0vPB8WVg7sQpbKVwkrQSep
	TtrwCo2aGDnltGtUf1yL9YfFFJjwSf7yjo6E2Y/S2KZ7N42NIrr+1udMw9EQD8bubN84XSv1ktm3z
	hwkW5uV7PrfCK0fQxpgFG0o0uyYhnZyQonVHCI2McqmBqK6qnMoownvquH6JBaL9DKmdYuzBF4Bhx
	MEqk4eNnfBeBy3kgxECIKunQVZUwikndCCBzfhTdGLM4LjZEB4VGhDyl6Tu7iTaoMm6Kpx0HMtdnn
	/eLdeNRMkFiYRSZR1Zcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmvDO-0006ld-14; Mon, 15 Jul 2019 07:16:02 +0000
Received: from mail-co1nam04on0622.outbound.protection.outlook.com
 ([2a01:111:f400:fe4d::622]
 helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmvD6-0006kV-CI; Mon, 15 Jul 2019 07:15:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mBwdYZRvUHjxJpdruqdAPS5Wbbh2R9C2OoVfopWerpOa21U1JnJcVJX6kQQ3gb5CahiXr79KroWqmUSII4QVOovuaWmC0PpCTzEibLTh/P/0zBMHlKtRWqfOkYIn3e4Zeoegv7rtDZU/9p5DVqnc8MpDc/oIfYXLk5sV9/fRmWTN2G/Yosjd7KhC5DRp81udqGhfDcNqjTVgu7LDD8StUxUrxvb2YEjdjXbJv8M6GgcGlJbQgBs0mP8RdKf+Xs8L0Tp7XlyB5iVx6xVeS5KQs/3pgMAjMOHa7lxcpIkTu/zgTq0v4GVC3frnhZa0SfnlOE6cQMw1gGghqZqi+iqtzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pt1v+D/mAg5s/jufp9Hzjv2LUo2ZEXnPHpSXW05B5JI=;
 b=mJFIlRC2wRdBwboamED7WLGh6MuwPC6DiFN5G1qIASgJsFowgKR8a7XrIJzBVpEo99AKZM6TsVM9me74eKTKL2LVgWN0KxUNQxhG29cDnPOTqTniJvc+aph/Yagvb/r4CdEq3ikRz3WY8sIrwS5Iv2h7zuLWUQtDI370TzveKLg9eYoPMgGuwny86oFpgG64rjra2gY4KXnBssIT7H/+Gai6XH75uTkDLLp60w/w5Yxri1hQUJVITvhtZpjd1IeH2TYQ7w0QwWTsoJWOwWYvQzJzquZS1UraL21rjpEqWeu4X3LUN8UTFuc7Lub7HmN47AIifrCIdRAZ5uktx02WBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=xilinx.com;dmarc=pass action=none
 header.from=xilinx.com;dkim=pass header.d=xilinx.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=pt1v+D/mAg5s/jufp9Hzjv2LUo2ZEXnPHpSXW05B5JI=;
 b=YuQ/nBK+b52JdgELKXmRJczAp1qog5SiE2RHPXHQ1NulSICtCmedwM/28J+OKSija3Y7ltr1E14oQmspng7Z30SnvDeyWIYStZlv3+kcRF0Vm+oR81n8PfKGYuxVgLi83dDQsv5QoX8c6b5IqyHJOKl+HecZCF5I5ySTt/yO6Gc=
Received: from MN2PR02MB6029.namprd02.prod.outlook.com (10.255.7.10) by
 MN2PR02MB6174.namprd02.prod.outlook.com (52.132.173.203) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Mon, 15 Jul 2019 07:15:40 +0000
Received: from MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e880:6205:6aac:21a3]) by MN2PR02MB6029.namprd02.prod.outlook.com
 ([fe80::e880:6205:6aac:21a3%7]) with mapi id 15.20.2073.012; Mon, 15 Jul 2019
 07:15:40 +0000
From: Manish Narani <MNARANI@xilinx.com>
To: Manish Narani <MNARANI@xilinx.com>, "ulf.hansson@linaro.org"
 <ulf.hansson@linaro.org>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mark.rutland@arm.com" <mark.rutland@arm.com>, "heiko@sntech.de"
 <heiko@sntech.de>, Michal Simek <michals@xilinx.com>,
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
Thread-Index: AQHVL84SOR9L6OedtU+uS2U+bXPHK6bLWgfg
Date: Mon, 15 Jul 2019 07:15:39 +0000
Message-ID: <MN2PR02MB602959626A4F6E462A321F35C1CF0@MN2PR02MB6029.namprd02.prod.outlook.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
In-Reply-To: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=MNARANI@xilinx.com; 
x-originating-ip: [149.199.50.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 7fa7630a-e385-4190-04a3-08d708f43e2d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR02MB6174; 
x-ms-traffictypediagnostic: MN2PR02MB6174:
x-microsoft-antispam-prvs: <MN2PR02MB6174B1D5149C444667584FBCC1CF0@MN2PR02MB6174.namprd02.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4502;
x-forefront-prvs: 00997889E7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(376002)(366004)(396003)(189003)(13464003)(199004)(478600001)(7696005)(68736007)(55016002)(66946007)(76116006)(64756008)(66446008)(5660300002)(66476007)(53546011)(6436002)(66556008)(6506007)(6246003)(4326008)(2201001)(7416002)(99286004)(8936002)(9686003)(316002)(2906002)(81156014)(81166006)(53936002)(229853002)(6116002)(52536014)(3846002)(25786009)(446003)(11346002)(7736002)(305945005)(476003)(2501003)(102836004)(8676002)(486006)(186003)(256004)(86362001)(33656002)(74316002)(76176011)(54906003)(14444005)(66066001)(14454004)(71200400001)(110136005)(71190400001)(26005)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6174;
 H:MN2PR02MB6029.namprd02.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: xilinx.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: D1LD/QGoFGvFUhf0krEX85WRz7p9MOY30b/rX29HgAxisVoeBtfE7GUMRp6+7mluMEESWFYyydqN2MdOEPDsh79CtOhRoQoyZEpD8VK7XPUSfoMUL7KpYJZsd/LpPZMeSaduXbbURmblHYE4q1wtBT/SIQe3GiGyUwWNFa1jPKXtfVP44RYky4MAsZwb2dGKSDoNVDTnobvVYW8/6rl0/AST9b8txZekgcZUwMe9ogGHUphQXIQvM7X07dADosXOnHpluKOnlJlpE7Iuw4dvsUhR17KPPcpqRl8xWQKZtGuZueQsYF6cJn91Sic95sY/057jMnKjIx9i3HxzEYjOSs25a+ne85+CRaLydFK0s0pMPOpV7PbBFNi2V5eulnA8W8eyRSeM61C3/hSlMIuc05MJfGnX1akencDQLi0VHa0=
MIME-Version: 1.0
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7fa7630a-e385-4190-04a3-08d708f43e2d
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2019 07:15:40.1096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mnarani@xilinx.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6174
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_001544_428328_E9D9CF55 
X-CRM114-Status: GOOD (  15.61  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ping!

> -----Original Message-----
> From: Manish Narani <manish.narani@xilinx.com>
> Sent: Monday, July 1, 2019 11:00 AM
> To: ulf.hansson@linaro.org; robh+dt@kernel.org; mark.rutland@arm.com;
> heiko@sntech.de; Michal Simek <michals@xilinx.com>;
> adrian.hunter@intel.com; christoph.muellner@theobroma-systems.com;
> philipp.tomsich@theobroma-systems.com; viresh.kumar@linaro.org;
> scott.branden@broadcom.com; ayaka@soulik.info; kernel@esmil.dk;
> tony.xie@rock-chips.com; Rajan Vaja <RAJANV@xilinx.com>; Jolly Shah
> <JOLLYS@xilinx.com>; Nava kishore Manne <navam@xilinx.com>;
> mdf@kernel.org; Manish Narani <MNARANI@xilinx.com>; olof@lixom.net
> Cc: linux-mmc@vger.kernel.org; devicetree@vger.kernel.org; linux-
> kernel@vger.kernel.org; linux-arm-kernel@lists.infradead.org; linux-
> rockchip@lists.infradead.org
> Subject: [PATCH v2 00/11] Arasan SDHCI enhancements and ZynqMP Tap
> Delays Handling
> 
> This patch series does the following:
>  - Reorganize the Clock Handling in Arasan SD driver
>  - Adds new sampling clock in Arasan SD driver
>  - Adds support to set Clock Delays in SD Arasan Driver
>  - Add SDIO Tap Delay handling in ZynqMP firmware driver
>  - Add support for ZynqMP Tap Delays setting in Arasan SD driver
> 
> Changes in v2:
> 	- Replaced the deprecated calls to clock framework APIs
> 	- Added support for dev_clk_get() call to work for SD card clock
> 	- Separated the clock data struct
> 	- Fragmented the patch series in smaller patches to make it more
> 	  readable
> 
> This patch series contains a DT patch, which I think should be there to
> maintain the order of commits.
> 
> Manish Narani (11):
>   dt-bindings: mmc: arasan: Update documentation for SD Card Clock
>   arm64: dts: rockchip: Add optional clock property indicating sdcard
>     clock
>   mmc: sdhci-of-arasan: Replace deprecated clk API calls
>   mmc: sdhci-of-arasan: Separate out clk related data to another
>     structure
>   dt-bindings: mmc: arasan: Update Documentation for the input clock
>   mmc: sdhci-of-arasan: Add sampling clock for a phy to use
>   dt-bindings: mmc: arasan: Add optional properties for Arasan SDHCI
>   mmc: sdhci-of-arasan: Add support to set clock phase delays for SD
>   firmware: xilinx: Add SDIO Tap Delay APIs
>   dt-bindings: mmc: arasan: Document 'xlnx,zynqmp-8.9a' controller
>   mmc: sdhci-of-arasan: Add support for ZynqMP Platform Tap Delays Setup
> 
>  .../devicetree/bindings/mmc/arasan,sdhci.txt       |  49 ++-
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi           |   4 +-
>  drivers/firmware/xilinx/zynqmp.c                   |  48 +++
>  drivers/mmc/host/sdhci-of-arasan.c                 | 453 ++++++++++++++++++++-
>  include/linux/firmware/xlnx-zynqmp.h               |  15 +-
>  5 files changed, 540 insertions(+), 29 deletions(-)
> 
> --
> 2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
