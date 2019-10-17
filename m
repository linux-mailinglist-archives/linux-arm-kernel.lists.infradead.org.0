Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B816DA677
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 09:29:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yaG+fL4leg4VLpTOtjOrRS3One/hp5MnLVRbM+PI7V8=; b=AdxyC4KIAmDeJk
	qoG+cGMoX6qfxFtstiommcK1TzxGmBvzTl8NzB/bokA7T+8GvhOkZ825mQ1284ECot/0KYexo64Kz
	BkazM8Irlj25PgFrOisQmtVA8cJnFcjZOPy9Je1I+qO1d0AG9hjKJHM57IBvG9JhPb7MRJBa59Rz/
	/rlwW8LvsJ/dmZjBvauyD7zTSFdlsIYMNfu8Ned0DeVEagkCM+E0w6Osnljix24LZu73wiia5EBVe
	E+nizLXYXhzv9jZSPi4POFVBdFbUE01yHKA8qragwG+Px0tTBwzcDl6L2c1XQsd9wqCTCilgEuhqB
	zQfEvzSqSLUgF2UKsmxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL0Ds-0000gN-0l; Thu, 17 Oct 2019 07:29:24 +0000
Received: from mail-cys01nam02on0607.outbound.protection.outlook.com
 ([2a01:111:f400:fe45::607]
 helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL0Df-0000cR-26
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 07:29:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=A4FL/ZFXQed/a+qK7KQHxP/A9G8nMelxSwSGHvTvhGc7QLDnifwIo8ENdK17EZYoWb7u76nNuYPb4ItSnVTW/cpKR5onAxmFyP51mofUVJ+5zdqneDNg/1AHYyGQjIYRhUkeF6XGXbD8lK9WQZONgz70PSRpgMt5gdleOgnXpPvFCXQHu/Yb0q3jxmArLPun76VAiMq8kPBAK6armnKXwOVG0rvLsh388pEBDBwsjBKzSV1OYVI7Qtt+btRCPJL/GvxTYULrTWMJwfILppMiErkasuotrgL+8z3uiVuica+uwcpPGleiaPHqBEqypGfd0PZMCYlvwI51gtoiG8w1wA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMfAzsyqMPPGfucBwNh0qd5/alzzrUS1OAmJjylVj+Q=;
 b=GmvGQMz1cxqn/UqkA5qamCkX+RVa5YPoBioRakc5khP7fnfNVnux1pqBSDWkdakjw+LSvwxffk2DIOLqdar1/mNIFrWovnW06gTXdkifpRqTna+UngCe9DF+imbpo17EylZXUEOKg7LIMOHntzTzMLHlU7NXEpUwDzsZVshfR6LEg/7dtthw7Fqlb1i7DXdTsRckbho5Bq76C7l9T9Z3bqrobkNUSo9/nAivNxR3upCNMO0k/Xkb6eijBr153KCoI/w8qsq89peF6QMn/d9vDGBDJbPcN7EX7LMNoB+H+Xw/wPTuwGXeqdxXlubhMeC3kyZ7ai5kGM3P40SxR87vdA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=OMfAzsyqMPPGfucBwNh0qd5/alzzrUS1OAmJjylVj+Q=;
 b=lQlA+FCvlxFv/DqVKisdMww7rsxOS1MoC3D5HgHvp9nMpRTswPkEsTg+SKVeaDgGvZFSXVgRW5jve5iy3kSZXDjpGrjai6ybkGzD6b1Jp2b+d8MPqT1BdtetVMatPRN2/swFYTjeN9K48VtOtnTNZwZGmuqBD9R0IHcfR7CijO8=
Received: from SN4PR0201CA0051.namprd02.prod.outlook.com
 (2603:10b6:803:20::13) by SN6PR02MB5278.namprd02.prod.outlook.com
 (2603:10b6:805:71::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16; Thu, 17 Oct
 2019 07:29:08 +0000
Received: from BL2NAM02FT022.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by SN4PR0201CA0051.outlook.office365.com
 (2603:10b6:803:20::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.16 via Frontend
 Transport; Thu, 17 Oct 2019 07:29:07 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT022.mail.protection.outlook.com (10.152.77.153) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Thu, 17 Oct 2019 07:29:07 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iL0Db-0006ys-31; Thu, 17 Oct 2019 00:29:07 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iL0DV-0008Dr-Vg; Thu, 17 Oct 2019 00:29:02 -0700
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x9H7SsOt025562; 
 Thu, 17 Oct 2019 00:28:55 -0700
Received: from [172.23.64.104] (helo=xhdvnc123.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iL0DO-0008Ax-K4; Thu, 17 Oct 2019 00:28:54 -0700
Received: by xhdvnc123.xilinx.com (Postfix, from userid 16987)
 id CE98643A9A; Thu, 17 Oct 2019 12:58:53 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: robh+dt@kernel.org, mark.rutland@arm.com, michal.simek@xilinx.com,
 manish.narani@xilinx.com, arnd@arndb.de, horms+renesas@verge.net.au,
 khilman@baylibre.com
Subject: [PATCH v3] arm64: zynqmp: Add ZynqMP SDHCI compatible string
Date: Thu, 17 Oct 2019 12:58:51 +0530
Message-Id: <1571297331-99924-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(376002)(396003)(346002)(136003)(189003)(199004)(42186006)(50466002)(70206006)(70586007)(50226002)(4326008)(81156014)(8676002)(6266002)(48376002)(81166006)(305945005)(8936002)(36756003)(356004)(107886003)(6306002)(478600001)(103686004)(106002)(966005)(26005)(486006)(2616005)(14444005)(44832011)(126002)(51416003)(2906002)(316002)(16586007)(336012)(47776003)(36386004)(5660300002)(426003)(476003)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB5278; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: da123ac8-646e-4796-598d-08d752d3b240
X-MS-TrafficTypeDiagnostic: SN6PR02MB5278:
X-MS-Exchange-PUrlCount: 1
X-Microsoft-Antispam-PRVS: <SN6PR02MB5278980D059C0CF217933780C16D0@SN6PR02MB5278.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 01930B2BA8
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: VHIVWo5zQYp/xyVxiaimnPtW/tQfQpftfDnYQUMO7q5TegNgFv34GDGYkEKT/AeGTiOL6Cvt7z5cli0H1/9R59f6QKycLmR3mTy5TeIFdVd9NhRD6Qd20+ib/1/J9B5QowckmhmLA+L2l3S/afTqvyC5Hq1mm1c0E3f9eivKyu8k1V/rLVHtND978SsB+mD7rIX+cvInijE7RfclNemxuWTcnlpraT2o/O3I8XXgG1EvGxZaInYGlBSv0li4AUbQUED9RjVXX1Nb1zka0PBZqw/ouexonBS0Lvj341W35pleNDingPszQjUWiVTIhShsYIgYt6c7tAc3p+eFy7BSAxKs4K78+KXnKvKYSHLeQhAgUjp5lXrdmtQKqRLAvikWdxNMqHHDcgUtZFRk76jlfnVpV9UAwAxuXYCrbnjTUiiH//Cho7ddBLXyL3HlEnS6PGvX2xrSEF1oP7ppbd+3nQ==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Oct 2019 07:29:07.6611 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: da123ac8-646e-4796-598d-08d752d3b240
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB5278
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_002911_101749_51030916 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe45:0:0:0:607 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the new compatible string for ZynqMP SD Host Controller for its use
in the Arasan SDHCI driver for some of the ZynqMP specific operations.
Add required properties for the same.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
This patch depends on the below series of patches:
https://lkml.org/lkml/2019/10/17/37

Changes in v2:
	- Added clock-names for SD card clocks for getting clocks in the driver

Changes in v3:
	- Reverted "Added clock-names for SD card clocks for getting clocks in the driver"
---
 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index 9aa67340a4d8..c7b8c3c28aa7 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -494,20 +494,26 @@
 
 		sdhci0: mmc@ff160000 {
 			compatible = "arasan,sdhci-8.9a";
+			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 48 4>;
 			reg = <0x0 0xff160000 0x0 0x1000>;
 			clock-names = "clk_xin", "clk_ahb";
+			#clock-cells = <1>;
+			clock-output-names = "clk_out_sd0", "clk_in_sd0";
 		};
 
 		sdhci1: mmc@ff170000 {
 			compatible = "arasan,sdhci-8.9a";
+			compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
 			status = "disabled";
 			interrupt-parent = <&gic>;
 			interrupts = <0 49 4>;
 			reg = <0x0 0xff170000 0x0 0x1000>;
 			clock-names = "clk_xin", "clk_ahb";
+			#clock-cells = <1>;
+			clock-output-names = "clk_out_sd1", "clk_in_sd1";
 		};
 
 		smmu: smmu@fd800000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
