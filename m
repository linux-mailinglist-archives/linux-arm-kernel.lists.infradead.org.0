Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94C941BD8B8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 11:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Byu86YEXj+3Ji55jNoTMQJDozE0bErX3HhjCJGElzSU=; b=jRzaDKE4tbbTVd
	76npJuUStT5MIF5x2oNguMXWT9l7Ta4T95VLagu3NcaBTOdTTYg4kQfkjn7kS0EsEJjYgyF8oALZH
	X0q/1CzPuolPewzp03CmbfOjwDUK3oa9E9+bMS14jhzqR1g4WWkG5B2CV2m6qQDWNZZNlPfwSSlq0
	K2kmWr5EIIg/YUVXI+eW6oOoUe/EYT8Eq/rbWDjsA2OPRFdF7aW2iEy8sE/Olv58XZfViGGgOiQZc
	dOX+W6NsLbkTV220jkeZXxKzqkLJvp5oM1UwuIkD4+20etUpTAi6AqZJONGrw62fiac6IPuOJAXYS
	siwwJVEdCpEmyo2AEQxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjLT-0007Md-0g; Wed, 29 Apr 2020 09:49:35 +0000
Received: from mail-eopbgr130055.outbound.protection.outlook.com
 ([40.107.13.55] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjLG-0007Db-Db
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 09:49:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ROo7qnHGaLvs8EgQt1SB1CN3yNQzIgJR8RmekHSmfihfmhYXAq60owx+pC2rUPcNvVKptvjqTGWd+4pVMOtUWtn1S62y0nDJvSPG3qkNTWs1CLvXRP5IrsAPU6kfnTtv3CQ53OWfuo9cSVcfMSvaIe0fNQ5QGWUETccxJZYgO2kVxHKpQiH/Woi4Z2gW8mCZEc6pmNKJPrVVS3Plrw9VHq+tTh9z4IiXATPWg1gddIggUQElzxqOemhhfnEDI9G2FQWDPKdIpJO+ls4b+choH3FV/qmKPVZlj/5DG08v6oWNBZ1DHpeKNPxWSWBdyrH2/MbGIXkrbBSCAbtcFnhl0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMBCOvT6fWNLrnzzoGDJGxvxVhRpiMAF9NJoFg95TNU=;
 b=PDw4IVZymP1QFOB/drUMH442mQRXhBQRrqOclZUDkOxB+/YWMZcjmCGQjmtZn9SFUxilmllzrj5cDGhW01ky9z87VsiVOwIMfvid6PAA+dYFVzU4hCQUeMp5BPF8YeWNigHRL/0auSlJ860H95+hw+zKukjpXex4laYbRgWYRG+zWbChXyUe9blG7isD+XduBbvy1OLVN3+HWuTQNNNWytytTZKg4gEE+X2W/fjNa/iC2+bwbn7IaDhogM+9DqEEKhpHOXrJ6cNgaCO+85fT4n+F8dXppNocCPIYV5qoc8mkcpVJ45+HU6yv2gNenWZ/sTd834o3t8bDFBA+rJqlgQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMBCOvT6fWNLrnzzoGDJGxvxVhRpiMAF9NJoFg95TNU=;
 b=KMUEFfFBr/PGORa/NBWbbQmeAtxEsTGf4giFsvtqNs3LTxcTxlSI/uHjJLzOF4Yb4oSItALRJMWjpWcJNxu1O+WDHWpPgq3eA1bH7eWLn/S640BnD16I2dKx5Wu/uaeZKmMzUwBZLbN8KwxHTHlrcgsqz3qdJir8qekqFk65gJc=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2744.eurprd04.prod.outlook.com (2603:10a6:4:94::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Wed, 29 Apr
 2020 09:49:05 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2937.023; Wed, 29 Apr 2020
 09:49:05 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH] soc: imx: select ARM_GIC_V3 for i.MX8M
Date: Wed, 29 Apr 2020 17:40:15 +0800
Message-Id: <1588153215-2435-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR01CA0114.apcprd01.prod.exchangelabs.com
 (2603:1096:4:40::18) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR01CA0114.apcprd01.prod.exchangelabs.com (2603:1096:4:40::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2958.19 via Frontend
 Transport; Wed, 29 Apr 2020 09:49:02 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c223ad46-8f4b-47a8-901f-08d7ec228e22
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2744:|DB6PR0402MB2744:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB27446A62E674B62920AC079F88AD0@DB6PR0402MB2744.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3383;
X-Forefront-PRVS: 03883BD916
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qDhkkdMU2mo61SnxwV1UxhDRsaqMy7W6lY5D07mi3oESgqiU72Z8sVDz02FHsWGjhKGXjIoMA3KnXmWMm+9uN8yb7u9mojzbZ0WkrScXFYakJDkSTanfT3FltfWX1B0WYFw0QZIuENso/F/DmFKxUEAzexs0eRr645dyPK0Zp7ae2+JxP2vd866EqcHG5uaW/mo8XDA7VQoUpLTwAgB4fdOh3sf0A+i2PPbBgn5Xwg07wBBeOedgBan/+LWdq/3seY4fAIDdt7AF1pUIUhqhWtBDc5evWaUOH9FuZmwxsPjiAOlzAdfwfKWRooiE59SXv1qvKfUaY05RADwnE65NowjR8Hsy9tIGTZ402yoZzBBHzv/yY1HwpuZY32KPeNJ3BHcUoqRyTh/teZz59hZwf5rMitTzxLMPjsiZdHe3iMh6yZFMaqaw+L2c6vdW9nR85K55yy8mGGej78KEWuUrm+0dartxqfXlwg1nvCQWeaDOioSXj7wJRYVCljmkIpPT
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(346002)(376002)(396003)(66556008)(66476007)(26005)(4326008)(66946007)(186003)(16526019)(6486002)(4744005)(2616005)(956004)(6512007)(36756003)(9686003)(2906002)(69590400007)(6506007)(8936002)(6666004)(8676002)(86362001)(316002)(52116002)(5660300002)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: iO5lUNLjmJIGD9QVz0FzRm4vEmKnO+50ELDjBmT2aEg2FspXnA7IlACdFcLdwvQu5Yd6b8atQerOU0iOLp8XuguphaZuppx67vo30kZCcl5nQ+Me3Rg6tz6+JTHqv9nmRZTPpdDVRyXUrhNFj4YFGPRPyhtMAbz43HNcnDDXtCiZ7tIRP/FQAdSgCxglGXPWZ7KQ64FDqTqFYETCh1ahvr3bbQ7TWqAE3G3rLGlRrarRwNkyPnH3BDzv32APvUriGfu8GBDB2QldT+yQoLzSYRB4R5997r1MtQO+C46GlIim8+4e96PgJmjPPmhkmON3rPY+E7gzizRLRmxkumXgGUzXS5tGAcRJSXn8jbR29mBSYAsJLYxYZbatlJFTny4a4QLedpbEjWdwt4g3EjE5SBvdkYXxaLMaioDuNsbbsHcLglcEXAGfpxYIe2OtnCxTb+8efjKIJJYk2cywkTTpL/kGkpScjyqiJyqj5+2mhTjETeN/eiPKMSHlEyAT1GmEcesMeqK3DRl+aBPEaEbHKsLZ1pk+krOsqgADwYHL7InCjAOiz+yxSsooGJn4v56eUjpgDdF6oS9YQzwhpoWxgcClvXXYRCu8fnfvaVHPyRRHJLUPsRnDxYdJ8+lQLKvteyApyZsoyKNnX2vOCZuEe9uQXAYFjvFRLoYCAtqv0uJs7bVLL+rcFofdmPvmO4bQ26dLh8BddtJgilCrw/92DuYbh17LUHAF6mtaWnftof1fi231XtVOuyTbEq1QzUAWQsUcL+V19vUve1GOsWElFCrk+BQSRoxuN7BvWN/vttY=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c223ad46-8f4b-47a8-901f-08d7ec228e22
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 09:49:05.7206 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kv86qiUboQIi5gwVQ2bc/fbb0tC9gUFMTVf5Y8BGNAPcJimL1bv3y8xwhYwyJt52wGOHwRTX3txF09gFPiLn3Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_024924_448241_FD1A0029 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.13.55 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.13.55 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, abel.vesa@nxp.com, Anson.Huang@nxp.com,
 linux-kernel@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 leonard.crestez@nxp.com, festevam@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Select ARM_GIC_V3, then it is able to use gic v3 driver in aarch32
mode linux on aarch64 hardware. For aarch64 mode, it not hurts
to select ARM_GIC_V3.

Acked-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 67aa94b2481b..f4006b784312 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -20,7 +20,8 @@ config IMX_SCU_SOC
 config SOC_IMX8M
 	bool "i.MX8M SoC family support"
 	depends on ARCH_MXC || COMPILE_TEST
-	default ARCH_MXC && ARM64
+	default ARCH_MXC
+	select ARM_GIC_V3
 	help
 	  If you say yes here you get support for the NXP i.MX8M family
 	  support, it will provide the SoC info like SoC family,
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
