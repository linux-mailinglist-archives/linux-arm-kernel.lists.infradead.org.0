Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76BC31DC599
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 May 2020 05:26:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t+9WCHk6xxV/CyHgC7cfx/XhZPIUFuK/X0Cicz9Zxc4=; b=Oxth9Aikv6pCX3
	vY4C5CWR5t4uSx2MDP0XTWGzshgTQ7I33Bn/ijwMD17kDdK8K2SzpDR/0Fx9jpogzxv40J2qPUq51
	xX4bcBn9TJyY7Kbvq+M08WAaL6ZaHJgNyeRpkoQxCJKljl6hIrFYmohUoD43nfB4fBEFvWUUC8dXd
	MeO9sdSaVPc8bsABYACt7GfFMxL2WJG4QxktggDjD9wUl1dyX3Zp/HL2XOMtHACTvPNl3apl0LaZm
	Y9/cHnPOkZrkNtTIbJVd83a64GF4GL4XFCj1JqlWw38JATWzS2XwEYRBgaAhrjsv6evZqplqX4fFP
	5h5+GRtTUSPKdv4wjjdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbbqT-0006Eg-AC; Thu, 21 May 2020 03:26:09 +0000
Received: from mail-eopbgr30042.outbound.protection.outlook.com ([40.107.3.42]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbbqJ-0006DS-2L
 for linux-arm-kernel@lists.infradead.org; Thu, 21 May 2020 03:26:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VfM4vRSaqXWP7tJPCZ2OG6dbUzOW6oZnAlOFxG/148bRcRKVJdOMIRcYXHf9p2DstW7cEfmduHfW3j9GtR2xeQyXryYZj0ZghmY+XzDGL50dhRoQfTeG5rwjZ0ebWXM1T9z6e6c66tImAZkpEnGDzJTnWQd30K7xmbaUJw+0k4G+wyMv4K4A8BeDolNL8t98g3KbJuuLzR1fIe/C4f6zr6PrBCWDLunFevhfq58QhKkFeMhhSocpg7JzOSv+BmiFRIt5HxQPVbl9ST64EO7gvGO2krU8d/csmRBq2appCwT9wMM8S64uGNdWTQukBOVUzHAlPUguqpaQ6EDF0UjIEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kZyVXa6OVYjI56fPdSOlinHR0mhsfjQmzse91s3Pqt4=;
 b=MG3IS3tntzbYEGxaPUmqp9KlhffYlfD6RuKb3wJumlSQTzg74NCWkgamE2gUA62AtdbrGbhhRShOFF8eXv0DdblRPUTy4qOr4IaIre2OBMWEUP8/yAlHjNN54HcZjOJS/uJM/+X+2awAQaYRLFJ13KfTdFxiurYS3EKGzDKO1Okj6v15qnS47GddbazxKTjmXtyHTsdQk/9IoE4CFJ4B1P5UNFi4stt/z61oeus7GIxycx/4T4gvrW86noetK6PF27ASFTIRiCmop92aDOH4JCMo9EwPZ8mnIggddHZd+5Mg8yjXsD8kO2olUM2s8iOhlulYrovwsBU6PUdeTyOOfw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=kZyVXa6OVYjI56fPdSOlinHR0mhsfjQmzse91s3Pqt4=;
 b=TM/QGDU4DZxaNvyWhuygHr5zBYc9XZvRJz/ZMkFlIAbJ5U8YpOyS8pV+EXwqqmUc1gZ2YDpyTymMaP81tAKCKpcBQx8dsQbXpUbeGrA9A9u45mi8vOymmufIX4YoBGgsaOPiQH1QVVW2pdMoqwG8qy9SNl7ZzuNCyfj8B1fEopA=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6383.eurprd04.prod.outlook.com (2603:10a6:803:11b::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3000.25; Thu, 21 May
 2020 03:25:53 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::5cc4:23a5:ca17:da7d%6]) with mapi id 15.20.3021.020; Thu, 21 May 2020
 03:25:53 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 festevam@gmail.com, Anson.Huang@nxp.com
