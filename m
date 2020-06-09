Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA6201F3997
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 13:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C2JxVxeuKMV3wcqMEU4D9jphCCpeJMI4NQ00i6tF9O4=; b=HsXLYz1mu1d0C6
	1YGq3yj4n5dbrQ55TkDWvRnLvnt8PAU4e3J7PpGTqJgVYL7gsZ9TBE1lkzUZmzeY6BIqgsc31PNtZ
	a9xMzFRSpRn9EiFM3KKJDF9qAxiG7XsajWkZwMvnLH6QY0ynMLdQJ81U94L81Ak4sXBWEGw/hYGwj
	F4m0lYjhMwh+uBQ1wyZLNtxypn+RSG9DW7oS9O7uJlOhFWm6lTcEpDb2z/Tun8GZMHugBeOkbVoP9
	tvYAsX23a7oph6I+cq3kl1O6XXG50d4YhXEBF3YuNQnQ81E3huX9yNVUgZw8s+OxoJVmmjPEQhr0m
	q5xwiuMA8Ku9CAzxUpPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jicMg-0002cH-EH; Tue, 09 Jun 2020 11:24:22 +0000
Received: from mail-eopbgr20070.outbound.protection.outlook.com ([40.107.2.70]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jicM3-0002CC-M5
 for linux-arm-kernel@lists.infradead.org; Tue, 09 Jun 2020 11:23:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TtiBWgcyIU9lmUH6A1Bs8j66GFJyl06RoM+7pfrvATluADaQ51WUe5VYPbFDyVYJH/R014jeWIHodfQE3cAxdFxKRWhNgYFrePihkJfFb51MOxL4X3Hc0NfVTZXEQ14jcEwqVcqTXQkKzCiJjErR/TZ4QAP8WufmxYQFGVCUYmUptFfdvNRPV1fxTPcwsWds823b4R2yEgsFPIb0wtPdZf4t2DThfLggQk7XkQ4+bBUYnjyLoiknul0Q0hwcrFF3sZwAHaCACPflqdyr/lZZHBmexwCR9PJE77Y0E2riLiNkCf1Aj0RQe56WvEp7pwD9onC3y3QqER706Ltm0lydbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+2I4E5ymUx2K4KjoTr/nrL47JWnZ73Ap2qG5vG/4xz0=;
 b=aV1K3T2ujA+EPwON7iaKDwrvWjSi8lWJX4W1RITgDO7ZixdmpijGo9qWf5FDljod/xvjieKtX2ehdPXObFgp2z7GcSJfVyLUjsp5XRHN3aC/1P/MOBJkUC5bqJq/RkRRMovS9hIv3QyLqfD6/xZlZ+yx3mao6u6YZbKNh+tai+7kkkSqxfqkNw4Dl94uHfuzunRyhhhlWYBPmeGUypFJeqDJp5NplT8onpYtUBtFz1p3bCe207CNwyli7W58Qgx6ZGb5eeSv8dn/8eTV04+yp9YfyJSVb5tvUy1wdKf+Vni0R2HtsImMQ8WCbeon+7qkSNW/NDGdIsN7YRV4Vkavww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+2I4E5ymUx2K4KjoTr/nrL47JWnZ73Ap2qG5vG/4xz0=;
 b=FU20Wls2fcZ59WiEPZPWYsjhIX88BaliCKNkyu8/s3ikVvYnGLT3nhkLbICSLsmXNkNRXzqTpnNEN+BPROyOer8O9Lsvd6IkROgABlH0G/QzLU/Mq3Fy84E4ywG81G69VZoEqRIfbxMyeDH5kKe1ghPtxNQVYSZGVFEZdf2AMXI=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com (2603:10a6:803:127::18)
 by VE1PR04MB6589.eurprd04.prod.outlook.com (2603:10a6:803:128::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3066.19; Tue, 9 Jun
 2020 11:23:37 +0000
Received: from VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::5086:ae9e:6397:6b03]) by VE1PR04MB6528.eurprd04.prod.outlook.com
 ([fe80::5086:ae9e:6397:6b03%7]) with mapi id 15.20.3066.023; Tue, 9 Jun 2020
 11:23:37 +0000
From: Li Jun <jun.li@nxp.com>
To: balbi@kernel.org,
	shawnguo@kernel.org
