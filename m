Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20092EBD94
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:07:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4BMDctwCA56NVZXPgCTJMEhZTMJQUqoAyypJS5n5nY=; b=tb6M1NLClO9D4C
	zeSF7OkLwibfG8+YFtUEnge5Oi5Gs9UpXs27H5RnFolIDY8jGwvMAre++KcCUdH6qW1+DL0Aosg41
	Owlo30R950r2K5Tt19aRKe8H8zUS0DY3id8WR9N3SzZTuKNYcpGxBRezr0ZYnXGBMiwW7Pdd5JCAI
	d6wgh6ZaV5zMqIkVmFBUbyaXQc3WaIxSa16WIV7jUe6pOdS2rE43o0pe7eAdPJPXLcXMRTMuRUBJ3
	My+ZFVALWY43gHcMJVBPAJ8NztWl42isACs2TB4eT1wSqeuwyaFxGPHdcnHzusNyN/1qp6XatymzM
	AmzIsopsOhYWEM0GZ3FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ68-0002tD-Qi; Fri, 01 Nov 2019 06:07:48 +0000
Received: from mail-eopbgr720042.outbound.protection.outlook.com
 ([40.107.72.42] helo=NAM05-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ4c-0001wA-N9
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:06:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=KYAOYckO8sl+ooAl2u4bn0CHyiPR26GRdWCj0pvD37zgwuE5Gk78GYUExobPVx9Vjc6kzl6K1jq7TSNC6CrHZBI0ZKj9AI9jlk7j6Qb1R9p0f1c6KuSrv204/FxaTtzj4WINkKegp42I8LwsJv8JABVgnuaGxh/4OrmZPAG1NPuSxHBmu4ITCgjtOZv+LcyxGR6BW/Rj4WAWpJU9nNF0OG6dsWnb9LoA6RdDGzZvuUEheM7RktePXBiW+bCaFVCWxuZmTf65Uyp0QMnpC0RX8O9sjNlGk2SnHQt5Akq62BOBYcC1UF87BC/c85inosDDkM3PieMT6j9mvczvYSq+Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n3geTXuV4lpN8m8W1d6uvc+nibMhYsrXL7CoPVOywXc=;
 b=VRM+iZd8Im9byI56Fo3ktHm9xr9mniIT7g4eCaHt3Pn1fNOSpnm3naHx9iQLzYaHpkmQBN4WJySO96LJkC3nrO+t2hirEo9C4OmQEIjMQ3sVqAS+cyUoLvnAaeRsVAJ6NsAbbatZzp4t5I0MoSBrxRCYEmssNWPJAC2bAA5/uW3X8iJQgkzxcqFfS9vsZMNVaZDIIBzJL3XfLepn1TVWhIQ5nOSwGs7GqoZdgRHtLqtMllEPo+Mvtwesd2NdXIAOZgD7qOd22/tbYK6yMEqW2oU3J9e5QFoXqpiBe8ixhPYT+WJHzh5XT70DGp2cZeajRmcKyK/rZQIkp9NKvh5gsA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=n3geTXuV4lpN8m8W1d6uvc+nibMhYsrXL7CoPVOywXc=;
 b=PI7bTcTWZ13tZOqgvpiO/SaxOxLb0Oh8XlKYM2PJadaZDR5Lkg7ykyShQVLnLqGOPVP8locM9JfrevWGiAVmLXpgtlkxwcOExj+5L+fBGdTKLgX4yiC8cDNo2fPvjU4Bd5QKQFHET/0G45RPnFFYzs67sj2c0uOYLwfK1wJPWyg=
Received: from MWHPR02CA0003.namprd02.prod.outlook.com (2603:10b6:300:4b::13)
 by SN1PR02MB3807.namprd02.prod.outlook.com (2603:10b6:802:31::32)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.17; Fri, 1 Nov
 2019 06:06:11 +0000
Received: from SN1NAM02FT035.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by MWHPR02CA0003.outlook.office365.com
 (2603:10b6:300:4b::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2408.20 via Frontend
 Transport; Fri, 1 Nov 2019 06:06:11 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT035.mail.protection.outlook.com (10.152.72.145) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Fri, 1 Nov 2019 06:06:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4Y-0005me-Cf; Thu, 31 Oct 2019 23:06:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4T-0007dN-80; Thu, 31 Oct 2019 23:06:05 -0700
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA165w0t010449; 
 Thu, 31 Oct 2019 23:05:58 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iQQ4L-0007Zx-Nr; Thu, 31 Oct 2019 23:05:58 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id F1175121385; Fri,  1 Nov 2019 11:35:56 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, rajan.vaja@xilinx.com,
 manish.narani@xilinx.com
Subject: [PATCH v5 4/8] dt-bindings: mmc: Add optional generic properties for
 mmc
Date: Fri,  1 Nov 2019 11:35:49 +0530
Message-Id: <1572588353-110682-5-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
References: <1572588353-110682-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(39860400002)(136003)(189003)(199004)(426003)(4326008)(107886003)(5660300002)(11346002)(186003)(126002)(44832011)(2616005)(486006)(476003)(356004)(305945005)(6266002)(336012)(6666004)(446003)(70206006)(70586007)(81156014)(51416003)(478600001)(26005)(81166006)(76176011)(103686004)(106002)(316002)(16586007)(48376002)(47776003)(36756003)(2906002)(50226002)(42186006)(50466002)(36386004)(8936002)(8676002)(41533002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN1PR02MB3807; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dff954f7-f8e9-49d0-cd79-08d75e91980c
X-MS-TrafficTypeDiagnostic: SN1PR02MB3807:
X-Microsoft-Antispam-PRVS: <SN1PR02MB38074315E248422F91325C4FC1620@SN1PR02MB3807.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 020877E0CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Xrv/KS/zB81+SQjgET0Epr1lkvKD8nX6b5nl+k+lx0JIw+vndDF3WLlfXczqWycNCeaabbK6es6lHER+nmbY85whTzdAkUkcQar8BvamL8yVnJXuhJpPs2nBUJeNIbMKCp8MlsqJqUv4yHflXh6mlO/E0ixgwpRUgYLN/gj9HG9nDFs/Ng17DVYqtDYFUlWtX3Z3DmPPUr7oTlOSyNdbJWg+yAmV23FgaT/JvrnLcjRt7VN0G8KoI+PAsnZppREqSg4OjrRkiPCkseW3VxoGHlj3tYPtExL8ru4S7Tp+xrBRLyvEGV744YP0h+WWz5oZNWbHx6Cg2V95TpoVgcHGU7Ua6klQDDRjPzUL4wcdZQLgLrGvysTlmZWO4yqIS5UO4Mkpg1k3zn4BzyUOl9KX/1cdXkXnwrGF7dyZX1uy5zgdmz73TrpiT5wQJQ3+rMO9
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2019 06:06:10.8597 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dff954f7-f8e9-49d0-cd79-08d75e91980c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1PR02MB3807
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230614_755029_5A653A12 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.72.42 listed in list.dnswl.org]
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

Add optional properties for mmc hosts which are used to set clk delays
for different speed modes in the controller.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 .../bindings/mmc/mmc-controller.yaml          | 92 +++++++++++++++++++
 1 file changed, 92 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
index 080754e0ef35..87a83d966851 100644
--- a/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
+++ b/Documentation/devicetree/bindings/mmc/mmc-controller.yaml
@@ -212,6 +212,98 @@ properties:
     description:
       eMMC HS400 enhanced strobe mode is supported
 
+  # Below mentioned are the clock (phase) delays which are to be configured
+  # in the controller while switching to particular speed mode. The range
+  # of values are 0 to 359 degrees.
+
+  clk-phase-legacy:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for Legacy Mode.
+
+  clk-phase-mmc-hs:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair degrees for MMC HS.
+
+  clk-phase-sd-hs:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for SD HS.
+
+  clk-phase-uhs-sdr12:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for SDR12.
+
+  clk-phase-uhs-sdr25:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for SDR25.
+
+  clk-phase-uhs-sdr50:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for SDR50.
+
+  clk-phase-uhs-sdr104:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for SDR104.
+
+  clk-phase-uhs-ddr50:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for SD DDR50.
+
+  clk-phase-mmc-ddr52:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for MMC DDR52.
+
+  clk-phase-mmc-hs200:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for MMC HS200.
+
+  clk-phase-mmc-hs400:
+    allOf:
+      - $ref: /schemas/types.yaml#/definitions/uint32
+      - minimum: 0
+      - maximum: 359
+    description:
+      Input/Output Clock Delay pair in degrees for MMC HS400.
+
   dsr:
     allOf:
       - $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
