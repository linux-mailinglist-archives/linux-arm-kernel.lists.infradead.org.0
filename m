Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DCD515327F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:08:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dVbfcJND98U7a8nSDKJz2eG3dhLmt6s/qFTxNMves1k=; b=cM2T7wwIo1Zaif
	3oIgKSH64EBhnR+KEB4sOeMoz+X49i1JFjWyz+wWBjpm7ehBr84iliNZBVT+LsWZl8XStbJkedvNl
	ACqggVGQrky7oy/AQfJkun4oExINzoYaj1SH9oVI6ehYJs+1/gT5PuepMDM87tnJwXiDz+isUKdPF
	bq3yVBYPpjJh/egzryfHxwnLb/yhlzTvwDYZW9Tj2pOp68wYzmciaA/6mo4cbwgqSlY85vkhSvkzf
	+qu5hbvnwDhV6IFog0uzmuJ2esU5eXeQPNAk5pO1BLHuA6GTbdJtBkJ7neHVD8EVxNI0jSrZxjKTk
	Ws6JSVv6Utpl+L6hnW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izLLN-0007TY-30; Wed, 05 Feb 2020 14:07:53 +0000
Received: from mail-dm6nam10on2074.outbound.protection.outlook.com
 ([40.107.93.74] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izLLE-0007Sd-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:07:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jqTit+m7BxHmkwTAJjg7wjDxE9MgoGvRP92CCwT63fvs5fISTJpk3gl7giO6+XBsW3SKLuslm8iJBiRhvUQme7CEdEY5+Lw4KnIX/S507ndf29Yi7fHZaKUBRaMJgzfpAeEVHkYBr5UPRxmAGSA6M5CSm/TV9UPcKGiIwPS+49hfr+rMpITFlIxeBf55+4qvtAoIdLv6PYT+YkZrfQtiYU9v1QXWJ5dgYxNpycbm0YLSTKx/fwAKcnmDwSldStaGgsDHC5GbpFYpb5EDzhvqBsqMCUbmte/DW/dTlCBV4B8wCB7QvhKKcikaJd8S12nOPuIKvNLxZD6jvMFq5dc5Kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrIzBNCSY7ScFrDdEzAiu2xTBadRkGUxhpjo3jg5Op4=;
 b=epEzlAnBKbO4tTiTQsPdYv7tmcRVt00hFxqWPvXSdoCyaoSFSFDQNhw2Ruwarwiqd6p8f5Ycn1DXB+4W/GckeG6Yxp/wOZV6StzP8e/gvZZCRflPRGj3HNDbT6MxgfMMOP11PssIrTW31yU2tAp8XmLOMSUl1uK6aWBxYh6xz1DfHm2E1ARSa+zcQUcEsOoUYz6V4f0nRxksANqdSHX94V+WpVG7owkyFaHH7ZmBtgtAhjvqAM06JQDBIVto59GKk1smWMwEBzFNK+BKYOiyft6S8xlbyiJisRD7i32wGuaElZAa9Nnlz9lQTw3xEc5rqKIl1+ZO9y2aewN8RdwDaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linutronix.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rrIzBNCSY7ScFrDdEzAiu2xTBadRkGUxhpjo3jg5Op4=;
 b=I6IQw5US/swdvGztRPVKDhwhZQGXn9/erBS2V7bzOw5CD2DoCzjJ8sp6EjeTqB/hd3yXukVOToMRhmmTQxleR/OdDw9yGaVq97k02ooDqS1a4vhnaM7iWV0yorNlLRuAf9LC1+ru6b0v/PyZwts/Thlyf2OzIrignKfh3J5n+CQ=
Received: from BN7PR02CA0024.namprd02.prod.outlook.com (2603:10b6:408:20::37)
 by DM6PR02MB6074.namprd02.prod.outlook.com (2603:10b6:5:1fd::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.32; Wed, 5 Feb
 2020 14:07:42 +0000
Received: from CY1NAM02FT048.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by BN7PR02CA0024.outlook.office365.com
 (2603:10b6:408:20::37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend
 Transport; Wed, 5 Feb 2020 14:07:42 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linutronix.de; dkim=none (message not signed)
 header.d=none;linutronix.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT048.mail.protection.outlook.com (10.152.74.227) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2707.21
 via Frontend Transport; Wed, 5 Feb 2020 14:07:41 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1izLLA-0002Ic-HR; Wed, 05 Feb 2020 06:07:40 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1izLL5-0002Hk-Bt; Wed, 05 Feb 2020 06:07:35 -0800
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1izLL1-0002Gr-Cx; Wed, 05 Feb 2020 06:07:31 -0800
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michal.simek@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2] irqchip: xilinx: Add support for multiple instances
Date: Wed,  5 Feb 2020 19:35:35 +0530
Message-Id: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(396003)(376002)(39860400002)(189003)(199004)(316002)(5660300002)(2616005)(4326008)(9786002)(81166006)(2906002)(81156014)(36756003)(8936002)(7696005)(8676002)(107886003)(356004)(186003)(426003)(336012)(478600001)(70206006)(26005)(70586007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6074; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3b89cba6-7d44-41a0-fc21-08d7aa44c3dd
X-MS-TrafficTypeDiagnostic: DM6PR02MB6074:
X-Microsoft-Antispam-PRVS: <DM6PR02MB607458B2D95726817FE63F94A1020@DM6PR02MB6074.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0304E36CA3
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 0KZgA/YIhZOXKw7FiKOrDEugJ+xZMIESqo9UvFe7Bm2zGg3GojrElhxVzB2zDWYq0V8CwpRif7hN5H9YY1uUtQ79NWlmV9Wo39NnjY2FwauSTZuX2LzBq0131i2kELQ5I/F6Zm2q/MMPpiv7HEpOfuvc9+87gBUZRqjFY6jpKFoencij7SDK86CShbjtritrHqOtYGTd5nbqVL/0HaagA/o9GLmkl/+F9fj/CdDvjlbhE6fFYUAZ74o2v9H1TZ8GZb3OPPHllp5lciHhX60lEu6V5zwVa8KxOAhk53+0Kaq8Epr3R1ovimBSr/6mDVesL2rnF2js3qEfg+clKtGs1BgeSVI1aFQ69Dcoj7Yc/xG09q1zihPBLtezwiWD2a6z6DPIlbcxFD6JGp1l2DnmmLVsq7xjTsEkkcfdlnbNOYYe0SMrWgPtf68DV+oBPmhp
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2020 14:07:41.4685 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3b89cba6-7d44-41a0-fc21-08d7aa44c3dd
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6074
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_060744_782530_31893E6E 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: 2.1 (++)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (2.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.74 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.1 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Changes for v2:
        - Removed write_fn/read_fn hooks, used xintc_write/
          xintc_read directly
        - Moved primary_intc declaration after xintc_irq_chip
---
 drivers/irqchip/irq-xilinx-intc.c | 121 +++++++++++++++++++++++---------------
 1 file changed, 73 insertions(+), 48 deletions(-)

diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index e3043de..14cb630 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -38,29 +38,32 @@ struct xintc_irq_chip {
        void            __iomem *base;
        struct          irq_domain *root_domain;
        u32             intr_mask;
+       struct                  irq_chip *intc_dev;
+       u32                             nr_irq;
 };

-static struct xintc_irq_chip *xintc_irqc;
+static struct xintc_irq_chip *primary_intc;

-static void xintc_write(int reg, u32 data)
+static void xintc_write(void __iomem *addr, u32 data)
 {
        if (static_branch_unlikely(&xintc_is_be))
-               iowrite32be(data, xintc_irqc->base + reg);
+               iowrite32be(data, addr);
        else
-               iowrite32(data, xintc_irqc->base + reg);
+               iowrite32(data, addr);
 }

-static unsigned int xintc_read(int reg)
+static unsigned int xintc_read(void __iomem *addr)
 {
        if (static_branch_unlikely(&xintc_is_be))
-               return ioread32be(xintc_irqc->base + reg);
+               return ioread32be(addr);
        else
-               return ioread32(xintc_irqc->base + reg);
+               return ioread32(addr);
 }

 static void intc_enable_or_unmask(struct irq_data *d)
 {
        unsigned long mask = 1 << d->hwirq;
+       struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);

        pr_debug("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);

@@ -69,47 +72,57 @@ static void intc_enable_or_unmask(struct irq_data *d)
         * acks the irq before calling the interrupt handler
         */
        if (irqd_is_level_type(d))
-               xintc_write(IAR, mask);
+               xintc_write(local_intc->base + IAR, mask);

-       xintc_write(SIE, mask);
+       xintc_write(local_intc->base + SIE, mask);
 }

 static void intc_disable_or_mask(struct irq_data *d)
 {
+       struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
+
        pr_debug("irq-xilinx: disable: %ld\n", d->hwirq);
-       xintc_write(CIE, 1 << d->hwirq);
+       xintc_write(local_intc->base + CIE, 1 << d->hwirq);
 }

 static void intc_ack(struct irq_data *d)
 {
+       struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
+
        pr_debug("irq-xilinx: ack: %ld\n", d->hwirq);
-       xintc_write(IAR, 1 << d->hwirq);
+       xintc_write(local_intc->base + IAR, 1 << d->hwirq);
 }

 static void intc_mask_ack(struct irq_data *d)
 {
        unsigned long mask = 1 << d->hwirq;
+       struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);

        pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
-       xintc_write(CIE, mask);
-       xintc_write(IAR, mask);
+       xintc_write(local_intc->base + CIE, mask);
+       xintc_write(local_intc->base + IAR, mask);
 }

-static struct irq_chip intc_dev = {
-       .name = "Xilinx INTC",
-       .irq_unmask = intc_enable_or_unmask,
-       .irq_mask = intc_disable_or_mask,
-       .irq_ack = intc_ack,
-       .irq_mask_ack = intc_mask_ack,
-};
+static unsigned int xintc_get_irq_local(struct xintc_irq_chip *local_intc)
+{
+       int hwirq, irq = -1;
+
+       hwirq = xintc_read(local_intc->base + IVR);
+       if (hwirq != -1U)
+               irq = irq_find_mapping(local_intc->root_domain, hwirq);
+
+       pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
+
+       return irq;
+}

 unsigned int xintc_get_irq(void)
 {
-       unsigned int hwirq, irq = -1;
+       int hwirq, irq = -1;

-       hwirq = xintc_read(IVR);
+       hwirq = xintc_read(primary_intc->base + IVR);
        if (hwirq != -1U)
-               irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);
+               irq = irq_find_mapping(primary_intc->root_domain, hwirq);

        pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);

@@ -118,15 +131,18 @@ unsigned int xintc_get_irq(void)

 static int xintc_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
 {
-       if (xintc_irqc->intr_mask & (1 << hw)) {
-               irq_set_chip_and_handler_name(irq, &intc_dev,
+       struct xintc_irq_chip *local_intc = d->host_data;
+
+       if (local_intc->intr_mask & (1 << hw)) {
+               irq_set_chip_and_handler_name(irq, local_intc->intc_dev,
                                                handle_edge_irq, "edge");
                irq_clear_status_flags(irq, IRQ_LEVEL);
        } else {
-               irq_set_chip_and_handler_name(irq, &intc_dev,
+               irq_set_chip_and_handler_name(irq, local_intc->intc_dev,
                                                handle_level_irq, "level");
                irq_set_status_flags(irq, IRQ_LEVEL);
        }
+       irq_set_chip_data(irq, local_intc);
        return 0;
 }

@@ -138,11 +154,13 @@ static const struct irq_domain_ops xintc_irq_domain_ops = {
 static void xil_intc_irq_handler(struct irq_desc *desc)
 {
        struct irq_chip *chip = irq_desc_get_chip(desc);
+       struct xintc_irq_chip *local_intc =
+               irq_data_get_irq_handler_data(&desc->irq_data);
        u32 pending;

        chained_irq_enter(chip, desc);
        do {
-               pending = xintc_get_irq();
+               pending = xintc_get_irq_local(local_intc);
                if (pending == -1U)
                        break;
                generic_handle_irq(pending);
@@ -153,28 +171,20 @@ static void xil_intc_irq_handler(struct irq_desc *desc)
 static int __init xilinx_intc_of_init(struct device_node *intc,
                                             struct device_node *parent)
 {
-       u32 nr_irq;
        int ret, irq;
        struct xintc_irq_chip *irqc;
-
-       if (xintc_irqc) {
-               pr_err("irq-xilinx: Multiple instances aren't supported\n");
-               return -EINVAL;
-       }
+       struct irq_chip *intc_dev;

        irqc = kzalloc(sizeof(*irqc), GFP_KERNEL);
        if (!irqc)
                return -ENOMEM;
-
-       xintc_irqc = irqc;
-
        irqc->base = of_iomap(intc, 0);
        BUG_ON(!irqc->base);

-       ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", &nr_irq);
+       ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", &irqc->nr_irq);
        if (ret < 0) {
                pr_err("irq-xilinx: unable to read xlnx,num-intr-inputs\n");
-               goto err_alloc;
+               goto error;
        }

        ret = of_property_read_u32(intc, "xlnx,kind-of-intr", &irqc->intr_mask);
@@ -183,30 +193,42 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
                irqc->intr_mask = 0;
        }

-       if (irqc->intr_mask >> nr_irq)
+       if (irqc->intr_mask >> irqc->nr_irq)
                pr_warn("irq-xilinx: mismatch in kind-of-intr param\n");

        pr_info("irq-xilinx: %pOF: num_irq=%d, edge=0x%x\n",
-               intc, nr_irq, irqc->intr_mask);
+               intc, irqc->nr_irq, irqc->intr_mask);
+
+       intc_dev = kzalloc(sizeof(*intc_dev), GFP_KERNEL);
+       if (!intc_dev) {
+               ret = -ENOMEM;
+               goto error;
+       }

+       intc_dev->name = intc->full_name;
+       intc_dev->irq_unmask = intc_enable_or_unmask,
+       intc_dev->irq_mask = intc_disable_or_mask,
+       intc_dev->irq_ack = intc_ack,
+       intc_dev->irq_mask_ack = intc_mask_ack,
+       irqc->intc_dev = intc_dev;

        /*
         * Disable all external interrupts until they are
         * explicity requested.
         */
-       xintc_write(IER, 0);
+       xintc_write(irqc->base + IER, 0);

        /* Acknowledge any pending interrupts just in case. */
-       xintc_write(IAR, 0xffffffff);
+       xintc_write(irqc->base + IAR, 0xffffffff);

        /* Turn on the Master Enable. */
-       xintc_write(MER, MER_HIE | MER_ME);
-       if (!(xintc_read(MER) & (MER_HIE | MER_ME))) {
+       xintc_write(irqc->base + MER, MER_HIE | MER_ME);
+       if (!(xintc_read(irqc->base + MER) & (MER_HIE | MER_ME))) {
                static_branch_enable(&xintc_is_be);
-               xintc_write(MER, MER_HIE | MER_ME);
+               xintc_write(irqc->base + MER, MER_HIE | MER_ME);
        }

-       irqc->root_domain = irq_domain_add_linear(intc, nr_irq,
+       irqc->root_domain = irq_domain_add_linear(intc, irqc->nr_irq,
                                                  &xintc_irq_domain_ops, irqc);
        if (!irqc->root_domain) {
                pr_err("irq-xilinx: Unable to create IRQ domain\n");
@@ -225,13 +247,16 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
                        goto err_alloc;
                }
        } else {
-               irq_set_default_host(irqc->root_domain);
+               primary_intc = irqc;
+               irq_set_default_host(primary_intc->root_domain);
        }

        return 0;

 err_alloc:
-       xintc_irqc = NULL;
+       kfree(intc_dev);
+error:
+       iounmap(irqc->base);
        kfree(irqc);
        return ret;

--
2.7.4

This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
