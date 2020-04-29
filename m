Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2C071BD8F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 12:00:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wuHxcrrVEn1PSn7hy9oz8c1Oi4cnhHpDC5i2Js+D7EQ=; b=c8veyXi92QKdAy
	MtPR7XGlDEGZr7Dw1VKcdXzBSQHyNUZuh0ruEYk9z3jzYWdYqUMnQVgPoa/38av8XazMb3IHiF9Hq
	zsf12F1QWY/NMlH021A3yUVr3Tn1YzFeQXDLVM6cyPEZQ2RuVdh3gWrSFM/tvmI9DS+QCIBP8FRO7
	/0BPXZrZrDnft4m/ahHKY0YQAWu9CoFX6boU/4uzND2g9wvo8quMUupaywEF+mBpjekQkbkz+krFS
	YxvO79xvtoy46VO9c1U02Rinsh3Z+OmfTUphAVJFBxWpRRnuX9MwD3GeoEulOVvRiNlEo6lHNCXD2
	CcvMEucqB7Aa6kcv05PQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTjWC-0001Ug-Me; Wed, 29 Apr 2020 10:00:40 +0000
Received: from mail-eopbgr80053.outbound.protection.outlook.com ([40.107.8.53]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTjVz-0001T7-8X
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 10:00:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GPIOBzQ/EROmkwhgRbSxTAlz6MlywyMZo+s6aoTzapdn77r7Si0hwUbhcNqD8wv65+88W905YhOdfp1UeNEy7t0tzd3TAxzGQuvTYorcCbdkPy4gyomNONgukPH8SbH67RhRNRgqfgZl7GMXFMbuU4Fd0i3kamYM0wBm2cuVVOnZD93UZrGmHck6wzDqkPMN131Fz/RiWJPjHEceKYTd286BEs9u26cZIP6sc8eETp3I3fkQmCXLg9DgAU4KYR8j8ao8/hlfZsjE/6KSNMeD/ZWlI/eTybTO+daxONoGHjmjgfl3vmNcJd+ORKJ5owgs4KWP+OMmKQumUnta6RGJng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R/+Z1Qx46Xi10d3ABNRQc7C7zH3kGPN6Lb1rli9ymhg=;
 b=IudWNZT9E+F0PkaY+rACJkSRsIzRt+OuBrNOz45GJfLux84bcLZAsVsDvm6NC0Ba0f5rodvnGcUgB9UAswLc9i0cDqAOmgkYWi+U3kD8iG6+9lRrkyp0Rmta86c9lUPM95YS35xeWJLsnXbj+bIvsMQNkvKr9U+RkHoTIq09Gf8GH+nhZy5u8c7OXdLmZ5mDTaPETjkL1Su2ghFr3E/xj5WPTYLhfRrblbJhsUayDLxZOup8B7ng7b+vsYtNFGwi0Gm3wXP9b/i768C5r9CoxLcf8bqEILhFGI3ub8vOl4twJatnOJQNgXMpqs5XXU9pHZIRuqAuP2aTBmsn0Chx3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=R/+Z1Qx46Xi10d3ABNRQc7C7zH3kGPN6Lb1rli9ymhg=;
 b=I/P8d4xRprc1KTs1DJjQfUa4TOPg+U0EeL6POgC9ZFADrkwgV5tECU7yMxY76DJb1meknzoCaaWZ0KGooT7fdclTZ/t37A09s6R9GE95fj09sW7oKt+kj1Zr+5pOieW1UK639UJxe8M7eNCaoVszpmfPTzgOZwHAnReHLuOspgU=
Authentication-Results: arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=none action=none header.from=nxp.com;
Received: from HE1PR0402MB2745.eurprd04.prod.outlook.com (2603:10a6:3:d7::12)
 by HE1PR0402MB3436.eurprd04.prod.outlook.com (2603:10a6:7:82::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Wed, 29 Apr
 2020 10:00:21 +0000
Received: from HE1PR0402MB2745.eurprd04.prod.outlook.com
 ([fe80::e802:dffa:63bb:2e3d]) by HE1PR0402MB2745.eurprd04.prod.outlook.com
 ([fe80::e802:dffa:63bb:2e3d%10]) with mapi id 15.20.2937.028; Wed, 29 Apr
 2020 10:00:20 +0000
From: fugang.duan@nxp.com
To: catalin.marinas@arm.com,
	will@kernel.org
Subject: [PATCH 1/1] arm64: configs: build in REALTEK PHY
Date: Wed, 29 Apr 2020 17:55:23 +0800
Message-Id: <1588154123-13592-1-git-send-email-fugang.duan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR04CA0187.apcprd04.prod.outlook.com
 (2603:1096:4:14::25) To HE1PR0402MB2745.eurprd04.prod.outlook.com
 (2603:10a6:3:d7::12)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from b38611.ap.freescale.net (119.31.174.66) by
 SG2PR04CA0187.apcprd04.prod.outlook.com (2603:1096:4:14::25) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2937.13 via Frontend Transport; Wed, 29 Apr 2020 10:00:17 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 4ee218f3-c391-43df-c555-08d7ec242064
X-MS-TrafficTypeDiagnostic: HE1PR0402MB3436:|HE1PR0402MB3436:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <HE1PR0402MB3436D69B1AF6B3FB0A592A99FFAD0@HE1PR0402MB3436.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1247;
X-Forefront-PRVS: 03883BD916
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1PR0402MB2745.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(396003)(39860400002)(376002)(346002)(366004)(136003)(8676002)(9686003)(2906002)(4326008)(6512007)(6666004)(2616005)(5660300002)(6486002)(956004)(8936002)(86362001)(52116002)(316002)(36756003)(478600001)(66946007)(26005)(4744005)(66476007)(16526019)(186003)(6506007)(66556008);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JxoCR+wqnug8dQUUwcbLvW7I33WBLOyk2+4njM+7LuUDNzTRi+9BMMWd4sV4ACr7vq+n/yhYUdciJfErfdVIFvbkK8qOnN9N+o3Zp3FYNzpgRMd0Kt1rzarqnOztEYjL9up7UO2+qePTnZPPTzr3pLmr6LZuBLwLGNqfp1ZtslNNWgNM2LC8H3mdInmlBJ4gmASUY+tDR9Ku1/zJmkg062Qpib/bguDyLan9NOCi4Tb+HLeRcKxaFhpGGZOBuPWX3uQ/dLa9Deby8oX31YPJB5XMKxM27FW5QKrd2BcTPfU72jry9b7XI3y/6ybX+P0xH8jP0y05TX0syW79+iHRIjzeSAHWGV8Ovc0CiIDReuIgnBnqeFUpsjSrx+MVPfHmjwso3shclbRzEtxfjAXvp+uDXb56/DbHuKY8O04JA3CfWLz7zo+ijtBW3jss4wPi
X-MS-Exchange-AntiSpam-MessageData: mlCzxzhmTksh2x7c+c34IP5bojbgaW4KblgmrFFXXl1k3hfvQ/fH96uOwh8r8niQEGEtMHDWTGv7GUpSqPgsjJcr8a6yLXxJvFHqj22OsoiniWgJP3jIsT9e+yAszBLxeW++a4WiP2jOHJp/0Fm7T396KTMSbxOcSebVlitK6F33mBkUgkZvVvpou55voni1V2J6DqPnI0GVzgWkR8veMfgkCJa/qssyA5GQhvPsDyWP53PA4ciprV3MvzRumrdxwXKXwMsjZ7Eyby+pgH0ALeRv5Ds3lrbiRhF77cUw64y5Z69op06Jk1RIRpgq1j9bH2l93xFcmNWzSTpkNBbP0RSHPnAO1jTcAMIjDTebF53pJNJEcyZcDfK2pCf4lVGGc9ucig4N7V1pPXnBgfBBAPb2mgnpVKZnXDOSVXMcaIBCo8XzeVXcWmR4lOzmYntq2dqaCRRmll3+rGcom/z5vaSEKGGNRXrDhQmQnUa9FwQJDvDoErndtRqLaxrYQGr0sXJC+6VrOlDp2TT7xC4tBa9+OqigMkZ79wcrDRg1XyP9cP3IVhmxp3OwrWtPPLF+3LvyaVcfTkNUmULJeR/XEORgK/2cGJragcTb06nM6+S9e8AfVqNiGt3Z7aq/Acy9FJoqdsSKRfS3EgcGASHTGSdTaByy34aV/QXg3mo5wFlxdSoBf1c/Am+Ku9hL9vaYagR+6DWQ2BcxBkLLwjVp1ueicScbukFchhK7dKHp7KRwt+D2Yzdkm5j3l1XvbvedyNFKS023w8emRhatQbJHykE+qc3bxrO1h4HwoVqYwA4=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4ee218f3-c391-43df-c555-08d7ec242064
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Apr 2020 10:00:20.7545 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cCVwLRsfTVuFdPwEyIXelQ5aatO/RggpYcDTHINIFZlXn3u9bz18Kidvh3lNUO1f/WtGjzjSHoeYw1r3u5w73A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR0402MB3436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_030030_195150_6AC89A3D 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.8.53 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.8.53 listed in wl.mailspike.net]
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
Cc: aisheng.dong@nxp.com, fugang.duan@nxp.com, leoyang.li@nxp.com,
 bjorn.andersson@linaro.org, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fugang Duan <fugang.duan@nxp.com>

Build in REALTEK ethernet PHY by setting CONFIG_REALTEK_PHY
to 'y' due to i.MX8MP EVK board install two RTL8211FDI PHYs
on board, which is useful for LAVA daily test with NFS boot.

Signed-off-by: Fugang Duan <fugang.duan@nxp.com>
---
 arch/arm64/configs/defconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 37e512c135ba..256892149049 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -322,7 +322,7 @@ CONFIG_MESON_GXL_PHY=m
 CONFIG_MICREL_PHY=y
 CONFIG_MICROSEMI_PHY=y
 CONFIG_AT803X_PHY=y
-CONFIG_REALTEK_PHY=m
+CONFIG_REALTEK_PHY=y
 CONFIG_ROCKCHIP_PHY=y
 CONFIG_VITESSE_PHY=y
 CONFIG_USB_PEGASUS=m
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
