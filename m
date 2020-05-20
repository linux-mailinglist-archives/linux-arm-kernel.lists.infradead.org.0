Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C58CC1DB3B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:38:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5tUog8zDu/rVVp4KEh9DUcW+Iz7I0zuPfgbC2DGXHlE=; b=gI6LXmy5J6QNhx
	ngdKK4B0rHaIQswSdqDRlke+lG40MLhvUKiQieqdn6HtroCKD83suMgRbti4XiV+9RTC9LLpB2TSd
	4EfQsyMc4TGkvsuyzAh3Jfh4iVNzqsyyQD1Q5JOxiXwoOVZ6pY9I2+ruN/PMNnz/GvENSbv1ZeUe2
	ySGd4s+n6y5uQ8zRBlJfi0PlNlhPklbsxFTn7TyOs3G3vjjSOe+VEvZvBUYZBC9GATXx8tCFZke4+
	a1JKp2n+PpEC/zNPXWHyZawHhOvDwRLoLZUR3czGDy1GhLn8TBw+2KaCvsmWLqdDeb/icfaoO2BTD
	KmlNL3ELc7ljBYTR6Kxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbNza-0005Zc-CO; Wed, 20 May 2020 12:38:38 +0000
Received: from mail-eopbgr50081.outbound.protection.outlook.com ([40.107.5.81]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbNw1-0000Uo-CS
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:35:05 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C3SqiP0vAo8IJTUk0plHXoJwUMA9+vSLQlTl5/S7nRbQobfvY0cMOqzirHnNIJu6MxGNpvG/u0H02u4rfzJaObQiTBIWXQGUVdYebkbK9ukYWgG1IWyAQ6SCLjajOsXSVCE75KHKiE4d2tSuA4ofYKlc+azcX3hRBDs/DyjYtBePK3p32xZMIpGIi5zZepBV8GK7sbCq16vRaaSc7dm7e6D9TVgKvm6CTp+1wmF1RFljSUqPv0QHuy84pRZFCMtGD3QOXhlU7aDlUss62NisrEhD/S4YBZ65Jx00fIWlwtORv071e6uztB19x0uwN7b9Bhgk4tgEmI+SYX4bV8DJMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=m50Fsz+A2OT+2iIF+RqqCX87LcjBA7Kk4zYqTzOlMmy8M9XUpch3VjzxpoVu/uwJFOxoZ2xISUWxCye3hJ3DN5v55FLwUpO2imTH5MopevWRXsdil7oWG0ELSKrcVTNLdYSrW9mFnud5VgbzAtXKTFkCMQrauonh6CG1rDS5DQK5eeLCBhgGtPU73aRA7arUtps5BsTLSvZZKyfYQJreqwUd+hs8IqoufM6woLhvsqHmAP1IL00mGy5lUiAm9zYV5rVxVPKCPX57pTTcAxopAPPPHwhgzcXn9Yng85n3qb3HCZD9x917D9NUWSQdxj5z3YEZKuUh331Pix1rWMPrGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sZvU3VGhVcTeYxe4fB6geATT0prKN/x1vEpROhK8pVc=;
 b=ms+MddtXmIq2Y9ODF74yhuCLhq1A9acgBA1OmANAy2C7TAhAjmrXGNYsWF5NOEcrasfrOlyTGTF7AvjHOeG4eJxG6STGJlCuzYkJH76eWW1X21ONRAkAWH4JBcWoovPC30+BzAz1x7oJkimZbUZSA+WxBIbzBPDfDw+zpNHX6Nw=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com (2603:10a6:20b:f4::33)
 by AM6PR04MB5480.eurprd04.prod.outlook.com (2603:10a6:20b:96::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3021.23; Wed, 20 May
 2020 12:34:56 +0000
Received: from AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa]) by AM6PR04MB6630.eurprd04.prod.outlook.com
 ([fe80::bdbc:dab3:70f7:d5fa%6]) with mapi id 15.20.3000.034; Wed, 20 May 2020
 12:34:56 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: mark.rutland@arm.com, broonie@kernel.org, robh+dt@kernel.org,
 catalin.marinas@arm.com, vkoul@kernel.org, will.deacon@arm.com,
 shawnguo@kernel.org, festevam@gmail.com, s.hauer@pengutronix.de,
 martin.fuzzey@flowbird.group, u.kleine-koenig@pengutronix.de,
 dan.j.williams@intel.com
