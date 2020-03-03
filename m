Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5F1717705B
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 08:49:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GL+188AfFbyiIW5u1sWFrD0NVLpULYNB6wISXK/CIZI=; b=ATXXwqaYeoa8kC
	N3UhYgUkQZi8E7iUMVIKZo0cHtf9CNMweCoydwDbU3O3e4H2Gt7YCSP0zb5d5vzBX6urRmrq+2Py0
	YaGQ1kEyXCAshZnToCmT5vBt3CRKKFk8+TitrbXIHrKyldBg3eWtXq0mmajf/XLDd1xNwnqmKMgmm
	WxwErFlZy6MZeHKvXO04b060YTIQ7cu90+e1qIvuSfZMD1HXXfKc1XNQIiiQGHnldy/DgffrUVyU4
	0xttYTCcdyDWa+JML6xqx8yaZ0rAv7cml55S7+LBtvto2Ayw8/pwZ89eN5nJozTTNUzESws/aG+mD
	HwGnay3flCr62zwdNB7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j92Io-0002iZ-2G; Tue, 03 Mar 2020 07:49:18 +0000
Received: from mail-eopbgr80079.outbound.protection.outlook.com ([40.107.8.79]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j92If-0002hm-W7
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 07:49:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XeRw+TytfRDyij420sGNVZE7G0OkXeu3FQL5flHVaX0wDkF81JSxentS/4AU8f/vt7Lla+Ghm9/iUcCWzsucUdskpvRLDV1/m6mK5ibooQfxcsC59OhCKuXSpJ953V6vNCW8rWc6hTjSQRgZFGel7vDumoH4rQALTNpFd4NZcG/nwhcIRY1XFaFgwfo8GWKZxGoG4rZj+clkj+hL1YsfEPm2vSBe6Xz5orp8hkjZ27JA2aIWVfVRmvoZ+Rz/R2k9mXabz5QFI8QY+KgK8Bpa+gewLBUEMCkdKWvpXwVcLboYox5l0mDhL/8+VH8lC3iddys46oFhVf8s0XMIrcoJIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ErN327zcqyfS+wrfBjeApFm5A/wQ5+cxB3M6KzJNV+4=;
 b=oUSg39LX8MtvpmHc/W9Fqo6wpv9rfL1nPD3xH/5vNqXdr3uQ4307gqotxk490WbAuD2o/gBNg/6BrP+p1DbJC6W9TGiycMBFIrcw5HxlzLXe/EMJeQajRECOskh7kguDURsupy49/YPqfh4YFv0eJSU8AKFcrhxtDJNdv4lVJj/ZnU9gONEXS/Ik0NWqZ19fQF1FUvjZNS2J4DY/+V/3RGekHD71+L3FSVE26mgiIQ95QqtNsWxkDLPVuLDRKtNAjslMYYL31bsnWSaBDMv+U0jJAjRUMRTJuP9GrMk0fJtg3TdEu/H+jv/8Z7h3nMzAm8u9kDO70IkJIhsOYkmVDQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ErN327zcqyfS+wrfBjeApFm5A/wQ5+cxB3M6KzJNV+4=;
 b=V9+2bdFeRe4Ol/ekwsLXq394P5sxV5dizm3kO5FLdsqUSvUUDznxXalfuD1qOjSOfZbagWwjnYnQCkEkZ/t7TTsOydLsI3MEUf/lltaekhN46xxki+VMO4mHT914Hztm8azO7TofhE1KORK+QqKgA32gwF/HbtP3Qw/ls2RT3AE=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4114.eurprd04.prod.outlook.com (52.134.94.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Tue, 3 Mar 2020 07:49:05 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 07:49:05 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org, s.hauer@pengutronix.de, jassisinghbrar@gmail.com,
 o.rempel@pengutronix.de
Subject: [PATCH V5 0/4] mailbox/firmware: imx: support SCU channel type
Date: Tue,  3 Mar 2020 15:42:35 +0800
Message-Id: <1583221359-9285-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR06CA0250.apcprd06.prod.outlook.com
 (2603:1096:4:ac::34) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR06CA0250.apcprd06.prod.outlook.com (2603:1096:4:ac::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2772.15 via Frontend Transport; Tue, 3 Mar 2020 07:49:01 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 3d494492-ba52-4d22-7c90-08d7bf475902
X-MS-TrafficTypeDiagnostic: AM0PR04MB4114:|AM0PR04MB4114:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB4114BD14595BF3992EB10D3988E40@AM0PR04MB4114.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2657;
X-Forefront-PRVS: 03319F6FEF
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(366004)(199004)(189003)(8936002)(52116002)(9686003)(6486002)(5660300002)(6512007)(8676002)(66946007)(81166006)(66556008)(66476007)(81156014)(26005)(36756003)(6666004)(956004)(478600001)(86362001)(4326008)(2906002)(2616005)(316002)(16526019)(6506007)(186003)(15650500001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4114;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q99RUJ1dThw4Qv6tdzdsKob9IrOuJ0m6kyAilk0l9WToZgaGHCVf1aDuN6WucHdfHkpC+J1JN5n/AMfEFQyXEU0oHdqXB+roJHoNTr7sHQ9zVX0rK20UFMVDKhwuXdneiTxt7UEFJcf64efN2jDfrylpWPTxmDhV/RGpeKUUyZnWg0tfAhcZ7dd5yKEWC+eoQbCobRi3gM5Xkvo8JrZl8fdn8tr7dhW5kW1nEg1xZEopPzYwEtjoU3F3qhDPAZ71nDtzvDUESuetMhvqJhUtcPdVkc/Bni/qMqgjo8BjdiJ+DbyFzv6R6DLxMgmAxEDoO2QdWEott4vL2Eg1he91UJpsuKWtM+aKOTHVnEcuAoms96MW/pqCrKdiGRpiL06o64CO4x5DAEKNXFGoIkoi5do6tvdZ5uXIam1BQBP/lm3Bb6apJVw8nFirfv5qvVdX
X-MS-Exchange-AntiSpam-MessageData: O8f7mdQWAZX0zQNufOLxAx9zPJ6x0pyCjtMdd+ypy7RZYLR9bjostJ5ttVvHWVQLPxRDoO2oLTnHd1lVUDzDOHMG4bdD16a2YH0TPQZKm3oEY6DrXiCVYqJKpHjAuM0ZNlXxU8b5up2LBhwXWAlOxQ==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3d494492-ba52-4d22-7c90-08d7bf475902
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Mar 2020 07:49:05.5441 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GiQXu6THzoIhIWi60IjKOl7DZaAcK2RV4SKbTqMP/qu/usm6AfN9P+oNmCHqAlQqTuyoYjm3iVnzmKUhkEJ75Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4114
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_234910_034300_30B24909 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: aisheng.dong@nxp.com, Peng Fan <peng.fan@nxp.com>, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

V5:
 Move imx_mu_dcfg below imx_mu_priv
 Add init hooks to imx_mu_dcfg
 drop __packed __aligned
 Add more debug msg
 code style cleanup

V4:
 Drop IMX_MU_TYPE_[GENERIC, SCU]
 Pack MU chans init to separate function
 Add separate function for SCU chans init and xlate
 Add santity check to msg hdr.size
 Limit SCU MU chans to 6, TX0/RX0/RXDB[0-3]

V3:
 Rebase to Shawn's for-next
 Include fsl,imx8-mu-scu compatible
 Per Oleksij's comments, introduce generic tx/rx and added scu mu type
 Check fsl,imx8-mu-scu in firmware driver for fast_ipc

V2:
 Drop patch 1/3 which added fsl,scu property
 Force to use scu channel type when machine has node compatible "fsl,imx-scu"
 Force imx-scu to use fast_ipc

 I not found a generic method to make SCFW message generic enough, SCFW
 message is not fixed length including TX and RX. And it use TR0/RR0
 interrupt.

V1:
Sorry to bind the mailbox/firmware patch together. This is make it
to understand what changed to support using 1 TX and 1 RX channel
for SCFW message.

Per i.MX8QXP Reference mannual, there are several message using
examples. One of them is:
Passing short messages: Transmit register(s) can be used to pass
short messages from one to four words in length. For example,
when a four-word message is desired, only one of the registers
needs to have its corresponding interrupt enable bit set at the
receiver side.

This patchset is to using this for SCFW message to replace four TX
and four RX method.

Peng Fan (4):
  dt-bindings: mailbox: imx-mu: add SCU MU support
  mailbox: imx: restructure code to make easy for new MU
  mailbox: imx: add SCU MU support
  firmware: imx-scu: Support one TX and one RX

 .../devicetree/bindings/mailbox/fsl,mu.txt         |   2 +
 drivers/firmware/imx/imx-scu.c                     |  54 ++++-
 drivers/mailbox/imx-mailbox.c                      | 267 +++++++++++++++++----
 3 files changed, 260 insertions(+), 63 deletions(-)


base-commit: 770fbb32d34e5d6298cc2be590c9d2fd6069aa17
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
