Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39A9320074D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 12:51:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/IQHwFbwM5vmAG94B9K08+v+N8QFvurU4KZSpGxueCY=; b=V5RJViqOuN/ARu
	zc9NgSJ4OjVB/ZAFrp/jLnIWZjQMMoGcAt0FZ3PANuv1gUrFCLhTHdKv+ICM6g+FTok75IK/iFatN
	qBLnXn6Oy0lrWy9eEtcN6omthgGgNTknAcFgNbq9HTWZ74cOL8AXTjB0NPP70mnQYRi1NdvQ//vgF
	wWgI8pkdRtD5GaYBirJZd8t0Que3l78L0zalBVxOjc+qnG7bxao/rjzrXZn6dfvtApUJvIuIcoVTV
	L2MEHS5k90Y+aivHWei69NE4cin7SCxUTpIoqzbmQIRz2AKAInIvDcIiSQWBDHRYBu33uuNfpeMMA
	PlxtUc06AFGRJjplgiAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmEcV-0007sr-GH; Fri, 19 Jun 2020 10:51:39 +0000
Received: from mail-mw2nam10on2064.outbound.protection.outlook.com
 ([40.107.94.64] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmEXm-0001Od-9J
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 10:46:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Fuh9fAmeGv2ldP116i1eGsPd9Twq85aBD+mW2zaVLhlvsAXCZ5VUgAt9gSceWZ6LHOO+az/JkwH+/42/VSyKbY67RdjIRQj4S8GvV4PjW65+ageWKMQRFE0UkJGjSfN3S7tEgPvp5Kz12s5F5GGUikgWYu//s37NVXNtc6cTsjlKK4w98nOzT0yaV3roQ/BrmFFE+9dhHCKd+GDaeLUVjrLtfn50LY8AyH40HSkJ+yMCoLH5uZZ3wzaHzCEhh/vWXukoJXfTzJ77mWnL7iq0Suv3v6McXvgwGyNZsyyxSgp7HxEBL6+cfLzpZdAnpxDjuEJ5gaBa1+Waw7uwqid2Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tvio9uGNHqynxcFJ2goBHmxUqKIULUlGvgXUQtdQTTA=;
 b=B/BWbIZUIA4ffQa2YC1MxZH08pyl9L8Ya1LPf+N2UbS3NETQxh/RBvUO39kh3ESyii/hwtIhY5tDtSSoPklLAHveX9UuZr8sYJxaYUb+d1AUK04Jim+9GxJrxWH2RkFuzdQTgm+Yavn9UrxqZztayymYZzHZ1XaQy1hBdLArQBOiUxaJMIX5TIltZ/h61cWVwldqAAlTEJ+DskOVevZnKH+UJYL+QZLV5cdvmIPU37PSvZHPlyh8scP7aXz2mQdG1PI9mY68DzFa8TW84ZvmuWajXDRrOXjj3hdUQFVTUy/zg2qfDtXfhp+0jvALFqFv3O93T+OFhbeWgjMC+PAx8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=synaptics.com; dmarc=pass action=none
 header.from=synaptics.com; dkim=pass header.d=synaptics.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Synaptics.onmicrosoft.com; s=selector2-Synaptics-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tvio9uGNHqynxcFJ2goBHmxUqKIULUlGvgXUQtdQTTA=;
 b=DG2DLmgpfCJzkiOkfQWA9WjEnP2SL2wuSIERnIrCpD4Yq1OuKgtGkswn42TeQcDREyXD0vPgDTviaUKLtp0To8mjLsUGpbNaiuldN2iJO+GDVgm/d500g6csby/QcA6mMiBAdySrscEi/ioP26eJtJCNBSpCDwRdwgHy1Xe9m4s=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=synaptics.com;
Received: from DM6PR03MB3580.namprd03.prod.outlook.com (2603:10b6:5:b2::14) by
 DM6PR03MB3481.namprd03.prod.outlook.com (2603:10b6:5:af::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.21; Fri, 19 Jun 2020 10:46:37 +0000
Received: from DM6PR03MB3580.namprd03.prod.outlook.com
 ([fe80::3122:b605:87fd:339e]) by DM6PR03MB3580.namprd03.prod.outlook.com
 ([fe80::3122:b605:87fd:339e%6]) with mapi id 15.20.3109.023; Fri, 19 Jun 2020
 10:46:37 +0000
Date: Fri, 19 Jun 2020 18:45:11 +0800
From: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
To: Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>, Mark
 Rutland <mark.rutland@arm.com>, Catalin Marinas <catalin.marinas@arm.com>
Subject: [PATCH 1/3] arm64: perf: add support for Cortex-A55
Message-ID: <20200619184511.5868cd14@xhacker.debian>
In-Reply-To: <20200619184423.5e61a838@xhacker.debian>
References: <20200619184423.5e61a838@xhacker.debian>
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-ClientProxiedBy: TYBP286CA0040.JPNP286.PROD.OUTLOOK.COM
 (2603:1096:404:10a::28) To DM6PR03MB3580.namprd03.prod.outlook.com
 (2603:10b6:5:b2::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from xhacker.debian (124.74.246.114) by
 TYBP286CA0040.JPNP286.PROD.OUTLOOK.COM (2603:1096:404:10a::28) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22 via Frontend Transport; Fri, 19 Jun 2020 10:46:35 +0000
X-Mailer: Claws Mail 3.17.5 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
X-Originating-IP: [124.74.246.114]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2dd135bf-993f-4da0-1a20-08d8143e0aed
X-MS-TrafficTypeDiagnostic: DM6PR03MB3481:
X-Microsoft-Antispam-PRVS: <DM6PR03MB348164C1BD0605BD9AACBEA7ED980@DM6PR03MB3481.namprd03.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0439571D1D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Hh+dmijiIZdnwqqwQifPXMs+rBa1lkPrGr2jkaWmZedddlcLRUm/OJTcqLd9m/goMduPhWu8r+Nrz2hqHylSrFdaTsnnM3UGbwsm87c6TvLotVuUhsguPtSWBx8YbvBOcHpSdMQ07ScmwxAN0a5zMZzx+JVIJl+WcrrqATm8J3WwV9WQfO6GyaNdRgaykzbL4ok/tHmUWvfa9KNMJgH+bHGhcjuy+TP4fjCw1mdzODRyHvSX6l08sHh/yzjNbbRK/G5PsPnZPKcEuyuL+1jwM0WZOuyAPuL2EQpWOgw1aFPVQOMcIlQN8PeinE3FwoXEoiLzSN5o+vOhvlJksjRw5w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR03MB3580.namprd03.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(39860400002)(396003)(136003)(376002)(346002)(366004)(66476007)(6666004)(66946007)(66556008)(5660300002)(86362001)(52116002)(16526019)(7696005)(186003)(55016002)(9686003)(956004)(8676002)(2906002)(6506007)(1076003)(26005)(83380400001)(110136005)(316002)(8936002)(4326008)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: zDwlQ+ML0C/63oCspSuSmDGES78TfvtvDqZ0FljgitayJexWgxkZTtEx9/rYSCa+aCNt7TDAKW8T27ZGvVqnBfuJvJnBz/b8MOQRTnNO+l7Lv+xKkHagcTWIA9bYa4nsFniHTC4LO42CiD/qNL39UAZx/d83T2u7CYastGuCp+sliNROhOuN/4N6MxAc1e7FCoXWzSjn+/SE3GLvd3OLD1PcYBKK0XOQoA6a06CUVitTQ9mnxxLbxmhqtQBnypkTU4TK4uJgevDhWXcdBxnRYLqF3qDTunrJkRW61cMnTtiOCSwq7k/dB6oKIS2vM115mpEqKVHVJvohtztriiMWPJs+acg5iWCDJgvBG1cQc5lH8fl58I8wmrBxj1QFSSok+Q1c2r7xmRse9v/5lB/ksiQuXlXUqbM5iOxCmEet/PqtUTy4P6Nv210HMuDyGpc9OghwPnDfRdYdaKMrypgjL31RYNKV23nJZA7L0rdJvTr7kwoFgMN8oRIPU4qk0G+Q
X-OriginatorOrg: synaptics.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dd135bf-993f-4da0-1a20-08d8143e0aed
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Jun 2020 10:46:37.7533 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 335d1fbc-2124-4173-9863-17e7051a2a0e
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bgDfoGI/FdU5ossh2n4idRgelxk59ZMKBIfFT/Z0pG0pNbIfPGuBN85hS7a5/ZiPZqbQ+HvKRIwdCm+TcO9C5Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR03MB3481
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_034646_362606_6F1E079A 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.64 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.64 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Cortex-A55 uses some implementation defined perf events. This
patch sets up the necessary mapping for Cortex-A55.

Mappings are based on Cortex-A55 TRM r2p0, section C2.4 PMU Events
(pages C2-567 to C2-582).

Signed-off-by: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
---
 arch/arm64/kernel/perf_event.c | 25 +++++++++++++++++++++++--
 1 file changed, 23 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 4d7879484cec..743affbe0cca 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -21,7 +21,7 @@
 #include <linux/platform_device.h>
 #include <linux/smp.h>
 
-/* ARMv8 Cortex-A53 specific event types. */
+/* ARMv8 Cortex-A53/A55 specific event types. */
 #define ARMV8_A53_PERFCTR_PREF_LINEFILL				0xC2
 
 /* ARMv8 Cavium ThunderX specific event types. */
@@ -81,6 +81,22 @@ static const unsigned armv8_a53_perf_cache_map[PERF_COUNT_HW_CACHE_MAX]
 	[C(NODE)][C(OP_WRITE)][C(RESULT_ACCESS)] = ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_WR,
 };
 
+static const unsigned armv8_a55_perf_cache_map[PERF_COUNT_HW_CACHE_MAX]
+					      [PERF_COUNT_HW_CACHE_OP_MAX]
+					      [PERF_COUNT_HW_CACHE_RESULT_MAX] = {
+	PERF_CACHE_MAP_ALL_UNSUPPORTED,
+
+	[C(L1D)][C(OP_READ)][C(RESULT_ACCESS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_RD,
+	[C(L1D)][C(OP_READ)][C(RESULT_MISS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_REFILL_RD,
+	[C(L1D)][C(OP_WRITE)][C(RESULT_ACCESS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_WR,
+	[C(L1D)][C(OP_WRITE)][C(RESULT_MISS)]	= ARMV8_IMPDEF_PERFCTR_L1D_CACHE_REFILL_WR,
+	[C(L1D)][C(OP_PREFETCH)][C(RESULT_MISS)] = ARMV8_A53_PERFCTR_PREF_LINEFILL,
+
+
+	[C(NODE)][C(OP_READ)][C(RESULT_ACCESS)]	= ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_RD,
+	[C(NODE)][C(OP_WRITE)][C(RESULT_ACCESS)] = ARMV8_IMPDEF_PERFCTR_BUS_ACCESS_WR,
+};
+
 static const unsigned armv8_a57_perf_cache_map[PERF_COUNT_HW_CACHE_MAX]
 					      [PERF_COUNT_HW_CACHE_OP_MAX]
 					      [PERF_COUNT_HW_CACHE_RESULT_MAX] = {
@@ -909,6 +925,11 @@ static int armv8_a53_map_event(struct perf_event *event)
 	return __armv8_pmuv3_map_event(event, NULL, &armv8_a53_perf_cache_map);
 }
 
+static int armv8_a55_map_event(struct perf_event *event)
+{
+	return __armv8_pmuv3_map_event(event, NULL, &armv8_a55_perf_cache_map);
+}
+
 static int armv8_a57_map_event(struct perf_event *event)
 {
 	return __armv8_pmuv3_map_event(event, NULL, &armv8_a57_perf_cache_map);
@@ -1050,7 +1071,7 @@ static int armv8_a53_pmu_init(struct arm_pmu *cpu_pmu)
 static int armv8_a55_pmu_init(struct arm_pmu *cpu_pmu)
 {
 	return armv8_pmu_init(cpu_pmu, "armv8_cortex_a55",
-			      armv8_pmuv3_map_event, NULL, NULL);
+			      armv8_a55_map_event, NULL, NULL);
 }
 
 static int armv8_a57_pmu_init(struct arm_pmu *cpu_pmu)
-- 
2.27.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
