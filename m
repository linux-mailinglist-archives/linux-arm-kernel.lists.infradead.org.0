Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D618A13DBD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 14:29:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ABL9BNwefA/C5bOKd8O2mKEaEmw/ohPBlWBqgVts2Tk=; b=CjYYzqTK0GXqIZ
	hiYR7mYpmJUNpL6DTRI7BrifhahxmM4ejfYPHsGwtuEjledPcp3076SZMhvs38c1BnHam9Q33jDy6
	i14oKv36eg/ngkVqPRtcBGjwmA9pvjh2KDGbTyEwL4BgSvAkborVu6AWKA5kR7fvH8RAG/R/KyndI
	SOCBF1032HNAJSGxPqaGwUMWmsskoYgkbvqiigW9eFcDkPbW3C3N6ehZv638SIAYB/txwYwEsAfCJ
	3eOGoUNAKbAeYOsKTO8mmVHT71FesAEPB1B+PGrxH+WRXlvzqF1zelCjmm8caGAX+yvIPo41Be5ZV
	bfBXlfXI/bMr7aBkDYcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is5Cv-00014w-67; Thu, 16 Jan 2020 13:29:09 +0000
Received: from mail-mw2nam12on2050.outbound.protection.outlook.com
 ([40.107.244.50] helo=NAM12-MW2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is5BN-0008GU-Av
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 13:27:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WwpnR1rINxyC+fq6RCRdZbm/KKbE4LmtDdw3EKCBJDaOWBMGPFO/WT2rDPpLPTa6pnKbkN5BtAUSpha7D5EKmOWioR6y+mIl7azJK9PsA/UjKt2wT4MYgbB8UFq94qdxfbSCU8QJSgJW8Ytn68o9br/3y+K5GqQx+PIQ4AxiA6f+P0W7Z0xrUoQ5IGLyiBdSEvXwr/yVviUm7BKpZ8Wga9kgHNvFoq3ZDfa1CtFUf1qCTzugYteDT+i8BbCy8uKUIWV4V5mXaaedlHlTYKjJ2+YVJBrSlqaMmcQIfYcJkrmbSNDLzdGZE+lTZamAZh1LCMPVaz0/T7U30pEurWZ0LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICmQRM8Ttcu3nE+FhN8Dk1r9yi7i5Pj3cKYog5AH4uo=;
 b=VBx8YvQvwT/6OWBn4jEeUqeT0cEdOJP7yLzcq9FkIchTx89w76BBXk79XMJIxt58J2JbLLHWuhJwPUSMY77U43MonD+qS7PqeumhZjtiLHXuJoUCLhqVUPK+A4hodX/PCuBlAqxEn0t6B8Zn2zokaVx+K7VLGIQh9MOPHNqrQNm4gDS3hK0Py+pHrIjHtQf2GKVbC7f4YVSfam2f91dwebAI5ddxQhvQaDV4w+ukkdIiteIp6hhnG37WmhZhTlsEGK9PtWaTYDRDgdq94CdIO2vSnBHE8yGIMKhTZcpbn4BgwkhzsBs218J6p9yzvOD8bCgbfl7YftrgqlAbOCaQ0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ICmQRM8Ttcu3nE+FhN8Dk1r9yi7i5Pj3cKYog5AH4uo=;
 b=HJyxnAQbZyStUYRnqHo3oZApB/Tr4GGA8ClEwSgswRerIIL6cY5Un+7SBGvT2VKC2Hhh76Q5NKBNvYoDcIjFv1Ytu4Ph1Xu8fnt9i9XsCL1GVeFtXoSSHrpG3icgLnUsZIw7yLOwS6nWzRE2mHXo3rT+PLXdHXWDStQqQJIWkA8=
Received: from BYAPR02CA0014.namprd02.prod.outlook.com (2603:10b6:a02:ee::27)
 by CY4PR02MB2198.namprd02.prod.outlook.com (2603:10b6:903:a::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.17; Thu, 16 Jan
 2020 13:27:30 +0000
Received: from CY1NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::200) by BYAPR02CA0014.outlook.office365.com
 (2603:10b6:a02:ee::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2623.13 via Frontend
 Transport; Thu, 16 Jan 2020 13:27:29 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT004.mail.protection.outlook.com (10.152.74.112) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2623.9
 via Frontend Transport; Thu, 16 Jan 2020 13:27:29 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5BI-0005vn-J8; Thu, 16 Jan 2020 05:27:28 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5BD-0001Df-FJ; Thu, 16 Jan 2020 05:27:23 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00GDRIQo016384; 
 Thu, 16 Jan 2020 05:27:18 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1is5B7-00018J-It; Thu, 16 Jan 2020 05:27:18 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linux@roeck-us.net, michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com,
 sgoud@xilinx.com
Subject: [PATCH 6/9] dt-bindings: watchdog: xilinx: Add binding for Versal
 watchdog
Date: Thu, 16 Jan 2020 18:56:54 +0530
Message-Id: <1579181217-31127-7-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1579181217-31127-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(346002)(136003)(376002)(189003)(199004)(2906002)(70206006)(356004)(6636002)(6666004)(4326008)(70586007)(9786002)(36756003)(2616005)(8936002)(81166006)(5660300002)(81156014)(186003)(7696005)(316002)(44832011)(478600001)(8676002)(26005)(426003)(336012)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2198; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dc2c748b-ff66-4342-ea33-08d79a87d5a3
X-MS-TrafficTypeDiagnostic: CY4PR02MB2198:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2198CD68E5D84B4A76DC09C6AF360@CY4PR02MB2198.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3826;
X-Forefront-PRVS: 02843AA9E0
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: N1REqIkAVvb90qxPgZTt4TxUuC77SkeBY9nUrswVcFj5oRcmE5wHgkHiy5ONs+pfEJM1cFDi6ViRGIUxFsZA60JSNowpgq/pv860mdsdUDkaNDcH4LF3F/4aDev+iyjVIFK8BJlfO6/Wqbf9hGaP0LkCrzmWmx0tfPF9aNffHnQPf5p7QVBYit5MOZoSujw1xVm67gZNL8kYWdUapVUHc47KCcEzabQEtt9+Pg1VeAb3Z3A4BrvBkjBwlJcr79pYE8HeRCtG5xR/Vcb0KAOuaIORlCPYXcClqHpeySbJXrEi5xo9R/92It2S9qKyDijbfV5p+0IMivOmKSDfIQWf71KIREZhiJ1+QXcntTJT5zIql2WkcbpsBgR828+sB8NWC6cRNZv+Zri3JIDcRCRlbgq36nCJwur93QWDVIU/TXMzgwhURLN0yWP/iGgyVGkx
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2020 13:27:29.0445 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dc2c748b-ff66-4342-ea33-08d79a87d5a3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2198
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_052733_382101_1B93FF37 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.244.50 listed in list.dnswl.org]
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
Cc: git@xilinx.com, wim@linux-watchdog.org, linux-watchdog@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Goud <srinivas.goud@xilinx.com>

Updated watchdog binding for Versal window watchdog.
Added timeout-sec DT property.
timeout-sec is optional property for Versal window watchdog.

Signed-off-by: Srinivas Goud <srinivas.goud@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 .../devicetree/bindings/watchdog/of-xilinx-wdt.txt  | 21 ++++++++++++++++++---
 1 file changed, 18 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/watchdog/of-xilinx-wdt.txt b/Documentation/devicetree/bindings/watchdog/of-xilinx-wdt.txt
index c6ae9c9d5e3e..10d68003158d 100644
--- a/Documentation/devicetree/bindings/watchdog/of-xilinx-wdt.txt
+++ b/Documentation/devicetree/bindings/watchdog/of-xilinx-wdt.txt
@@ -1,21 +1,28 @@
-Xilinx AXI/PLB soft-core watchdog Device Tree Bindings
----------------------------------------------------------
+Xilinx AXI/PLB soft-core watchdog and window watchdog Device Tree Bindings
+--------------------------------------------------------------------------
 
 Required properties:
 - compatible		: Should be "xlnx,xps-timebase-wdt-1.00.a" or
-			  "xlnx,xps-timebase-wdt-1.01.a".
+			  "xlnx,xps-timebase-wdt-1.01.a" or
+			  "xlnx,versal-wwdt-1.0".
 - reg			: Physical base address and size
 
 Optional properties:
 - clocks		: Input clock specifier. Refer to common clock
 			  bindings.
 - clock-frequency	: Frequency of clock in Hz
+
+Optional properties for AXI/PLB soft-core watchdog:
 - xlnx,wdt-enable-once	: 0 - Watchdog can be restarted
 			  1 - Watchdog can be enabled just once
 - xlnx,wdt-interval	: Watchdog timeout interval in 2^<val> clock cycles,
 			  <val> is integer from 8 to 31.
 
+Optional properties for window watchdog:
+- timeout-sec          : Watchdog timeout value (in seconds).
+
 Example:
+Xilinx AXI/PLB soft-core watchdog:
 axi-timebase-wdt@40100000 {
 	clock-frequency = <50000000>;
 	compatible = "xlnx,xps-timebase-wdt-1.00.a";
@@ -24,3 +31,11 @@ axi-timebase-wdt@40100000 {
 	xlnx,wdt-enable-once = <0x0>;
 	xlnx,wdt-interval = <0x1b>;
 } ;
+
+Xilinx Versal window watchdog:
+watchdog@fd4d0000 {
+	compatible = "xlnx,versal-wwdt-1.0";
+	reg = <0x0 0xfd4d0000 0x0 0x10000>;
+	clocks = <&clk25>;
+	timeout-sec = <10>;
+} ;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
