Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F01B0101F46
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 Nov 2019 10:05:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=q75s2ssI7qBAVXNqY5qtpgf3AR95YHxyX+AsrAaUCZo=; b=iCfhzA7KCzNJKU
	f8Gb/FJ1BkU93aQnP/JAoVreQ3A26LjscJlFaHeSpAStwUcT2HDQNqI6cEirGsp4rh6GyGxEIroH4
	1PYH+yURW82gEuSCxbr9IDBPkXYtOO5d4QVVMh0mrNcmXoybgC+I4a3ic4wG+Cbl2QffG7UTCfBSq
	skFN2U1RFeasOPlzKe8eEp1zAWVBH3bQ9q4HhW7kHx14WrHGrtd7LbewuzXUPqaq2yLVfIMMqmEy/
	f1Xof4GlVQJ11PiFYe9Flr5keWU/Rg3cb+mRIE7p9Vnu/DIP3IsGsyC/4afVw5QpcS1kQAqoPgbZw
	LOgJPi7ytYzAO47alsrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWzRj-0006wi-Sj; Tue, 19 Nov 2019 09:05:15 +0000
Received: from mail-eopbgr00048.outbound.protection.outlook.com ([40.107.0.48]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWzRK-0006vX-KM
 for linux-arm-kernel@lists.infradead.org; Tue, 19 Nov 2019 09:04:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=c9QzmFn8LMtgOiqWC7c4pyq+ES0GRtkpGZDOXxGUhzzAZvsk4IctZPaGHnnDCQJwOCnbl5BSxsjeDSt5+QjLXZfH2zJOefHX8qnhzz8z0A32fxigbw56s5kux8drKN8eZFnDKTecIelzX52ZZKvhev6Ouz0Oh82Iw56KxopuG5ilBeXzBSXJfecRj2zzFOGQ9BvhkG8R4Visju2Sg4NyteGioIeKa7ROW3OMWArGA1dgjTWI0oP+Ju2SEc87qGzq5O4jo767qqNv256XqRPH4/PsdwAuPiAysXqLeezB7MTC1Ba4dXLcdReITPwzM+yyIWy8F73JNkx4B4UG7+6f8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m24kf1mk+kO/yaNIo1CPGxMbwLKja/PQeg67t1Y05P4=;
 b=fYcfbhnoW10GS9EanJF7z7G+ShLMNGrXKhTbeN8P39L176WEULWw155cMTmfXiGmwGNiYC7UQMxFiPFjKOPp6d3yIr5wVO3ZagLQyvPyl1UgatTYvk/ebDVNMIvinmDIpsfqf0m71rTtpNmPHGLkcBMJ3Wd98rQMmWb7fPyConOY9FmE/cTw5zkH9MtsaST/dYJOeig+r7ACU/JpT902MI97Iy2cV+v5XOXczBUHP+Wri18hSwmLO/M20mDk9mkccZzlVkqvHqKly6tw4tTbbq3vRl4gXCXdC45XhNGBJhjjmWSj26yjxgH/Ud1c/PFI6ddCbvjxJ0AwIOTaCnZEBA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=m24kf1mk+kO/yaNIo1CPGxMbwLKja/PQeg67t1Y05P4=;
 b=VY7p79J4CmDPH1g+QeWaD2XwBi0p4FGzLUCNfAZdn02zDAYKgn0XqGmQz2Uv5l4tdvF0lg/DbAfgNut9+gNXE2qqGB/srcgmE4WMIlZSzR8kHU1/UrzFMKhgUvqTVdPRs5LgsVSbxB9WBqFQx/Z3AuzWSuKrOIThaCAkZuIidwI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4259.eurprd04.prod.outlook.com (52.134.126.138) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.27; Tue, 19 Nov 2019 09:04:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::f16d:a26a:840:f97c%4]) with mapi id 15.20.2451.031; Tue, 19 Nov 2019
 09:04:46 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH V3 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Topic: [PATCH V3 0/4] clk: imx: imx8m[x]: switch to clk_hw API
