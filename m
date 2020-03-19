Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 153F118B078
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Mar 2020 10:46:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8s5EFe8v+aRw1JjjPLcV/cI9sj0vYSk2hhpOwTtEXWQ=; b=B5UTmgxzCTe06l
	m2bY/LgjcjiV2HjH69dva5cva8UOJpuc16SsPVTu+PcWiG6Lii9ujFXcDfTQSZrd+i9i17ouoY4bC
	hQWkq7i+fdmqtW8FoGFerO3Y3tqM3rf088LRslRsC1wE8MY+H8QKCasN+CXNjImG/M5CdjvquC+HF
	HcjGfy7gHbE4UR1NmlCNlQWvDIwmAqdDnfRRF5anqn6rVBym29OtlKtJSb7FBatT3Y9OIPt4j7rUm
	0QRbsuPowgqoNpMjvUPnWztB8ArvRajjcYiA2yTYIgam9TdSPmyj3eXBAG9QQ7m2e3+cFEVQ+Z0DD
	BgxdF5XIuS56xyoTTWcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jErkT-0006Mh-6z; Thu, 19 Mar 2020 09:45:57 +0000
Received: from mail-dm6nam12on2083.outbound.protection.outlook.com
 ([40.107.243.83] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jErjl-0005tX-TY
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Mar 2020 09:45:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SONbUufu8XuChisLlK9s9Xkvt2ZSlrFxbMW7flXW+knJ4v+iliV1J/eeNCgK1LYaYIgVmY6e90+9YZ8sghrXPI3SAQoaqJgZD48BCBim4rAy9H9h3/fN9wCBXdPxF9HaVuxniC1mbhzLNGA5S/RUDyGwHwE2vIoUGbtwCgCYiO9HEjmVqpVY1B4ylwkIEoSZJ91qwLcSHqim6RnlJJzvEvibWnSuWiyT/9NGabqbD98P3smJhjaDPULfIDis260JItpjfCZcwKUq3Misv9rovk94XfMsbaHq6Nvhg6KFrfQ+Cxd0YhWAKbWSFEaKUGTbjf8rSQC/uyyAhxxfru4pyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yeRnccj7lAjcY/33dX/4CYlLBRY1+AhpnuqtzhpazJM=;
 b=DAF/FzIKjvVbaGRNVyciPOJZzPjiLtO1YlppBxT1+14LbMDy4+rsT/j+pQAnPDP/S41bYwveBjI9pS7+lfx5WbdsCBmHB/gZkRLrP+xGpXZxqnWZWXfDqGEqunBzlPw/1cw0nnQWxyMCYo3IGDOdxARQ0Gi/cqLSzc3FsG3YlSkO6G6XYWWXlyusuQrAPB9zIUdbaj7/fBar3AD0GMIYT17WsoXv6xtjoV387NFTHb+grGsPqgYRIpXVa1LRTDVMbU9hn3L0I8dpNGuHJgH8xgRlg/XBwYYLLSgv7IS27xxSASsE8ZV1GJhTq30se3YqZ4rjDqVrAr0ToY92Eh/RTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linuxfoundation.org
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yeRnccj7lAjcY/33dX/4CYlLBRY1+AhpnuqtzhpazJM=;
 b=U9z3+pSwei+sApaGsxsHshocdGDUwjWHTnkuzJvoE7eJiUlAkuzVamA8AgjC+KmKBCUAnIJIs8DAA/0afGFQk+VkIaPEH/9mRmEpiGSpf7/HOj8zvUMW+5CDKTLzJ1QtCSDdh36XwLQtJPEetSzYOrJkIGmWUFOvEEPK/zDcsgA=
Received: from MN2PR19CA0015.namprd19.prod.outlook.com (2603:10b6:208:178::28)
 by CY4PR02MB2869.namprd02.prod.outlook.com (2603:10b6:903:11e::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18; Thu, 19 Mar
 2020 09:45:09 +0000
Received: from BL2NAM02FT044.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:178:cafe::8) by MN2PR19CA0015.outlook.office365.com
 (2603:10b6:208:178::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2835.19 via Frontend
 Transport; Thu, 19 Mar 2020 09:45:09 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linuxfoundation.org; dkim=none (message not signed)
 header.d=none;linuxfoundation.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT044.mail.protection.outlook.com (10.152.77.35) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Thu, 19 Mar 2020 09:45:08 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1jErjg-0002Y5-2c; Thu, 19 Mar 2020 02:45:08 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1jErja-0008W2-V7; Thu, 19 Mar 2020 02:45:03 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02J9j0N9017457; 
 Thu, 19 Mar 2020 02:45:00 -0700
Received: from [10.140.6.59] (helo=xhdshubhraj40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <shubhrajyoti.datta@xilinx.com>)
 id 1jErjX-0008NZ-TY; Thu, 19 Mar 2020 02:45:00 -0700
From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v4 2/2] serial: uartps: Add TACTIVE check in
 cdns_uart_tx_empty function
Date: Thu, 19 Mar 2020 15:14:51 +0530
Message-Id: <e2514818af5973be291cc117d07739f068b71639.1584610774.git.shubhrajyoti.datta@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(376002)(396003)(346002)(39860400002)(199004)(46966005)(44832011)(478600001)(9786002)(7696005)(356004)(336012)(426003)(26005)(8936002)(36756003)(47076004)(6666004)(4744005)(2616005)(4326008)(107886003)(70586007)(70206006)(186003)(2906002)(8676002)(81156014)(316002)(6916009)(54906003)(81166006)(5660300002)(136400200001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2869; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9d47b3d1-aeec-49e2-ef86-08d7cbea363a
X-MS-TrafficTypeDiagnostic: CY4PR02MB2869:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2869CC4E554618AE2746950CAAF40@CY4PR02MB2869.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:324;
X-Forefront-PRVS: 0347410860
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: lVPdec2iGTUSVmPHLiDtJbfSjdmFwXOlCtbVfw7eKALdzYaADn+iAu1qM0tI66SllZg7Nf9GZ+Yuva2ESJaA7E9chhyFlMM+zYlRmt+wi1yjC2k60TelwnQGEAjd/8woTE5vcOnvTGS2AHfFdhuWmGCR8vv4cdU9eaWhrgbfxIP6SH1Ja9Je+0pCDW/449dYCBJ8MkrOow1zWKUWoSX9tRN2ta/+Rpj5vau7zEt+E7w+pciUPaxvlpHw0I3kXDzumG4ZEVZx3NWmKjzFSAuORgGFN8fkCvG511E9vn5fRT86DKoYZMbvCYweLVGd4NFvFLFDgZWIxelskIUUZ3dPzhILLhxMg9AlJRuBXnTVgZ6OLZG7uc8nLPGsDCiVogyHg9tllcHc4+iaNSSwxltYKwMI2ITtVsFfdisLUorPOLCtZTahSlbgTDfnZnSQ7XcicZnlTYzGSvbjdtmUalD2CUHhJbARkBL44uVkOmsHmQTXOV1IpV9jgWLaLM/anBgHpu1fZZ0YOF8SljMOWNYrxWf+hMQN/tRzpuOxEUYqqTk=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2020 09:45:08.7090 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9d47b3d1-aeec-49e2-ef86-08d7cbea363a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2869
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200319_024513_950789_9587D012 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.83 listed in list.dnswl.org]
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

Make sure that all bytes are transmitted out of Uart by monitoring
CDNS_UART_SR_TACTIVE bit as well.

Signed-off-by: Raviteja Narayanam <raviteja.narayanam@xilinx.com>
Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
---
 drivers/tty/serial/xilinx_uartps.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/xilinx_uartps.c b/drivers/tty/serial/xilinx_uartps.c
index 662b8ab..38cb76a9 100644
--- a/drivers/tty/serial/xilinx_uartps.c
+++ b/drivers/tty/serial/xilinx_uartps.c
@@ -663,8 +663,8 @@ static unsigned int cdns_uart_tx_empty(struct uart_port *port)
 	unsigned int status;
 
 	status = readl(port->membase + CDNS_UART_SR) &
-				CDNS_UART_SR_TXEMPTY;
-	return status ? TIOCSER_TEMT : 0;
+		       (CDNS_UART_SR_TXEMPTY | CDNS_UART_SR_TACTIVE);
+	return (status == CDNS_UART_SR_TXEMPTY) ? TIOCSER_TEMT : 0;
 }
 
 /**
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
