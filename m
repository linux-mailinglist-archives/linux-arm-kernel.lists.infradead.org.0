Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34E213D741
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 10:52:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0NkgxG+ZvmPSgjWEscMaig2TBR2QX3X+BG9csZxxsVs=; b=qHFFcbtYd1uwZE
	xPG3zbT2cvtls5YBQ4cqsM7JHRvtqc4KyclSHWuwCq1OGvyNdmy5PFR5WEJmZLxmqLOqe8D62os/Y
	iRZctR+gGzRQdNK86OhqrRim+riWgUWRfTNGn7b8hIHsFZgiWtlE0TFwP71Ftk7FXiAZcMKfBk0/F
	e0EvPg25u33DX/tYdAnFSS9Q8i2HDx0SfTewdo3Obj+ynHtRBlrwBnjFFniX7TYHF0gansml+ggT/
	G3noHq0PE8aAwet/IF8m1Ay6P9ZSw/dU5Th/8fqEQvtAiHTvcE2sZx+B8KmDXdrbrXkMhNBcW++IX
	RA++jqX2cnGYCojFOSXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is1oe-0001So-Cl; Thu, 16 Jan 2020 09:51:52 +0000
Received: from mail-eopbgr50046.outbound.protection.outlook.com ([40.107.5.46]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1oO-0001R0-Jt
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 09:51:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FDt7Ephiy8QOYZtDn/jWFzOoE+yYjzcEm6mLmsJbAKpTq709JADVPbYEIdR62s8Xlpu8AJvFlM5vwPXvsepXtzAxTSm/vAMfpdcgzNc+/gbR6JpneMLa+cflg57HPhPbmTVrK2jKQdvWBhYN3nKPmla4Apc7kwzEzXHESeUM5puI/85Did1n7FfY0RsZKgY64Su9I5EwhN38cgh0odPlVvELzoU0ilDkYoKaIwWpM9cuuwSM20Ka/stfSJMP2Q7FLU2Agu/YlQEFSp5QdF5GT9VAYLvTH5QpmGBdbaRmLIw5fxMWXy0nIXUXtvC3eCboyDBs4bnoqp26yjY1gR55Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vT4MDkCzU4NJ0bMXmF2fkl1mvzTyRAOOHOii8lGrM3g=;
 b=UMrk0ok2xitc3tUoZzr46VO0PAbSrqHHJZiO/EiuFXV/VsgsQRDotFNkuj7wTR6YrKv5ypd4yRnRceYcknDQqdxwXFtWymSe2Rk41iDvq+4DDQJHTE2PWVcVRKaPeJibaw3zJDFpWyU4GogxA2+IM7O8ZdS1eXqjnTdFxarWmRfGVrzTDCeRSVRK/7RJAAJvfkVqSj1CoimwDvv/TyuORDE+QlIQ8diQ9ngRhc43q1uKs9TrcxWAhnfFTKZGS8YS6EkiGnXRZslMYoj1snXIoSumX7efX3rsV826il0Sl/iTHrW4l3gMmffhCtGLgM2fvB9obwkDYOY+eF+wemtgXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vT4MDkCzU4NJ0bMXmF2fkl1mvzTyRAOOHOii8lGrM3g=;
 b=WxsMaUPQ6LH3VBILqphN2/lp8PIVHUXe69AGNTlF9lBfOb/CRJXnSSbbXq/FPrI2yMlUwSsz04GsZR/E0r0RDbRYXtxRtmYZn6nP+Wr/54NAhwX+jgungB00IC5wZ0NprjsBEhkfqp2ynxYv0dU+oVGesLc3bLycdlRy21Bn4dg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4337.eurprd04.prod.outlook.com (52.134.124.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 16 Jan 2020 09:36:43 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 09:36:43 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0302CA0022.apcprd03.prod.outlook.com (2603:1096:202::32) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.6 via Frontend Transport; Thu, 16 Jan 2020 09:36:39 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "s.hauer@pengutronix.de"
 <s.hauer@pengutronix.de>
Subject: [RFC 0/4] ARM: imx: move cpu code to drivers/soc/imx
Thread-Topic: [RFC 0/4] ARM: imx: move cpu code to drivers/soc/imx
Thread-Index: AQHVzFB28inl/b14XEmQISgKukQ5pA==
Date: Thu, 16 Jan 2020 09:36:43 +0000
Message-ID: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0022.apcprd03.prod.outlook.com
 (2603:1096:202::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 20ca5246-c663-4e5c-3495-08d79a6798ce
x-ms-traffictypediagnostic: AM0PR04MB4337:|AM0PR04MB4337:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4337EAEE51E1D018258EB00C88360@AM0PR04MB4337.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(366004)(199004)(189003)(8936002)(86362001)(69590400006)(71200400001)(6512007)(186003)(16526019)(52116002)(956004)(44832011)(2616005)(6486002)(26005)(6506007)(478600001)(6666004)(4326008)(7416002)(2906002)(81166006)(66556008)(81156014)(66476007)(66446008)(8676002)(110136005)(316002)(54906003)(5660300002)(36756003)(66946007)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4337;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: roH6XQYLimWGYZocYjrvI3qpNsbNXURSl45uGbzp/IWanr5s0FwlvYfIwvA4YNjfNIpo8Wao6AQk0rAmTTD6HNKyfVVYosOH4S6VWNOUPC50Okqnn1jboLMMbhCf0kYM7j1R/fzo+bMPRUEJ/J5JT4DXydPjEIRtCT4f4uoaFbcXuGtUNQSh5T4vfwOFP+Ot/P0W/V0fcgaoBXt6Bvl3U8bsOKfCl3PIwWkz+K742tlwbMKaB92LQmKxAMtCDPTRPUgI9z5x7Kq64SLy6zfrSCxJNIxkBZMUQn2Zf/Fuveywu40Ve5p86EVW0MbXeBPfg8lzXvFmkrmhr5xSTi41Et8mVKyLojsDH9kdjYMGRTY23NTbiWZHoEwJAuj/J7RhY/WyWWbdjrlnN3ccjz04xPMrppRPof4gJ2BQjFwqRBeS+OAQ6KmNF3jS3L3ByJNCQb0LDzJ2z56KyXI2qMFLOQ9yIa+CnLXdZXOFO+/xFOK5vKY8WO6rFcsmM9Jl0ecb
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 20ca5246-c663-4e5c-3495-08d79a6798ce
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 09:36:43.3773 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: oI0ELJgBIvEitywbhU953rauL8lzqXtnzPacdYWE7SJqSfazBjGKSnZ5pnzH0+59JFUOU+xxzT2bXS3w4+sOZQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_015136_653383_FA272918 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.46 listed in list.dnswl.org]
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
 <linux-arm-kernel@lists.infradead.org>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
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

From: Peng Fan <peng.fan@nxp.com>

Follow i.MX8, move the soc device register code to drivers/soc/imx
to simplify arch/arm/mach-imx/cpu.c

I planned to use similar logic as soc-imx8.c to restructure soc-imx.c
and merged the two files into one. But not sure, so still keep
the logic in cpu.c.

There is one change is the platform devices are not under
/sys/devices/soc0 after patch 1/4. Actually ARM64 platform
devices are not under /sys/devices/soc0, such as i.MX8/8M.
So it should not hurt to let the platform devices under platform dir.

Peng Fan (4):
  ARM: imx: use device_initcall for imx_soc_device_init
  ARM: imx: cpu: drop dead code
  ARM: imx: move cpu definitions into a header
  soc: imx: move cpu code to drivers/soc/imx

 arch/arm/mach-imx/common.h       |   1 -
 arch/arm/mach-imx/cpu.c          | 159 ---------------------------------------
 arch/arm/mach-imx/mach-imx6q.c   |   8 +-
 arch/arm/mach-imx/mach-imx6sl.c  |   8 +-
 arch/arm/mach-imx/mach-imx6sx.c  |   8 +-
 arch/arm/mach-imx/mach-imx6ul.c  |   8 +-
 arch/arm/mach-imx/mach-imx7d.c   |   6 --
 arch/arm/mach-imx/mach-imx7ulp.c |   2 +-
 arch/arm/mach-imx/mxc.h          |  22 +-----
 drivers/soc/imx/Makefile         |   3 +
 drivers/soc/imx/soc-imx.c        | 146 +++++++++++++++++++++++++++++++++++
 include/soc/imx/cpu.h            |  30 ++++++++
 12 files changed, 185 insertions(+), 216 deletions(-)
 create mode 100644 drivers/soc/imx/soc-imx.c
 create mode 100644 include/soc/imx/cpu.h

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
