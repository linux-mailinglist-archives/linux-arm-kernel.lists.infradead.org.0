Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 925121CE5EE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 22:45:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7tfImyQ5K+gPMZtEW4XKxPHgaeteVh2il827e78ObzE=; b=MPTfZJ9tWCBy9k
	WIi1klxd6HZmh/N6zUyfpPAhmfz2jE9FE9zwBabYN4hJ53+xUeonghjkJMwUH71fq9Wbg7fdz+ww5
	GC6A8SldofNMXpA5c7rHyK8N1570pCuYEhYfUSuQ+Ct7OBgjnS/BQ/duJTGhC8Uc7eGvuM4b5IEqB
	f1FVUIYQjV+D8bf/PQpvwjrj9QbcyBbK99Ps7e38ZNgXJHq4aMd8jQN05/Q32ASF0EGPhwo5pYl+B
	k5c3f7Eq9xCBXy2oq8UshOOPOVMfyjwvbxXlJw7G43XiINMRDzN9yNgzUg11EGvNubKKryO5c7phk
	vASvpd76Nq2kqMIsgj0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYFIh-0004yj-D0; Mon, 11 May 2020 20:45:23 +0000
Received: from mail-eopbgr770115.outbound.protection.outlook.com
 ([40.107.77.115] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYFIU-0004MQ-DK
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 20:45:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cuAipPS9z/TeO3ewHjcF3iCltPoSf5EIwR/WoItmY2YGBXv1knaZDPp1lPKw04j4K6lXsc1kNfsxsddGdN5p0/srvRfU7Puy3yKLpXZK6QOvLRqf4Ykuu/TL15R3iu6qHgIL5UIC5vS00LPVuq86aRWbqWbXNbfLWrG/sJ2KLdGaQBW1hYUeVs2r0AyFc5C11DOHeTu9lguul2iJ7pO3nSBxNu4De37K6LwWyszcj2WQXuNgbNsHfHNhp3+9LRhoiVDnt0NptNxVZECapsGPNE+LmGWZgh6SwJVi/snUDge5K7+EYs0U7nyNMHgWpyWA95ezbuRiPddI/CuA2pwxeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oXnQJ1E2ie7QDSRq/0aCmt2jqyNJvT8ghMht8lSOipc=;
 b=Mwhh02lUXghHPulsAoB6fvtNwF/ghkZeYi8F/FNi2pQyY9iYEK14u92SSP7YcXOg+qyANzJz1g6e+dk6IL4QPCZKkTJA73YS+KRdDQToFXRd+4XooMs3uY3j/L33ARNbY6qFCjSPHswRz/xMfI8ea2A1Ox7M/d9XyJu/sQgEmCqQ1BaVerpLZ0DEG/+GNzuIRjqn5oY+6tNCMlmAIGgYhsd53e27H0lfI8nfloL4VpBgywARY7FrFCdM/kmvwMUXcLJBFSotin7ojVhVgd45iRE5Ibbl976ftBPai6Zt7l/Z12Hyrij7VQsLd3/8KD7y0Z1WS8eBwDB7nsCF9l/6jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=os.amperecomputing.com; dmarc=pass action=none
 header.from=os.amperecomputing.com; dkim=pass
 header.d=os.amperecomputing.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=os.amperecomputing.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=oXnQJ1E2ie7QDSRq/0aCmt2jqyNJvT8ghMht8lSOipc=;
 b=XcjTEb9kOr57bDSY9k7lOgmGBpkr487JoQAuxVEHxd57NZSOs8VA2TIzis03qhFKcjZkwegxe8UlBqqTwRaREs9clM8EjxMmtWa6SenCMD4lgtfUL47PMVbD6MfqgtgJT+f2QUhN4pLVoQEx5BoNr9Cr9IGct9buFBRzpzuNIao=
Authentication-Results: amperecomputing.com; dkim=none (message not signed)
 header.d=none;amperecomputing.com; dmarc=none action=none
 header.from=os.amperecomputing.com;
Received: from BYAPR01MB4598.prod.exchangelabs.com (2603:10b6:a03:8a::18) by
 BYAPR01MB5480.prod.exchangelabs.com (2603:10b6:a03:121::10) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2979.35; Mon, 11 May 2020 20:45:07 +0000
Received: from BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c]) by BYAPR01MB4598.prod.exchangelabs.com
 ([fe80::296c:b848:8bf0:6f2c%5]) with mapi id 15.20.2979.033; Mon, 11 May 2020
 20:45:07 +0000
From: Tuan Phan <tuanphan@os.amperecomputing.com>
To: 
Subject: [PATCH v2] driver/perf: Add PMU driver for the ARM DMC-620 memory
 controller.
