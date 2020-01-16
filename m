Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D18213D2FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 05:03:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nMUsqGqPpu4I9Vn8otUTAVujz3pEK1mi85iXT1twDWI=; b=MbfFKKeZDjA/p9
	7wV35T0Cmz9eJRpGAdfxMRhy+Ehq/B3W5clPkNuwS/p8nzY2G8Yveuu98s8UXXE1v9zoonaDyTrHy
	pFaYMINfbOiQeJZ46PKerNskurqDemsjO5TteLt5bRHNMit/0pHYsGFgut2eTSTc/VWfzOp5XKmIh
	cWRgg/oHzlWlx3O1YgUYEkKAYdQWDVuZM7sk9OI95WUshp8iC0rcV5oLrMO0rG+yIcyd6IZ1Tq159
	HcJQtvF0XmnLXEKNBLwpTmKo6tFkmuH1q05Ae8h7zfcnNId/eCol+SUhqIc28Jm5N8pTKBfeQ5ggV
	o/49HDxZbZ6lSbLMNoiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irwNs-0005fo-3W; Thu, 16 Jan 2020 04:03:52 +0000
Received: from mail-eopbgr60072.outbound.protection.outlook.com ([40.107.6.72]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irwNR-0005XB-Mc
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 04:03:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VSgmwupDvItAKaP613Dy0VJAdCtvIwRsK8R/crGYrTLyh4fjwjTTbQ+3d6nfe8XtaECS6hjU8se0gOINOrDeotD0pFM1wJBKe/nFWSO2cVlU2q65W+6wRwN90bepNDckjpkG3e4oNMqBpjDianyGcnnHn2s8Y797Uf5AvoQPRBGPNYd8c3pc/04Qjd4mf3x4H4F8EYlsICRIkQjY3gy1LQxMXhf5iZQMfSTX/xaCThjbua0hMmw22nwEcwZsBqaxHKMBuJAv+qaee0CMAUb92Ho28rj9dyMHIFwdA7WsJjcZ+frrwkpOfmGaaV7Ll76cKwxHBXNJv8xksMmjwy03aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtLxNjbNua+BrSyzWX2vn61RyddrlF0zqLeJiRxv8Pk=;
 b=SErH4WYsoUfMJIwFi4OsOVjjx55EFRyLec8Acc5eBPvWT8wDXHdwOzEahBzFSBBbE2NlOWeznbRwBHrbE4M4jv86xFzJBwzMUAdATouDo8Rvg2ChnOxgSokKqcJGYM8R3DZa3yeF2rzuVgwe7y1crpGyffwJFbZfTkW72Hby0/WsOFhMxZ2/iWX6IlFBc5mVsOe3lWSL2omMWAjStRQ/WQUHhQU4VO2YjP7hRH/JJncrvxfttlIDJXYI/BYvTm+BCBwBTHYZ2VMHpjvNMtR31Wjc73ZVa0/uNdGE7Jt0bkCFsD0BM10+yVPHHtSLCWQ5kLmeTN4fbZv5zKSyUklp0g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DtLxNjbNua+BrSyzWX2vn61RyddrlF0zqLeJiRxv8Pk=;
 b=itfMACFeo2VnqwhDxFZy9J47uhm4Ry8rOpeqQM5LXlk+8NU6uWpl9dTkYFb9u7ARMlQ/9fyMoD4bKmx5QfyjI8nA+OWNYIQ+IgkAiF/a4+HNPzQ41K6xg21p8dS5j/i+kWkUq+Yrh5AAEg22mIoKMsWQIIg+rYWCMtZnsvoLEP4=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4612.eurprd04.prod.outlook.com (52.135.146.26) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Thu, 16 Jan 2020 03:49:11 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2623.018; Thu, 16 Jan 2020
 03:49:11 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR06CA0002.apcprd06.prod.outlook.com (2603:1096:202:2e::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.20 via Frontend Transport; Thu, 16 Jan 2020 03:49:07 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH 3/4] soc: Makefile: increase build coverage for i.MX
Thread-Topic: [PATCH 3/4] soc: Makefile: increase build coverage for i.MX
Thread-Index: AQHVzB/poPK7Lim6ckO4Mi4LQExmIw==
Date: Thu, 16 Jan 2020 03:49:11 +0000
Message-ID: <1579146280-1750-4-git-send-email-peng.fan@nxp.com>
References: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1579146280-1750-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0002.apcprd06.prod.outlook.com
 (2603:1096:202:2e::14) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 625a6a4f-99c6-452b-da0c-08d79a370c26
x-ms-traffictypediagnostic: AM0PR04MB4612:|AM0PR04MB4612:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4612F75BA2B9221762686C0888360@AM0PR04MB4612.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:843;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(376002)(346002)(189003)(199004)(478600001)(2616005)(66946007)(2906002)(956004)(110136005)(8676002)(81156014)(81166006)(8936002)(44832011)(4326008)(66556008)(7416002)(66446008)(64756008)(66476007)(54906003)(5660300002)(6666004)(86362001)(71200400001)(69590400006)(6506007)(316002)(36756003)(26005)(186003)(16526019)(52116002)(6486002)(6512007)(4744005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4612;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MIHft7g6m9XEXarQ23g0c8i4cP1AURcskBI1Lb8yl1c77pDZJYwjK0Xi4TkWrLP4dRlYVbJJwj2vdX+Hy0iF0FWlu4wp58KEmSdTyMSRgUwHObymookab3oQK+bph3+aFPpWIV6FnxMIZpQA4MDdo4y1tfdO4v/NmHrH+TwTEGMbitEyeuBnMigFC9L7It+FopdTA5pr9I+MiHbraAKJw8WkNhatQuKKu805NjKOZL4kKqrw1bFFOPW4M01LDbS+i1t1J5J/zMnbFmX0herDIk1XalOKtH7bkOC7S78Jlx9lQbhzu3QokjBi7Re0wSjqaH6xv8IkEvrWdYlUQ2UyJTINaju85cc+1G7AUX+KTEtXbIuh8kKVhOK6XhMdYifopjD7BFcggqszKssdXtRZywfnYAwI5yWzzgOxzWDhV9nbuqecTczDPb/5TbX41qti2BkFlmtlfSmA43nbYacLep8nkysipEo7mECPYFm6eWAmROtsIZC/GEADwoKYd6d/
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 625a6a4f-99c6-452b-da0c-08d79a370c26
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 03:49:11.7473 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nFvLZ1fwl2fjTf9ibLJRlMCUAxJRfIouKJykW8WPG1X7ZGoopBuTp3CEIs6c4TivYtaHT05jOLkuGGwT9rIpzw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4612
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_200325_745916_70D4C409 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.72 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Increase build coverage for i.MX SoC drivers.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index 2ec355003524..614986cd1713 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -11,7 +11,7 @@ obj-$(CONFIG_ARCH_DOVE)		+= dove/
 obj-$(CONFIG_MACH_DOVE)		+= dove/
 obj-y				+= fsl/
 obj-$(CONFIG_ARCH_GEMINI)	+= gemini/
-obj-$(CONFIG_ARCH_MXC)		+= imx/
+obj-y				+= imx/
 obj-$(CONFIG_ARCH_IXP4XX)	+= ixp4xx/
 obj-$(CONFIG_SOC_XWAY)		+= lantiq/
 obj-y				+= mediatek/
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
