Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7531C21EF
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 02:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yb0hbCY02+bXIy23r3sS/OpmAZgtY4jMOTqaB4CMT2Y=; b=Z1XRdPUDN6kf+x
	d3/haIychlqVQSsmfKPmfSGBmb3kqNPhAjAkQSJj6kH1kbW9Mj5YRtxxfs08Qr+J+nGUGBo+IzF2Z
	YHtGUvXaWOKm5p3liG4uK5JvZ+UubOFIb8T+LVcM2p3u5o30p1xQqCGayiXQefwSHvE+xxuFkHjim
	ufbdfySMEjUfpAnJLYyq8dle3rjfOGrfjUQ2wifc9etOs5PG2jDsNrtgmgl7QwoiO+CZbXsmFeLwT
	bPn/XVGckPWSSk2fNAbQ6pVhEuk7hck/1zL015q/ulC7MMoWKwQjHkQ9korog45/+WV6ToXXecpQd
	TxS5Z7SC3UK2GpLOqWjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfyo-0001Pv-Ov; Sat, 02 May 2020 00:26:06 +0000
Received: from mail-dm6nam10on2048.outbound.protection.outlook.com
 ([40.107.93.48] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfyD-0000zh-VH
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 00:25:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P7gSR5f8RfnSFCVDniIuzd9gq5XpfODMuMWBZ+KiYIgTZk8+PlA9femqJOK468iOHpPgjJYPIZX38w1NKz5tlasCBDOrc8YuUXQRf3pJo45qami7anHnbsYe3LJ1x23Nb1ER93mh92B9mwSE0SaZZ3xMI6XkLNrSRZAjGXUko6cMk5v6P0k+QC1aWMXABiemLJIaTiufgxEgOOnkAq7N3ZHiIzQ2J/4IaVsbogWJoVMx7J7I7mZUrjdfbE5pOV7zbgtyp4qMSHJ40QpuCQaSWi/Ol6iT7d9r7R9HnLYQeJBPrUEzAJXYcp1EvVj37pwwTm7NbFz/8gnJ7voGFjCyeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9PC7PliTX3bo/m9tPyJRBqcDTrRdVemB+XWNYr9hFhQ=;
 b=JkeUPqyqq9VrRT5YTegT+g73kiqFwz5OpmHIPGdXV/CWVzo1I15iGMbkZTK6rqwV/TebPoJYa3Xy1E5Svas3udcctVtAGjMDM6ONUSJGVRmzG95EUIu+e/iOSiwYf/WQHowApmDNzF/3uclsMLXJtD4zrGbVbFDg9o2+AVaUoDZ0FSgEC7HKbu4FQVgTJUpVcVzgMkDi1fLg8X8f9oX0jXi9yfmQRy7jbZd++Lw+XVY9FBL8n59ZiXpkxlUwNYkTk6BkI0Qvdutq27tVhSfGpCPk50KqKb+5laDSsscG6XOPo7y0d0qLdLS0/rP3SmnkWwRpDqJ2H+LaOmokMtHgtg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9PC7PliTX3bo/m9tPyJRBqcDTrRdVemB+XWNYr9hFhQ=;
 b=M7dryyk50bezlJIfVK01vDsnv3zhvGSMKHuvt7LRifMP3FN4WaSFs95p9WPMu/C98VqV/2esJH4g67BSILVvuWqZjQYLIIJPTsMYKNLe4JDqJ6rqdvyb0Wjwt3nQH4TlZfv+ArnLgjFwH0wcqqMjjYF7MjeofCKUuKeEl7x8xyQ=
Received: from MN2PR14CA0028.namprd14.prod.outlook.com (2603:10b6:208:23e::33)
 by CY4PR02MB2742.namprd02.prod.outlook.com (2603:10b6:903:11a::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Sat, 2 May
 2020 00:25:26 +0000
Received: from BL2NAM02FT030.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23e:cafe::13) by MN2PR14CA0028.outlook.office365.com
 (2603:10b6:208:23e::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Sat, 2 May 2020 00:25:26 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT030.mail.protection.outlook.com (10.152.77.172) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Sat, 2 May 2020 00:25:26
 +0000
Received: from [149.199.38.66] (port=38225 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy7-0006Qm-F6; Fri, 01 May 2020 17:25:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy9-0004NS-Nx; Fri, 01 May 2020 17:25:25 -0700
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0420PI8g027419; 
 Fri, 1 May 2020 17:25:18 -0700
Received: from [172.19.3.8] (helo=xsjamitsuni50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy2-0004Mq-3y; Fri, 01 May 2020 17:25:18 -0700
From: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 mark.rutland@arm.com, linux-clk@vger.kernel.org
Subject: [RESEND PATCH v2 2/2] drivers: clk: zynqmp: Update fraction clock
 check from custom type flags
Date: Fri,  1 May 2020 17:25:17 -0700
Message-Id: <1588379117-254190-3-git-send-email-amit.sunil.dhamne@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588379117-254190-1-git-send-email-amit.sunil.dhamne@xilinx.com>
References: <1588379117-254190-1-git-send-email-amit.sunil.dhamne@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(396003)(136003)(39860400002)(46966005)(186003)(7696005)(36756003)(8676002)(2906002)(336012)(2616005)(15650500001)(426003)(316002)(82740400003)(478600001)(47076004)(70206006)(107886003)(5660300002)(70586007)(82310400002)(356005)(81166007)(26005)(8936002)(54906003)(9786002)(4326008)(42866002);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a072d374-5adc-4fe1-cbc7-08d7ee2f4f85
X-MS-TrafficTypeDiagnostic: CY4PR02MB2742:
X-Microsoft-Antispam-PRVS: <CY4PR02MB274218081A6C7BB5EAA5C46AA7A80@CY4PR02MB2742.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 039178EF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IDob+WFtFz5yZmQrvlILNCTF886rY4jBADn3U5/FkyjiTN+QJpoBoRxntPsPKno+2SgmgYLfet77RWqyJPxGkmicAahhkSQ4C0UE+HvW5sYBTLlXHKExZqldAopHlrDVf7pObxIo4X00D29Rp9OyTc/+sr0ikZN+ojuFQM1Mx+WvKIJz7MFNzIT0Mcx1PTGDGa2EokfjbLPY+i43WuPfReyeVRJclkW2ndd2vDiq2NT9zdc/OxGPxEiEVW39Rc3v2o+duisU8/L/yHzNyxeZeUzLd5rUujGAflll4k0eg6rqRJ8DCl1jCK6MKU/mxQDYifbTXaNEa4OQrHGFcMw4R5wh8nhySU4gq5nVNHjotQ7MiQf5wqxvl/vfOeVdgs4XtwLYzSEf1TbL+LPCHX+vpseq/WO4KUHE2m/HVgdQk1lu/N79hNIAxscND6mHJmDogt3PJ9zE3wAiF+qfZa75ku0n3Ts0d98Gc2AxgHf615pbqlombVPGclk0AGE+QM3rojsK7U4ryw1hLt4QKfSuXWvu5bPN4gpGkDGZu4Q8wUs=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2020 00:25:26.1036 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a072d374-5adc-4fe1-cbc7-08d7ee2f4f85
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2742
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_172530_019987_5B596FA8 
X-CRM114-Status: GOOD (  10.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.48 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tejas Patel <tejas.patel@xilinx.com>,
 Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 jollys@xilinx.com, rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tejas Patel <tejas.patel@xilinx.com>

Older firmware version sets BIT(13) in clkflag to mark a
divider as fractional divider. Updated firmware version sets BIT(4)
in type flags to mark a divider as fractional divider since
BIT(13) is defined as CLK_DUTY_CYCLE_PARENT in the common clk
framework flags.

To support both old and new firmware version, consider BIT(13) from
clkflag and BIT(4) from type_flag to check if divider is fractional
or not.

To maintain compatibility BIT(13) of clkflag in firmware will not be
used in future for any purpose and will be marked as unused.

Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
---
 drivers/clk/zynqmp/divider.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/zynqmp/divider.c b/drivers/clk/zynqmp/divider.c
index 4be2cc7..d43c9dd 100644
--- a/drivers/clk/zynqmp/divider.c
+++ b/drivers/clk/zynqmp/divider.c
@@ -25,7 +25,8 @@
 #define to_zynqmp_clk_divider(_hw)             \
        container_of(_hw, struct zynqmp_clk_divider, hw)

-#define CLK_FRAC       BIT(13) /* has a fractional parent */
+#define CLK_FRAC               BIT(13) /* has a fractional parent */
+#define CUSTOM_FLAG_CLK_FRAC   BIT(0) /* has a fractional parent in custom type flag */

 /**
  * struct zynqmp_clk_divider - adjustable divider clock
@@ -311,7 +312,8 @@ struct clk_hw *zynqmp_clk_register_divider(const char *name,
        init.num_parents = 1;

        /* struct clk_divider assignments */
-       div->is_frac = !!(nodes->flag & CLK_FRAC);
+       div->is_frac = !!((nodes->flag & CLK_FRAC) |
+                         (nodes->custom_type_flag & CUSTOM_FLAG_CLK_FRAC));
        div->flags = nodes->type_flag;
        div->hw.init = &init;
        div->clk_id = clk_id;
--
2.7.4

This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