Date: Mon, 11 May 2020 13:44:52 -0700
Message-Id: <1589229894-18863-1-git-send-email-tuanphan@os.amperecomputing.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: BY3PR04CA0028.namprd04.prod.outlook.com
 (2603:10b6:a03:217::33) To BYAPR01MB4598.prod.exchangelabs.com
 (2603:10b6:a03:8a::18)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from aptiov-dev-Latitude-E7470.amperecomputing.com (4.28.12.214) by
 BY3PR04CA0028.namprd04.prod.outlook.com (2603:10b6:a03:217::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2979.30 via Frontend
 Transport; Mon, 11 May 2020 20:45:06 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [4.28.12.214]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e245eab1-16ca-4ec5-27ce-08d7f5ec3071
X-MS-TrafficTypeDiagnostic: BYAPR01MB5480:|BYAPR01MB5480:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <BYAPR01MB54809EFEE5CB8B6CFE2512E6E0A10@BYAPR01MB5480.prod.exchangelabs.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:1265;
X-Forefront-PRVS: 04004D94E2
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Jh9F+JLyaF5puUojcpJy8IhxByGvRwMhy9jRay0lSvInK/VgBdoSpwJWMnjZ/iPB5/Yno4w4ufEGXJ80r8fZi4f/m+Li6WIks3AGhna6JzthBbZ8vDMSr0dYij6TW7pEPPB7hY9PZsxGUQvaVfnd3zjq7O+Sp81Hu8txqnMf5Wc2tXEtNyGCPSuvCDLdEJUPtbok1HFQmdO6qsWEPLcJrFVNnNWlQDB3G50Ff2y+DT/WQ4FYsiBYwaraobxGo7xtzGFuFKGp9Cq989NMDmGPsyJ2zxDa7Vpl8vU4rOa32IFNYs7vOdqxPQu4Y2glVNjErSWEoEYY7Lj7r85v/iQCjmExPvmKjVl7O4gx4lb11vNCxz/alcgc+Nxrh0/c2AtRvJi3r+g6fQ7ypTcdQQ67zWwzjwBwtXG9NiED6ng9ItVuOoFbafXkSKtt1IJqG8n7Httcwl5gQSWuXCqnGXomPGROfVc+PHsZYCKaeOnIs7AYMH7OaDrH4UFl4ZLO9VXyfrUcm2KBtskLSPzF80uvuhWdt2oGyq8EF1eLPq4iIFI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR01MB4598.prod.exchangelabs.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(366004)(376002)(136003)(396003)(39840400004)(33430700001)(4326008)(86362001)(6506007)(66476007)(6512007)(66556008)(52116002)(8936002)(26005)(2906002)(8676002)(478600001)(54906003)(956004)(186003)(6666004)(66946007)(16526019)(109986005)(6486002)(5660300002)(2616005)(33440700001)(30864003)(316002)(266003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData: LTXiQ4QAkzhjEpUH4sDXdPAAxWYBCfcl5ewlDpe7kVn3fXekiq6CkmuZdHSlJqyopTHzh2FByheHIRyDXXKi1aQdYI4MXKVP0GKOt7XziVde8wfsD/EgHvUAGkw0VaM6qgi/UG5NwgaTeSgKGKkrIIVhxuvUw73ItyM30OxlS8j0MgeWBeQBRZUayfFW+uLuc6eKSUOzWwZWVFc9Aof0oBvrCPRR0mNd5bZ1B98L7+4onRg7U/wwX5ATZk94ZKAsN1E2svdmDD7JNwvX0SBb8f72yWZ12hgNoa++DrjM9dtvIQ9H5mjKLnTs6RqRJ8y0a+PSoPT170nSkQQkM2Lz0dkNBGryJrzLsTUmOnSyPPS3rxB96Zl7AkTqKCO0GGVJoB3/LpcXb5+qK7ecWkaJ7Hf9lFVobMiBTosZKL/9y/a1u8m5mfaBFUspXE14SnbHy0iHlD2K5hn732QZzkQMzmBCEFI+UHxzjasTC6i9g7g=
X-OriginatorOrg: os.amperecomputing.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e245eab1-16ca-4ec5-27ce-08d7f5ec3071
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 May 2020 20:45:07.3043 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3bc2b170-fd94-476d-b0ce-4229bdc904a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AgoFTfSDH5XKj7nuYjRUimjikt/XXJy686epj92h2dpoSd0unt8+qiLNginzGE3/32az0bn0o0HxUsXnptN7Eo2IdRe1g8aHaZ/j68/H6E/Ib8bpGIK8t8nFLzG8YBQb
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR01MB5480
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_134510_577581_0F7BB0C5 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.77.115 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.77.115 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, patches@amperecomputing.com,
 Will Deacon <will@kernel.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DMC-620 PMU supports 10 total counters that are independently
programmable for different events and can be individually started and
stopped.

ACPI is only supported; device tree support is welcomed to be added and
tested for other platforms.

Usage example:
  #perf stat -e arm_dmc620_10008c000/clk_cycle_count/ -C 0
  Get perf event for clk_cycle_count counter.

  #perf stat -e arm_dmc620_10008c000/clkdiv2_allocate,mask=0x1f,match=0x2f,
  incr=2,invert=1/ -C 0
  The above example shows how to specify mask, match, incr,
  invert parameters for clkdiv2_allocate event.

Signed-off-by: Tuan Phan <tuanphan@os.amperecomputing.com>
---
Changes in v2:
- Removed IRQF_SHARED flag and added support for multiple 
PMUs sharing the same interrupt.
- Fixed an interrupt handler race condition.

The ACPI binding spec for PMU DMC620 is under beta and located
in ARM server group under project "ACPI on ARM". 

 drivers/perf/Kconfig          |   8 +
 drivers/perf/Makefile         |   1 +
 drivers/perf/arm_dmc620_pmu.c | 869 ++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 878 insertions(+)
 create mode 100644 drivers/perf/arm_dmc620_pmu.c

diff --git a/drivers/perf/Kconfig b/drivers/perf/Kconfig
index 09ae8a9..2724a55 100644
--- a/drivers/perf/Kconfig
+++ b/drivers/perf/Kconfig
@@ -129,4 +129,12 @@ config ARM_SPE_PMU
 	  Extension, which provides periodic sampling of operations in
 	  the CPU pipeline and reports this via the perf AUX interface.
 
+config ARM_DMC620_PMU
+	tristate "Enable PMU support for the Arm DMC-620 memory controller"
+	depends on ARM64 && ACPI
+	default n
+	help
+	  Support for PMU events monitoring on the Arm DMC-620 memory
+	  controller.
+
 endmenu
diff --git a/drivers/perf/Makefile b/drivers/perf/Makefile
index 2ebb4de..5d577d1 100644
--- a/drivers/perf/Makefile
+++ b/drivers/perf/Makefile
@@ -12,3 +12,4 @@ obj-$(CONFIG_QCOM_L3_PMU) += qcom_l3_pmu.o
 obj-$(CONFIG_THUNDERX2_PMU) += thunderx2_pmu.o
 obj-$(CONFIG_XGENE_PMU) += xgene_pmu.o
 obj-$(CONFIG_ARM_SPE_PMU) += arm_spe_pmu.o
+obj-$(CONFIG_ARM_DMC620_PMU) += arm_dmc620_pmu.o
diff --git a/drivers/perf/arm_dmc620_pmu.c b/drivers/perf/arm_dmc620_pmu.c
new file mode 100644
index 0000000..5a80cddf
--- /dev/null
+++ b/drivers/perf/arm_dmc620_pmu.c
@@ -0,0 +1,869 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Arm DMC-620 memory controller PMU driver.
+ *
+ * Copyright (C) 2020 Ampere Computing LLC.
+ */
+
+#define DMC620_PMUNAME		"arm_dmc620"
+#define DMC620_DRVNAME		DMC620_PMUNAME "_pmu"
+#define pr_fmt(fmt)		DMC620_DRVNAME ": " fmt
+
+#include <linux/acpi.h>
+#include <linux/bitops.h>
+#include <linux/cpuhotplug.h>
+#include <linux/cpumask.h>
+#include <linux/device.h>
+#include <linux/errno.h>
+#include <linux/interrupt.h>
+#include <linux/irq.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/perf_event.h>
+#include <linux/perf/arm_pmu.h>
+#include <linux/platform_device.h>
+#include <linux/printk.h>
+#include <linux/rculist.h>
+#include <linux/refcount.h>
+
+#define DMC620_PA_SHIFT					12
+#define DMC620_CNT_MAX_PERIOD				0xffffffff
+#define DMC620_PMU_CLKDIV2_MAX_COUNTERS			8
+#define DMC620_PMU_CLK_MAX_COUNTERS			2
+#define DMC620_PMU_MAX_COUNTERS				\
+	(DMC620_PMU_CLKDIV2_MAX_COUNTERS + DMC620_PMU_CLK_MAX_COUNTERS)
+
+#define DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_OFFSET	8
+#define  DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_MASK	\
+		(DMC620_PMU_CLKDIV2_MAX_COUNTERS - 1)
+#define DMC620_PMU_OVERFLOW_STATUS_CLK_OFFSET		12
+#define  DMC620_PMU_OVERFLOW_STATUS_CLK_MASK		\
+		(DMC620_PMU_CLK_MAX_COUNTERS - 1)
+#define DMC620_PMU_COUNTERS_BASE_OFFSET			16
+#define DMC620_PMU_COUNTER_MASK_31_00_OFFSET		0
+#define DMC620_PMU_COUNTER_MASK_63_32_OFFSET		4
+#define DMC620_PMU_COUNTER_MATCH_31_00_OFFSET		8
+#define DMC620_PMU_COUNTER_MATCH_63_32_OFFSET		12
+#define DMC620_PMU_COUNTER_CONTROL_OFFSET		16
+#define  DMC620_PMU_COUNTER_CONTROL_ENABLE_MASK		BIT(0)
+#define  DMC620_PMU_COUNTER_CONTROL_INVERT_SHIFT	1
+#define  DMC620_PMU_COUNTER_CONTROL_EVENT_MUX		(((x)&0x1f)>>2)
+#define  DMC620_PMU_COUNTER_CONTROL_EVENT_MUX_SHIFT	2
+#define  DMC620_PMU_COUNTER_CONTROL_INCR		(((x)&0x1ff)>>7)
+#define  DMC620_PMU_COUNTER_CONTROL_INCR_SHIFT		7
+#define DMC620_PMU_COUNTER_SNAPSHOT_OFFSET		24
+#define DMC620_PMU_COUNTER_VALUE_OFFSET			32
+#define DMC620_PMU_COUNTER_REG_BYTE_LENGTH		40
+
+#define DMC620_PMU_CLKDIV2_CYCLE_COUNT			0x0
+#define DMC620_PMU_CLKDIV2_ALLOCATE			0x1
+#define DMC620_PMU_CLKDIV2_QUEUE_DEPTH			0x2
+#define DMC620_PMU_CLKDIV2_WAITING_FOR_WR_DATA		0x3
+#define DMC620_PMU_CLKDIV2_READ_BACKLOG			0x4
+#define DMC620_PMU_CLKDIV2_WAITING_FOR_MI		0x5
+#define DMC620_PMU_CLKDIV2_HAZARD_RESOLUTION		0x6
+#define DMC620_PMU_CLKDIV2_ENQUEUE			0x7
+#define DMC620_PMU_CLKDIV2_ARBITRATE			0x8
+#define DMC620_PMU_CLKDIV2_LRANK_TURNAROUND_ACTIVATE	0x9
+#define DMC620_PMU_CLKDIV2_PRANK_TURNAROUND_ACTIVATE	0xA
+#define DMC620_PMU_CLKDIV2_READ_DEPTH			0xB
+#define DMC620_PMU_CLKDIV2_WRITE_DEPTH			0xC
+#define DMC620_PMU_CLKDIV2_HIGHHIGH_QOS_DEPTH		0xD
+#define DMC620_PMU_CLKDIV2_HIGH_QOS_DEPTH		0xE
+#define DMC620_PMU_CLKDIV2_MEDIUM_QOS_DEPTH		0xF
+#define DMC620_PMU_CLKDIV2_LOW_QOS_DEPTH		0x10
+#define DMC620_PMU_CLKDIV2_ACTIVATE			0x11
+#define DMC620_PMU_CLKDIV2_RDWR				0x12
+#define DMC620_PMU_CLKDIV2_REFRESH			0x13
+#define DMC620_PMU_CLKDIV2_TRAINING_REQUEST		0x14
+#define DMC620_PMU_CLKDIV2_T_MAC_TRACKER		0x15
+#define DMC620_PMU_CLKDIV2_BK_FSM_TRACKER		0x16
+#define DMC620_PMU_CLKDIV2_BK_OPEN_TRACKER		0x17
+#define DMC620_PMU_CLKDIV2_RANKS_IN_PWR_DOWN		0x18
+#define DMC620_PMU_CLKDIV2_RANKS_IN_SREF		0x19
+#define DMC620_PMU_CLK_CYCLE_COUNTER			0x20
+#define DMC620_PMU_CLK_REQUEST				0x21
+#define DMC620_PMU_CLK_UPLOAD_STALL			0x22
+#define DMC620_PMU_CLK_INDICATE_MASK			0x20
+
+static LIST_HEAD(dmc620_pmu_affinities);
+static DEFINE_MUTEX(dmc620_pmu_affinity_lock);
+
+struct dmc620_pmu_affinity {
+	struct hlist_node node;
+	struct list_head affinity_list;
+	struct list_head instance_list;
+	refcount_t refcount;
+	unsigned int irq;
+	unsigned int cpu;
+};
+
+struct dmc620_pmu {
+	struct pmu pmu;
+	struct platform_device *pdev;
+
+	void __iomem *base;
+	struct dmc620_pmu_affinity *affinity;
+	struct list_head affinity_list;
+
+	/*
+	 * We put all clkdiv2 and clk counters to a same array.
+	 * The first DMC620_PMU_CLKDIV2_MAX_COUNTERS bits belong to
+	 * clkdiv2 counters, the last DMC620_PMU_CLK_MAX_COUNTERS
+	 * belong to clk counters.
+	 */
+	DECLARE_BITMAP(used_mask, DMC620_PMU_MAX_COUNTERS);
+	struct perf_event *act_counter[DMC620_PMU_MAX_COUNTERS];
+};
+
+#define to_dmc620_pmu(p) (container_of(p, struct dmc620_pmu, pmu))
+
+static int cpuhp_state_num;
+
+static ssize_t
+dmc620_pmu_events_sysfs_show(struct device *dev,
+			   struct device_attribute *attr, char *page)
+{
+	struct perf_pmu_events_attr *pmu_attr;
+
+	pmu_attr = container_of(attr, struct perf_pmu_events_attr, attr);
+
+	return sprintf(page, "event=0x%03llx\n", pmu_attr->id);
+}
+
+#define DMC620_PMU_EVENT_ATTR(name, config)			\
+	PMU_EVENT_ATTR(name, dmc620_pmu_event_attr_##name,	\
+		       config, dmc620_pmu_events_sysfs_show)
+
+/* clkdiv2 events list */
+DMC620_PMU_EVENT_ATTR(clkdiv2_cycle_count,
+		DMC620_PMU_CLKDIV2_CYCLE_COUNT);
+DMC620_PMU_EVENT_ATTR(clkdiv2_allocate,
+		DMC620_PMU_CLKDIV2_ALLOCATE);
+DMC620_PMU_EVENT_ATTR(clkdiv2_queue_depth,
+		DMC620_PMU_CLKDIV2_QUEUE_DEPTH);
+DMC620_PMU_EVENT_ATTR(clkdiv2_waiting_for_wr_data,
+		DMC620_PMU_CLKDIV2_WAITING_FOR_WR_DATA);
+DMC620_PMU_EVENT_ATTR(clkdiv2_read_backlog,
+		DMC620_PMU_CLKDIV2_READ_BACKLOG);
+DMC620_PMU_EVENT_ATTR(clkdiv2_waiting_for_mi,
+		DMC620_PMU_CLKDIV2_WAITING_FOR_MI);
+DMC620_PMU_EVENT_ATTR(clkdiv2_hazard_resolution,
+		DMC620_PMU_CLKDIV2_HAZARD_RESOLUTION);
+DMC620_PMU_EVENT_ATTR(clkdiv2_enqueue,
+		DMC620_PMU_CLKDIV2_ENQUEUE);
+DMC620_PMU_EVENT_ATTR(clkdiv2_arbitrate,
+		DMC620_PMU_CLKDIV2_ARBITRATE);
+DMC620_PMU_EVENT_ATTR(clkdiv2_lrank_turnaround_activate,
+		DMC620_PMU_CLKDIV2_LRANK_TURNAROUND_ACTIVATE);
+DMC620_PMU_EVENT_ATTR(clkdiv2_prank_turnaround_activate,
+		DMC620_PMU_CLKDIV2_PRANK_TURNAROUND_ACTIVATE);
+DMC620_PMU_EVENT_ATTR(clkdiv2_read_depth,
+		DMC620_PMU_CLKDIV2_READ_DEPTH);
+DMC620_PMU_EVENT_ATTR(clkdiv2_write_depth,
+		DMC620_PMU_CLKDIV2_WRITE_DEPTH);
+DMC620_PMU_EVENT_ATTR(clkdiv2_highigh_qos_depth,
+		DMC620_PMU_CLKDIV2_HIGHHIGH_QOS_DEPTH);
+DMC620_PMU_EVENT_ATTR(clkdiv2_high_qos_depth,
+		DMC620_PMU_CLKDIV2_HIGH_QOS_DEPTH);
+DMC620_PMU_EVENT_ATTR(clkdiv2_medium_qos_depth,
+		DMC620_PMU_CLKDIV2_MEDIUM_QOS_DEPTH);
+DMC620_PMU_EVENT_ATTR(clkdiv2_low_qos_depth,
+		DMC620_PMU_CLKDIV2_LOW_QOS_DEPTH);
+DMC620_PMU_EVENT_ATTR(clkdiv2_activate,
+		DMC620_PMU_CLKDIV2_ACTIVATE);
+DMC620_PMU_EVENT_ATTR(clkdiv2_rdwr,
+		DMC620_PMU_CLKDIV2_RDWR);
+DMC620_PMU_EVENT_ATTR(clkdiv2_refresh,
+		DMC620_PMU_CLKDIV2_REFRESH);
+DMC620_PMU_EVENT_ATTR(clkdiv2_training_request,
+		DMC620_PMU_CLKDIV2_TRAINING_REQUEST);
+DMC620_PMU_EVENT_ATTR(clkdiv2_t_mac_tracker,
+		DMC620_PMU_CLKDIV2_T_MAC_TRACKER);
+DMC620_PMU_EVENT_ATTR(clkdiv2_bk_fsm_tracker,
+		DMC620_PMU_CLKDIV2_BK_FSM_TRACKER);
+DMC620_PMU_EVENT_ATTR(clkdiv2_bk_open_tracker,
+		DMC620_PMU_CLKDIV2_BK_OPEN_TRACKER);
+DMC620_PMU_EVENT_ATTR(clkdiv2_ranks_in_pwr_down,
+		DMC620_PMU_CLKDIV2_RANKS_IN_PWR_DOWN);
+DMC620_PMU_EVENT_ATTR(clkdiv2_ranks_in_sref,
+		DMC620_PMU_CLKDIV2_RANKS_IN_SREF);
+
+/* clk events list */
+DMC620_PMU_EVENT_ATTR(clk_cycle_count,
+		DMC620_PMU_CLK_CYCLE_COUNTER);
+DMC620_PMU_EVENT_ATTR(clk_request,
+		DMC620_PMU_CLK_REQUEST);
+DMC620_PMU_EVENT_ATTR(clk_upload_stall,
+		DMC620_PMU_CLK_UPLOAD_STALL);
+
+static struct attribute *dmc620_pmu_events_attrs[] = {
+	&dmc620_pmu_event_attr_clkdiv2_cycle_count.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_allocate.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_queue_depth.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_waiting_for_wr_data.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_read_backlog.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_waiting_for_mi.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_hazard_resolution.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_enqueue.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_arbitrate.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_lrank_turnaround_activate.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_prank_turnaround_activate.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_read_depth.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_write_depth.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_highigh_qos_depth.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_high_qos_depth.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_medium_qos_depth.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_low_qos_depth.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_activate.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_rdwr.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_refresh.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_training_request.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_t_mac_tracker.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_bk_fsm_tracker.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_bk_open_tracker.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_ranks_in_pwr_down.attr.attr,
+	&dmc620_pmu_event_attr_clkdiv2_ranks_in_sref.attr.attr,
+	&dmc620_pmu_event_attr_clk_cycle_count.attr.attr,
+	&dmc620_pmu_event_attr_clk_request.attr.attr,
+	&dmc620_pmu_event_attr_clk_upload_stall.attr.attr,
+	NULL,
+};
+
+static struct attribute_group dmc620_pmu_events_attr_group = {
+	.name = "events",
+	.attrs = dmc620_pmu_events_attrs,
+};
+
+/* User ABI */
+#define ATTR_CFG_FLD_mask_CFG		config
+#define ATTR_CFG_FLD_mask_LO		0
+#define ATTR_CFG_FLD_mask_HI		44
+#define ATTR_CFG_FLD_match_CFG		config1
+#define ATTR_CFG_FLD_match_LO		0
+#define ATTR_CFG_FLD_match_HI		44
+#define ATTR_CFG_FLD_invert_CFG		config2
+#define ATTR_CFG_FLD_invert_LO		0
+#define ATTR_CFG_FLD_invert_HI		0
+#define ATTR_CFG_FLD_incr_CFG		config2
+#define ATTR_CFG_FLD_incr_LO		1
+#define ATTR_CFG_FLD_incr_HI		2
+#define ATTR_CFG_FLD_event_CFG		config2
+#define ATTR_CFG_FLD_event_LO		3
+#define ATTR_CFG_FLD_event_HI		8
+
+#define __GEN_PMU_FORMAT_ATTR(cfg, lo, hi)			\
+	(lo) == (hi) ? #cfg ":" #lo "\n" : #cfg ":" #lo "-" #hi
+
+#define _GEN_PMU_FORMAT_ATTR(cfg, lo, hi)			\
+	__GEN_PMU_FORMAT_ATTR(cfg, lo, hi)
+
+#define GEN_PMU_FORMAT_ATTR(name)				\
+	PMU_FORMAT_ATTR(name,					\
+	_GEN_PMU_FORMAT_ATTR(ATTR_CFG_FLD_##name##_CFG,		\
+			     ATTR_CFG_FLD_##name##_LO,		\
+			     ATTR_CFG_FLD_##name##_HI))
+
+#define _ATTR_CFG_GET_FLD(attr, cfg, lo, hi)			\
+	((((attr)->cfg) >> lo) & GENMASK(hi - lo, 0))
+
+#define ATTR_CFG_GET_FLD(attr, name)				\
+	_ATTR_CFG_GET_FLD(attr,					\
+			  ATTR_CFG_FLD_##name##_CFG,		\
+			  ATTR_CFG_FLD_##name##_LO,		\
+			  ATTR_CFG_FLD_##name##_HI)
+
+GEN_PMU_FORMAT_ATTR(mask);
+GEN_PMU_FORMAT_ATTR(match);
+GEN_PMU_FORMAT_ATTR(invert);
+GEN_PMU_FORMAT_ATTR(incr);
+GEN_PMU_FORMAT_ATTR(event);
+
+static struct attribute *dmc620_pmu_formats_attrs[] = {
+	&format_attr_mask.attr,
+	&format_attr_match.attr,
+	&format_attr_invert.attr,
+	&format_attr_incr.attr,
+	&format_attr_event.attr,
+	NULL,
+};
+
+static struct attribute_group dmc620_pmu_format_attr_group = {
+	.name	= "format",
+	.attrs	= dmc620_pmu_formats_attrs,
+};
+
+static const struct attribute_group *dmc620_pmu_attr_groups[] = {
+	&dmc620_pmu_events_attr_group,
+	&dmc620_pmu_format_attr_group,
+	NULL,
+};
+
+static inline
+unsigned int dmc620_pmu_creg_read(struct dmc620_pmu *dmc620_pmu,
+					  unsigned int idx,
+					  unsigned int offset)
+{
+	return readl(dmc620_pmu->base + DMC620_PMU_COUNTERS_BASE_OFFSET +
+			(idx * DMC620_PMU_COUNTER_REG_BYTE_LENGTH + offset));
+}
+
+static inline
+void dmc620_pmu_creg_write(struct dmc620_pmu *dmc620_pmu,
+				  unsigned int idx,
+				  unsigned int offset,
+				  unsigned int val)
+{
+	writel(val, dmc620_pmu->base + DMC620_PMU_COUNTERS_BASE_OFFSET +
+		(idx * DMC620_PMU_COUNTER_REG_BYTE_LENGTH + offset));
+}
+
+static
+unsigned int dmc620_event_to_counter_control(struct perf_event *event)
+{
+	struct perf_event_attr *attr = &event->attr;
+	unsigned int reg = 0;
+
+	reg |= ATTR_CFG_GET_FLD(attr, invert) <<
+		DMC620_PMU_COUNTER_CONTROL_INVERT_SHIFT;
+	reg |= ATTR_CFG_GET_FLD(attr, incr) <<
+		DMC620_PMU_COUNTER_CONTROL_INCR_SHIFT;
+	reg |= (ATTR_CFG_GET_FLD(attr, event) &
+		~DMC620_PMU_CLK_INDICATE_MASK) <<
+		DMC620_PMU_COUNTER_CONTROL_EVENT_MUX_SHIFT;
+
+	return reg;
+}
+
+static int dmc620_get_event_idx(struct perf_event *event)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+	int idx, start_idx, end_idx;
+
+	if (ATTR_CFG_GET_FLD(&event->attr, event) &
+			DMC620_PMU_CLK_INDICATE_MASK) {
+		start_idx = DMC620_PMU_CLKDIV2_MAX_COUNTERS;
+		end_idx = DMC620_PMU_MAX_COUNTERS;
+	} else {
+		start_idx = 0;
+		end_idx = DMC620_PMU_CLKDIV2_MAX_COUNTERS;
+	}
+
+	for (idx = start_idx; idx < end_idx; ++idx) {
+		if (!test_and_set_bit(idx, dmc620_pmu->used_mask))
+			return idx;
+	}
+
+	/* The counters are all in use. */
+	return -EAGAIN;
+}
+
+static u64 dmc620_pmu_read_counter(struct perf_event *event)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+
+	return (u64)dmc620_pmu_creg_read(dmc620_pmu,
+			  event->hw.idx,
+			  DMC620_PMU_COUNTER_VALUE_OFFSET);
+}
+
+static void dmc620_pmu_event_update(struct perf_event *event)
+{
+	struct hw_perf_event *hwc = &event->hw;
+	u64 delta, prev_count, new_count;
+
+	do {
+		/* We may also be called from the irq handler */
+		prev_count = local64_read(&hwc->prev_count);
+		new_count = dmc620_pmu_read_counter(event);
+	} while (local64_cmpxchg(&hwc->prev_count,
+			prev_count, new_count) != prev_count);
+	delta = (new_count - prev_count) & DMC620_CNT_MAX_PERIOD;
+	local64_add(delta, &event->count);
+}
+
+static void dmc620_pmu_event_set_period(struct perf_event *event)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+
+	/*
+	 * All DMC-620 PMU event counters are 32bit counters.
+	 * To handle cases of extreme interrupt latency, we program
+	 * the counter with half of the max count for the counters.
+	 */
+	u64 val = DMC620_CNT_MAX_PERIOD >> 1;
+
+	local64_set(&event->hw.prev_count, val);
+	dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_VALUE_OFFSET,
+			  val);
+}
+
+static void dmc620_pmu_enable_counter(struct perf_event *event)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+	unsigned int reg;
+
+	reg = dmc620_pmu_creg_read(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET);
+	reg |= DMC620_PMU_COUNTER_CONTROL_ENABLE_MASK;
+	dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET,
+			  reg);
+}
+
+static void dmc620_pmu_disable_counter(struct perf_event *event)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+	unsigned int reg;
+
+	reg = dmc620_pmu_creg_read(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET);
+	reg &= ~DMC620_PMU_COUNTER_CONTROL_ENABLE_MASK;
+	dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET,
+			  reg);
+}
+
+static irqreturn_t dmc620_pmu_handle_irq(int irq_num, void *data)
+{
+	struct dmc620_pmu_affinity *aff = data;
+	struct dmc620_pmu *dmc620_pmu;
+	irqreturn_t ret = IRQ_NONE;
+
+	rcu_read_lock();
+	list_for_each_entry_rcu(dmc620_pmu,
+				  &aff->instance_list, affinity_list) {
+		unsigned long status_clkdiv2, status_clk;
+		struct perf_event *event;
+		unsigned int idx;
+
+		status_clkdiv2 = readl(dmc620_pmu->base +
+				  DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_OFFSET);
+		status_clk = readl(dmc620_pmu->base +
+				  DMC620_PMU_OVERFLOW_STATUS_CLK_OFFSET);
+		if (!status_clkdiv2 && !status_clk)
+			continue;
+
+		for (idx = 0; idx < DMC620_PMU_MAX_COUNTERS; idx++) {
+			event = dmc620_pmu->act_counter[idx];
+			if (!event)
+				continue;
+			dmc620_pmu_disable_counter(event);
+		}
+
+		for_each_set_bit(idx, &status_clkdiv2,
+				  DMC620_PMU_CLKDIV2_MAX_COUNTERS) {
+			event = dmc620_pmu->act_counter[idx];
+			if (WARN_ON_ONCE(!event))
+				continue;
+			dmc620_pmu_event_update(event);
+			dmc620_pmu_event_set_period(event);
+		}
+
+		for_each_set_bit(idx, &status_clk,
+				  DMC620_PMU_CLK_MAX_COUNTERS) {
+			event = dmc620_pmu->act_counter[idx +
+				DMC620_PMU_CLKDIV2_MAX_COUNTERS];
+			if (WARN_ON_ONCE(!event))
+				continue;
+			dmc620_pmu_event_update(event);
+			dmc620_pmu_event_set_period(event);
+		}
+
+		if (status_clkdiv2)
+			writel(0, dmc620_pmu->base +
+				DMC620_PMU_OVERFLOW_STATUS_CLKDIV2_OFFSET);
+		if (status_clk)
+			writel(0, dmc620_pmu->base +
+				DMC620_PMU_OVERFLOW_STATUS_CLK_OFFSET);
+
+		for (idx = 0; idx < DMC620_PMU_MAX_COUNTERS; idx++) {
+			event = dmc620_pmu->act_counter[idx];
+			if (!event)
+				continue;
+			if (!(event->hw.state & PERF_HES_STOPPED))
+				dmc620_pmu_enable_counter(event);
+		}
+		ret = IRQ_HANDLED;
+	}
+	rcu_read_unlock();
+
+	return ret;
+}
+
+static struct dmc620_pmu_affinity *__dmc620_pmu_get_affinity(int irq)
+{
+	struct dmc620_pmu_affinity *aff;
+	int ret;
+
+	list_for_each_entry(aff, &dmc620_pmu_affinities, affinity_list)
+		if (aff->irq == irq && refcount_inc_not_zero(&aff->refcount))
+			return aff;
+
+	aff = kzalloc(sizeof(*aff), GFP_KERNEL);
+	if (!aff)
+		return ERR_PTR(-ENOMEM);
+
+	aff->instance_list.next = &aff->instance_list;
+	aff->instance_list.prev = &aff->instance_list;
+
+	/* Pick one CPU to be the preferred one to use */
+	aff->cpu = raw_smp_processor_id();
+	refcount_set(&aff->refcount, 1);
+
+	ret = request_irq(irq, dmc620_pmu_handle_irq,
+			  IRQF_NOBALANCING | IRQF_NO_THREAD,
+			  "dmc620-pmu", aff);
+	if (ret)
+		goto out_free_aff;
+
+	ret = irq_set_affinity_hint(irq, cpumask_of(aff->cpu));
+	if (ret)
+		goto out_free_irq;
+
+	ret = cpuhp_state_add_instance_nocalls(cpuhp_state_num, &aff->node);
+	if (ret)
+		goto out_free_irq;
+
+	aff->irq = irq;
+	list_add(&aff->affinity_list, &dmc620_pmu_affinities);
+
+	return aff;
+
+out_free_irq:
+	free_irq(irq, aff);
+out_free_aff:
+	kfree(aff);
+	return ERR_PTR(ret);
+}
+
+static int dmc620_pmu_get_affinity(struct dmc620_pmu *dmc620_pmu, int irq)
+{
+	struct dmc620_pmu_affinity *aff;
+
+	mutex_lock(&dmc620_pmu_affinity_lock);
+	aff = __dmc620_pmu_get_affinity(irq);
+	mutex_unlock(&dmc620_pmu_affinity_lock);
+
+	if (IS_ERR(aff))
+		return PTR_ERR(aff);
+
+	dmc620_pmu->affinity = aff;
+	mutex_lock(&dmc620_pmu_affinity_lock);
+	list_add_rcu(&dmc620_pmu->affinity_list, &aff->instance_list);
+	mutex_unlock(&dmc620_pmu_affinity_lock);
+
+	return 0;
+}
+
+static void dmc620_pmu_put_affinity(struct dmc620_pmu *dmc620_pmu)
+{
+	struct dmc620_pmu_affinity *aff = dmc620_pmu->affinity;
+
+	mutex_lock(&dmc620_pmu_affinity_lock);
+	list_del_rcu(&dmc620_pmu->affinity_list);
+
+	if (!refcount_dec_and_test(&aff->refcount)) {
+		mutex_unlock(&dmc620_pmu_affinity_lock);
+		return;
+	}
+
+	list_del(&aff->affinity_list);
+	mutex_unlock(&dmc620_pmu_affinity_lock);
+
+	free_irq(aff->irq, aff);
+	cpuhp_state_remove_instance_nocalls(cpuhp_state_num, &aff->node);
+	kfree(aff);
+}
+
+static int dmc620_pmu_event_init(struct perf_event *event)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	struct perf_event *sibling;
+
+	if (event->attr.type != event->pmu->type)
+		return -ENOENT;
+
+	/*
+	 * DMC 620 PMUs are shared across all cpus and cannot
+	 * support task bound and sampling events.
+	 */
+	if (is_sampling_event(event) ||
+		event->attach_state & PERF_ATTACH_TASK) {
+		dev_dbg(dmc620_pmu->pmu.dev,
+			"Can't support per-task counters\n");
+		return -EOPNOTSUPP;
+	}
+
+	if (event->cpu < 0) {
+		dev_dbg(dmc620_pmu->pmu.dev,
+			"Per-task mode not supported\n");
+		return -EOPNOTSUPP;
+	}
+
+	/*
+	 * Many perf core operations (eg. events rotation) operate on a
+	 * single CPU context. This is obvious for CPU PMUs, where one
+	 * expects the same sets of events being observed on all CPUs,
+	 * but can lead to issues for off-core PMUs, where each
+	 * event could be theoretically assigned to a different CPU. To
+	 * mitigate this, we enforce CPU assignment to one, selected
+	 * processor.
+	 */
+	event->cpu = dmc620_pmu->affinity->cpu;
+
+	/*
+	 * We must NOT create groups containing mixed PMUs, although software
+	 * events are acceptable.
+	 */
+	if (event->group_leader->pmu != event->pmu &&
+			!is_software_event(event->group_leader))
+		return -EINVAL;
+
+	for_each_sibling_event(sibling, event->group_leader) {
+		if (sibling->pmu != event->pmu &&
+				!is_software_event(sibling))
+			return -EINVAL;
+	}
+
+	hwc->idx = -1;
+	return 0;
+}
+
+static void dmc620_pmu_read(struct perf_event *event)
+{
+	dmc620_pmu_event_update(event);
+}
+
+static void dmc620_pmu_start(struct perf_event *event, int flags)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+
+	event->hw.state = 0;
+	dmc620_pmu_event_set_period(event);
+
+	if (flags & PERF_EF_RELOAD) {
+		unsigned long prev_raw_count =
+			local64_read(&event->hw.prev_count);
+
+		dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_VALUE_OFFSET,
+			  (unsigned int)prev_raw_count);
+	}
+	dmc620_pmu_enable_counter(event);
+}
+
+static void dmc620_pmu_stop(struct perf_event *event, int flags)
+{
+	if (event->hw.state & PERF_HES_STOPPED)
+		return;
+
+	dmc620_pmu_disable_counter(event);
+	dmc620_pmu_event_update(event);
+	event->hw.state |= PERF_HES_STOPPED | PERF_HES_UPTODATE;
+}
+
+static int dmc620_pmu_add(struct perf_event *event, int flags)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	struct perf_event_attr *attr = &event->attr;
+	unsigned long reg;
+	int idx;
+
+	idx = dmc620_get_event_idx(event);
+	if (idx < 0)
+		return idx;
+
+	hwc->idx = idx;
+	dmc620_pmu->act_counter[idx] = event;
+	hwc->state = PERF_HES_STOPPED | PERF_HES_UPTODATE;
+
+	reg = ATTR_CFG_GET_FLD(attr, mask);
+	dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_MASK_31_00_OFFSET,
+			  lower_32_bits(reg));
+	dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_MASK_63_32_OFFSET,
+			  upper_32_bits(reg));
+
+	reg = ATTR_CFG_GET_FLD(attr, match);
+	dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_MATCH_31_00_OFFSET,
+			  lower_32_bits(reg));
+	dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_MATCH_63_32_OFFSET,
+			  upper_32_bits(reg));
+
+	reg = dmc620_event_to_counter_control(event);
+	dmc620_pmu_creg_write(dmc620_pmu,
+			  event->hw.idx, DMC620_PMU_COUNTER_CONTROL_OFFSET,
+			  (unsigned int)reg);
+
+	if (flags & PERF_EF_START)
+		dmc620_pmu_start(event, PERF_EF_RELOAD);
+
+	perf_event_update_userpage(event);
+	return 0;
+}
+
+static void dmc620_pmu_del(struct perf_event *event, int flags)
+{
+	struct dmc620_pmu *dmc620_pmu = to_dmc620_pmu(event->pmu);
+	struct hw_perf_event *hwc = &event->hw;
+	int idx = hwc->idx;
+
+	dmc620_pmu_stop(event, PERF_EF_UPDATE);
+	dmc620_pmu->act_counter[idx] = NULL;
+	clear_bit(idx, dmc620_pmu->used_mask);
+	perf_event_update_userpage(event);
+}
+
+static int dmc620_pmu_cpu_teardown(unsigned int cpu,
+				   struct hlist_node *node)
+{
+	struct dmc620_pmu_affinity *aff;
+	struct dmc620_pmu *dmc620_pmu;
+	unsigned int target;
+
+	aff = hlist_entry_safe(node, struct dmc620_pmu_affinity, node);
+	if (cpu != aff->cpu)
+		return 0;
+
+	target = cpumask_any_but(cpu_online_mask, cpu);
+	if (target >= nr_cpu_ids)
+		return 0;
+
+	/* We're only reading, but this isn't the place to be involving RCU */
+	mutex_lock(&dmc620_pmu_affinity_lock);
+	list_for_each_entry(dmc620_pmu, &aff->instance_list, affinity_list)
+		perf_pmu_migrate_context(&dmc620_pmu->pmu, aff->cpu, target);
+	mutex_unlock(&dmc620_pmu_affinity_lock);
+
+	WARN_ON(irq_set_affinity_hint(aff->irq, cpumask_of(target)));
+	aff->cpu = target;
+
+	return 0;
+}
+
+static int dmc620_pmu_device_probe(struct platform_device *pdev)
+{
+	struct dmc620_pmu *dmc620_pmu;
+	struct resource *res;
+	char *name;
+	int irq;
+	int ret;
+
+	dmc620_pmu = devm_kzalloc(&pdev->dev,
+			sizeof(struct dmc620_pmu), GFP_KERNEL);
+	if (!dmc620_pmu)
+		return -ENOMEM;
+
+	dmc620_pmu->pdev = pdev;
+	platform_set_drvdata(pdev, dmc620_pmu);
+
+	dmc620_pmu->pmu = (struct pmu) {
+		.capabilities	= PERF_PMU_CAP_NO_EXCLUDE,
+		.task_ctx_nr	= perf_invalid_context,
+		.event_init	= dmc620_pmu_event_init,
+		.add		= dmc620_pmu_add,
+		.del		= dmc620_pmu_del,
+		.start		= dmc620_pmu_start,
+		.stop		= dmc620_pmu_stop,
+		.read		= dmc620_pmu_read,
+		.attr_groups	= dmc620_pmu_attr_groups,
+	};
+
+	irq = platform_get_irq(pdev, 0);
+	if (irq < 0) {
+		dev_err(&pdev->dev, "failed to get IRQ (%d)\n", irq);
+		return irq;
+	}
+
+	ret = dmc620_pmu_get_affinity(dmc620_pmu, irq);
+	if (ret)
+		return ret;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	dmc620_pmu->base = devm_ioremap_resource(&pdev->dev, res);
+	if (IS_ERR(dmc620_pmu->base)) {
+		dev_err(&pdev->dev,
+			"ioremap failed for DMC-620 PMU resource\n");
+		ret = PTR_ERR(dmc620_pmu->base);
+		goto out_teardown_dev;
+	}
+
+	name = devm_kasprintf(&pdev->dev, GFP_KERNEL,
+				  "%s_%llx", DMC620_PMUNAME,
+				  (res->start) >> DMC620_PA_SHIFT);
+	if (!name) {
+		dev_err(&pdev->dev,
+			  "Create name failed, PMU @%pa\n", &res->start);
+		goto out_teardown_dev;
+	}
+
+	ret = perf_pmu_register(&dmc620_pmu->pmu, name, -1);
+	if (ret)
+		goto out_teardown_dev;
+
+	return 0;
+
+out_teardown_dev:
+	dmc620_pmu_put_affinity(dmc620_pmu);
+	synchronize_rcu();
+	return ret;
+}
+
+static int dmc620_pmu_device_remove(struct platform_device *pdev)
+{
+	struct dmc620_pmu *dmc620_pmu = platform_get_drvdata(pdev);
+
+	dmc620_pmu_put_affinity(dmc620_pmu);
+
+	/* perf will synchronise RCU before devres can free dmc620_pmu */
+	perf_pmu_unregister(&dmc620_pmu->pmu);
+
+	return 0;
+}
+
+static const struct acpi_device_id dmc620_acpi_match[] = {
+	{ "ARMHD620", 0},
+	{},
+};
+MODULE_DEVICE_TABLE(acpi, dmc620_acpi_match);
+static struct platform_driver dmc620_pmu_driver = {
+	.driver	= {
+		.name		= DMC620_DRVNAME,
+		.acpi_match_table = ACPI_PTR(dmc620_acpi_match),
+	},
+	.probe	= dmc620_pmu_device_probe,
+	.remove	= dmc620_pmu_device_remove,
+};
+
+static int __init dmc620_pmu_init(void)
+{
+	cpuhp_state_num = cpuhp_setup_state_multi(CPUHP_AP_ONLINE_DYN,
+				      DMC620_DRVNAME,
+				      NULL,
+				      dmc620_pmu_cpu_teardown);
+	if (cpuhp_state_num < 0)
+		return cpuhp_state_num;
+
+	return platform_driver_register(&dmc620_pmu_driver);
+}
+
+static void __exit dmc620_pmu_exit(void)
+{
+	platform_driver_unregister(&dmc620_pmu_driver);
+	cpuhp_remove_multi_state(cpuhp_state_num);
+}
+
+module_init(dmc620_pmu_init);
+module_exit(dmc620_pmu_exit);
+
+MODULE_DESCRIPTION("Perf driver for the Arm DMC-620 memory controller");
+MODULE_AUTHOR("Tuan Phan <tuanphan@os.amperecomputing.com");
+MODULE_LICENSE("GPL v2");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
