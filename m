Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F03E12AC27
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Dec 2019 13:13:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5cJ6/lwWMlzPBsw6rs/aM2p4tArV25XrDopw3p4ON8=; b=sLqxfdd2q3OAPP
	/gFevscodS1NYYRGnfZ6sMzptCKSWgDfpApydZlwzKqRbhMF0O6DqdyOGbJ4UlPqOZZh3XxnyFzeU
	dj5XOfhQILZln7UwYgrHk45fkQDDSbdWqo7H1CTHRzZmRmeeTTBYPLQPr2F2faBWuG8WBdT2UKqPg
	uP31Mx1DNvjjNvPSm5OH4OC4J7pf3HjPkl9ec6Ej0ha90tpWZocYwv+42j54r1usnOpKzB4dZJKKx
	lQJjXpbl96lX+LXQNrbiBWz1MiBFcoHTPl04EliNFPKq/tL9UoDfUxVMeFFvFo3nM1GfCnhPfGdFQ
	4w/PP/WgV0nwT+R20x9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikS1O-0005R4-9r; Thu, 26 Dec 2019 12:13:42 +0000
Received: from mail-mw2nam10on2083.outbound.protection.outlook.com
 ([40.107.94.83] helo=NAM10-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikS0Q-0004wS-M0
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Dec 2019 12:12:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=I14ugSmajhfKiP4b79gSJUpwBJ8p6PQ83ne68uSsJ4mEem4mxBwSfGAR1EcXpcVi0X7NudARYx/QwuD9mMtlxC0MYqj+XfV4SmIIzAtQXgVbd9iXl/GtFQw0pIyrc0+goT1/i6F/YxMsK1kd5NeI5thuv5h35KQHRcBs+er+HP7QkZV2f+BxxY4t59/d71JQPryW4q+D3JcQJtsaEz31WIlX+VL0b/srKlDnGpHHZTyt28Li5G/NuA8IMT6phdeU493bllOYg8f5cDC1UdEYw9hCLFljnUZdkKv77DJQbtdYy2i0HvluLsnGYH1Dg6aCtod8r9qpoBWvgctKjx8jIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXsWs/NILqtvJmeQDIZn/NpG5VHTbcjJu0sEZpembgI=;
 b=CAWJkQqCNdncl7PibjReCX/C6WgAO2DvMGKfQKonzMZHtm4Fhqes2tePDHz57dUj9Z6C/IQ6CxKrtztxRs6pF0t+igNF6ti//aZNQa0rb761nhNIlENDKFv475S00wzEOkff2/MHezzUwUT50T4dZYG9rtd+DU/9JBn77eOtnLLtpGcPsp08h2T/fryCl6mT5oXGt0tWffArVOHy8nQhH5J5kdHK8Kbi32/JWXbW0iFfqQMMpvfgbwMEPGUKJb9tZ2KYLey6PzyVQDWxW7HQd0PPZRyVFBeMKyrBBWTD7FUfCab3nIml0DDEC4KcHt1PC6FjyBcIOrItSL95kol57g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXsWs/NILqtvJmeQDIZn/NpG5VHTbcjJu0sEZpembgI=;
 b=ASWFzExvni6bONmV3faB1CGfpJ2Blpd9iyUVgVoCZtTTPwXik2BOY1sF1vc0ZrYcoORkOJUGld8dx+CCEHm81XTQM5PoSaYiq7YR6kaPyzLVrPMHEDV+L+q8s4e9qWi09V4tPLd4eQU6kpbkg715+NczI9mr1EBeIXu3oddgz4o=
Received: from CH2PR02CA0006.namprd02.prod.outlook.com (2603:10b6:610:4e::16)
 by BN6PR02MB2530.namprd02.prod.outlook.com (2603:10b6:404:53::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.12; Thu, 26 Dec
 2019 12:12:38 +0000
Received: from BL2NAM02FT043.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by CH2PR02CA0006.outlook.office365.com
 (2603:10b6:610:4e::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2581.11 via Frontend
 Transport; Thu, 26 Dec 2019 12:12:37 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT043.mail.protection.outlook.com (10.152.77.95) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Thu, 26 Dec 2019 12:12:36 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0K-0003JS-Cf; Thu, 26 Dec 2019 04:12:36 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0F-0007wQ-96; Thu, 26 Dec 2019 04:12:31 -0800
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBQCCTBe003133; 
 Thu, 26 Dec 2019 04:12:29 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1ikS0C-0007v9-JD; Thu, 26 Dec 2019 04:12:29 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH 3/8] dt-bindings: gpio: Add binding for Versal gpio
Date: Thu, 26 Dec 2019 17:42:13 +0530
Message-Id: <1577362338-28744-4-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1577362338-28744-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(136003)(39860400002)(376002)(189003)(199004)(70206006)(70586007)(7696005)(426003)(186003)(336012)(107886003)(44832011)(26005)(6636002)(2616005)(2906002)(9786002)(8676002)(8936002)(81166006)(5660300002)(81156014)(4326008)(316002)(36756003)(356004)(6666004)(478600001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2530; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff1e976e-4c0b-4432-d55c-08d789fce583
X-MS-TrafficTypeDiagnostic: BN6PR02MB2530:
X-Microsoft-Antispam-PRVS: <BN6PR02MB25304AF7A88A4C5975AA3CE2AF2B0@BN6PR02MB2530.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 02638D901B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 4H9cusWzXlnKLZePo+quAqVhm3qUwOEaCynVR0TO5wIIlOt/4m5kVHa2UQeJFdOhg3aMIz0JV0A6WQN+tkYJRAZpGCdD4nCJLEla1uiRcxw9j6iZjkuokxmqW/sKwE2ANFL+vK7rhJ/bkTGQ24sD1eg8Sjb3NlOu/+mgnhuYtl6jaMrxKLvhG49VzBW6kNWNTOpYN4g8f6NQep1MuVvFiepsmvqSkaFIF3KN3e91u9twxsr6qmiIhHZWCwHi9ci/l5zDGVRKH3EYgkh0ivgvY8r7ADUwboOuCOmBThcYx84RCA/I13Z1wG1pik3YMOr2k7ziXaOcDzfomBwJM2TcpDgEZSPn7vLL8e8d0IVH8o5m5MsVLEDVcZ0oEVviLBE2OtHewFcp0tJ19MyHu4RzPyU+lBmNLTn7peTFfzpjGgOCXj24ufQd4AAFgo6chcGT
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Dec 2019 12:12:36.9833 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ff1e976e-4c0b-4432-d55c-08d789fce583
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2530
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_041242_717125_836CA2D0 
X-CRM114-Status: GOOD (  10.60  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.94.83 listed in list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Add binding for Versal binding.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 Documentation/devicetree/bindings/gpio/gpio-zynq.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-zynq.txt b/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
index 4fa4eb5507cd..4806d846c0fc 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
@@ -6,7 +6,8 @@ Required properties:
 			  - First cell is the GPIO line number
 			  - Second cell is used to specify optional
 			    parameters (unused)
-- compatible		: Should be "xlnx,zynq-gpio-1.0" or "xlnx,zynqmp-gpio-1.0"
+- compatible		: Should be "xlnx,zynq-gpio-1.0" or
+			  "xlnx,zynqmp-gpio-1.0" or "xlnx,versal-gpio-1.0
 - clocks		: Clock specifier (see clock bindings for details)
 - gpio-controller	: Marks the device node as a GPIO controller.
 - interrupts		: Interrupt specifier (see interrupt bindings for
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