Thread-Index: AQHVnrhjSBoXgoVf/UaxtVvL2YWuSA==
Date: Tue, 19 Nov 2019 09:04:46 +0000
Message-ID: <1574154146-8818-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0052.apcprd03.prod.outlook.com
 (2603:1096:203:52::16) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cd68e53c-5f5d-4dab-4b6c-08d76ccf8635
x-ms-traffictypediagnostic: AM0PR04MB4259:|AM0PR04MB4259:
x-ms-exchange-purlcount: 2
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB42593B47D8219A6C5E12DCDA884C0@AM0PR04MB4259.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4125;
x-forefront-prvs: 022649CC2C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(396003)(39860400002)(346002)(376002)(136003)(189003)(199004)(486006)(54906003)(6306002)(36756003)(6512007)(6486002)(52116002)(6506007)(2201001)(64756008)(66556008)(66476007)(476003)(66446008)(386003)(25786009)(50226002)(2501003)(110136005)(4326008)(2906002)(316002)(6116002)(3846002)(44832011)(8936002)(6436002)(66066001)(71190400001)(71200400001)(99286004)(256004)(14444005)(186003)(14454004)(305945005)(86362001)(966005)(7736002)(2616005)(478600001)(5660300002)(8676002)(81166006)(81156014)(6636002)(102836004)(66946007)(26005)(32563001)(15585785002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4259;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Y3FEvRdQunUd1hBmF5RuvVWFx5kuty2ZhTOlrZqMilzqJtK4Uc1V1+y/yUAaJT/r0HEVMTke2XHtMkFbCF2HWxWTz8oZKq49eR6iU+xJDPFDiaOiKBLjzOeixEtCjTkH7+5peu14w9f8DkDy7xpPG6o71AdJa5md/ySrwtQuARzYXC6vonYL0elJLCLGp5QAcKLs15HO0ggAJRg07EQalaTJNpk7GAYhiTQS9SW2dDrO9ygFTlEYSmIEMEW7+VKc7hj45OBupkXg8xxaWNkwknW/N9HN5wxC0yy1wrFi1N9dOoSNWQW3rbcOq7GnRMl03ag4fQ2SSKBkU2rsCtAfD9Bmt2/5QGWh91FEYtaSdNKbSsdieXU09l0U8rHCdFT+Cjkgfk0fJgBebeDIv8PU6snSxzyHRW08dIUH6Y+C8WzkP4Yrf1siKxBMPsbxA+JYnQBQBcY3aD8bVTqIlX7TAO+E9O5EltCLlvCWrPod6xA=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cd68e53c-5f5d-4dab-4b6c-08d76ccf8635
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Nov 2019 09:04:46.5432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: M54m28aseHK4A9VmCBGd1HkWFiTcakxkofmT9mmc0fK7NmXQA41fKMHqIzLXgG/tFjqRswYfJoTf/pACILkRYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4259
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_010450_738699_C8003AF5 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V3:
 Rebased to linux-next to avoid conflict, not based on shawn's clk/imx
 correct a few pll of imx8mn to imx_pll1443x_pll per Leonard's comments
 add Abel's R-b tag

V2:
 Add a new patch patch 1/4 to avoid build warning for arm64
 clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
 https://patchwork.kernel.org/cover/11224933/

This patchset is to Switch i.MX8MN/M/Q clk driver to clk_hw
based API.

Based on linux-next branch, with [1] applied.

[1]  clk: imx: switch to clk_hw based API
     https://patchwork.kernel.org/cover/11217881/

Peng Fan (4):
  clk: imx: Remove __init for imx_obtain_fixed_clk_hw() API
  clk: imx: imx8mn: Switch to clk_hw based API
  clk: imx: imx8mm: Switch to clk_hw based API
  clk: imx: imx8mq: Switch to clk_hw based API

 drivers/clk/imx/clk-imx8mm.c | 550 +++++++++++++++++++++--------------------
 drivers/clk/imx/clk-imx8mn.c | 475 ++++++++++++++++++------------------
 drivers/clk/imx/clk-imx8mq.c | 569 ++++++++++++++++++++++---------------------
 drivers/clk/imx/clk.c        |   4 +-
 4 files changed, 819 insertions(+), 779 deletions(-)

-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
