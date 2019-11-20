Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 634DA103482
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:48:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UuQE92HylkRsV/5yVHetgiHdQytNSavJptBGK0CfZnU=; b=FzD0UTWOplABnD
	Pxgq/D4NqaZHdHMH7e5dyR0FJ0k3WERmL8IDf+QKhh+SNXQK8IgrmsG6vCXSnF4ENp2R5kn0yGvqm
	XE2H4pnrmBVPmHEBCOptxYdfAaFsz75lHVbb6X1Veg8MklBLvDKRHAC/3i3Zl+eiVQT9z7S2pEa11
	GZsXjuHzBshIACobST5mVplr2aAqsoOlrDFqagYtHqGqVRE5ffXW9yzQ8CLN9dk+So6zBaEJDI7ZR
	T/Z6oCMv0f+lU4gxxyjsVSkQAcXKpDLwv/5drRFZMR7NDJRxJUN1LvOQ5ByXhfnL/MMZyNzSNAISz
	irmAUySzBFYnmWi2sPWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJmr-0006TK-6h; Wed, 20 Nov 2019 06:48:25 +0000
Received: from mail-eopbgr790047.outbound.protection.outlook.com
 ([40.107.79.47] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJmK-0006Ha-92
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 06:47:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XKzlk3ccR/peHoLz6gW2gfC7yqBErm/lp5jZh0BM27AWq72weAyiuOAp1yajbYLGct+hqzeDuAzZt+j5T0n6beUo+tbM05trYcb69r7fFWZI4DN3oVzaIt+NMFhmnubms3HoAeGXC7MEr80oOUfb3LPsxzsQatPoLPy3cC053Un1QX6PBjH8fmgV+PFXJNnjlPdc31R6HTjDVWy5yv2bFRJvAkxpLm0VaCYb5QgYrF5iI083g43ua238uTiD5MyY+7gNldKCDsccOHj/WACJMCyj1b6eFs/lTuB+kZ8J2aNEQwA1Z5xLXQbYnDDAhRx9XNJVZuSYSMseYH+vucQysw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDLegMrhDggUgyFbZeHP6TBfYFHxtOMb3XgoN+5eRL0=;
 b=HTRGdQELXnJm+kbuhQcfOGsKRP+0kObuOy/jDzTLH4LcwbHkY3mlaQBQXlZ3x+VpIVhUWRg2VF/0Bk54IWVeVRpMfB/GkshX4nXR2o6hjcF4QMOzMdOxmv9/+S9l5To+rMhCHPN6pLE8myAmD48JViL5LB0v3WLKmATKSNL8RBpS7Ov1q5kcx4f6EI6+dgrHRLdzIZtho2XoVylCMHHGgGLzdEd+MNdTkb7n9jXAbIJp0jkydhw5SqGq3lLp8oxOM0Q7K48D0ous6sKiFGnEfY87DGTdOC2ZeZcYTl1iIaVdXHVgFqaRHZeNYaEcdNxvTFhuxDtaE2o95sKd7PWfHg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GDLegMrhDggUgyFbZeHP6TBfYFHxtOMb3XgoN+5eRL0=;
 b=Pnxi1hMSvCajZoYlWzgS2Xa0lLkSOA3qy9b0Pi2xQDKvK/BdKr00HKCHrQFnPNCTvkMt8NjQao6mA5rk5cS/hH/sWJFK+/NoNwr/6huFmcObVrkzGf8z5IXa/SU/E1grHayUGRLR9GIJi2/3pP9hF6NOMX+Gj23N9K7ofxGG3N8=
Received: from BL0PR02CA0074.namprd02.prod.outlook.com (2603:10b6:208:51::15)
 by BN6PR02MB2802.namprd02.prod.outlook.com (2603:10b6:404:fd::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.28; Wed, 20 Nov
 2019 06:47:48 +0000
Received: from CY1NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::205) by BL0PR02CA0074.outlook.office365.com
 (2603:10b6:208:51::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.16 via Frontend
 Transport; Wed, 20 Nov 2019 06:47:48 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT028.mail.protection.outlook.com (10.152.75.132) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Wed, 20 Nov 2019 06:47:48 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmF-000619-Lb; Tue, 19 Nov 2019 22:47:47 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iXJmA-00049o-I9; Tue, 19 Nov 2019 22:47:42 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAK6lbBg001807; 
 Tue, 19 Nov 2019 22:47:38 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iXJm5-00049G-Mr; Tue, 19 Nov 2019 22:47:37 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 0170D12139A; Wed, 20 Nov 2019 12:17:35 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, rajan.vaja@xilinx.com, nava.manne@xilinx.com,
 mdf@kernel.org, manish.narani@xilinx.com
Subject: [PATCH v6 7/8] dt-bindings: mmc: arasan: Document 'xlnx,
 zynqmp-8.9a' controller
Date: Wed, 20 Nov 2019 12:17:28 +0530
Message-Id: <1574232449-13570-8-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
References: <1574232449-13570-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(136003)(346002)(396003)(189003)(199004)(36386004)(48376002)(47776003)(476003)(50466002)(6266002)(107886003)(2616005)(6666004)(356004)(446003)(426003)(11346002)(336012)(106002)(70206006)(26005)(8676002)(50226002)(186003)(70586007)(51416003)(81156014)(81166006)(76176011)(8936002)(2906002)(478600001)(305945005)(5660300002)(126002)(316002)(4326008)(44832011)(486006)(16586007)(103686004)(36756003)(42186006)(921003)(142933001)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2802; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9224fe54-a85d-4d7e-6444-08d76d858e5f
X-MS-TrafficTypeDiagnostic: BN6PR02MB2802:
X-Microsoft-Antispam-PRVS: <BN6PR02MB2802FF75FD5C7CCC5221987CC14F0@BN6PR02MB2802.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 02272225C5
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jSESfp3vp4nwXOBXS4w1zRkWtsJFVUGmEV67VioL8BnowVufoRP/8/KmuH2TG2bS6n10pCGJP2KopHVNLUXfIlQOzWz9RSvXL+g6PJVNV+WlgIgaBBh04RitdVworiLC0rHstwaT6yS88hU1ip4Y8czxVlsVPe4b870CZN3SdMkfOJREThuEscKZ640rJmn7oIw2kGZg0b+O7LLeVknD0DfpRqUABXYWR82B7KVifzDmPfOKLzscz8feaYqDOBfNuDjBX/bkcciQFJnjBrcdJoGl2BbbG7j2cwfI3l9YjP5g42TrkEvV3UweDVSleQfQdsFqfGE9l2Ipwwg1ThLo7eHDz6P68FFxQYdUi0zVZNPUCW6gvhx9nFBesXsEpq6So16hvEHUH3l7YQJf8UkguRFFsQjGl7vTuTNrkg2JHMoxPDb5haCDM4cO+Ep1hgcz
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Nov 2019 06:47:48.1617 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9224fe54-a85d-4d7e-6444-08d76d858e5f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_224752_314598_F7C30F5A 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.47 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for 'xlnx,zynqmp-8.9a' SDHCI controller and optional
properties followed by example.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mmc/arasan,sdhci.txt  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index b51e40b2e0c5..5ad804a870e4 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -15,6 +15,9 @@ Required Properties:
     - "arasan,sdhci-5.1": generic Arasan SDHCI 5.1 PHY
     - "rockchip,rk3399-sdhci-5.1", "arasan,sdhci-5.1": rk3399 eMMC PHY
       For this device it is strongly suggested to include arasan,soc-ctl-syscon.
+    - "xlnx,zynqmp-8.9a": ZynqMP SDHCI 8.9a PHY
+      For this device it is strongly suggested to include clock-output-names and
+      #clock-cells.
     - "ti,am654-sdhci-5.1", "arasan,sdhci-5.1": TI AM654 MMC PHY
 	Note: This binding has been deprecated and moved to [5].
     - "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1": Intel LGM eMMC PHY
@@ -47,6 +50,10 @@ Optional Properties:
   - xlnx,int-clock-stable-broken: when present, the controller always reports
     that the internal clock is stable even when it is not.
 
+  - xlnx,mio-bank: When specified, this will indicate the MIO bank number in
+    which the command and data lines are configured. If not specified, driver
+    will assume this as 0.
+
 Example:
 	sdhci@e0100000 {
 		compatible = "arasan,sdhci-8.9a";
@@ -83,6 +90,18 @@ Example:
 		#clock-cells = <0>;
 	};
 
+	sdhci: mmc@ff160000 {
+		compatible = "xlnx,zynqmp-8.9a", "arasan,sdhci-8.9a";
+		interrupt-parent = <&gic>;
+		interrupts = <0 48 4>;
+		reg = <0x0 0xff160000 0x0 0x1000>;
+		clocks = <&clk200>, <&clk200>;
+		clock-names = "clk_xin", "clk_ahb";
+		clock-output-names = "clk_out_sd0", "clk_in_sd0";
+		#clock-cells = <1>;
+		clk-phase-sd-hs = <63>, <72>;
+	};
+
 	emmc: sdhci@ec700000 {
 		compatible = "intel,lgm-sdhci-5.1-emmc", "arasan,sdhci-5.1";
 		reg = <0xec700000 0x300>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
