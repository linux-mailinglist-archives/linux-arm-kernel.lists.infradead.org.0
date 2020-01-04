Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E26D13035A
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 16:40:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WbANRqMkyo5yrjCzosuhTqzQN/cboN/hxCxSHs9mLa4=; b=DCkF2vftTA9Sr/
	8RHZzoXDV2fs/4NPthKaOuZkDO6hTXkgXFchQpWVg8XA0qyTXnWVNJnNz1OhBzHdywqT6DnbzgLWO
	NcCqfEr6EWWSDKorRfa+PkBgNVqC7GPBylIovA1dG3J/HlZsbmzse8rumcdoFGOst0FAt2uj9eRr2
	ujxJgIkbNcfkfx9ISaM7Y2DfRVau5/d8XiOk3nfv5PC489xzSiHzfpslsWYBtfZkZUjRu2OMAyuq4
	tkc6tXlQxK/yhyvCKDVoroNftLGgUT5M/xtTZZZGoa8Ig2w5RyAg4GHXAnJfzutAuzeNMixu9qaI9
	iEincbzm/DCyUW9AynKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1inlXB-00032p-Cf; Sat, 04 Jan 2020 15:40:13 +0000
Received: from mail-db8eur05on2088.outbound.protection.outlook.com
 ([40.107.20.88] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1inlWx-0002qn-Hz
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 15:40:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=inLntqUFUvVPLgYYxaVOMDX65s7oIXMXCbiO2z3GMELMcJzJmbA1cKU+pw3Tf6MymeSkcmh+naLeH9wlH+o56W65/zKYnXliO36ycdf0Nas1HTqpY/JfmZx1QxHASgU0Kba2ko/3vMRj5fhUovJQmXM1QjP/OKtIg3HDZUIljffS+KinH7yGpCcbhNfnbH1NsfBj8TNIQCwhE3qs5Tyk2oPW24ox0Rl11qNr2ARkrZev99VgtNqP1wFzVvA4mxbXkwVO9BaqPzLo3dJiPxHG1NnW7MCMrC42I1EjAPF4jK3tO/0XBuzvfT0dROR8kKxSaVXGWofrn/ajjfvlt97ClQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFfAp5prsCAbdDMaJdvcSZtDphqq2YqPlLTYjNcJkTo=;
 b=WAgg76pGW+VWvupRuH58KusDeQDdeYhfvxRFxNgBVXP81u93P0EeSXnxiGx0bSPz9umvEkXMIkWv13QdBc/E2jae7UUykIu6laNd00NNeQp2Uva+vR/J0AZ0Nf7pSJIv/v+/zI1NGkZP+UmGccdw0s1l8MIMHw9XCEwpoekQ/pavEGCKayVInwqNnm4zcOFYNpKbE3Ix+q3A3pEyUUBi71L9kQ5jBrs2wXbDogGJ1k1DTKhOuYqTUsT3e3TvgK1rUi1wuxIUtDY+IKI3bMo9Y4cnsN3P2qkBTGRcg/9QTNV79D+7KXGN8xCv9Gr65K6tBxcLq1kH8cEW2m3dTMckvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=oss.nxp.com; dmarc=pass action=none header.from=oss.nxp.com;
 dkim=pass header.d=oss.nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
 s=selector2-NXP1-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tFfAp5prsCAbdDMaJdvcSZtDphqq2YqPlLTYjNcJkTo=;
 b=fbh6gv897nBlZIVryPu5TW+8SI5i8TOLs37C0ynW1hiNmnnn0K6jfd/oNyda4b51iBv4eV5gp056l/ZmObTkDd+w346ISIANGO44ApK3zsQa2Loz6CE6p7rTYdKijFErpktefJbZggRwzycnNko6pK/BvkD0492JRlXEidQNlls=
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com (52.134.16.147) by
 VI1PR0402MB3664.eurprd04.prod.outlook.com (52.134.15.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12; Sat, 4 Jan 2020 15:39:53 +0000
Received: from VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1]) by VI1PR0402MB3839.eurprd04.prod.outlook.com
 ([fe80::8881:e155:f058:c0d1%4]) with mapi id 15.20.2581.014; Sat, 4 Jan 2020
 15:39:53 +0000
