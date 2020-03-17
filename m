Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A288B18849F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:58:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3BfXjuNe29HvsYJq+zTWKB2Bo2o8i+B1ZIe+xFCuDek=; b=aHUYgdBOArlp9U
	Le89LkrBLwBptznyGEupwwK16NL53nStgByAFzfihMOaUjL+mJT4mHA1vUFIlWZwxYRE+GTOeXHQA
	HRlOSsvSFkWIliR1pIKoYdQthA95zm0fx+bACi4qiPHRyrfSxSjCQfkjlmugwnVF9t4Il0y2vIUUB
	qsHntR/lvDG/NVI6+YeEqXuHEQUg3fLcis8jptShB+DGD82ocz6kNsCYQB5ORHve75fYaS8Hfiovg
	SRg/uOfBbiJNUoVDnfhPZFxrPpvT21l8/B4rMVvOxWOIntTVU1ReSevnRglzhCedo5IJteT/Fv/4w
	yiFolmbe4reqdFMi/ZsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBnF-0004s5-RI; Tue, 17 Mar 2020 12:58:01 +0000
Received: from mail-mw2nam12on2049.outbound.protection.outlook.com
 ([40.107.244.49] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBme-0004aR-GJ
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:57:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OFmmT+7A53WpxwJuC3JdcSTVbpZobWsMOe9HsQFjSfittpsG+dVf5S120LmPdTkeBBW40zl0p2upczBBbFYpsP5ErtZYiFlzsPayI0XZbTsoKoVIx0pljN5o3Z+h73BfotHbo4HJEL+uf2NeYy98OqtX+qYivBcIe/TV1YfslfMX3zirbFM0WPdaLNR55ARncYa+Siox3tEb0q/XoCxYxz5TZBB0ShKx71FqU0mdfwkTt6xQLf2+x6/3j76T3w7et2TJdq0v1FeY9Mg44/TV/76B93nob/bKneo1yHsthf7YtGUaVIVE7RIAJ5bO8J64fyJk1NMsBxa6ADpeW2Ry6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a0M4RkKOqKSyaoiz5/CPwjE74bW44QYMekf6640LJkI=;
 b=V7Btx9syECERoz5y9x3n8Vgq+rIVdzaIF9STOsB0YmjUDUzMpDpW/dfMFUp9H4yxVuDpW97HH5Lu0LTNVpkM/N70bPbRKJ/2VRUMtnLgxdlMJfaM77oRwhMOhfkTvTeH91ezA6Uylb0Gzjt7Vm2sfSRwmbs540StiW9rXHdCFEaQESHALmAEP0YuNhqD77A2P5h4dQDx7EadRVUbIcF+RBpyiXK2R1prXgAE8sDckli6xegB4fUFIt83y7tqlnfrbN/D5q8KdTMfhTLf3goYdxX85clUsLcWkh0XLU9rnm8yymhoXz+jGD7H9rRcJooRIeBgIH8YouZPWavr4DvN6Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=a0M4RkKOqKSyaoiz5/CPwjE74bW44QYMekf6640LJkI=;
 b=WvTLQ23PKwtA6zxmVkst7tbu7eoc9qTzvBalsYnXGRdiz3/XUTH4x+U9lklb51Ne8TFSZrV77UVI10wdA1JIuIM50Ev9LsKD6+T5NfesD/qAJIWWwJ4SN/Y2cOf5jARhbp4EU0260i+465hjEfE5CYQ5YpCfyndLg6/GgefbrBU=
Received: from MN2PR19CA0013.namprd19.prod.outlook.com (2603:10b6:208:178::26)
 by BN6PR02MB2244.namprd02.prod.outlook.com (2603:10b6:404:29::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Tue, 17 Mar
 2020 12:57:21 +0000
Received: from BL2NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:178:cafe::6e) by MN2PR19CA0013.outlook.office365.com
 (2603:10b6:208:178::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18 via Frontend
 Transport; Tue, 17 Mar 2020 12:57:21 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT017.mail.protection.outlook.com (10.152.77.174) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Tue, 17 Mar 2020 12:57:20 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBma-00020g-5q; Tue, 17 Mar 2020 05:57:20 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmV-0001hW-2X; Tue, 17 Mar 2020 05:57:15 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02HCvBx1026755; 
 Tue, 17 Mar 2020 05:57:11 -0700
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmR-0001dT-0u; Tue, 17 Mar 2020 05:57:11 -0700
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michals@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 3/4] irqchip: xilinx: Enable generic irq multi handler
Date: Tue, 17 Mar 2020 18:25:59 +0530
Message-Id: <20200317125600.15913-4-mubin.usman.sayyed@xilinx.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200317125600.15913-1-mubin.usman.sayyed@xilinx.com>
References: <20200317125600.15913-1-mubin.usman.sayyed@xilinx.com>
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(346002)(396003)(39860400002)(199004)(46966005)(5660300002)(9786002)(54906003)(81166006)(81156014)(107886003)(478600001)(316002)(8676002)(8936002)(2906002)(7696005)(4326008)(356004)(6666004)(103116003)(2616005)(36756003)(1076003)(70206006)(47076004)(186003)(426003)(70586007)(26005)(336012)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2244; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 86fd1267-942a-4c2e-a921-08d7ca72bb18
X-MS-TrafficTypeDiagnostic: BN6PR02MB2244:
X-Microsoft-Antispam-PRVS: <BN6PR02MB224440AB19416A0CCCF1902CA1F60@BN6PR02MB2244.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0345CFD558
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: JJp/YdAMit1q3c625NdvPGISZzviIvPS7VG2Wv2y5utwecltG59t0d8tenHeI17OMVr65fzZjpjCbCa6L050snu5VlL9DYfklZXOsDup+vmCPq0jLSLjyjXC6sQoFVLiiG3rj/ypZDVaG/ukZV0vPclHxHEZrxYY1++hCVEyiwgMUqpszezAgyaPVKWfau3fiTdzkCixZM36NFrh/ZdzVFb02fZBj92FF2fi8BGado+W3komf52nUy14H+v3Lz3LgJgfgPgLc55mgCyNAP8KysMfq0fUjytYvJ0LXQaft34oN+8FEWhzO0N5s6veFdwOSmgXQ/xBhMOae45UwR4F3P3ZbPgB9vbHrvuRfOsXGLtxkpAWEdgFibsfb4xOr0kPaV1o21udOqnyKSfFE0gJ0Vn075KSB1Vvk/oGFJRp6Z/G+l4uDvcQov92nplmdVonavyVK+enN54ufsQ/tmflQJkD0tUvA4Il5j+9nbJBDF3eCOItzi4+rqxssx4XtLr+ZZvyy5D9guJmjkePOfBORtuAWaZ4iAD8q8zUb8bdS4A=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 12:57:20.7800 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 86fd1267-942a-4c2e-a921-08d7ca72bb18
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2244
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_055724_572892_ED8FA439 
X-CRM114-Status: GOOD (  14.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.49 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 anirudh@xilinx.com, sivadur@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michal Simek <michal.simek@xilinx.com>

Register default arch handler via driver instead of directly pointing to
xilinx intc controller. This patch makes architecture code more generic.

Driver calls generic domain specific irq handler which does the most of
things self. Also get rid of concurrent_irq counting which hasn't been
exported anywhere.
Based on this loop was also optimized by using do/while loop instead of
goto loop.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Reviewed-by: Stefan Asserhall <stefan.asserhall@xilinx.com>
---
 arch/microblaze/Kconfig           |  2 ++
 arch/microblaze/include/asm/irq.h |  3 ---
 arch/microblaze/kernel/irq.c      | 21 +------------------
 drivers/irqchip/irq-xilinx-intc.c | 34 ++++++++++++++++++-------------
 4 files changed, 23 insertions(+), 37 deletions(-)

diff --git a/arch/microblaze/Kconfig b/arch/microblaze/Kconfig
index a75896f18e58..b5a87c294925 100644
--- a/arch/microblaze/Kconfig
+++ b/arch/microblaze/Kconfig
@@ -47,6 +47,8 @@ config MICROBLAZE
 	select CPU_NO_EFFICIENT_FFS
 	select MMU_GATHER_NO_RANGE if MMU
 	select SPARSE_IRQ
+	select GENERIC_IRQ_MULTI_HANDLER
+	select HANDLE_DOMAIN_IRQ
 
 # Endianness selection
 choice
diff --git a/arch/microblaze/include/asm/irq.h b/arch/microblaze/include/asm/irq.h
index eac2fb4b3fb9..5166f0893e2b 100644
--- a/arch/microblaze/include/asm/irq.h
+++ b/arch/microblaze/include/asm/irq.h
@@ -14,7 +14,4 @@
 struct pt_regs;
 extern void do_IRQ(struct pt_regs *regs);
 
-/* should be defined in each interrupt controller driver */
-extern unsigned int xintc_get_irq(void);
-
 #endif /* _ASM_MICROBLAZE_IRQ_H */
diff --git a/arch/microblaze/kernel/irq.c b/arch/microblaze/kernel/irq.c
index 903dad822fad..0b37dde60a1e 100644
--- a/arch/microblaze/kernel/irq.c
+++ b/arch/microblaze/kernel/irq.c
@@ -20,29 +20,10 @@
 #include <linux/irqchip.h>
 #include <linux/of_irq.h>
 
-static u32 concurrent_irq;
-
 void __irq_entry do_IRQ(struct pt_regs *regs)
 {
-	unsigned int irq;
-	struct pt_regs *old_regs = set_irq_regs(regs);
 	trace_hardirqs_off();
-
-	irq_enter();
-	irq = xintc_get_irq();
-next_irq:
-	BUG_ON(!irq);
-	generic_handle_irq(irq);
-
-	irq = xintc_get_irq();
-	if (irq != -1U) {
-		pr_debug("next irq: %d\n", irq);
-		++concurrent_irq;
-		goto next_irq;
-	}
-
-	irq_exit();
-	set_irq_regs(old_regs);
+	handle_arch_irq(regs);
 	trace_hardirqs_on();
 }
 
diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index 1d3d273309bd..ea741818a1ce 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -124,20 +124,6 @@ static unsigned int xintc_get_irq_local(struct xintc_irq_chip *irqc)
 	return irq;
 }
 
-unsigned int xintc_get_irq(void)
-{
-	unsigned int irq = -1;
-	u32 hwirq;
-
-	hwirq = xintc_read(primary_intc, IVR);
-	if (hwirq != -1U)
-		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
-
-	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
-
-	return irq;
-}
-
 static int xintc_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
 {
 	struct xintc_irq_chip *irqc = d->host_data;
@@ -177,6 +163,25 @@ static void xil_intc_irq_handler(struct irq_desc *desc)
 	chained_irq_exit(chip, desc);
 }
 
+static void xil_intc_handle_irq(struct pt_regs *regs)
+{
+	u32 hwirq;
+	struct xintc_irq_chip *irqc = primary_intc;
+
+	do {
+		hwirq = xintc_read(irqc, IVR);
+		if (likely(hwirq != -1U)) {
+			int ret;
+
+			ret = handle_domain_irq(irqc->root_domain, hwirq, regs);
+			WARN_ONCE(ret, "Unhandled HWIRQ %d\n", hwirq);
+			continue;
+		}
+
+		break;
+	} while (1);
+}
+
 static int __init xilinx_intc_of_init(struct device_node *intc,
 					     struct device_node *parent)
 {
@@ -246,6 +251,7 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 	} else {
 		primary_intc = irqc;
 		irq_set_default_host(primary_intc->root_domain);
+		set_handle_irq(xil_intc_handle_irq);
 	}
 
 	return 0;
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
