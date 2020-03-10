Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D64C17F950
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 13:55:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SI9aWlSJjCUAqup3uQGXg2uhifb27M0S5Bw/UKV/MP0=; b=AKW6mLy0QoqK1C
	czHHu1522DuDqJEdeLwWwKmOIoX+FofYLNVqyo7XIZglKPVvbEFJSgm++8Glcw4gsgCeHXK0zzw+O
	c0Du6z0TuS2yXIS6s6aDozeyZFpYXh7tkCqVSsf+RwIrTVZvWHe1b3Q0YOSxz8QV1RRncgRB+D3Bc
	vr1dsgo5oDR98+XhJlewcoI/UUoavqXfVxQ90yAyju+Jt7x/QP2OaSXutsU775aJehAw4GqtvVd7p
	OMGxxFFsqbV/iRg05qdvwPx0G5F6sLR+wjH4JkN5zPRiz7WxTAzXH0wc1iNjGIqjm3U8HOeoSb2tj
	48fo+dUDCdT6Bgos5LuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBeQ9-0007Gc-DH; Tue, 10 Mar 2020 12:55:41 +0000
Received: from mail-eopbgr60076.outbound.protection.outlook.com ([40.107.6.76]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBePx-0007Er-Fp
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 12:55:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TwZqq+joS+RtmgzquYV6mP/eBqn0YZOmyB4cG8BmKQbCkdeGBkt+0GOIS/RmHINnEZsx5YunrYdLdDaHeqRAWB3lzvnCjmJVpTyWONAFogoWR40fwqBABEzr3fs1JT7er+jkJ7k9FLwDEY9zcu6IS0yViCiepWQ5kMY64WXhBaPgPXfIkvF1R/RN6yzEfbOS8PSoah/Ar2wFrS5RND60M+nsZ197ALWlwKayE0jbQu3QIp2pauD6nRg46lcRMJYzeiY7GJvYkrSDWvIAK6/ghpRjJXncPiP0WlD7K6a6M6DMshQErFU5nDcs46i+6XyKy9Z/HgZecbrSaMkLO2W6uw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b6Uus/LcNegpG5KDSluygrz9MpaOfSH/A5RcrdGs630=;
 b=I1WlpN3MIWsj7J4QlfR7MCFrldHzSqsD0vlUBjoIoYynbZJBR0hS9ZkMjhpPOihQ/2rXNm9tSnByNjH9XMl1cQPtaMI13ZN0LVi4vFn4Vq0xxFJUp+gNapLqNvnBACWyjWL2Bc0OVV5gz0AdurygAwtD9K0W8VKwreKXk3vDM9rskJxf1hGhMM258MHL97dgRHmuVLMrGkzg1MoGQuHrfpwyhdWdqA/qkI3/xUJAkYLWbK4aS8XEKX69J/V/wV4aEtqSbUFkDceddqvIiS2RItMTEd/lle8KzpiaqEBYGaiWMWb+tQRoJps9TnbMz70Ze/LVltMoSBnOOP2wtcdDgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b6Uus/LcNegpG5KDSluygrz9MpaOfSH/A5RcrdGs630=;
 b=PRys5ls944CL1/OtIJftPC66+E3j4GCdgUswTjxTAU/ys7e08L5C9Xju5Gg4fDQZzNedMyKv6g48HuoGXHZzgk5x8Y1CPS0JPG46ON5mke5QIZOkQTzrkblk9tdk2Pfb5KNeVQO4EhWk2NdF6oDLJ40IiaxEieWQ0TdOJ5/yT3E=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5410.eurprd04.prod.outlook.com (20.178.114.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2793.17; Tue, 10 Mar 2020 12:55:27 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::548f:4941:d4eb:4c11%6]) with mapi id 15.20.2793.013; Tue, 10 Mar 2020
 12:55:27 +0000
From: peng.fan@nxp.com
To: catalin.marinas@arm.com,
	will@kernel.org,
	nsaenzjulienne@suse.de
