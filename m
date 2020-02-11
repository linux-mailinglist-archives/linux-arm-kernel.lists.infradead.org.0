Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8A3159960
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 20:04:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tGhrwzM+S1N1eRg8qEdgaTL9eCK+fDypuZbRRCsdo9c=; b=lavihx6yfnOnfz
	OReANdXcsOje/6qvlKfDchhtC6ZkhUtWjflHm1BM92zXSycuPp+EA5xqlDe8eBjcGvFYA0d3kJo+t
	9HIf77rlJkxVrJmFu9okKFdCpgccdxuxNvtVnXxBTnPsfxQ5mH+tQRGRshsSK8IhMh23QWZvUyjHV
	K0Ah2YoLcsuA0dulgrXH8szzdF2py5elP7tBoEU+/lj+Um80LHREZz7TXyUtRbr1lG6IbI9+JP015
	m9B8VQRtPwSwgovt8jWdKuyFAv5snOd/zaCF6hMTVHgmI65OiI/lYJWiYn+tVveaU7TuPQEvQZRUM
	xoh1JgLztNwoXRk3tuRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1apF-0006jw-4j; Tue, 11 Feb 2020 19:04:01 +0000
Received: from mail-mw2nam10on2074.outbound.protection.outlook.com
 ([40.107.94.74] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1aou-0006gS-S1
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 19:03:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=imXy9Z2kvK80ujDyt3o/Gfflkx8iyvEDVkvTiqfrhJyVcv8I8Yf/Qev44z8++Ga+tcpnL9DdJpeGGo43sZW/pV9LwpRWy/OAl723pDjGX7l2RNXxV2gtfnW6aeNNwirA99y0ha8PDOxRK4JvHGzXxKFNLT8G4tV06UHUeibUpP03r0LntfbV/JeWoLkUdr9tOZiLShKWyAR6by+fv17kCho2NJtC+9bCYu5Sp8EQkixavOohPyeBHhzIU5A4W06EVGpTQGCXdsjhMmu8nUB67djVyBjhHp9f8X9oF4MwY8lEzsZoV5xEn+GxqFEBvQ2AZy7cE0+IsRmurjM0ce/uyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pq+txHr9+Vvn3UAli4bGRo4uu6/+oPo4OIvzYDkO3KE=;
 b=QlT+S+WIVagi0RGCtrI8r+j4doauPVEqwKz0j8BqtX/I5rEjg89dUvaOU263k8zEwYtC6Knxq674YxIE5ZtbixZEDRnBwrigXM57CkYoreehVXtIJEeKwjt6lKPW91r+vawqGyvg0DtxtloaKBQKyj3GACV0zctQ7oQ9QFXPlOjRKrg0VjV/MjCI/eB9hL7lcUT2LfuVv+u/ZbMb5ZB7cGU2Z3zsRXHC23gcHTxEbEftvmezDK5IKQae7SiYs51tQfMkKlruxjI7hkQ4isWirQIg7l5yHXRT4hp6FbfYkd6aIFo74TWCc3+F8AsUW93QYH/UodmW7NFP5Vldr3bXLA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linutronix.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Pq+txHr9+Vvn3UAli4bGRo4uu6/+oPo4OIvzYDkO3KE=;
 b=kSrhY5v7efD6zLsWmbDBermeS4vNN1sW99xgGXkDYsR3ENNqgb692FVjVzgUPANh7umuCqVGohk9Bq+oogZTREv8rJ8CoEVEKFrFJCr27TGwStBWZ6puoNNXyApxi1ceEXV7wrcneVxHFRe8ZQkishpNtAgaxVYHLadxOazvDpM=
Received: from BN6PR02CA0048.namprd02.prod.outlook.com (2603:10b6:404:5f::34)
 by BYAPR02MB4341.namprd02.prod.outlook.com (2603:10b6:a03:56::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.25; Tue, 11 Feb
 2020 19:03:38 +0000
Received: from SN1NAM02FT041.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by BN6PR02CA0048.outlook.office365.com
 (2603:10b6:404:5f::34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.23 via Frontend
 Transport; Tue, 11 Feb 2020 19:03:38 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linutronix.de; dkim=none (message not signed)
 header.d=none;linutronix.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT041.mail.protection.outlook.com (10.152.72.217) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2707.21
 via Frontend Transport; Tue, 11 Feb 2020 19:03:37 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1j1aor-0001dV-7P; Tue, 11 Feb 2020 11:03:37 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1j1aom-0001le-3j; Tue, 11 Feb 2020 11:03:32 -0800
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1j1aog-0001kB-8C; Tue, 11 Feb 2020 11:03:26 -0800
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michal.simek@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v3] irqchip: xilinx: Add support for multiple instances
Date: Wed, 12 Feb 2020 00:33:03 +0530
Message-Id: <20200211190303.7991-1-mubin.usman.sayyed@xilinx.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(39860400002)(136003)(376002)(199004)(189003)(426003)(336012)(9786002)(186003)(2906002)(6666004)(103116003)(7696005)(356004)(5660300002)(316002)(478600001)(8936002)(70206006)(81156014)(81166006)(70586007)(107886003)(26005)(2616005)(1076003)(8676002)(4326008)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4341; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 405a0f8c-8b0e-4470-da1b-08d7af2519cf
X-MS-TrafficTypeDiagnostic: BYAPR02MB4341:
X-Microsoft-Antispam-PRVS: <BYAPR02MB43412F9AE0603A31F8DC0B58A1180@BYAPR02MB4341.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0310C78181
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lhp7VIA22KXmuvmWTZ8m1dEYe8XcU3CrOplwj/uvXHRFmyn4iZOdsR76vqWuK5dd86UyFEFzDDtlxQYSd5EUt1n+Xu8S6Xvng5QDlYYfKZMX9oQmNY6VSd7oXowQach+0U5KciQlwKVsY+J7IuQIMfv0MHCCO0aA/cCQ/zL+hhkO6HeJXIfRCwQPR1+R7I0Ntro9nCYujjnTACjzGRkWm6OGE0C/Hrb/oCgDnCJKAuN0UY3WxPwUTBArzKkLnla1RzB5pk5T6HPI8p2C0mM8bqVnkAC9yXnDrNJeNZJkbMqftXDtlCJI2UBTWMwVWCmrVY7qhRkg2g2Ll0yLYirHzi3fh7GWGoG4vFEPq/TlnBrqY3cNy+tBe3u4F8v+iah/qtJTYubcGHRsAc+ILzUZK3eqI11QMZv/XqTTqSMCj8SiYXNUehoHmlUF6knrNYpQ
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Feb 2020 19:03:37.6085 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 405a0f8c-8b0e-4470-da1b-08d7af2519cf
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4341
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_110340_914486_CDE13CC5 
X-CRM114-Status: GOOD (  19.83  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.94.74 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.5 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>, anirudha.sarangi@xilinx.com,
 siva.durga.paladugu@xilinx.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>

This patch adds support for multiple instances of
xilinx interrupt controller. Below configurations are
supported by driver,

- peripheral->xilinx-intc->xilinx-intc->gic
- peripheral->xilinx-intc->xilinx-intc

Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
---
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
 drivers/irqchip/irq-xilinx-intc.c | 115 ++++++++++++++++++------------
 1 file changed, 68 insertions(+), 47 deletions(-)

diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index e3043ded8973..51f461d2934f 100644
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
+	unsigned long mask = BIT(d->hwirq);
+	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
 
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
+	unsigned long mask = BIT(d->hwirq);
+	struct xintc_irq_chip *irqc = irq_data_get_irq_chip_data(d);
 
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
+	u32 hwirq;
+	unsigned int irq = 0;
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
+	u32 hwirq;
+	unsigned int irq = -1;
 
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
+	struct xintc_irq_chip *irqc = d->host_data;
+
+	if (irqc->intr_mask & BIT(hw)) {
+		irq_set_chip_and_handler_name(irq, irqc->intc_dev,
 						handle_edge_irq, "edge");
 		irq_clear_status_flags(irq, IRQ_LEVEL);
 	} else {
-		irq_set_chip_and_handler_name(irq, &intc_dev,
+		irq_set_chip_and_handler_name(irq, irqc->intc_dev,
 						handle_level_irq, "level");
 		irq_set_status_flags(irq, IRQ_LEVEL);
 	}
+	irq_set_chip_data(irq, irqc);
 	return 0;
 }
 
@@ -138,12 +164,14 @@ static const struct irq_domain_ops xintc_irq_domain_ops = {
 static void xil_intc_irq_handler(struct irq_desc *desc)
 {
 	struct irq_chip *chip = irq_desc_get_chip(desc);
+	struct xintc_irq_chip *irqc =
+		irq_data_get_irq_handler_data(&desc->irq_data);
 	u32 pending;
 
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
 	int ret, irq;
 	struct xintc_irq_chip *irqc;
 
-	if (xintc_irqc) {
-		pr_err("irq-xilinx: Multiple instances aren't supported\n");
-		return -EINVAL;
-	}
-
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
+	if (!(xintc_read(irqc, MER) & (MER_HIE | MER_ME))) {
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