Subject: [PATCH v1 1/2] arm64: dts: imx8mm-evk: correct ldo1/ldo2 voltage range
Date: Thu, 21 May 2020 19:26:07 +0800
Message-Id: <1590060368-2282-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR03CA0132.apcprd03.prod.outlook.com
 (2603:1096:4:91::36) To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR03CA0132.apcprd03.prod.outlook.com (2603:1096:4:91::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3021.11 via Frontend Transport; Thu, 21 May 2020 03:25:50 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: c9bdf494-e768-48c1-4efd-08d7fd36aaca
X-MS-TrafficTypeDiagnostic: VE1PR04MB6383:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB6383159C2201FC876DBF55E289B70@VE1PR04MB6383.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 041032FF37
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Dh2fJATLdTumekJ0qRqFl4Ep281vSggHG5gjjrDg5UciTMPT1HFdm55T4R75qlFMS32Hht1UycgomwZr3E9jrAYAn9Kfgyu4GQWBRRYEIhiq03WwBFqccTtb337QIs9nGEYBI8/dac65RtxP6yINVoikfeCkxjO6oET1xyJ5SXZB1o+Km2g+OC7pKA9xBD9X+VeloAaKWl+mQ4q7+1T/AMuI1DPzWZWXjElbNhBlSlvo0Ah1zWqNWbA8GLZ1VbGFrw/zfcci+3NX4saOZ2hcOg1lZJOgmBBXQskBJhfcoMxv8JUri6jHwHdesPEnJoME9X2Xs48WsX4Hdzzdk8C1hdAQ7px8heKv6kAn6uaju+KUlRevbXerdv/7DOKd9Ya9uEiCQNt1ZHcoDm7uVv1VM/gzZtPnoYfPXpErPJu+zxCAu5i6z7p0eKZHLU6AFc7nyQbL6z6ERU36qRUh9XNVCHCU/AJnafwJHOXiBMsRiaE=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(366004)(136003)(396003)(39860400002)(8936002)(5660300002)(8676002)(186003)(16526019)(2906002)(86362001)(66476007)(956004)(6512007)(6486002)(6636002)(2616005)(66946007)(66556008)(6666004)(478600001)(316002)(52116002)(4326008)(36756003)(26005)(6506007)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: BA0dABnOqbusjlWb1MiHdXSek15OBU2qeAKa2eNPgkSm/5ByEKGDYEh0OS62hrDV+v/FitOADQSP51SkWmcgmx3Szwzv+1IDr9lAneSH5dyTdPkyiIdVDMVO1p63gwC4DjvbOSYkIWhqrOfan4uF42L7zpFn0ymSYbuubS489bNQaYP13jDd1w8SYn8e4JCKhfW9xaHVzwpMDss9+qQHSvo551VgjpGLvhqcLPVCqD2DhBvrkPgDQh4GryoaF/zWdizMd+G6IB26QHziM8PlKjBSY+qMPpP9d+BM+1BGRndu4U8GahLzMEhAuZHC+J0Mj4yUAugm8K+0MaZcvhuMuA63sa93DygCcPcyltf+qpaDmx6Rvtnv+vsvyJgCASy+KjJYIfAGNk0CpVFKyDW9STMjZ4Fer5rFdrcOsPe5jYl+CVJbTP3PAX21aUQwvkL0Km9WruWhEgGstJ10ARFKbYox+G7xJPG+PBPCkx4GZ06IyDdBTWyhIpX4d1Ol0O7Y
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c9bdf494-e768-48c1-4efd-08d7fd36aaca
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 May 2020 03:25:53.4539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4fKDQw/OVTizwqHxRKinx8kcSJznOgNh7pWVHVBc8/Pq8HJ5YEbn7wJZartZctxVXEG0K0iIGKoRAN5LQCrSFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6383
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_202559_108040_83414B71 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.42 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.42 listed in wl.mailspike.net]
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct ldo1 voltage range from wrong high group(3.0v~3.3v) to low group
(1.6v~1.9v) because the ldo1 should be 1.8v. Actually, two voltage groups
have been supported at bd718x7-regulator driver, hence, just corrrect the
voltage range to 1.6v~3.3v. For ldo2@0.8v, correct voltage range too.
Otherwise, ldo1 would be kept @3.0v and ldo2@0.9v which violate i.mx8mm
datasheet as the below warning log in kernel:

[    0.995524] LDO1: Bringing 1800000uV into 3000000-3000000uV
[    0.999196] LDO2: Bringing 800000uV into 900000-900000uV

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
index e5ec832..0f1d7f8 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mm-evk.dts
@@ -208,7 +208,7 @@
 
 			ldo1_reg: LDO1 {
 				regulator-name = "LDO1";
-				regulator-min-microvolt = <3000000>;
+				regulator-min-microvolt = <1600000>;
 				regulator-max-microvolt = <3300000>;
 				regulator-boot-on;
 				regulator-always-on;
@@ -216,7 +216,7 @@
 
 			ldo2_reg: LDO2 {
 				regulator-name = "LDO2";
-				regulator-min-microvolt = <900000>;
+				regulator-min-microvolt = <800000>;
 				regulator-max-microvolt = <900000>;
 				regulator-boot-on;
 				regulator-always-on;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
