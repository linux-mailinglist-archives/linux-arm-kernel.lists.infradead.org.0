Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EA03153369
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 15:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SP98v/sPOneVViQhjnK+1toTGvwjjdQKYkYuvZbdZzM=; b=rJM5g6smZFQKzk
	anoK/DlHAtvVKIaYR2eh/clC+HfIV5/v6bsvOh1ZlmruNGS502TXvi3xhk+9Wo7F9iz8zyxZAvGlK
	wEKCcE6KbKrJhtYyyDUE0yK5qDQhfD6KPPf27sn5Yk5jF+0ifAK4pvcVML2ROFoXlBcou6I3LMhTr
	8kT82NYUDe+NtlvIyjqYxNcdWIyXEhIwLfGxeBzCBZ6RMKE4wMjLimAAPy2oOWyLQJXI2QV2wADSA
	1Sa7XJwKrVikhdhUbVpjuDusIJD5iT00GOMzR0yTCYy5mQPI8W5kA5aWeZSkhKLKO3ud6qloyEmoY
	0tbWWpYmQ85+BtHuKUTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izM3s-0001ZD-VD; Wed, 05 Feb 2020 14:53:52 +0000
Received: from mail-co1nam11on2083.outbound.protection.outlook.com
 ([40.107.220.83] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izM3m-0001Ys-M7
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 14:53:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K2D6ja/BLGz1wkrM+0v1DYGfcIGP04eY7PE6X07z2gT4I9T//vPmnlrnoLepEyYU0MkQ61OJ9YAq6ChnCbvXszZtaiSYvbfo50dZ9JoqX8mQSNqQ7qUXFK9jus4PumAIRCSioIP/jV6MiHIdD7tdlm6HwWMs60nhO5m4m6CFECZPh/TIeN2PARoFi9Zrn03SpSvKBt/mx/pbMDAeuGcUmDikctgFIkAul2+GTWw2HC49CEsZi9MvC56V6mXRR5nHpLPuXTXa0+sOASdPsiDgPUMVKG8TyXWiqNPlpCrpBEqADwIcHfXhFPPwJ6+Wf3gB+o7rU+r6ixmyZiTFbsgaNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZ3Leh8wLWN/BmugNuYMe7x8TQN2F3rpAODBkhPjSP0=;
 b=K9AZ+mll8TY2EClYSAiOXqWdCTHm0lPxRVQ4AsGNvnCnKzie7fQB2iQL9eDcKPNFhR/vxox2/VxOBsL1w8Uu2F27XUGvtMuljX8cE4lnexgTBH6eXMYmHcc7qKItVJTwgfYbcfbz/Rg1QenWs/itXFoZnylQTa0YTxwVtZ+ekGcd3jY5YUlz61hqaKWvue+4tzCF7EaUCinDzBPeEMVdi97yMz6ZKc+xdwpTZc/2LrviNkka77az2Urs+6J+iL4v8mT0Kr8oULnPT8tUGDp+BaXNNi1QKV6BfV2yaRTxrIlc4MSYnEjITbpAV2IBpjn6FGpm7441r/cFGfhv2m8ztQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linutronix.de smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FZ3Leh8wLWN/BmugNuYMe7x8TQN2F3rpAODBkhPjSP0=;
 b=i98j5SlCUgEu/BOpYKQlQ08DUdTbVmjIovTYtJRKz/ekIfJFHEG/WO9f4tcr0Wu7OdS5igbTPf3kNfXcAN2QK3yqW+Tw3Gg8xi/b5OtQHNIeIStkknzHb7OqWJZSkdUPlg2WN28OUbOYf8/jwCgOX7Yk+2+PzpHAj1fmV+7y680=
Received: from CH2PR02CA0006.namprd02.prod.outlook.com (2603:10b6:610:4e::16)
 by BL0PR02MB5618.namprd02.prod.outlook.com (2603:10b6:208:8f::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.27; Wed, 5 Feb
 2020 14:53:41 +0000
Received: from CY1NAM02FT054.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by CH2PR02CA0006.outlook.office365.com
 (2603:10b6:610:4e::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2707.21 via Frontend
 Transport; Wed, 5 Feb 2020 14:53:41 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linutronix.de; dkim=none (message not signed)
 header.d=none;linutronix.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT054.mail.protection.outlook.com (10.152.74.100) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2707.21
 via Frontend Transport; Wed, 5 Feb 2020 14:53:40 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1izM3g-0002SO-2J; Wed, 05 Feb 2020 06:53:40 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <michal.simek@xilinx.com>)
 id 1izM3a-00031O-TJ; Wed, 05 Feb 2020 06:53:34 -0800
Received: from xsj-pvapsmtp01 (maildrop.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 015ErTeD000877; 
 Wed, 5 Feb 2020 06:53:29 -0800
Received: from [172.30.17.107] by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <michals@xilinx.com>)
 id 1izM3V-00030q-2g; Wed, 05 Feb 2020 06:53:29 -0800
Subject: Re: [PATCH v2] irqchip: xilinx: Add support for multiple instances
To: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>, tglx@linutronix.de,
 jason@lakedaemon.net, maz@kernel.org, michal.simek@xilinx.com,
 linux-arm-kernel@lists.infradead.org
References: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
From: Michal Simek <michal.simek@xilinx.com>
Message-ID: <ff04b046-6459-28ac-0fb7-16b124403f66@xilinx.com>
Date: Wed, 5 Feb 2020 15:53:26 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <1580911535-19415-1-git-send-email-mubin.usman.sayyed@xilinx.com>
Content-Language: en-US
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(199004)(189003)(81156014)(4326008)(2906002)(81166006)(8936002)(26005)(5660300002)(6666004)(356004)(107886003)(8676002)(36756003)(70586007)(31696002)(70206006)(498600001)(186003)(9786002)(2616005)(31686004)(426003)(336012)(44832011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB5618; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ecdfeabe-ee3d-4826-79f3-08d7aa4b309c
X-MS-TrafficTypeDiagnostic: BL0PR02MB5618:
X-Microsoft-Antispam-PRVS: <BL0PR02MB5618FF591E1FC7CBE7668D94C6020@BL0PR02MB5618.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0304E36CA3
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5NxkTZzqx/emEzW5N8EyE5KVXvkqq+3fXoWnFsgZITF6DFX83y2J4gRPrP0dS3iRbP6jB9sWY77kUnSdo/9458vHWIUi6oRaLmWIaThPV/OLZTORcQALORR9MCGKFy9UtDtZO6nc54ISEyWsc9mDmz9sfoptdQYs1M/AkvnqDutEKX2dbgeLow7z+7efsarwFJqshEJbQbM2YAEQU4e+XcBVXvbkZI+YHVWGXf/CNV75UR8bEcdQ53OSXgDYXL8YVJ9uPLTZMEZT6TqwHwnjCJ5D9OA+4XG+XxVWkeAHqDKUef4kshsOc23UNquSnqbpaSMnd/L6LcBC4D2PlotdjWoXzKJ5sMH3Hh0i8kqOvbCv8g8kxGVNKKlfJ816sfch/zK6/Cfb/W6tOku54ixlwpbzhsvWwSdpw7i8PyoPUpo5E6Z1ZoDTPC+utm6xIiss
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Feb 2020 14:53:40.8913 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ecdfeabe-ee3d-4826-79f3-08d7aa4b309c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5618
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_065346_809148_63769730 
X-CRM114-Status: GOOD (  26.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.83 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.220.83 listed in wl.mailspike.net]
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
Cc: anirudha.sarangi@xilinx.com, siva.durga.paladugu@xilinx.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mubin,

On 05. 02. 20 15:05, Mubin Usman Sayyed wrote:
> From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> 
> This patch adds support for multiple instances of
> xilinx interrupt controller. Below configurations are
> supported by driver,
> 
> - peripheral->xilinx-intc->xilinx-intc->gic
> - peripheral->xilinx-intc->xilinx-intc
> 
> Signed-off-by: Anirudha Sarangi <anirudha.sarangi@xilinx.com>
> Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
> ---
> Changes for v2:
>         - Removed write_fn/read_fn hooks, used xintc_write/
> 	  xintc_read directly
>         - Moved primary_intc declaration after xintc_irq_chip
> ---
>  drivers/irqchip/irq-xilinx-intc.c | 121 +++++++++++++++++++++++---------------
>  1 file changed, 73 insertions(+), 48 deletions(-)
> 
> diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
> index e3043de..14cb630 100644
> --- a/drivers/irqchip/irq-xilinx-intc.c
> +++ b/drivers/irqchip/irq-xilinx-intc.c
> @@ -38,29 +38,32 @@ struct xintc_irq_chip {
>  	void		__iomem *base;
>  	struct		irq_domain *root_domain;
>  	u32		intr_mask;
> +	struct			irq_chip *intc_dev;
> +	u32				nr_irq;

indentation is weird.

>  };
>  
> -static struct xintc_irq_chip *xintc_irqc;
> +static struct xintc_irq_chip *primary_intc;
>  
> -static void xintc_write(int reg, u32 data)
> +static void xintc_write(void __iomem *addr, u32 data)

The best would be if prototype is
static void xintc_write(struct xintc_irq_chip *irqc, int reg, u32 data)


>  {
>  	if (static_branch_unlikely(&xintc_is_be))
> -		iowrite32be(data, xintc_irqc->base + reg);
> +		iowrite32be(data, addr);
>  	else
> -		iowrite32(data, xintc_irqc->base + reg);
> +		iowrite32(data, addr);
>  }
>  
> -static unsigned int xintc_read(int reg)
> +static unsigned int xintc_read(void __iomem *addr)

And the same here.
static unsigned int xintc_read(struct xintc_irq_chip *irqc, int reg)

>  {
>  	if (static_branch_unlikely(&xintc_is_be))
> -		return ioread32be(xintc_irqc->base + reg);
> +		return ioread32be(addr);
>  	else
> -		return ioread32(xintc_irqc->base + reg);
> +		return ioread32(addr);
>  }
>  
>  static void intc_enable_or_unmask(struct irq_data *d)
>  {
>  	unsigned long mask = 1 << d->hwirq;
> +	struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);

code is using variable name as irqc below. I think that will be the best
to use it in all functions. It means s/local_intc/irqc/g'


>  
>  	pr_debug("irq-xilinx: enable_or_unmask: %ld\n", d->hwirq);
>  
> @@ -69,47 +72,57 @@ static void intc_enable_or_unmask(struct irq_data *d)
>  	 * acks the irq before calling the interrupt handler
>  	 */
>  	if (irqd_is_level_type(d))
> -		xintc_write(IAR, mask);
> +		xintc_write(local_intc->base + IAR, mask);
>  
> -	xintc_write(SIE, mask);
> +	xintc_write(local_intc->base + SIE, mask);
>  }
>  
>  static void intc_disable_or_mask(struct irq_data *d)
>  {
> +	struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
> +
>  	pr_debug("irq-xilinx: disable: %ld\n", d->hwirq);
> -	xintc_write(CIE, 1 << d->hwirq);
> +	xintc_write(local_intc->base + CIE, 1 << d->hwirq);
>  }
>  
>  static void intc_ack(struct irq_data *d)
>  {
> +	struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
> +
>  	pr_debug("irq-xilinx: ack: %ld\n", d->hwirq);
> -	xintc_write(IAR, 1 << d->hwirq);
> +	xintc_write(local_intc->base + IAR, 1 << d->hwirq);
>  }
>  
>  static void intc_mask_ack(struct irq_data *d)
>  {
>  	unsigned long mask = 1 << d->hwirq;
> +	struct xintc_irq_chip *local_intc = irq_data_get_irq_chip_data(d);
>  
>  	pr_debug("irq-xilinx: disable_and_ack: %ld\n", d->hwirq);
> -	xintc_write(CIE, mask);
> -	xintc_write(IAR, mask);
> +	xintc_write(local_intc->base + CIE, mask);
> +	xintc_write(local_intc->base + IAR, mask);
>  }
>  
> -static struct irq_chip intc_dev = {
> -	.name = "Xilinx INTC",
> -	.irq_unmask = intc_enable_or_unmask,
> -	.irq_mask = intc_disable_or_mask,
> -	.irq_ack = intc_ack,
> -	.irq_mask_ack = intc_mask_ack,
> -};
> +static unsigned int xintc_get_irq_local(struct xintc_irq_chip *local_intc)
> +{
> +	int hwirq, irq = -1;
> +
> +	hwirq = xintc_read(local_intc->base + IVR);
> +	if (hwirq != -1U)
> +		irq = irq_find_mapping(local_intc->root_domain, hwirq);
> +
> +	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
> +
> +	return irq;
> +}
>  
>  unsigned int xintc_get_irq(void)
>  {
> -	unsigned int hwirq, irq = -1;
> +	int hwirq, irq = -1;
>  
> -	hwirq = xintc_read(IVR);
> +	hwirq = xintc_read(primary_intc->base + IVR);
>  	if (hwirq != -1U)
> -		irq = irq_find_mapping(xintc_irqc->root_domain, hwirq);
> +		irq = irq_find_mapping(primary_intc->root_domain, hwirq);
>  
>  	pr_debug("irq-xilinx: hwirq=%d, irq=%d\n", hwirq, irq);
>  
> @@ -118,15 +131,18 @@ unsigned int xintc_get_irq(void)
>  
>  static int xintc_map(struct irq_domain *d, unsigned int irq, irq_hw_number_t hw)
>  {
> -	if (xintc_irqc->intr_mask & (1 << hw)) {
> -		irq_set_chip_and_handler_name(irq, &intc_dev,
> +	struct xintc_irq_chip *local_intc = d->host_data;
> +
> +	if (local_intc->intr_mask & (1 << hw)) {
> +		irq_set_chip_and_handler_name(irq, local_intc->intc_dev,
>  						handle_edge_irq, "edge");
>  		irq_clear_status_flags(irq, IRQ_LEVEL);
>  	} else {
> -		irq_set_chip_and_handler_name(irq, &intc_dev,
> +		irq_set_chip_and_handler_name(irq, local_intc->intc_dev,
>  						handle_level_irq, "level");
>  		irq_set_status_flags(irq, IRQ_LEVEL);
>  	}
> +	irq_set_chip_data(irq, local_intc);
>  	return 0;
>  }
>  
> @@ -138,11 +154,13 @@ static const struct irq_domain_ops xintc_irq_domain_ops = {
>  static void xil_intc_irq_handler(struct irq_desc *desc)
>  {
>  	struct irq_chip *chip = irq_desc_get_chip(desc);
> +	struct xintc_irq_chip *local_intc =
> +		irq_data_get_irq_handler_data(&desc->irq_data);
>  	u32 pending;
>  
>  	chained_irq_enter(chip, desc);
>  	do {
> -		pending = xintc_get_irq();
> +		pending = xintc_get_irq_local(local_intc);
>  		if (pending == -1U)
>  			break;
>  		generic_handle_irq(pending);
> @@ -153,28 +171,20 @@ static void xil_intc_irq_handler(struct irq_desc *desc)
>  static int __init xilinx_intc_of_init(struct device_node *intc,
>  					     struct device_node *parent)
>  {
> -	u32 nr_irq;
>  	int ret, irq;
>  	struct xintc_irq_chip *irqc;
> -
> -	if (xintc_irqc) {
> -		pr_err("irq-xilinx: Multiple instances aren't supported\n");
> -		return -EINVAL;
> -	}
> +	struct irq_chip *intc_dev;
>  
>  	irqc = kzalloc(sizeof(*irqc), GFP_KERNEL);
>  	if (!irqc)
>  		return -ENOMEM;
> -
> -	xintc_irqc = irqc;
> -
>  	irqc->base = of_iomap(intc, 0);
>  	BUG_ON(!irqc->base);
>  
> -	ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", &nr_irq);
> +	ret = of_property_read_u32(intc, "xlnx,num-intr-inputs", &irqc->nr_irq);
>  	if (ret < 0) {
>  		pr_err("irq-xilinx: unable to read xlnx,num-intr-inputs\n");
> -		goto err_alloc;
> +		goto error;
>  	}
>  
>  	ret = of_property_read_u32(intc, "xlnx,kind-of-intr", &irqc->intr_mask);
> @@ -183,30 +193,42 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
>  		irqc->intr_mask = 0;
>  	}
>  
> -	if (irqc->intr_mask >> nr_irq)
> +	if (irqc->intr_mask >> irqc->nr_irq)
>  		pr_warn("irq-xilinx: mismatch in kind-of-intr param\n");
>  
>  	pr_info("irq-xilinx: %pOF: num_irq=%d, edge=0x%x\n",
> -		intc, nr_irq, irqc->intr_mask);
> +		intc, irqc->nr_irq, irqc->intr_mask);
> +
> +	intc_dev = kzalloc(sizeof(*intc_dev), GFP_KERNEL);
> +	if (!intc_dev) {
> +		ret = -ENOMEM;
> +		goto error;
> +	}
>  
> +	intc_dev->name = intc->full_name;
> +	intc_dev->irq_unmask = intc_enable_or_unmask,
> +	intc_dev->irq_mask = intc_disable_or_mask,
> +	intc_dev->irq_ack = intc_ack,
> +	intc_dev->irq_mask_ack = intc_mask_ack,
> +	irqc->intc_dev = intc_dev;
>  
>  	/*
>  	 * Disable all external interrupts until they are
>  	 * explicity requested.
>  	 */
> -	xintc_write(IER, 0);
> +	xintc_write(irqc->base + IER, 0);
>  
>  	/* Acknowledge any pending interrupts just in case. */
> -	xintc_write(IAR, 0xffffffff);
> +	xintc_write(irqc->base + IAR, 0xffffffff);
>  
>  	/* Turn on the Master Enable. */
> -	xintc_write(MER, MER_HIE | MER_ME);
> -	if (!(xintc_read(MER) & (MER_HIE | MER_ME))) {
> +	xintc_write(irqc->base + MER, MER_HIE | MER_ME);
> +	if (!(xintc_read(irqc->base + MER) & (MER_HIE | MER_ME))) {
>  		static_branch_enable(&xintc_is_be);
> -		xintc_write(MER, MER_HIE | MER_ME);
> +		xintc_write(irqc->base + MER, MER_HIE | MER_ME);
>  	}
>  
> -	irqc->root_domain = irq_domain_add_linear(intc, nr_irq,
> +	irqc->root_domain = irq_domain_add_linear(intc, irqc->nr_irq,
>  						  &xintc_irq_domain_ops, irqc);
>  	if (!irqc->root_domain) {
>  		pr_err("irq-xilinx: Unable to create IRQ domain\n");
> @@ -225,13 +247,16 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
>  			goto err_alloc;
>  		}
>  	} else {
> -		irq_set_default_host(irqc->root_domain);
> +		primary_intc = irqc;
> +		irq_set_default_host(primary_intc->root_domain);
>  	}
>  
>  	return 0;
>  
>  err_alloc:
> -	xintc_irqc = NULL;
> +	kfree(intc_dev);
> +error:
> +	iounmap(irqc->base);
>  	kfree(irqc);
>  	return ret;
>  
> 

Thanks,
Michal


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
