Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC99E1B86E9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 16:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BJHrdnYH6LQ4Rmd6WUHa1Mt+9x6PFjLqnPugiK7tlQg=; b=JYEjS5P5x36gCr
	zyfZRPjRS5aPIzHN8k83QSKBazCjLT/pITYiKK9+xow+7O7mm6RJmZ4y8V8s02PsVzZiXfYBCP74A
	NoxJP31dF8vWAyTGLOo/MI5Aau+zdcTNZaWuUkohLSRvnmsJFAAgekQpI69VFy2k/jQwqgxeOr13d
	2kpDvoPI8FSe6+vTaj9TPwiuLS3O62bz2Ijc8ecp7hB8NOzmhE4HzXhjrQ+0gtQIzKWqYNDhVX+RZ
	S+V6tI5ARv2j85/beYTKpcXtJDpR22iDR1NCGe4aGkaAPk7XzK2FYwX+gBOO/dA3Y2eedd9CPPx9/
	SttyXS9revxY5PtCAp8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSLRe-0003OM-1p; Sat, 25 Apr 2020 14:06:14 +0000
Received: from mail-eopbgr60058.outbound.protection.outlook.com ([40.107.6.58]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSLRS-0003NY-TA
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 14:06:07 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NT4silFKbwZj6KlFzXi82hhXq8MjMQm5KyCOXx/Wf0drPzHRWO/GWwnonVMpJA36r/9JeQnvIr+0B36qdZBSt5I07pYYel+bFdNdpE5h9VQSC9dBBBTEP575Bs7a/Eq+xHIcJHKNarBHc11s2QEfDgocueBVlkYWPmxGkl6zuAkBBLsRphRkMbSXB+nu8l3+wSNjuv6reweXlmZicklGjTcRXKP05BcfPLNnYKrizDDwcas6y2EVvaKF98m8saqrNMZFC+vN15Kxm0FvHqzgRrhgAOc278WhaXgQJLHtHiicdtjjr9zjJwqUkJ2Sc9Ulftou8ZIA7DF5EpoXM3AWtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4+i64As6Mf4HVjW4jkhQGIZgyAwdSDQE2KEc+vzCXvk=;
 b=WawRZ+vE1y/Gqy0XIqOSvacCT5YIp1+KrdXUav0rIHuA047IvIMUrEcEp9oCVNp13nW0bWZgC+et2YKckuRvOxETVgbfK8I/4HGoFSgmMqVpfXOukLhuWcO9Zzs1CbS1DManLaPN83RmdT2rDtcleMZvzYdVjyYe71epgBs12qkBAv/ePYzI1bkl+Uz9KRIJyZkqAr+E/I+8xYtv3LSy6gPgoz3v+fzLPv1pSwke2LS0UeZWmxt5dlWEZ4H1cjGk11QeID1ahEsSaH3MrRBAXDeL40LP/bKB3NFzah8kLSHw+axKPSZ6HoMhiBLXTPM0aGnKcpwRiyovoqqiVMB7kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4+i64As6Mf4HVjW4jkhQGIZgyAwdSDQE2KEc+vzCXvk=;
 b=hXvwXmyrZ+QZCmoSje4FoY6Nkou6D7RtvOlUCp7DbnLMy9I8arc9m7dTIrz/k5UuNKpL1rPLCDBeZjVCg8QBO90tEtghdDSRTJAT5ya4TOyjFFugEpQQWRiQ0SsPsN2uYG0+3FA4omtqsfNqu6RGuD1bsnlJIuIl0GsLt8KDXlI=
Authentication-Results: spf=none (sender IP is )
 smtp.mailfrom=yibin.gong@nxp.com; 
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com (2603:10a6:803:119::15)
 by VE1PR04MB6653.eurprd04.prod.outlook.com (2603:10a6:803:122::28)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sat, 25 Apr
 2020 14:05:56 +0000
Received: from VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa]) by VE1PR04MB6638.eurprd04.prod.outlook.com
 ([fe80::d5f0:c948:6ab0:c2aa%4]) with mapi id 15.20.2937.020; Sat, 25 Apr 2020
 14:05:55 +0000
From: Robin Gong <yibin.gong@nxp.com>
To: robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de, festevam@gmail.com, Anson.Huang@nxp.com
Subject: [PATCH] ARM64: dts: freescale: imx8mm: correct VDDARM@1.6GHz
Date: Sun, 26 Apr 2020 06:06:48 +0800
Message-Id: <1587852408-6483-1-git-send-email-yibin.gong@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR0601CA0001.apcprd06.prod.outlook.com (2603:1096:3::11)
 To VE1PR04MB6638.eurprd04.prod.outlook.com
 (2603:10a6:803:119::15)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from robin-OptiPlex-790.ap.freescale.net (119.31.174.66) by
 SG2PR0601CA0001.apcprd06.prod.outlook.com (2603:1096:3::11) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2937.13 via Frontend Transport; Sat, 25 Apr 2020 14:05:52 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: e2a8e3a4-3869-477e-2453-08d7e921c593
