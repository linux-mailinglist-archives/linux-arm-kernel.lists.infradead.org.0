Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E90BE85BC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:32:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MJkVrQa52h0Idr2YOLCV78iJmPAyVOytGYHkoCE14gU=; b=ZHgcx8K3HqBKyB
	7/24Tf4WiZrlpsf/ujCc8FWpE0ACon5udIZCPrifnWaAVWwX8O1oxdYL+vhPqjLmxwmzR12yEacpU
	SNr6SvPPYCqOTyEcVUgZeKs8ZNRLYb7FtoYW+qKI3chyprkPYN6MLgqaQiL9O52OKm2rAQOcHQsSX
	WSw8tF05Q/lboHgVJnwl/CQ06ihQ2x9ZFmg859T7uN1FnM+YqfV2yZhD1CBXEtPG2DW0VAQVJxLON
	j6tCdPth3yt8V6UIeLfIvHpg8jqnkl3+MRDCMhKO3rIKMsMrLbrAbSA85QmGx00GFuk5tq0JQdJw+
	PkbB1YUOaKzA+s4OWEZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOnv-0000te-0t; Tue, 29 Oct 2019 10:32:47 +0000
Received: from mail-eopbgr790088.outbound.protection.outlook.com
 ([40.107.79.88] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOmJ-00085q-0W
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:31:08 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FcPJwlb51njYt6sDkzgZS/nEQ9ZMYCEqx61n+3rDH20Li5oLyovDZL+ve1eObA4MTiLRZ591pEuOR0K2q7d8VJnWFbC4gBZM3axtiwnc5UEZzJzKjW2vRSbUio8EczSP8HDGPaL7YYx2OS4YGTy3qJfxLC/p4SPak9dntgjs/kWTucNE/vv6uQZ4BpYKqm5CQZTxtB/0WHo+auiw+pQRooVk06zsgp/B+RYpwChBuHn/KOeigBUqUs6LjdyjIXrCw+ZYYCKbxIonKaMngCu4gw3IIVRwgMfteEH66/eBwGtSE9wRwHyCwKIjaBYgWK9JjwYQBb8HH3xHigKnUguBXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gxw1psbVVwyN2TF4HQNaK35e4i6JA+/gvN/jbmvC1Nc=;
 b=ERMBTIRh+0gPy3sfbf9D4hrIRHOVFo5HhcHQ5eK50Oh6d2suEWWq3vkjZTngfaGxyCOu6YyQYhfFB+8R3CrSRBqoy13ji40nIq8EprzIEyzLwA79Jc8P22T4ySWhaYVpsaARgcLqIK+03SSsh3HjkOBK65JzLOd6GYUuvJ9igR/EneuI+7YYc6KD1sLjxwtO2Zugt6lJ+VGHRjd4EVSz+axY9/QzP1y1Oxs6+eeKK6xaNo/HBKKObIHvkoxg6Dlrk4WdPISLPf4J6az/+xVBbaUTuLjvc5WNoNdi0v3C6NLwLWw17Sq9yh3Ksc/CJSoSZWiQZtNitx4iHPCGpQ6Ctg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Gxw1psbVVwyN2TF4HQNaK35e4i6JA+/gvN/jbmvC1Nc=;
 b=FIhFfeBYVsiZRz3pVRYDInPsc5fyQelw8ZV1zporMpt2rFGifOm2oVpVpQIXBJJvKkMXFGPZdqNzUogYcWXJd6qqd9B6wwjm5g9etHNzbKppNAYQj5sr96eXFM1n/ul900gtN6wsxeIQBTeTT3HJx0UT6UNs7tB26NjYtXKLnCg=
Received: from BYAPR02CA0071.namprd02.prod.outlook.com (2603:10b6:a03:54::48)
 by BYAPR02MB4693.namprd02.prod.outlook.com (2603:10b6:a03:4d::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.23; Tue, 29 Oct
 2019 10:31:02 +0000
Received: from SN1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by BYAPR02CA0071.outlook.office365.com
 (2603:10b6:a03:54::48) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.20 via Frontend
 Transport; Tue, 29 Oct 2019 10:31:02 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; arm.com; dkim=none (message not signed)
 header.d=none;arm.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT061.mail.protection.outlook.com (10.152.72.196) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Tue, 29 Oct 2019 10:31:02 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOmD-0002tz-JU; Tue, 29 Oct 2019 03:31:01 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOm8-0005qH-E0; Tue, 29 Oct 2019 03:30:56 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iPOly-0005lC-6v; Tue, 29 Oct 2019 03:30:46 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 805A31217FE; Tue, 29 Oct 2019 16:00:44 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, rajan.vaja@xilinx.com, manish.narani@xilinx.com
Subject: [PATCH v4 7/8] dt-bindings: mmc: arasan: Document 'xlnx,
 zynqmp-8.9a' controller
Date: Tue, 29 Oct 2019 16:00:41 +0530
Message-Id: <1572345042-101207-7-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
References: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(136003)(39860400002)(199004)(189003)(5660300002)(478600001)(76176011)(426003)(336012)(26005)(36386004)(186003)(36756003)(6666004)(356004)(47776003)(48376002)(305945005)(50466002)(2906002)(476003)(8936002)(51416003)(44832011)(2616005)(70586007)(70206006)(486006)(11346002)(50226002)(126002)(81166006)(446003)(81156014)(8676002)(4326008)(107886003)(16586007)(316002)(42186006)(6266002)(106002)(103686004)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB4693; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6e1c9031-35e8-4b3c-92be-08d75c5b18b6
X-MS-TrafficTypeDiagnostic: BYAPR02MB4693:
X-Microsoft-Antispam-PRVS: <BYAPR02MB46937B56635E6ED065D43FC1C1610@BYAPR02MB4693.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-Forefront-PRVS: 0205EDCD76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 1yQ/kCbOZOAZ/QUHKZw7JzYoV/x8/grMQvIQicmEzoECA5AoNjAWpFhWXo7ZlrfOnLvIGA2AOJ6w6OzBDsbq0ZEc35f1MMJ3WTMKT4YQ40Ctfb/39giY4LtgIMQqNf9Raa6SLMXeH+inuB11EgKtS1EN67HChF+P+wjbZssHOAeP1M3apU6HFfRsV087UeyhzUOeoDIe4f78HSv309fjmv5FlUI8kBSaKxhlVJ1ruELGtYYWKQn/0Z9b92tCYaQTsrSCT32ZAbZ+0yoYKgSmemKK4FLyYKYlZhOS4j8rXflFa+4QvTC+GgtgSY9OEm3WGcqxuKjgYI6HNQJqn+3RHlKOIJr2bOnF7sPxee3yX+Mu8CxzNzaupfhN4uo7/zZ7x7RBwIbPqlDKJJTGPPHf2ILWOZt2bH/HvIK9FZPTugV9EmX0azSGRngJZmdWXQVq
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2019 10:31:02.1461 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e1c9031-35e8-4b3c-92be-08d75c5b18b6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB4693
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_033107_142413_7C309EC0 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.88 listed in list.dnswl.org]
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

dd documentation for 'xlnx,zynqmp-8.9a' SDHCI controller and optional
properties followed by example.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/mmc/arasan,sdhci.txt  | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index c0f505b6cab5..22fba39b94c4 100644
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
@@ -63,6 +66,10 @@ Optional Properties:
   0 to 359 degrees. If not specified, driver will configure the default value
   defined for particular mode in it.
 
+  - xlnx,mio-bank: When specified, this will indicate the MIO bank number in
+    which the command and data lines are configured. If not specified, driver
+    will assume this as 0.
+
 Example:
 	sdhci@e0100000 {
 		compatible = "arasan,sdhci-8.9a";
@@ -99,6 +106,18 @@ Example:
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
+		arasan-clk-phase-sd-hs = <63>, <72>;
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
