Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C2118B074
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:45:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzw3w+sNfZ73gqoSWhc2ICbEUOg29dgLA30IRocuLT0=; b=un07+kSNYdTDRm
	KBV6TNuwhJ9+1qQg4nWcQCk+WuXt1YIyedOvW0LNtTg2+vGwdHel4274l/4SOhIYe305rzh4fF1s9
	hNDpQhUhxU5fYWORws+m4AHHBizZqRYs/Ve+vPZU/XL1G/O1ikya1ihdJUFZ6x8PyH0+u3dK593lJ
	nRSYuPV9BDIHMDAWZEwMjLFdfh6V+YOcvWUUjQ+ndF2xvXEjOYrvaCvyzcREvWL0rlOWz3tk6C0Tz
	vlApDcw8VVHiZDCGUFVy10Ple83N6iWk81mDV2qdHrAIWU+5a5vdwJPveRPkY4tYSOGhmWfl62WJv
	tQGPMdHOv865LphTrM6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErjt-0005u3-Gz; Thu, 19 Mar 2020 09:45:21 +0000
Received: from mail-bn7nam10on2053.outbound.protection.outlook.com
 ([40.107.92.53] helo=NAM10-BN7-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErjk-0005tF-4V
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:45:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Cd1cawUYJ6Ph4k4sMsvHT91DLknlNu3/p+VdraQSqkgrlH+5tGLHeDvaM84+NnkIHL1067q3ylju+zQwxhxRRjYiySfbGKiE7XvfXS8HwJ5jjNbfuP9jHpJUaXe8/Qmv7G7Zt/8DCqdwIM5kVvUBNfOpR3wk1kqrkW7inLyFBT6I9PI5j4INsBwi5DOp5nu9EUZpdqcanecgh3L4Uh2t3oJWTBEfKlq9rZWsTb3KlOqJyMn4qGdSgaYf83zllGDhBZ6FHtoGBc2FmbR8dTAEvNjuTH/yquTITD06qQ+MnFbbZNt+lvJ/7ifyPZqikCJ3f4rCwSJpCkKHkZkNwPOf4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lCKsifHl//WqaOE4laM27/d9HRe4XOsrLgtx7y8YCbU=;
 b=b0aEQYKI9y+j0vuu/5ExHr2P7qCwapfHwh5uUHsat5VeNdG3H5DSz+bDvqZ3mb9ZQN2NGt95V0MigWP0aTLIv77bUafqfFrBNKrjgnuGlqMjUVzA5lNH/sNgfl1a18z5qlD6tO/9bZkmknjgyI5h8CTVBp4V3EgU/vYzyqLk7YIA3U2hUdOUHFHCGIvr0IKz+vxN2iSmX17ZXHwK7Jj/tvwknU6cZfxR1QKQa+7D5Ttr6s+6hPx8PKGxX8dWEruJe+ligNN/6LGdKT6jqesFeZWZ5T9b28giwJM6CNFn+bnr8K4caYX0H789uZUs9WMfu3tTHUArzYKrvEhFzAfLAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lCKsifHl//WqaOE4laM27/d9HRe4XOsrLgtx7y8YCbU=;
 b=KNQLbP8hePlJ5wq7atqL6OcA9qvS+Zb+AelEi1RuCHwqhvtyR/+oQqsKDGzQbbbVPLXzDUdpCXOQeOqIfBFQk/AaMRHJMZ8EUWJKTDeI99Ea8EB49kqUS5PguvbsotntailRzRAUget9s1aQlQOdhxmjzX4dZ9HTJzP7103SlLQ=
Received: from SN4PR0201CA0052.namprd02.prod.outlook.com
 (2603:10b6:803:20::14) by SN6PR02MB5263.namprd02.prod.outlook.com
 (2603:10b6:805:70::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20; Thu, 19 Mar
 2020 09:45:09 +0000
Received: from SN1NAM02FT064.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:20:cafe::14) by SN4PR0201CA0052.outlook.office365.com
 (2603:10b6:803:20::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.20 via Frontend
 Transport; Thu, 19 Mar 2020 09:45:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT064.mail.protection.outlook.com (10.152.72.143) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Thu, 19 Mar 2020 09:45:08 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1jErjg-0002Y6-7C; Thu, 19 Mar 2020 02:45:08 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1jErjb-0008W2-2m; Thu, 19 Mar 2020 02:45:03 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02J9ivVV018586; 
 Thu, 19 Mar 2020 02:44:57 -0700
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1jErjV-0008NZ-7j; Thu, 19 Mar 2020 02:44:57 -0700
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v4 1/2] serial: uartps: Remove unconditional wait inside
 set_termios
Date: Thu, 19 Mar 2020 15:14:50 +0530
Message-Id: <536e190dd5bbb474007a67e6323c048288942a28.1584610774.git.shubhrajyoti.datta@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <cover.1584610774.git.shubhrajyoti.datta@xilinx.com>
References: <cover.1584610774.git.shubhrajyoti.datta@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(376002)(346002)(39860400002)(199004)(46966005)(336012)(4326008)(36756003)(426003)(26005)(47076004)(2616005)(2906002)(478600001)(5660300002)(186003)(356004)(6666004)(6916009)(107886003)(44832011)(7696005)(9786002)(316002)(70206006)(8676002)(54906003)(81166006)(70586007)(8936002)(81156014)(136400200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5263; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e9d2f405-3adc-46cb-e1c7-08d7cbea361d
X-MS-TrafficTypeDiagnostic: SN6PR02MB5263:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5263503ABF0C0DD00EE05493AAF40@SN6PR02MB5263.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0347410860
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /OH58snLChHYWVoud3gQWMkM2CIMbOBzVRRXUnLkFtJebwJ2WAghB2+CkwH5dA3aiYE6D5KpwUfx7XhrZJhKOk1eQ5/w+IBhvxXDqyYIWdKv4GKqoCGr3LCV8ZKyH21/ubj5f7Z+oVl/HYnAnSaEOmfitT4ls9r5WuPizo4QBCs/1kF9zTozkLuQD2CkvFq2SAZ9fgOh/r7cnfHkisPnndIGX/DZxD+ri5p9C7Rxk1Qz6IMRIUw+pSCHEssC//ohEf+n1ofhqBxzh+cZnd02tP+1UgnUnwt6x4H6GjtMXOXg61XzCfvOIJxFIx1Y119DHaf9S2kPiK3Fpj5C44r7Mi/LJQ+usoqBR8HwTbJyaYohDUYqz+7m+QAOBOWegrDlb1dI1zPSDoR3WArnFtnaJeR+mR/srH1X3YhDg/gT4LnEMI+d2SDnz2leWKoPypvrF7GyrojBKhut7gZ81PaP1VdqSlC1a7EGGo5dLLWCipwvj/hKM3Wh1xmk6dJsJ2A8870D6qaSYCm8tVnXXZ7GXoUBCQWvxbKyUNuAz9Do23A=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 09:45:08.5800 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e9d2f405-3adc-46cb-e1c7-08d7cbea361d
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5263
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_024512_179908_D35AAF57 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.92.53 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Raviteja Narayanam <raviteja.narayanam@xilinx.com>,
 gregkh@linuxfoundation.org, Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
 michal.simek@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Raviteja Narayanam <raviteja.narayanam@xilinx.com>

set_termios function should not wait for the transmit FIFO empty
(CDNS_UART_SR_TXEMPTY) unconditionally. The tty layer takes care
of it based on the parameter passed (TCSANOW/TCSADRAIN/TCSAFLUSH).

Signed-off-by: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/tty/serial/xilinx_uartps.c | 16 ++--------------
 1 file changed, 2 insertions(+), 14 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 30a1425..662b8ab 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -706,20 +706,8 @@ static void cdns_uart_set_termios(struct uart_port *port,
 	u32 cval = 0;
 	unsigned int baud, minbaud, maxbaud;
 	unsigned long flags;
-	unsigned int ctrl_reg, mode_reg, val;
-	int err;
-
-	/* Wait for the transmit FIFO to empty before making changes */
-	if (!(readl(port->membase + CDNS_UART_CR) &
-				CDNS_UART_CR_TX_DIS)) {
-		err = readl_poll_timeout(port->membase + CDNS_UART_SR,
-					 val, (val & CDNS_UART_SR_TXEMPTY),
-					 1000, TX_TIMEOUT);
-		if (err) {
-			dev_err(port->dev, "timed out waiting for tx empty");
-			return;
-		}
-	}
+	unsigned int ctrl_reg, mode_reg;
+
 	spin_lock_irqsave(&port->lock, flags);
 
 	/* Disable the TX and RX to set baud rate */
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