X-MS-TrafficTypeDiagnostic: VE1PR04MB6653:|VE1PR04MB6653:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <VE1PR04MB665307F04E95DCCBAADB6DFF89D10@VE1PR04MB6653.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:361;
X-Forefront-PRVS: 0384275935
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:VE1PR04MB6638.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(366004)(346002)(396003)(39860400002)(376002)(2616005)(956004)(66946007)(66476007)(52116002)(66556008)(8676002)(6512007)(6506007)(86362001)(26005)(8936002)(5660300002)(6666004)(2906002)(4744005)(81156014)(478600001)(6486002)(186003)(16526019)(36756003)(6636002)(4326008)(316002)(32563001);
 DIR:OUT; SFP:1101; 
Received-SPF: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FnyjQ4bSJ2H4/3c1bv+uFfK3qa76jEg+PxOze8a7FG1KOyCS7qmeT7mkG0QosB9LqcQoMs8A16pUUG+444xsZX5GpNY8oHzbmaJBKUZUQSKEHxoyQMdamC+yIhSNSVfP2BRiAVcO+7jwlJ2Bl9q+aboBxJEze37lUl9CJkMk0Gf/l2mwweK6jtH5V3zgA2V0eWiAVbNjDkGsHetgYa/LSQ1dzEYkEieIcCVxUl4ppcASkteTuX5w66TODhLP8rYuzS54GPYYoJKU8jveVZjAPn64EDdnkoiqWAYF3O46QMSYIn8FbiUfEYdbBlt5TXm79/4PSlt9VBxS0+h+YG4JuhVU8J1Pevo0PN15sCCqH06vKLjfW3WM6/7NKWF6nJCH+xODOJm+w97msiwxp/h7x9EUMtIxxd5QYp+o/WWqH7UaM8rGogMMebGmL4dTPL0veNbZzwP6veJ3RMCuJ5wuQPxJa5vo7GsWKNZLS9cvZPFilR+8xBfzx1B4pC37wUPh
X-MS-Exchange-AntiSpam-MessageData: URKIo9yAL8S9xJoDtQOireneU4QhvqknlPpR9LPmbINHquP8f7r9PYC9uP2gyJ2CyrKRTvFsEy531NraGpvXlzIHwQ98LkvG9Zz1IT4scMLCqGzDqLTpoqcPI15AhQswNzSySCMOA3uHoWVo92gmRx1jEK/HX+XGA4v91AesWuSHguEjYG8EblXFoFmhhoQZ7+wFZFBfa27Vbi6Twbjq/iZncHZxLgRqQkqLb/LKrduBkMV1JpO2VIma5/oRd2cp095ioyi1tkLhqh8V2/e7KH3yJTOHQqOqgKrI8G0Ex7PqCrSlmwvlVvJKPagF4tc3klPbZudgTcUQI9zdS/3neY/Z6n/FJbdEKKecBieEmZ1SOb9go3buM4l+S7B5QpymhYp+lVuWdYdxOxN3duzG7vtHs6pdvCTzmjX7+BCnfIKuaLVX+2khiSOeXaouOXlxIXEJHaincAV1B81AUgYZk/tkrwKG76CUiqmrh8SIzlQr0NDqYvwz8uvjULQCeEo8CjZqOf3YB3obDAQO6HwhB+TvbkSPP8VTjtG2JdgvovUU8wiL/CpX/2sJ598YQOhhHZNDpsMwHZtwVxpQnPx+Uu77LjBYy2RSUaJB8YKI2H5KIps6SE4ZytsGKeuelkLSrmMj9cQQTJrKRTA8xrwncmZXmDQdmmdcinQlYtTwM1u9B44auOlIbiXgr/Rv+XtDM26hHTI9gptyhcw0nPiJUgM5o0+JOHiEZdXYxFVtPMEAnJ4PXBSKdBovnhTdKIX8QOf0Ajo5JcR3JtJgJvP8gTx1SKG4zzyB9FwQ2PqWD20=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e2a8e3a4-3869-477e-2453-08d7e921c593
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Apr 2020 14:05:55.8619 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bbAi7N1q01UsAVkf7bpZ4ZE5/Kmo2l/b1xGnThuoRqkQxb51pHq0IlmnhnkYOXCxWzRVRq0Mi2qzM3yjFjZvOA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1PR04MB6653
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_070603_314952_0CDE8CAB 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.58 listed in list.dnswl.org]
 0.0 DATE_IN_FUTURE_06_12   Date: is 6 to 12 hours after Received: date
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-imx@nxp.com,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct VDDARM to 0.95V@1.6Ghz with datasheet.

Signed-off-by: Robin Gong <yibin.gong@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index cc7152e..a226030 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -129,7 +129,7 @@
 
 		opp-1600000000 {
 			opp-hz = /bits/ 64 <1600000000>;
-			opp-microvolt = <900000>;
+			opp-microvolt = <950000>;
 			opp-supported-hw = <0xc>, <0x7>;
 			clock-latency-ns = <150000>;
 			opp-suspend;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
