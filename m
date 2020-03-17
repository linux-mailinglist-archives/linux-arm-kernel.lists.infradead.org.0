Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCA0F18849D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:57:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HNn3iOr6eUKl98VdwDPCd8t/bJvkmsfZhavazC4uAcs=; b=W5BG1p7WbsC/gF
	hyzjo2gZ6NSVzsDYKCZYyWOMab+FCWMwfq2+Mpfa7q2rfv5PzW5zHw6W0viDnrMHwq3mT6WBGlkpo
	j3Iqza7i1DSxxT2EOMfjP/G6GcT7TrKWz9xrAOqDSGNstBXcyZqEgZMTjXnPvqtWcHnzWLqiqwcnh
	yEIRuXP6l29qPQshQPvoHrh+wFxiq5VmcQOy5UjzxOrDNmabi6ECCck4qcK8gYDxD4V6207a68nRy
	Hb5VsemlRwl0Ro75HkeHelzP7SQ+45dAemMe1OhNd0WmdJGpd3mCrFhYleJGH1vGQ7V5z8qZdVAiF
	qiU6z2qOuTVetiUN9Hfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBmn-0004WM-VM; Tue, 17 Mar 2020 12:57:33 +0000
Received: from mail-dm6nam10on2061.outbound.protection.outlook.com
 ([40.107.93.61] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBmV-0004SD-4U
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:57:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mZnZoiGYxZGYM6dM62mcz39h6WGBY3EtRvKn6eG5HWUa4igaXQHWS6GWbdnKlzTQgOZAl5H7dYBgHvXzX/8NLL/LJn1kTZCt0WYf51NDI9CGHjHaaHOx731xYyz8jynLn8ZqXazfQpWaQOGMgqAkIHG4z4IQ4q1S4K8w9wNFDg5Asjb+afh7nSmIGydru2YdJ3ALHNKE1Ym+zY5+ouQJsyJLrWOrRpCfsSQ7L7JnpNYcCy1m7nNQHRha3Z6t5F7StGsCKCX5q+KXb4GbneZBmXh45nWTtsQnoDNWePQM7eawjXCvE3N7P6E36iazXy72birQ+EBQFsJSlWs9QAQyxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9pfiK3SYYKTAHEDr2XeBU9oP9k/ezn4KhZZUWq3NcLU=;
 b=iqKkJLx2A1il+UgicFYaVVUsWclqB3tuDOJZGLwvxAOtp8Np8c6WH0euvLzWc9Dq4WtXT4Yl6SnfKKMTnX+AL8N/ieOjNrQu1EJtLbBb0st5kWVlKFgf2LiGQsCtVKRKiWQXmUHS4o7Ye2L7sKkwwwmKnyhJrGCsDXLHPhb9CBtXfQ9iSucDDDsBHCevvFu87yQ2k6Xd1Q16ZdsrYo4ZAzBTaIAWDgzQ53gRAz1/PxtzXgobjg8Iog4O9nDoy+oBXU1jvQ8+uVcPjzGzZNQLqQunqNDCnQDfxhXznKkC58AEvr6hUkmY6C2mRaKoBjuWZzCqZBSqPG0Ql2rWF/DxbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9pfiK3SYYKTAHEDr2XeBU9oP9k/ezn4KhZZUWq3NcLU=;
 b=r1ZUSvx1xgxS/8V6H8sKlaI6FTHvLD9oJQlp9RFplxhtd7XvZVuf0g2r2cXRcH4ybm5Ya0ZJVbJgkeJaQJpiki5JL4mrNAJ5FF35gZN46wVsbunZeKQ8mV57KZ4WK//WJPGa4aorBFwpX3IBDg5TlSoiuqg3zRXcK8/yK8o1jZU=
Received: from MN2PR16CA0038.namprd16.prod.outlook.com (2603:10b6:208:234::7)
 by BN7PR02MB5252.namprd02.prod.outlook.com (2603:10b6:408:2b::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22; Tue, 17 Mar
 2020 12:57:12 +0000
Received: from BL2NAM02FT019.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:234:cafe::dc) by MN2PR16CA0038.outlook.office365.com
 (2603:10b6:208:234::7) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.15 via Frontend
 Transport; Tue, 17 Mar 2020 12:57:12 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT019.mail.protection.outlook.com (10.152.77.166) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Tue, 17 Mar 2020 12:57:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmP-00020Y-Va; Tue, 17 Mar 2020 05:57:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmK-0001gV-SE; Tue, 17 Mar 2020 05:57:04 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02HCv0R6026713; 
 Tue, 17 Mar 2020 05:57:00 -0700
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmF-0001dT-WF; Tue, 17 Mar 2020 05:57:00 -0700
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michals@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 1/4] irqchip: xilinx: Add support for multiple instances
Date: Tue, 17 Mar 2020 18:25:57 +0530
Message-Id: <20200317125600.15913-2-mubin.usman.sayyed@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(346002)(396003)(39860400002)(376002)(199004)(46966005)(2616005)(186003)(336012)(426003)(103116003)(9786002)(2906002)(26005)(47076004)(356004)(70206006)(4326008)(70586007)(6666004)(7696005)(5660300002)(107886003)(81156014)(316002)(54906003)(8936002)(81166006)(36756003)(478600001)(1076003)(8676002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB5252; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a13a6369-2f38-40d7-e121-08d7ca72b5a7
X-MS-TrafficTypeDiagnostic: BN7PR02MB5252:
X-Microsoft-Antispam-PRVS: <BN7PR02MB52526101923A1F7A124E4EF7A1F60@BN7PR02MB5252.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:854;
X-Forefront-PRVS: 0345CFD558
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: R32oTESmtH1oTOvaU1wtXwWBVgfGvx9DYPV55Eo10bVi9zpQ7cDmeN9MiVQTEBfSUcSNuy/2WWwFcDMYzayHKCA+REU6LuDRSDogxrR7lqHLFsKm+PUt0jSIULhkwMNs+cCFIMoScq9FUH7PPiewXR+Wiq5egU5xSMjqzsNVBvYzgleC7x2TYr62Xslhe6c7da2pFQYAvC8TQZEQxSqEz/Xe7P98sog4w4K/5IA3qjjn6OeMGcFZ10oKNDMmR3CjsfFVwGI/zLwi4SIDshuACenzDl5KgDH9MkR0OhgDFT1/oL4UCtTvb8sjRe8fiNeYC5YIGuk2KE2ml1YR4s11SJq7Rqn9nudBC6YTC9ir+mnXlZABa9yoetJpisdPB5PNOUVASQN6L834uo7eRtgi1Qvt27kSeO56DaPt0ZSpEBFYxlZwD28O26caJKcqEMrFOFW/K81LmY/96G28TJFYKN2psxTjmWwoYTaMi1r7JH7Uzyva1jVXOtDPzTh1uqNNoNwDp9mkFn4lqDcXfSMsrA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 12:57:10.5914 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a13a6369-2f38-40d7-e121-08d7ca72b5a7
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB5252
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_055715_283381_69C861DE 
X-CRM114-Status: GOOD (  19.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.61 listed in list.dnswl.org]
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
Cc: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>,
 Anirudha Sarangi <anirudha.sarangi@xilinx.com>, linux-kernel@vger.kernel.org,
 anirudh@xilinx.com, sivadur@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>

Added support for cascaded interrupt controllers.

Following cascaded configurations have been tested,

- peripheral->xilinx-intc->xilinx-intc->gic->Cortexa53 processor
  on zcu102 board
- peripheral->xilinx-intc->xilinx-intc->microblaze processor
  on kcu105 board

Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
---
Changes for v5:
        - Fixed review comments from Marc - removed intc_dev
          from xintc_irq_chip structure
Changes for v4:
        - Fixed review comments from Thomas - updated commit
          message, variable declarations changed to reverse
          fir tree and cleaned up some code.

Changes for v3:
        - Modified prototype of xintc_write/xintc_read
        - Fixed review comments regarding indentation/variable
          names, used BIT
        - Modified xintc_get_irq_local to return 0
          in case of failure/no pending interrupts
        - Fixed return type of xintc_read
        - Reverted changes related to device name and
          kept intc_dev as static

Changes for v2:
        - Removed write_fn/read_fn hooks, used xintc_write/
          xintc_read directly
        - Moved primary_intc declaration after xintc_irq_chip
---
 drivers/irqchip/irq-xilinx-intc.c | 115 +++++++++++++++++-------------
 1 file changed, 67 insertions(+), 48 deletions(-)

diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index e3043ded8973..34593fa34c68 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -38,29 +38,31 @@ struct xintc_irq_chip {
 	void		__iomem *base;
 	struct		irq_domain *root_domain;
 	u32		intr_mask;
+	u32		nr_irq;
 };
 
-static struct xintc_irq_chip *xintc_irqc;
+static struct xintc_irq_chip *primary_intc;
 
-static void xintc_write(int reg, u32 data)
+static void xintc_write(struct xintc_irq_chip *irqc, int reg, u32 data)
 {
 	if (static_branch_unlikely(&xintc_is_be))
-		iowrite32be(data, xintc_irqc->base + reg);
+		iowrite32be(data, irqc->base + reg);
 	else
-		iowrite32(data, xintc_irqc->base + reg);
+		iowrite32(data, irqc->base + reg);
 }
 
-static unsigned int xintc_read(int reg)
+static u32 xintc_read(struct xintc_irq_chip *irqc, int reg)
 {
 	if (static_branch_unlikely(&xintc_is_be))
-		return ioread32be(xintc_irqc->base + reg);
+		return ioread32be(irqc->base + reg);
 	else
-		return ioread32(xintc_irqc->base + reg);
+		return ioread32(irqc->base + reg);
 }
 
 static void intc_enable_or_unmask(struct irq_data *d)
 {
-	unsigned long mask = 1 << d->hwirq;
+	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
+	unsigned long mask = BIT(d->hwirq);
 
 	pr_debug("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);
 
@@ -69,30 +71,35 @@ static void intc_enable_or_unmask(struct irq_data *d)
 	 * acks the irq before calling the interrupt handler
 	 */
 	if (irqd_is_level_type(d))
-		xintc_write(IAR, mask);
+		xintc_write(irqc, IAR, mask);
 
-	xintc_write(SIE, mask);
+	xintc_write(irqc, SIE, mask);
 }
 
 static void intc_disable_or_mask(struct irq_data *d)
 {
+	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
+
 	pr_debug("irq-xilinx: disable: %ld\n", d->hwirq);
-	xintc_write(CIE, 1 << d->hwirq);
+	xintc_write(irqc, CIE, BIT(d->hwirq));
 }
 
 static void intc_ack(struct irq_data *d)
 {
+	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
+
 	pr_debug("irq-xilinx: ack: %ld\n", d->hwirq);
-	xintc_write(IAR, 1 << d->hwirq);
+	xintc_write(irqc, IAR, BIT(d->hwirq));
 }
 
 static void intc_mask_ack(struct irq_data *d)
 {
-	unsigned long mask = 1 << d->hwirq;
+	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
+	unsigned long mask = BIT(d->hwirq);
 
 	pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
-	xintc_write(CIE, mask);
-	xintc_write(IAR, mask);
+	xintc_write(irqc, CIE, mask);
+	xintc_write(irqc, IAR, mask);
 }
 
 static struct irq_chip intc_dev = {
@@ -103,13 +110,28 @@ static struct irq_chip intc_dev = {
 	.irq_mask_ack = intc_mask_ack,
 };
 
+static unsigned int xintc_get_irq_local(struct xintc_irq_chip *irqc)
+{
+	unsigned int irq = 0;
+	u32 hwirq;
+
+	hwirq = xintc_read(irqc, IVR);
+	if (hwirq != -1U)
+		irq = irq_find_mapping(irqc->root_domain, hwirq);
+
+	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
+
+	return irq;
+}
+
 unsigned int xintc_get_irq(void)
 {
-	unsigned int hwirq, irq = -1;
+	unsigned int irq = -1;
+	u32 hwirq;
 
-	hwirq = xintc_read(IVR);
+	hwirq = xintc_read(primary_intc, IVR);
 	if (hwirq != -1U)
-		irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);
+		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
 
 	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
 
@@ -118,15 +140,18 @@ unsigned int xintc_get_irq(void)
 
 static int xintc_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
 {
-	if (xintc_irqc->intr_mask & (1 << hw)) {
+	struct xintc_irq_chip *irqc = d->host_data;
+
+	if (irqc->intr_mask & BIT(hw)) {
 		irq_set_chip_and_handler_name(irq, &intc_dev,
-						handle_edge_irq, "edge");
+					      handle_edge_irq, "edge");
 		irq_clear_status_flags(irq, IRQ_LEVEL);
 	} else {
 		irq_set_chip_and_handler_name(irq, &intc_dev,
-						handle_level_irq, "level");
+					      handle_level_irq, "level");
 		irq_set_status_flags(irq, IRQ_LEVEL);
 	}
+	irq_set_chip_data(irq, irqc);
 	return 0;
 }
 
@@ -138,12 +163,14 @@ static const struct irq_domain_ops xintc_irq_domain_ops = {
 static void xil_intc_irq_handler(struct irq_desc *desc)
 {
 	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct xintc_irq_chip *irqc;
 	u32 pending;
 
+	irqc = irq_data_get_irq_handler_data(&desc->irq_data);
 	chained_irq_enter(chip, desc);
 	do {
-		pending = xintc_get_irq();
-		if (pending == -1U)
+		pending = xintc_get_irq_local(irqc);
+		if (pending == 0)
 			break;
 		generic_handle_irq(pending);
 	} while (true);
@@ -153,28 +180,19 @@ static void xil_intc_irq_handler(struct irq_desc *desc)
 static int __init xilinx_intc_of_init(struct device_node *intc,
 					     struct device_node *parent)
 {
-	u32 nr_irq;
-	int ret, irq;
 	struct xintc_irq_chip *irqc;
-
-	if (xintc_irqc) {
-		pr_err("irq-xilinx: Multiple instances aren't supported\n");
-		return -EINVAL;
-	}
+	int ret, irq;
 
 	irqc = kzalloc(sizeof(*irqc), GFP_KERNEL);
 	if (!irqc)
 		return -ENOMEM;
-
-	xintc_irqc = irqc;
-
 	irqc->base = of_iomap(intc, 0);
 	BUG_ON(!irqc->base);
 
-	ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", &nr_irq);
+	ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", &irqc->nr_irq);
 	if (ret < 0) {
 		pr_err("irq-xilinx: unable to read xlnx,num-intr-inputs\n");
-		goto err_alloc;
+		goto error;
 	}
 
 	ret = of_property_read_u32(intc, "xlnx,kind-of-intr", &irqc->intr_mask);
@@ -183,34 +201,34 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 		irqc->intr_mask = 0;
 	}
 
-	if (irqc->intr_mask >> nr_irq)
+	if (irqc->intr_mask >> irqc->nr_irq)
 		pr_warn("irq-xilinx: mismatch in kind-of-intr param\n");
 
 	pr_info("irq-xilinx: %pOF: num_irq=%d, edge=0x%x\n",
-		intc, nr_irq, irqc->intr_mask);
+		intc, irqc->nr_irq, irqc->intr_mask);
 
 
 	/*
 	 * Disable all external interrupts until they are
 	 * explicity requested.
 	 */
-	xintc_write(IER, 0);
+	xintc_write(irqc, IER, 0);
 
 	/* Acknowledge any pending interrupts just in case. */
-	xintc_write(IAR, 0xffffffff);
+	xintc_write(irqc, IAR, 0xffffffff);
 
 	/* Turn on the Master Enable. */
-	xintc_write(MER, MER_HIE | MER_ME);
-	if (!(xintc_read(MER) & (MER_HIE | MER_ME))) {
+	xintc_write(irqc, MER, MER_HIE | MER_ME);
+	if (xintc_read(irqc, MER) != (MER_HIE | MER_ME)) {
 		static_branch_enable(&xintc_is_be);
-		xintc_write(MER, MER_HIE | MER_ME);
+		xintc_write(irqc, MER, MER_HIE | MER_ME);
 	}
 
-	irqc->root_domain = irq_domain_add_linear(intc, nr_irq,
+	irqc->root_domain = irq_domain_add_linear(intc, irqc->nr_irq,
 						  &xintc_irq_domain_ops, irqc);
 	if (!irqc->root_domain) {
 		pr_err("irq-xilinx: Unable to create IRQ domain\n");
-		goto err_alloc;
+		goto error;
 	}
 
 	if (parent) {
@@ -222,16 +240,17 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 		} else {
 			pr_err("irq-xilinx: interrupts property not in DT\n");
 			ret = -EINVAL;
-			goto err_alloc;
+			goto error;
 		}
 	} else {
-		irq_set_default_host(irqc->root_domain);
+		primary_intc = irqc;
+		irq_set_default_host(primary_intc->root_domain);
 	}
 
 	return 0;
 
-err_alloc:
-	xintc_irqc = NULL;
+error:
+	iounmap(irqc->base);
 	kfree(irqc);
 	return ret;
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