Subject: [PATCH 2/6] usb: host: xhci-plat: add quirk for XHCI_NO_64BIT_SUPPORT
Date: Tue,  9 Jun 2020 19:12:41 +0800
Message-Id: <1591701165-12872-3-git-send-email-jun.li@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
References: <1591701165-12872-1-git-send-email-jun.li@nxp.com>
X-ClientProxiedBy: SG2PR02CA0069.apcprd02.prod.outlook.com
 (2603:1096:4:54::33) To VE1PR04MB6528.eurprd04.prod.outlook.com
 (2603:10a6:803:127::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0069.apcprd02.prod.outlook.com (2603:1096:4:54::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3066.18 via Frontend Transport; Tue, 9 Jun 2020 11:23:34 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: d673955a-6ebe-4096-0576-08d80c678dc2
X-MS-TrafficTypeDiagnostic: VE1PR04MB6589:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB65893C6BCC8592269B33B87289820@VE1PR04MB6589.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 042957ACD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MDd4rcd39QKst4NuCi21b8xBPhoqERF1GnAIyHNyeyzaLXP1JC+szA+4pvf/CQCUUAEX8aT1RGVgxcYQELVLf3RR7cw6g/fHayIeaCxXytF1cPmz1GYWEAMbBMZP0xmyoz3BOr3ciLZ9PVRRi4lqAnEy11Hpt9zZUZQw+gPmiNfPx83SWcJdejTTg7pwKnUeXSnlxesq0iOOeSpGhWQjXRyb47AkEFeSEqjmOuXufyasD/xJEI97qt4UmwH3tfFEaFLmj8vbohoS+4QhTHKb763xw9y9JdEt+taCJ/BFSWswLREbnQSkYWnPZMzFzZ6onTyGk/iCbXX8U1aMvV7lbgY8huHO+EH2x9N+WtunYl5Myrktio5evRsIXDG65LKP
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6528.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(8676002)(4326008)(8936002)(66556008)(66476007)(4744005)(5660300002)(66946007)(86362001)(16526019)(36756003)(498600001)(6506007)(69590400007)(2906002)(6512007)(26005)(2616005)(6486002)(956004)(52116002)(6666004)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: naxa/der2HKEhyxheYmrOFYipNfsGKzeUcm4jvAsyGlfVaGjjZoZP0sMjEpIgN9JKKMKMMG8TXR0j8XcjvL2IKjxXyV/u3lY9SjQWgS5WYNAG79jPPikerhMjyZpG71c7n7NE8ZsamLkc/YsU4q3lCQJIdQFyBv4SijZH04NWBYaGC2n02+agH7seCu9svpH6cqV56tTcscdZ+/R30WT0b5cL90d4S+6gYqQLFOsw+pBjrY9muUCmMSNPodPhtzC5O+twBnbVF5DBIzFZtW5PRXiuDpNzz2Gt12GzENMkGrFYE7KOdq02HNED/rv5KwaMxi3yynM+AwKboOxFSPJn0DiAJx6bIJN6yyhg/lYPv+UaxPn1Zn8/LEsMEwTUYMwvgDFKODJix6qHkUGvtGnorn4MvgldrAVPwITdAdM9zOd2/DIv6+LR6yVsxYE617T3abUmeQGqOx6B2XPXNu7pJs34ExmI6GJtx95qrCF59U=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d673955a-6ebe-4096-0576-08d80c678dc2
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jun 2020 11:23:37.6150 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: jxWbxQx7mCXZ1vxaiYkXQHdJD7TOz1SsAiBTuH57YvzpzsR4MSN/b9wVzy2PvTgB
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6589
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_042343_731865_6FDABD12 
X-CRM114-Status: UNSURE (   9.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.2.70 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.2.70 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: peter.chen@nxp.com, gregkh@linuxfoundation.org, s.hauer@pengutronix.de,
 linux-usb@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some dwc3 based platforms may also have the problem AC64 bit (bit 0)
of HCCPARAMS1 set to be 1 but the controller actually can't support
64-bit address when SoC integration, so enable XHCI_NO_64BIT_SUPPORT
via dts property "snps,xhci-dis-64bit-support-quirk".

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 drivers/usb/host/xhci-plat.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/host/xhci-plat.c b/drivers/usb/host/xhci-plat.c
index 1d4f6f8..f782aea 100644
--- a/drivers/usb/host/xhci-plat.c
+++ b/drivers/usb/host/xhci-plat.c
@@ -290,6 +290,10 @@ static int xhci_plat_probe(struct platform_device *pdev)
 
 		device_property_read_u32(tmpdev, "imod-interval-ns",
 					 &xhci->imod_interval);
+
+		if (device_property_read_bool(tmpdev,
+					      "snps,xhci-dis-64bit-support-quirk"))
+			xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
 	}
 
 	hcd->usb_phy = devm_usb_get_phy_by_phandle(sysdev, "usb-phy", 0);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
