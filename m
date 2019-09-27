Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B8E3C0C1E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 21:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BKGG/7CmiafmideBNiQaUX/XSkBdp+9Oie1ujiWXW+M=; b=Kx/vMRc0OFVWyO
	wlPfvzuZVYa2pcM1tQrF7Sz403zgtunij5e8OqGpudXMujdUaJA4JHbxxb36ZH27xR9/qeKXnvgJt
	jvyKRtjSGorvhKTNnSWjpPBq4npAHVttdiD9AyBYFIey7kn+lt6SdWJaBz7hwYtwjR2cCAHGooviI
	Sq0zx5rjSojKFn5NlszWSAN/L6y43SsxSMNZvxnip42CKELvBhfTj54FzkPULG2u3RVtwZwaYSGG/
	0/Nevl7FPm1LRzgj6rGgvIsY1Y5svRg8icxrhXolamgGDDNDukwSJ84Sts/VCh0knKvO05YJcBi08
	RrfMyIIadB2sMmSQ5iSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDw6c-0001Cu-CM; Fri, 27 Sep 2019 19:40:42 +0000
Received: from mail-eopbgr680048.outbound.protection.outlook.com
 ([40.107.68.48] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDw6S-0001C5-Kf
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 19:40:34 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VDjWVARtcQSqMXA1o37of+cXoNpALREwA4u+OhPdFHl7g5E32S2wFzVS9mbjJysQq6PzblBAmDm0Go+nKuL62OgNui3VszN9LI81EQXpV4xsD2AxyxbUbUFRyFW8Tf9zn8OkbqAd3yXSuZ4IjjTNgpb66xMJFEjP6lweBBv0HtmMF/T+KjPpa1TFkSr7o2Ggh7OUaEUCR5dtkfDHXzi9mljGQhuKf2XFBejIOc/bsWMZ05nCCMBBGTlrmJKmIDj5aNmjMDsYbG6wCy1C7Fz0hvbV894XASa1aL1JTHSlusIZqQYJwQ2iDVcOkA5pOl161sapOMeSO176tK6SA1hTSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YtFp2Lg4n+5iP5vvY0eUoF0Xjw5rmocbiF6KRjgCDbQ=;
 b=QGpyCtw3j6GvF2qSGjBOJG++aiiEwlAHRaYtPrsvKW6xm+kEJ6y0m/ouO9A5EWxEYu3jNp3pyz9HfRew4ZUfKGFtuWxAUlvUFjpEqAmMHtK1VyDqBGdGanBdqIxi0N3JGNi6esgwbUdlT1yEePcBNovwJYhbULgkBwNevRj+M67/nOtZqyegYi7DEbjsV/jvxByiR/K4uPnBv7dTW9pfX9TLHCXUjTmJh5fOz2VQeceYf3EhCpyro2sZTcpsJz48GjyS9MWfjGpE/9JPdGCzy4EouZ4lr8YlfPUIO3MQY0GIOgs7t01rXc1I45X/n2Cw/sxi2JXB+wYHFE8qpEt05A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=linaro.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YtFp2Lg4n+5iP5vvY0eUoF0Xjw5rmocbiF6KRjgCDbQ=;
 b=qWsSxV5E60RyFbtf1mMvt+pIhmktBaDu9RYY4JlUoANpN8/mICtGhb8R6LWFNbzPKm1uw4xR5TzdiNK+cnWp9tQfy1b1U4Q9xkgwWX1o4juzRX7rUVXINhKi4PT19WcCQcbWD04Oy8bya29hQEp0QozO07Agbc8YXXywjdzNRy4=
Received: from BL0PR02CA0103.namprd02.prod.outlook.com (2603:10b6:208:51::44)
 by SN6PR02MB5344.namprd02.prod.outlook.com (2603:10b6:805:71::30)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2305.16; Fri, 27 Sep
 2019 19:40:29 +0000
Received: from BL2NAM02FT054.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::207) by BL0PR02CA0103.outlook.office365.com
 (2603:10b6:208:51::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2263.21 via Frontend
 Transport; Fri, 27 Sep 2019 19:40:29 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; linaro.org; dkim=none (message not signed)
 header.d=none;linaro.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT054.mail.protection.outlook.com (10.152.77.107) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2284.25
 via Frontend Transport; Fri, 27 Sep 2019 19:40:28 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6O-0000L1-95; Fri, 27 Sep 2019 12:40:28 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6J-0003aE-4t; Fri, 27 Sep 2019 12:40:23 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iDw6B-0003I3-Vh; Fri, 27 Sep 2019 12:40:16 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com, michal.simek@xilinx.com
Subject: [PATCH 1/2] dt-bindings: firmware: Add bindings for Versal firmware
Date: Fri, 27 Sep 2019 12:40:05 -0700
Message-Id: <1569613206-20189-2-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1569613206-20189-1-git-send-email-jolly.shah@xilinx.com>
References: <1569613206-20189-1-git-send-email-jolly.shah@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(189003)(199004)(6666004)(11346002)(36386004)(446003)(16586007)(50226002)(426003)(478600001)(336012)(81156014)(81166006)(2616005)(8676002)(44832011)(7696005)(5660300002)(126002)(36756003)(50466002)(305945005)(476003)(4326008)(70206006)(51416003)(356004)(9786002)(107886003)(48376002)(76176011)(486006)(8936002)(70586007)(47776003)(7416002)(26005)(106002)(14444005)(186003)(6636002)(2906002)(316002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5344; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3222c221-ef70-4599-01a6-08d743828d35
X-MS-TrafficTypeDiagnostic: SN6PR02MB5344:
X-Microsoft-Antispam-PRVS: <SN6PR02MB5344F134834CFFF540E2B180B8810@SN6PR02MB5344.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 0173C6D4D5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: b+Tuhhe3XgFf1POvi1lNL8qWQeTNujvDiH09eBhp9C6cHR+7VCoQwvYBHYbhf0Qpd8SCl1TxDkb5Hu7tEWR1vjpLCsabU0DKaQamiIXE3kosrbKvMAQ03+KTglCXEm2ep1b46whpAFWxhwM4aI3+Ny7DPN0B4UiHHfFADEbS684PM34Yq/hhMyeiv+2v4ym5FNLs0bx//mEAeyYOF7m4orCDVTTb/UTG9sSrIWg3GU3vwtjQqxGi0AFJdBubGMEI2h/r2LUa8DNNJNwejSfcsI73N+8kNjsLjNgYp38Zx877YgR4xQT5+Xqwq0DXsw50WNMIcWn+DUo6h8G1wFApURIA/2J7DU0m3xWhJA7M9HtRUkHnVVM59XrSy8spTivn7wUrUJ3HoenVV4cVxxVncNwAz5vCxEGbpJvzMts9FUM=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 27 Sep 2019 19:40:28.8344 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 3222c221-ef70-4599-01a6-08d743828d35
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5344
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_124032_680430_387C4B2A 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.48 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, rajanv@xilinx.com,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ZynqMP firmware driver can be used for versal also.
Add versal compatible string to zynqmp firmware driver
doc.

Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 .../bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt    | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
index a4fe136..18c3aea 100644
--- a/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
+++ b/Documentation/devicetree/bindings/firmware/xilinx/xlnx,zynqmp-firmware.txt
@@ -11,7 +11,9 @@ power management service, FPGA service and other platform management
 services.
 
 Required properties:
- - compatible:	Must contain:	"xlnx,zynqmp-firmware"
+ - compatible:	Must contain any of below:
+		"xlnx,zynqmp-firmware" for Zynq Ultrascale+ MPSoC
+		"xlnx,versal-firmware" for Versal
  - method:	The method of calling the PM-API firmware layer.
 		Permitted values are:
 		  - "smc" : SMC #0, following the SMCCC
@@ -21,6 +23,8 @@ Required properties:
 Example
 -------
 
+Zynq Ultrascale+ MPSoC
+----------------------
 firmware {
 	zynqmp_firmware: zynqmp-firmware {
 		compatible = "xlnx,zynqmp-firmware";
@@ -28,3 +32,13 @@ firmware {
 		...
 	};
 };
+
+Versal
+------
+firmware {
+	versal_firmware: versal-firmware {
+		compatible = "xlnx,versal-firmware";
+		method = "smc";
+		...
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