Received: from fsr-ub1864-103.ro-buh02.nxp.com (89.37.124.34) by
 AM0P190CA0013.EURP190.PROD.OUTLOOK.COM (2603:10a6:208:190::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.12 via Frontend Transport; Sat, 4 Jan 2020 15:39:52 +0000
From: "Daniel Baluta (OSS)" <daniel.baluta@oss.nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [RESEND PATCH] firmware: imx: Allow IMX DSP to be selected as module
Thread-Topic: [RESEND PATCH] firmware: imx: Allow IMX DSP to be selected as
 module
Thread-Index: AQHVwxU1MPlW1r9WV0eXj4cyQwYasg==
Date: Sat, 4 Jan 2020 15:39:53 +0000
Message-ID: <20200104153940.10683-1-daniel.baluta@oss.nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0P190CA0013.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::23) To VI1PR0402MB3839.eurprd04.prod.outlook.com
 (2603:10a6:803:21::19)
x-mailer: git-send-email 2.17.1
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@oss.nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: acd51dc7-9899-4fab-608a-08d7912c577e
x-ms-traffictypediagnostic: VI1PR0402MB3664:|VI1PR0402MB3664:
x-ms-exchange-sharedmailbox-routingagent-processed: True
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB36642C56528C732A8BBF34F7B8220@VI1PR0402MB3664.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3826;
x-forefront-prvs: 02723F29C4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(366004)(136003)(376002)(346002)(199004)(189003)(316002)(186003)(26005)(71200400001)(54906003)(52116002)(6512007)(8676002)(81156014)(81166006)(86362001)(16526019)(4744005)(6506007)(1076003)(4326008)(5660300002)(2906002)(2616005)(6486002)(66946007)(64756008)(66446008)(66476007)(8936002)(66556008)(6916009)(956004)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3664;
 H:VI1PR0402MB3839.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:0; MX:1; 
received-spf: None (protection.outlook.com: oss.nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: geipwHuI6k+mc5WhVRVyRBa1gVk1oGAO5eJd5gBCoDBzU62k1XL21rgnPq2kH7SRNVy6XPm3ru+/+/0AsWia81vAz9WxXR6TiYKIGuA1g1GPvf/np03Ktc+wxxTOgxYBFdqkyipK4cntcZtCD8Yo70VV/zDidjpJbuTjqzSmiyjazUvfoHAadeWzz4GQv/ozJTPZL5hBtGSwjy8hT6uwo7MGttHaJXL8b4n1vhxtHc+b2kw7ru4HSLUcvcwGfAqbTbUy8t9wwnvK9kPASWs4FOqiu8NWwQSreUwIrEGEUDTbzIIeObaRt6TgcEqXENKs9VbiaxtVRVq74QAHf98am3upeFHWGlxrKfSPsHIPz14kfpFvGPOh99iwQUKc5Qxyh4ZgBrk4fFKZ2QoowBs3xnsB3jgKcwbggb8BH8yRJJ/NU9lNcqM6LwxBxfMBg6/M
MIME-Version: 1.0
X-OriginatorOrg: oss.nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: acd51dc7-9899-4fab-608a-08d7912c577e
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Jan 2020 15:39:53.2690 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: SoUN/1fLZy8vnfMNvfLTi0AesF65iQQUjDSZ1zz/Ot6Ws2gN/pGH/eMBNtJ/6gmBNQT3XmEOzVfsaAmJbWBu6A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3664
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200104_073959_725032_096B2042 
X-CRM114-Status: GOOD (  10.35  )
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Daniel Baluta <daniel.baluta@nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Baluta <daniel.baluta@nxp.com>

IMX DSP is only needed by SOF or any other module that
wants to communicate with the DSP. When SOF is build
as a module IMX DSP is forced to be built inside the
kernel image. This is not optimal, so allow IMX DSP
to be built as a module.

Signed-off-by: Daniel Baluta <daniel.baluta@nxp.com>
---
 drivers/firmware/imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/firmware/imx/Kconfig b/drivers/firmware/imx/Kconfig
index 0dbee32da4c6..1d2e5b85d7ca 100644
--- a/drivers/firmware/imx/Kconfig
+++ b/drivers/firmware/imx/Kconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config IMX_DSP
-	bool "IMX DSP Protocol driver"
+	tristate "IMX DSP Protocol driver"
 	depends on IMX_MBOX
 	help
 	  This enables DSP IPC protocol between host AP (Linux)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
