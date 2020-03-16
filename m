Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54438186CAA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:56:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=facsAj8XrczYA4p79xHBZlpl8i90ekvCSxy8TJBDf9Q=; b=tQ1VsFkU4MdyUj
	hIaGd4wgy5mNXlivdn0c1bB78Dm7opt0Q9Vu0Voa2BkhIjPVbmjoy0zysmO9clIu0RkF8bA9uPQ0K
	Wos6bjxnHsa8CjvXLTv1HRBnSxL1PLekEQuvRweB7QzbjVgqr1BlzL9vfTBFZVekTCQ+6qkZU8XMP
	uxOjrQBA8APJmxlXnh2DxAPt4dR9INWHbTGiROD4aPqvEqGxbETM+lapPf9ct9KTtLmJbMgY5MqpV
	oEX1JcivwfZNWLweh4dgaxjAx9VF7nTyU+hUGlCClqReM0Lr8tJt4W0PTMJBbeXm3ORSPYGz/KYjD
	8s+BKZSPq+Lnux2V8zeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqDd-0008Do-8t; Mon, 16 Mar 2020 13:55:49 +0000
Received: from mail-bn8nam11on2045.outbound.protection.outlook.com
 ([40.107.236.45] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqDO-0008Bu-QF
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:55:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H7lcAS40MJb9XD0iIlZI9xLsvNVtFudKMbpgkPVZOr7b5i4OUSu8Z+EPwjFUgJlX8DSA2dAev27TUIs7ryj0JLPNQk9RTADTRguRZr7/XK/GD97nofNk4xkqWy7oRM1B3nPhoJUP8zg3IijZDCXSqyHP1TDJZ48yGcW+VI/Gi1BLpzZ7cNH0jnc/XtfHyKmJCqnUmoHPNaI7JyD+f1ufTpFBw6FJ/wX5/BRczgBOioO7CsMfI4W9bugztDScux8a87rtMhqFd/1DJPHMMBMGlYLYDoXqJinZICmO8rPoGybej1WolyooXECzvvuoQ9miGnYKISM5WtDA04oZyNR5dA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uXIPSGmdJG21ikb/sK3lpgdrOg0gpNf68qdUnYJvn60=;
 b=PfUviCSaFtEWGxE/ITpl5VHtPgLjsgUq0hQL3JylQUi0qfXtnHmnL/it3VRKPEX8cPK5dQLLXU7Lhj9mzJnFg143fXQDtd7hMP+DA6eeADRqbffloSVgUV30jUdv7o7FYdFr+3wxnT0zXUOVpr0jcDDbTwBEmqWT2bB+WDoL9QSw7LLU37zmi6pQb+/cCXBYgTFmpBmqoz+fXyVHSDwi2N5yDtlAvxzJUojigo2dHntxpF92NUJNolZqmNBUS//9KooLXxjFdv/St+l7AzeX8BS8D8b4bN2q6qjqJSb8D7Y3w1IIRQWAKGx4vU5eyxX6qkyeJOF3S0WhyGnGP66DbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uXIPSGmdJG21ikb/sK3lpgdrOg0gpNf68qdUnYJvn60=;
 b=LbKDrk3AgQx43YJvGDyFGBZ53zCA/ym3QPVuKKrPRZrly0GEp8aeXXvUsNqQmGXyMqb5s41uiCRuRnAvBRB0dEH12+V+/wJBUr+FmTfLGN3K8oEwzZfVc6Xsr5D4n06BH6T+mwu+zCLzoTAww8cD7UPBESH9MEXvF8h0SUfSR7g=
Received: from DM5PR11CA0005.namprd11.prod.outlook.com (2603:10b6:3:115::15)
 by BL0PR02MB4691.namprd02.prod.outlook.com (2603:10b6:208:59::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Mon, 16 Mar
 2020 13:55:32 +0000
Received: from CY1NAM02FT008.eop-nam02.prod.protection.outlook.com
 (2603:10b6:3:115:cafe::8c) by DM5PR11CA0005.outlook.office365.com
 (2603:10b6:3:115::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18 via Frontend
 Transport; Mon, 16 Mar 2020 13:55:32 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT008.mail.protection.outlook.com (10.152.75.59) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Mon, 16 Mar 2020 13:55:31 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqDL-00041P-4n; Mon, 16 Mar 2020 06:55:31 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqDG-0003xV-1W; Mon, 16 Mar 2020 06:55:26 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02GDtFHv027781; 
 Mon, 16 Mar 2020 06:55:16 -0700
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqD5-0003l2-GY; Mon, 16 Mar 2020 06:55:15 -0700
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michals@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 1/3] irqchip: xilinx: Add support for multiple instances
Date: Mon, 16 Mar 2020 19:24:45 +0530
Message-Id: <20200316135447.30162-2-mubin.usman.sayyed@xilinx.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200316135447.30162-1-mubin.usman.sayyed@xilinx.com>
References: <20200316135447.30162-1-mubin.usman.sayyed@xilinx.com>
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(136003)(39850400004)(199004)(46966005)(103116003)(54906003)(478600001)(2906002)(81166006)(9786002)(26005)(8676002)(5660300002)(8936002)(81156014)(336012)(426003)(316002)(186003)(7696005)(107886003)(4326008)(356004)(2616005)(70586007)(36756003)(47076004)(6666004)(1076003)(70206006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB4691; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 97f0e5b8-4a9f-4aa6-0aa0-08d7c9b1b155
X-MS-TrafficTypeDiagnostic: BL0PR02MB4691:
X-Microsoft-Antispam-PRVS: <BL0PR02MB4691B9610010BE732D36BF88A1F90@BL0PR02MB4691.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:854;
X-Forefront-PRVS: 03449D5DD1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7ook9cREjHgUHXJIXNMD2E5Nlw3157smkOHPCcHLIubKLKvvXw48vgYJu5ZpGbeF8Tpef6cNJaHrRMwnhSs1vmeDu2Z3ZVNLzTQM9ppbOs8MaE4MLmuDcEeOMtQQJhQYz/GyozXye5uR9xUfOsFRZ8+akxUBE5/9diFJYjXYo+D0I29NcD85mpeUO/yyc8U/93zwgVMMXdT3aoV62ZACx+BPGv3mojqenDYJu7Sv1YExw5C3/rwjF7Guf4+qIlVY0G3O5E4t7hdprcU++9Enkw5bLFeSUR5LklIBY8m8MOmlTDtDxyLTsvJ/X+bdP1UDm4mZ/gRdUcz3rWl62A8HAd5oYDswKtFK2xesND5eoS/iBC3TOLvzQLaSjC+jxLC+HJBamdURtccYxES75+mAoDcWXl7i/NAw8twbgMaQp150ctCFKZOC6XqWevTpV80P74rodB1PEVyqGjVYbU0IgBqqR2s+OHIsXvVdtzlYtbS+EvWXFAaPNmNv1mh0Sz+lA3C1h5e5RaHWDGSVOqbcIQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 13:55:31.5617 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 97f0e5b8-4a9f-4aa6-0aa0-08d7c9b1b155
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB4691
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_065534_921775_CE50FF82 
X-CRM114-Status: GOOD (  19.27  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.45 listed in list.dnswl.org]
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
 drivers/irqchip/irq-xilinx-intc.c | 121 ++++++++++++++++++------------
 1 file changed, 71 insertions(+), 50 deletions(-)

diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index e3043ded8973..65b77720ef2e 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -38,29 +38,32 @@ struct xintc_irq_chip {
 	void		__iomem *base;
 	struct		irq_domain *root_domain;
 	u32		intr_mask;
+	struct		irq_chip *intc_dev;
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
 
@@ -69,30 +72,35 @@ static void intc_enable_or_unmask(struct irq_data *d)
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
@@ -103,13 +111,28 @@ static struct irq_chip intc_dev = {
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
 
@@ -118,15 +141,18 @@ unsigned int xintc_get_irq(void)
 
 static int xintc_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
 {
-	if (xintc_irqc->intr_mask & (1 << hw)) {
-		irq_set_chip_and_handler_name(irq, &intc_dev,
-						handle_edge_irq, "edge");
+	struct xintc_irq_chip *irqc = d->host_data;
+
+	if (irqc->intr_mask & BIT(hw)) {
+		irq_set_chip_and_handler_name(irq, irqc->intc_dev,
+					      handle_edge_irq, "edge");
 		irq_clear_status_flags(irq, IRQ_LEVEL);
 	} else {
-		irq_set_chip_and_handler_name(irq, &intc_dev,
-						handle_level_irq, "level");
+		irq_set_chip_and_handler_name(irq, irqc->intc_dev,
+					      handle_level_irq, "level");
 		irq_set_status_flags(irq, IRQ_LEVEL);
 	}
+	irq_set_chip_data(irq, irqc);
 	return 0;
 }
 
@@ -138,12 +164,14 @@ static const struct irq_domain_ops xintc_irq_domain_ops = {
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
+		if (pending == 0U)
 			break;
 		generic_handle_irq(pending);
 	} while (true);
@@ -153,28 +181,19 @@ static void xil_intc_irq_handler(struct irq_desc *desc)
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
@@ -183,34 +202,35 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 		irqc->intr_mask = 0;
 	}
 
-	if (irqc->intr_mask >> nr_irq)
+	if (irqc->intr_mask >> irqc->nr_irq)
 		pr_warn("irq-xilinx: mismatch in kind-of-intr param\n");
 
 	pr_info("irq-xilinx: %pOF: num_irq=%d, edge=0x%x\n",
-		intc, nr_irq, irqc->intr_mask);
+		intc, irqc->nr_irq, irqc->intr_mask);
 
+	irqc->intc_dev = &intc_dev;
 
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
@@ -222,16 +242,17 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
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