Subject: [PATCH] arm64: mm: make CONFIG_ZONE_DMA configurable without EXPERT
Date: Tue, 10 Mar 2020 20:48:46 +0800
Message-Id: <1583844526-24229-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR04CA0172.apcprd04.prod.outlook.com (2603:1096:4::34)
 To AM0PR04MB4481.eurprd04.prod.outlook.com (2603:10a6:208:70::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR04CA0172.apcprd04.prod.outlook.com (2603:1096:4::34) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2793.15 via Frontend Transport; Tue, 10 Mar 2020 12:55:24 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 251c156d-f4ab-47a7-b4ef-08d7c4f24e0d
X-MS-TrafficTypeDiagnostic: AM0PR04MB5410:|AM0PR04MB5410:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <AM0PR04MB5410D062633DE2F070CBF81B88FF0@AM0PR04MB5410.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:218;
X-Forefront-PRVS: 033857D0BD
X-Forefront-Antispam-Report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(396003)(39860400002)(346002)(366004)(189003)(199004)(8676002)(6506007)(66556008)(956004)(2906002)(5660300002)(2616005)(81156014)(4744005)(81166006)(6666004)(316002)(66476007)(6486002)(66946007)(8936002)(52116002)(6512007)(36756003)(9686003)(4326008)(69590400007)(478600001)(26005)(186003)(16526019)(86362001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5410;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: m7GeBbXxj7OZS38iBCnuR5YDit0Jh88jivpqoenpM0+7amCJMP+NIwHzMxd/b2sDsvB2xHm0UaF9Rpt0EbDUsW/mR5AS5jGqK0EZN4McfVerBu9GqruRgetRmcGFjYfPa8m9MTYvdC17im20m6m2UIAb7ECOuB8niiHELPZJ75+xn+ioL5p+1JQBGKEJ/WUArhdUZErPYhswtvCMoQadgmYHLjMmOVja4TPJG2rGIr2sZ0bwscV8+NXm5tH7g0rnRLLKAgheuRnpQUf0wGw29SQFMOGJetIh1TWZCID1eIOqmu9saCv8mFgeiahHZbNBr3saAAZPL1EcecVdpuo31jdU/FddSPO7Uk7arhxQ0L85OILpmiP0QjeHTW0Ztt+mBG1g7cNFtlP7+3cQJv9C5J80Ikj7Fg+tKyQhHFz/B70fuG/jA2lwuh09FCljYD0ZI43up5oCFXpJgG4/Acd03l4Qk9uGfv3fEICQ6dJVo83XIZ3La1pVeggPYNV7wkLd
X-MS-Exchange-AntiSpam-MessageData: dAM3c1wj5QEs3RyRRXV7+d6bJ7v31BiBEGMzCTH9fhDrgMA0qBeXYkx08vZ08olUEEIGabqILB8VEhcymOoFiV9C+ohCYPhHO504syy14I4GxLBFrucApDRcDrtb1gdnktGQk11S5AapGUXBtJf3Fw==
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 251c156d-f4ab-47a7-b4ef-08d7c4f24e0d
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2020 12:55:27.0883 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uOp9z7B448SUWZ2YcoPmQqaQ/gIAXKrO76whYK2i0fsGP33eSEWUgtJ1b1eHhb/3ogp0GclDwFi2dlalWW9jNg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5410
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_055529_631319_7E8A4BA3 
X-CRM114-Status: GOOD (  10.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.76 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-imx@nxp.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

commit 1a8e1cef7603 ("arm64: use both ZONE_DMA and ZONE_DMA32")
enables both ZONE_DMA and ZONE_DMA32. The lower 1GB memory
will be occupied by ZONE_DMA, this will cause CMA allocation
fail on some platforms, because CMA area could not across
different type of memory zones.

Make CONFIG_ZONE_DMA configurable without EXPERT option
could let people build non debug kernel image with
CONFIG_ZONE_DMA disabled.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 217e12ff2115..c4ba8bf011e1 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -270,7 +270,7 @@ config GENERIC_CALIBRATE_DELAY
 	def_bool y
 
 config ZONE_DMA
-	bool "Support DMA zone" if EXPERT
+	bool "Support DMA zone"
 	default y
 
 config ZONE_DMA32
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