Subject: [PATCH v8 11/13] dma: imx-sdma: add i.mx6ul compatible name
Date: Thu, 21 May 2020 04:34:23 +0800
Message-Id: <1590006865-20900-12-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
References: <1590006865-20900-1-git-send-email-yibin.gong@nxp.com>
X-ClientProxiedBy: SG2PR03CA0103.apcprd03.prod.outlook.com
 (2603:1096:4:7c::31) To AM6PR04MB6630.eurprd04.prod.outlook.com
 (2603:10a6:20b:f4::33)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR03CA0103.apcprd03.prod.outlook.com (2603:1096:4:7c::31) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.12 via Frontend Transport; Wed, 20 May 2020 12:34:51 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 764bb69b-378f-4078-f419-08d7fcba33bf
X-MS-TrafficTypeDiagnostic: AM6PR04MB5480:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM6PR04MB5480C40F385F608ED8658CB789B60@AM6PR04MB5480.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:632;
X-Forefront-PRVS: 04097B7F7F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Lwq1mWfJ8GPJCLHzrwm4Pq5zpmninoOhlaTPdqJItmFG8MeBIutraFmkmvm1gPUFXn69wdlOiv1vq9g/U5EEw4GOAkivn8lfP+IE99Z0mgmirnQC0lBFNQ4PFPKdb8lJxBI3lbaBfuggpBfy10mUnIygrRN6h3kczGml5rVH1xmd5oXLhihXb/U/dZJoslZIAnwsC1iBInEmhwQaPkYSlP2h3KkDzQFRCO+2qhXBK4FkvrwVFJoB8H0Gcfp+oeeXB0oGvri8BVN/9s1U/x+rh+sH1oR+P948cB53fljsb1NZQYTOgVAlIakSMlh/Pky3IzCv7RPaj+Slck57bUrD86/FV7LTkPCFVkPjXCSI5dk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM6PR04MB6630.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(376002)(366004)(136003)(396003)(346002)(66946007)(7416002)(316002)(4326008)(36756003)(8936002)(5660300002)(2906002)(6666004)(52116002)(478600001)(6512007)(6486002)(2616005)(956004)(6506007)(66476007)(26005)(86362001)(186003)(16526019)(66556008)(4744005)(8676002)(921003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: VS/ilNgjZQOd/CrO7bjT13MUyE5zk0cHP1AImiOoTD/GD0rRYkuviS+0omc35QaX1m/i5MgXgCZaYS5PxY3yE8GNvVnC+3zXieT3c+yGiUvaszhSZQcj0W5pzU9KTF63TH2k4obfSk083/M1XU1MNjm3kcIPKrGsj63F03OiKTxjbOBuYiiwKT3wjScMEOUDVvZbIshqcpIQmMBRn1r+kwO5gTWPHNmQGBWn7wKKfSBj4SS6m6la63Hbys4TyYcfSykSJ/B+SZwd7b33dlwkEkzJJFkO1ceHPTIm4CiOecG1U/o2LIB6monjIS88NOKQ1qko9o5yk7U9NmZscJUmvOY1HKHQNMWwGYT2I2DDFglqJ/0Zyer2dm9WaI9SA874rpUr1QeH/OUUORF2KixyB7SfKsPyYS1Z4JDuvJXC615No7v83B/nYPaYuf2UVQ7fJkBUtF09mr8z6P7IZnWTp+i0gJr6rRrfzojQ/X7MMS8=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 764bb69b-378f-4078-f419-08d7fcba33bf
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 May 2020 12:34:56.2246 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: COT+7GfPcICvrqDGalvI4ybVp/TqT/2/tgim1DLfJHQoUdPLf+VUwOJaGvZuX036DRpI0FOwWMUMf1iH6BBuTw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_053457_429840_34DEBFFF 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.5.81 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-spi@vger.kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add i.mx6ul compatible name in binding doc.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt b/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
index c9e9740..12c316f 100644
--- a/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
+++ b/Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt
@@ -9,6 +9,7 @@ Required properties:
       "fsl,imx53-sdma"
       "fsl,imx6q-sdma"
       "fsl,imx7d-sdma"
+      "fsl,imx6ul-sdma"
       "fsl,imx8mq-sdma"
       "fsl,imx8mm-sdma"
       "fsl,imx8mn-sdma"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
