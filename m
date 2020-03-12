Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C42C5182C64
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 10:25:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIG7vDBKJ2RympxihjT+qGCUDxcQGEYJlt/v5FEGflk=; b=EoDWkdp/x+4s2z
	U1kB9wJAqQ4NVOjhstXasyOrOC6m4gjFSH118heohZ0Zg6zBWV5TT5XMU3SggNr7qZbryGIsuNnAe
	QBdRJRzWPU2EOo9tTq3Ee1BU0C8HV8qHmtbTaMTcWxQ8kHNxvSk2oIuB8Sb1dC46RG8zaNY+witnK
	jL5661AZf+pG4H5Elk6K7m09wuB9KFsHyMO+xuv/8fF8kgDeB6ngWdaJyhRxPVfjacCymj27ZEIAF
	g50e/i8zhgymWME0ETr1eb9BVZ+v98cQF2iSjO0xxUobNuQV8jUIImgCKYu7FztGt972ZxnhBNtrQ
	xgpbYFO33saUSDR1yhcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCK5o-00064A-4W; Thu, 12 Mar 2020 09:25:28 +0000
Received: from mail-eopbgr130042.outbound.protection.outlook.com
 ([40.107.13.42] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCK4i-00041E-AO
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 09:24:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bbTy9YcfDgEc6FiN5xz4MEwC6AGmOayOl7CeDOuFbA+3HeFwCQsrYzoNMMYDA9+rqG8VXxXXScZidhoqoUOR5uGiCS2S68SNJjEESStfqo8ZpWSiyt9PTajBPzYBN1Ijy2wVsR/6d951ERq2DMQcD335uQMD+px+E8JX81S4UUaPXcMj8tYU9Xgak0g0sHANIONrMHZn/0t0HPhb+bqIb90St4IOTr/oLUbUZp1149g/Cnq/YgcdEvyca1Xyq8tuorX83OWh5oApPRXBNGmDjkwRJYA35BPGcjYmuE7T41LVA+7IqT0kLDrNnVltyufHP0GsVFDk1NVJM/rH68Lv5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lxKkVhLNDncdktlbMyFcIMnEzxgzpLoSZ4lKJrsQzqA=;
 b=U9ND0W4ZD3j7vfkSNrfzHCdvfb+YRw9IaagbCV5xkWj/Y2B2Zk2MyxfT1hLF0seWGJGkYTfCqRs4J+71biExcTda+7Lfwfg+swfgKkLprhadPjKTzN3tC4FY25pA6GrWAofZ9AjLnDsNnaxMlcpZCW3Fd9cDiDSX23IU63QvsFxDrQ7f9+oISOxw/zeGsI7n+g6eIdCmfskjiytxxcI99csWm+OGZg8PE5WYimhR9kjW5eQkrMlFF07SATt9qWCoj9j50LBMHWye4G+faeYHEfuRDih/i8FhuQGliVIo56xbgYV7oEfNyVhTq4gvhvX7aVa0cMRXaNquQDHXr1v8dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lxKkVhLNDncdktlbMyFcIMnEzxgzpLoSZ4lKJrsQzqA=;
 b=Xc8HqMM5NDd8W97V5P5qFYzoCc5p7jVv8ePmCHPSptd0wK3ywxl5p9qnP7MfZmxgCxzVoHE7dRiUvA+qP5HFAKIv+Ze+YzUhB5/Tp/JQ3l6P3ce4ByGQcH63InTNv9ymktOp7oKTYltBRfki/F5HrJ/mWiJYvneyWrA89amP9bY=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5042.eurprd04.prod.outlook.com (20.177.41.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Thu, 12 Mar 2020 09:24:16 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.018; Thu, 12 Mar 2020
 09:24:16 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de
Subject: [PATCH V1 2/4] ARM: imx: cpu: drop dead code
Date: Thu, 12 Mar 2020 17:17:23 +0800
Message-Id: <1584004645-26720-3-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
References: <1584004645-26720-1-git-send-email-peng.fan@nxp.com>
X-ClientProxiedBy: SG2PR0302CA0001.apcprd03.prod.outlook.com
 (2603:1096:3:2::11) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR0302CA0001.apcprd03.prod.outlook.com (2603:1096:3:2::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2835.7 via Frontend Transport; Thu, 12 Mar 2020 09:24:12 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 99dd4fc0-0166-4b25-6cdd-08d7c6672297
X-MS-TrafficTypeDiagnostic: AM0PR04MB5042:|AM0PR04MB5042:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5042F77AAFF634AFDE3D7BC288FD0@AM0PR04MB5042.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:2958;
X-Forefront-PRVS: 0340850FCD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(396003)(376002)(39860400002)(346002)(199004)(316002)(52116002)(8676002)(8936002)(6506007)(36756003)(81166006)(81156014)(186003)(6666004)(9686003)(6486002)(16526019)(4326008)(66556008)(66476007)(26005)(7416002)(6512007)(956004)(5660300002)(86362001)(478600001)(2616005)(2906002)(66946007)(69590400007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5042;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 8BBvXZj/uBzj6i1TR9Urqmx7+9EWk7USnHdqqn6RKLBH+ebHB8AGinQDSW2PNSa31Mfg20K5CIEHn/nMmjxVRbN6gNCsXSAZZNIBHw+lGsI3U17XlwbF0hFBHpvHZ1XSX5ugVtyqEuaLq9ViOJv78GY3hbREVRlPNez07VBVy4FUB0Q+UoQYJJm2ImsWyTkX3XcTaT+q3VUcf3EF3qkeuZv8AGerW+TApnrmYA7PJlVDsgpcmqqh6yKaNwiM6UNKAkzBqkU7101V6FUlRjIKdf5PLhLBkcgRu/zScVJ9osDnK0ihS5xohAqJ14ysRuQOPSTIBp835Jzx6FmHG5xlLfHFwhOzw26+tQVBlou0oMcCthco8hXHa8rim7vkxsz62D9ttUjPJCFOZYNwRynqcQMtT40MwSwfKh2yLKFiJ/ISv1pqKaDTFPlxLM8x6D7+jYD2+K8AJ3dJEZyE/vhAD60HZMgvxuzbcwDGvSMhZHYbd4BZ5n1XT/yUkz6dA813
X-MS-Exchange-AntiSpam-MessageData: 9DXdf7J7javGG65UdJ12VCrNC0hthwa49PAbwN8tcVauZ5Ru9w2hnOw0w1UHDowr/DxGCHcga7uBhM8Y4AwNx/k96OkQJl+ZAIAW1gnmUoyp52uHrpTatXe+YzrrsWhdBLcfArdPdMwZefd1w1SQGw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 99dd4fc0-0166-4b25-6cdd-08d7c6672297
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Mar 2020 09:24:16.3732 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0UTVTjSGR1WsQex0T47HyFY+ebDYnJE+qL92+JMmmUitFiZ+7dyiFC5waEvO/6z54vhuNJGYoGfIIxc9jOsVag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5042
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_022420_390749_7B2D6A38 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: linux-arm-kernel@lists.infradead.org, Peng Fan <peng.fan@nxp.com>,
 abel.vesa@nxp.com, Anson.Huang@nxp.com, ard.biesheuvel@linaro.org,
 festevam@gmail.com, linux-kernel@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, git@andred.net, leonard.crestez@nxp.com, info@metux.net,
 allison@lohutok.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

imx_soc_device_init is only called by i.MX6Q/SL/SX/UL/7D/7ULP.
So we could drop the switch case for i.MX1/2/3/5 which are dead code
that never be executed.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/mach-imx/cpu.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/arch/arm/mach-imx/cpu.c b/arch/arm/mach-imx/cpu.c
index 2df649a84697..0302cb66134b 100644
--- a/arch/arm/mach-imx/cpu.c
+++ b/arch/arm/mach-imx/cpu.c
@@ -108,30 +108,6 @@ static int __init imx_soc_device_init(void)
 		goto free_soc;
 
 	switch (__mxc_cpu_type) {
-	case MXC_CPU_MX1:
-		soc_id = "i.MX1";
-		break;
-	case MXC_CPU_MX21:
-		soc_id = "i.MX21";
-		break;
-	case MXC_CPU_MX25:
-		soc_id = "i.MX25";
-		break;
-	case MXC_CPU_MX27:
-		soc_id = "i.MX27";
-		break;
-	case MXC_CPU_MX31:
-		soc_id = "i.MX31";
-		break;
-	case MXC_CPU_MX35:
-		soc_id = "i.MX35";
-		break;
-	case MXC_CPU_MX51:
-		soc_id = "i.MX51";
-		break;
-	case MXC_CPU_MX53:
-		soc_id = "i.MX53";
-		break;
 	case MXC_CPU_IMX6SL:
 		ocotp_compat = "fsl,imx6sl-ocotp";
 		soc_id = "i.MX6SL";
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
