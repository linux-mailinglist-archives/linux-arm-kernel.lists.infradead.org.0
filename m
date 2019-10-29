Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8CBE85B8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 11:31:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YbTSKRDpAxO5SST/uvQh/lZA7sAbGnvt0SkNWiYga10=; b=GDQt3L5O9MhXFV
	+gktIl5r6nM5w4PmwqIOssODcWGJqMx6AvuTfvb8es0sbqdEXHC4QHqKWZNtnUeR6qum1I8bn2e+c
	R8UHWwbm0zRRdYMY+ALve0yVCtNiUGq5Sg5zFtvP06sqiu3URz5pSKlWmvB8FnYf9VeDAQVokUEfW
	ga6xROcuBKNx+QX2eRlhjrMW61MbuEZ+oFZ9cyY69J9a5W5hkdjRc5EWsecZL4CBx+/tUWjPxeNQi
	7I0aZaDR+Qkk4HHcDwiwA+bRTx3jdDKHSsGCorxwdyqwmb5k2Ma1xQILY3VSa1u4+jSBl2viYvMmG
	OnUp1fpfjf0Wb2VdfmNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPOn7-00009J-VD; Tue, 29 Oct 2019 10:31:57 +0000
Received: from mail-eopbgr800087.outbound.protection.outlook.com
 ([40.107.80.87] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPOm9-0007wa-0v
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 10:30:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oVIsyQW3okqNm+0svb6qkK2jgb8iXU+mFME1L/aC5g4DaatcbLsAlQsjymvaqx7JU4bHN8QwOcBBFJP4Pepas+zN5LS+UOqBoOUtVf0a1Mhu1s43ecywgK+Lztbpq51cFjx6vMiVGL9lkB20KNhj0hlFlD5lbr+SCeTeeiVKwgy4Srvbdu3zGaDdfFkTGiirZCqxW+6j7RkIq6oAQJ6t6rpim1X8X89+DdZO8xcrWpD94BRDpK8BBNGw3vUwztPv/WtAvco4v4KCUl9Jb1DeUZ/7mFAJUU57ldERt+KxepiUBB2Q1lpWt0w29WRh/D4xba9B7iTftUq9ipxbsn6fUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/dLkVtUnNA3n74Bh6PQq/xphZDVkpfssSy5dJAVD1k=;
 b=Lbp/U9QAdIHkGMxjz5E7Gsk55U0hgYVFJebAB0/LYUth7UW2ZEfFRD4AtgYC+1v5czaAF9Hrr7c1QSUU2l47Ft2JUc/Xu1iKj0Te5Rw22KUTDJn9qvsFmdBHAWWGcd0HPAMpdgiYT5dtAl3AZmidNKpvjb7hvHrN/suKnNcZc/yTeLPaKg8oFe4Lx9o/XDMBdEclqUtJEk/saEFh7nlADD3uUiUiYz+R+R/noI0E3Gb+b+UvSP1x+xmGfZlmtzZk9nfqAO6YTDNQkqwv++ub4Mjq0SO3BngSwyvEREmbxz2yz+Cxtq9jWlBMybMW+VGJ6yWtPVVXY16lq8IPgoOg6A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=arm.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=w/dLkVtUnNA3n74Bh6PQq/xphZDVkpfssSy5dJAVD1k=;
 b=IZiNokUEUU6YLfuhJp77ZpcbEmdX0W1w9Zgnv2aCR+3/wf7L1n4SNbrJQW2MsYhM7c10KOlThcMFrxo4EoXvfess+s8dkPaxY9H7xmu7x0Fwrns/Fziar5vL2Jl9P5KSd2KbWYfGTZ1liJV/3XFNiaNVCkvAlitV9AAx/6gERgI=
Received: from BYAPR02CA0042.namprd02.prod.outlook.com (2603:10b6:a03:54::19)
 by CH2PR02MB6168.namprd02.prod.outlook.com (2603:10b6:610:a::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.17; Tue, 29 Oct
 2019 10:30:53 +0000
Received: from SN1NAM02FT061.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by BYAPR02CA0042.outlook.office365.com
 (2603:10b6:a03:54::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2387.25 via Frontend
 Transport; Tue, 29 Oct 2019 10:30:52 +0000
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
 via Frontend Transport; Tue, 29 Oct 2019 10:30:52 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOm3-0002tA-ED; Tue, 29 Oct 2019 03:30:51 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iPOly-0005lF-8o; Tue, 29 Oct 2019 03:30:46 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iPOlx-0005kZ-4m; Tue, 29 Oct 2019 03:30:45 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 6CEE512175D; Tue, 29 Oct 2019 16:00:44 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, rajan.vaja@xilinx.com, manish.narani@xilinx.com
Subject: [PATCH v4 4/8] dt-bindings: mmc: arasan: Add optional properties for
 Arasan SDHCI
Date: Tue, 29 Oct 2019 16:00:38 +0530
Message-Id: <1572345042-101207-4-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
References: <1572345042-101207-1-git-send-email-manish.narani@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(189003)(199004)(336012)(70206006)(5660300002)(81166006)(6266002)(8936002)(16586007)(48376002)(42186006)(4326008)(51416003)(70586007)(50226002)(316002)(107886003)(446003)(47776003)(426003)(356004)(6666004)(50466002)(36386004)(11346002)(126002)(2616005)(476003)(2906002)(103686004)(478600001)(44832011)(106002)(26005)(36756003)(305945005)(486006)(76176011)(186003)(8676002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6168; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c76589f8-1423-4ed2-78e9-08d75c5b12e9
X-MS-TrafficTypeDiagnostic: CH2PR02MB6168:
X-Microsoft-Antispam-PRVS: <CH2PR02MB616863EFADB3BE19C0465B01C1610@CH2PR02MB6168.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 0205EDCD76
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: jeLN0BEX3Xg30taVXUxX3788p/Kx0Z1IAOL8TnD5UJvWJ/egjnXHYHkG0zzm67Vbq1CDTS/rNIN9cGs8TZqOOPk+BrGji1VK71W4vz/txif9oh9+eD9FhXR7as/Ag2/tDsx6l7vVDP4ntSQuE793R71SwmAkpzZ7LE1tjaeaMprvW/mxkRr9LszNsbAKgpMiRzkLorztjzgk72Bsm5ZYd9LxFwpExL5k+XRwtPPgGOZVjxJgu6pLd6AXhBzZbXqbRjHgpqStiAYxaEwqbuqfSsbVl8sxbTaeBGY5532DKP/Gjsn4Sg5b/X9hqnzl/zd+pinLxRA9v9o8eZmREQnLLEhG41SbGYS6kvtkNOF5CobLNJ21QOpNqVxIwuqespG8oMBCq71sdXPYxA/3gZh6PzziiHvUe5Q/2+m1oYnhFTx7ITv1u6ZUkCv0ZJ887c7X
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2019 10:30:52.4153 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: c76589f8-1423-4ed2-78e9-08d75c5b12e9
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6168
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_033057_065706_AA3F1ED8 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.87 listed in list.dnswl.org]
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

Add optional properties for Arasan SDHCI which are used to set clk delays
for different speed modes in the controller.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 .../devicetree/bindings/mmc/arasan,sdhci.txt     | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index b51e40b2e0c5..c0f505b6cab5 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -46,6 +46,22 @@ Optional Properties:
     properly. Test mode can be used to force the controller to function.
   - xlnx,int-clock-stable-broken: when present, the controller always reports
     that the internal clock is stable even when it is not.
+  - arasan-clk-phase-legacy: Input/Output Clock Delay pair in degrees for Legacy Mode.
+  - arasan-clk-phase-mmc-hs: Input/Output Clock Delay pair degrees for MMC HS.
+  - arasan-clk-phase-sd-hs: Input/Output Clock Delay pair in degrees for SD HS.
+  - arasan-clk-phase-uhs-sdr12: Input/Output Clock Delay pair in degrees for SDR12.
+  - arasan-clk-phase-uhs-sdr25: Input/Output Clock Delay pair in degrees for SDR25.
+  - arasan-clk-phase-uhs-sdr50: Input/Output Clock Delay pair in degrees for SDR50.
+  - arasan-clk-phase-uhs-sdr104: Input/Output Clock Delay pair in degrees for SDR104.
+  - arasan-clk-phase-uhs-ddr50: Input/Output Clock Delay pair in degrees for SD DDR50.
+  - arasan-clk-phase-mmc-ddr52: Input/Output Clock Delay pair in degrees for MMC DDR52.
+  - arasan-clk-phase-mmc-hs200: Input/Output Clock Delay pair in degrees for MMC HS200.
+  - arasan-clk-phase-mmc-hs400: Input/Output Clock Delay pair in degrees for MMC HS400.
+
+  Above mentioned are the clock (phase) delays which are to be configured in the
+  controller while switching to particular speed mode. The range of values are
+  0 to 359 degrees. If not specified, driver will configure the default value
+  defined for particular mode in it.
 
 Example:
 	sdhci@e0100000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
