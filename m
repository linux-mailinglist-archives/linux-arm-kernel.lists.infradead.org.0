Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BF1161227
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:35:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H5cJ6/lwWMlzPBsw6rs/aM2p4tArV25XrDopw3p4ON8=; b=iNc/mYmidhxaJb
	x+sCdUu56BTEw4VY78cumInzfQjlXpigxjDA09YJSRaixem7+rDTlUBcQU/gN2UFzYLHQEBDrqWkS
	DoNLRu+4J4PTqkDMlWS3OlxX2of9iRhaPKq6ao0txo2lvOfFlZanKgBJtlede+8IhNzBpn8aXy65w
	WUQALITnQ8/chDJDf/zQhz8872PRcghKTcKGyitPjIaFdEnxNw30/DiSZ3KW2rgjp8C21xsEkoTmp
	kDi5GUE4eJerfp1j9GDFGT/w67Z3NotAlV8AJyCc8KIsJQI8x4VULD8XYltqIoU88crgR2NvCDByz
	3ecDLiEQ0g1niJq4sKqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fbx-0001Ob-8I; Mon, 17 Feb 2020 12:34:53 +0000
Received: from mail-bn8nam12on20600.outbound.protection.outlook.com
 ([2a01:111:f400:fe5b::600]
 helo=NAM12-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fao-0000Ra-Gi
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:33:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nG1tEbfLIVLCrUnRIgZZ6hqcgI087tTwvXGIW6x3kahql8VT1KYCk9YXoCjC0/l0D+Pzf5PGRTuOkMMtgtp4zVMO1z+2RuQUNoXeSUo6hchLaXQq2M8tPP22zwJXC0T1K9N8q2ElfeOLLPfJTw/QVjUMh4pmEhCqaJ4EQ/IJj9mWJPg5VqcQ6h0g0akBC3qgJlgwxf4VcTaIMDqqZyDSYEVRXBvLS8cQqAjGAa93VsUfc6+UYRcg//ZietVw3OknU8nTiH4ZVO6iaQAZZrdY9XyHk3u2DT6XPpgPdqbt6cygm9u1IFCjBLe2CSj3ir7Oq/r1TCIJeHqr4Q73Ghm9gg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXsWs/NILqtvJmeQDIZn/NpG5VHTbcjJu0sEZpembgI=;
 b=VUzpx3IeGNP0p4QXurzPdnocnDCVnIx60NKJ4PqW3DxkBUMI86WU/8eftFASKAe+K8on1b9QLAdDhVa2I+rGtkgNuYRg4QJNndxEJH7hjbM32l9fMc+b8W+8NXzjJ3XVWNhfS8gAkWqfviHAXQ30NT/q1HgUJExnvxemmoip4YuPxM0OeYqZ9N5L45GssQvzY1l44HlxafpiLnp0gSCwMv0pLZbvojuUyB3Mmi0YtcXQ+v8sL3Zvk5QydZSlmOOQrthKhDJ9I8sjGsZ2OBbuH8qGkO75LQu1XhJcJQnOS/Kp/T60uT3Klm9PLUO+AfkKD0vf+Ar7Pd24IeGHcl5Xww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=sXsWs/NILqtvJmeQDIZn/NpG5VHTbcjJu0sEZpembgI=;
 b=UD23pRoAE0HWaYJC61dyLMk0qp8nFHo7dK7Lr1kGDt2Us1W/dQ3f5ByBccqcjW7Ussb1SpBj80A41U0U6eA5PhFwtaQWA3BzV1RNqPZuoPFS33JQmqnFWFR6nBPrk93I4JEGoJqOjU4zcHG8J0QyVRC1iqEJpouxyOYWlVyStMI=
Received: from MWHPR02CA0002.namprd02.prod.outlook.com (2603:10b6:300:4b::12)
 by CH2PR02MB6630.namprd02.prod.outlook.com (2603:10b6:610:7d::10)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25; Mon, 17 Feb
 2020 12:33:38 +0000
Received: from BL2NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by MWHPR02CA0002.outlook.office365.com
 (2603:10b6:300:4b::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.22 via Frontend
 Transport; Mon, 17 Feb 2020 12:33:37 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT011.mail.protection.outlook.com (10.152.77.5) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Mon, 17 Feb 2020 12:33:37 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3fai-0000Sb-So; Mon, 17 Feb 2020 04:33:36 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3fad-0001wt-Pi; Mon, 17 Feb 2020 04:33:31 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01HCXMmi025858; 
 Mon, 17 Feb 2020 04:33:22 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3faT-0001uE-Jk; Mon, 17 Feb 2020 04:33:22 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V3 2/7] dt-bindings: gpio: Add binding for Versal gpio
Date: Mon, 17 Feb 2020 18:03:08 +0530
Message-Id: <1581942793-19468-3-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(136003)(396003)(376002)(346002)(199004)(189003)(478600001)(356004)(6666004)(9786002)(70206006)(70586007)(36756003)(107886003)(81156014)(6636002)(7696005)(186003)(8676002)(2906002)(8936002)(81166006)(26005)(4326008)(44832011)(5660300002)(2616005)(426003)(316002)(336012);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6630; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 532a7220-436a-4af3-e861-08d7b3a59cb1
X-MS-TrafficTypeDiagnostic: CH2PR02MB6630:
X-Microsoft-Antispam-PRVS: <CH2PR02MB663067765BD7DB333AE69673AF160@CH2PR02MB6630.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0316567485
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: XPJ5dHIKIcBg/axtzFUm97qUKJyemTTozUdYwnDM9phXPRpIOcfJP98qThrysH2z3TsA3HjHTWIVmT29yhx1YbPTiVGLW4otFrJ/flCJKDVmJTLTXIY+S8Iiasn7p6HKwmIcSyjGvPhUN9BB2iDtMpZrXAS3onWHZkziwgI57ARuXnBUEVyVQgyfYlxM0KwOJjI18pp4oOzU6D3KUd5Fq4t2QTZVAFNIkVs/UuUUIsW8f2Y8FnGCt1IspAWU8ulUj6uOlFeipQWUHPKiM5QNNvqM+201kkPTT01HRhnLGFyU0YjUSrW+BBRSLNiF4wCqCDaYXb60bdu0wvs90QRw9SN425jjQq7md07as7C3zfJeQMkOzUo/aL5cZCqeTJrpCRp33atMwZOvwP8bSz64buf+fxDjf5xW9XNtko7xDVEIssFTOLSFQ1lrROfDY6Dq
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 12:33:37.4363 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 532a7220-436a-4af3-e861-08d7b3a59cb1
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6630
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_043342_641083_AD2C92C3 
X-CRM114-Status: GOOD (  10.41  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
