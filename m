Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB775B428
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 07:33:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wAfkS/84uaVuXwZaQiSjMqnzMNxpJh6HSxR8yM1yjUY=; b=Z8zd04QQIWWZ9V
	bBvBW9VgOskLQgFMtvezTVy6q7g1t1U7tn4XFZUWy65QqxDsW9xFKVEY62ESrbZmhCHXjEc3Tntgs
	6ygY9MeOydpqH9vG0W2z3OCngPOVtN6HD7bHNzBr/Oe6Tr/0xI9nXldSEnVQfVg9N/4NAwifzd5rn
	QjGKkbV+DU8CEuazfT0xxUy2HJBuImobE317HxIWobEWtqXz7pn44q7axzd+NGYlMi8Z7WHi0alDs
	4osdMrAL0RtKN9Jmzrd26nsThzsbDxxGZIjg2l1VrkMRcaJsmtEQ3DBPG1neOvYP8MQu8Z/gVuJZi
	WVMIYGGy9R8GjsPWiUzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhowg-0001Vj-Kl; Mon, 01 Jul 2019 05:33:42 +0000
Received: from mail-eopbgr770088.outbound.protection.outlook.com
 ([40.107.77.88] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhotI-0007LD-8A; Mon, 01 Jul 2019 05:30:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Mh8moDmxhscDhdZ3F7pwsajNjmmbjlfPi4dMpnwWPYw=;
 b=EOm1x1ZCJN8eIwBh5HCPQbyhAx+JjOwk4JfrDrqvQBoFBwtZQ6Xi8xY92VNJ00KUe0RSHltHENdsJ2NQ/0OFQxAzv0yrzC7WTpwf1ysAxa4xMlWu2gxjXWshlbe/Vx2RiOWnXeZS8VWFcxGL2HXol6KnvOiqi4F45SMV6NSYnmA=
Received: from SN4PR0201CA0034.namprd02.prod.outlook.com
 (2603:10b6:803:2e::20) by DM5PR0201MB3397.namprd02.prod.outlook.com
 (2603:10b6:4:76::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2032.18; Mon, 1 Jul
 2019 05:30:07 +0000
Received: from BL2NAM02FT021.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::205) by SN4PR0201CA0034.outlook.office365.com
 (2603:10b6:803:2e::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2032.17 via Frontend
 Transport; Mon, 1 Jul 2019 05:30:06 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT021.mail.protection.outlook.com (10.152.77.158) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2032.15
 via Frontend Transport; Mon, 1 Jul 2019 05:30:06 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhotB-0002ri-QP; Sun, 30 Jun 2019 22:30:05 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1hhot6-0003EO-NS; Sun, 30 Jun 2019 22:30:00 -0700
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x615TuNh023628; 
 Sun, 30 Jun 2019 22:29:56 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1hhot2-0003Cc-4Q; Sun, 30 Jun 2019 22:29:56 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 41049121745; Mon,  1 Jul 2019 10:59:54 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 heiko@sntech.de, michal.simek@xilinx.com, adrian.hunter@intel.com,
 christoph.muellner@theobroma-systems.com,
 philipp.tomsich@theobroma-systems.com, viresh.kumar@linaro.org,
 scott.branden@broadcom.com, ayaka@soulik.info, kernel@esmil.dk,
 tony.xie@rock-chips.com, rajan.vaja@xilinx.com, jolly.shah@xilinx.com,
 nava.manne@xilinx.com, mdf@kernel.org, manish.narani@xilinx.com,
 olof@lixom.net
Subject: [PATCH v2 05/11] dt-bindings: mmc: arasan: Update Documentation for
 the input clock
Date: Mon,  1 Jul 2019 10:59:45 +0530
Message-Id: <1561958991-21935-6-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
In-Reply-To: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
References: <1561958991-21935-1-git-send-email-manish.narani@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(346002)(396003)(376002)(2980300002)(189003)(199004)(7416002)(47776003)(2906002)(72206003)(356004)(50226002)(16586007)(316002)(126002)(446003)(26005)(476003)(426003)(336012)(81156014)(76176011)(44832011)(106002)(2616005)(42186006)(186003)(486006)(11346002)(52956003)(50466002)(70586007)(63266004)(8936002)(5660300002)(51416003)(36386004)(70206006)(8676002)(36756003)(6666004)(305945005)(6266002)(48376002)(81166006)(4326008)(478600001)(103686004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR0201MB3397; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 197f42b9-dd46-49b3-8bbe-08d6fde52d26
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:DM5PR0201MB3397; 
X-MS-TrafficTypeDiagnostic: DM5PR0201MB3397:
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <DM5PR0201MB33975E2A426F7C84CC85D8B1C1F90@DM5PR0201MB3397.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-Forefront-PRVS: 00851CA28B
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: 6k2OgKUKUJy5VENvUxQ1mVzg0giz5ZBgTubgRVX3wWr5zg/m4H+3N0dkKBR+9eEv1IKBj4sf0aKyyDlHhpWwGuHyZHvFCcxYPEB0YzlHSEFJJoydiS+94GuTKcczOLOsGXkiAE/bJdVSOgHM81YU6NFIbdNsB29FxsRWaKHPZq8EjJ2xUDLoxb5I69aoughIrCcKsr1y//ZfQu/G3PY1FFluqXQ4LznsBwRYBRbxQIkX20c7jpHPVrFrmWrZOBo0MFnRG+E+DAbDA1flAQ7FsZeX46ozfVb6+B+/qeOwGQT0DYXqWiCwDxXpcHqjmXGtGvJVj7LDea/Ly0ldY8vjn23nszLIaufaZWqVRJQWh8rR83JjvEwhLqiysGT6Qwz2nIGuzd2byEPVsgh3esRCY2O09Zuf4P5Kr3k9nE4iH+w=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Jul 2019 05:30:06.3980 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 197f42b9-dd46-49b3-8bbe-08d6fde52d26
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR0201MB3397
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190630_223012_290512_695BF860 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.77.88 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add documentation for an optional input clock which is essentially used
in sampling the input data coming from the card.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
---
 Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index 15c6397..7c79496 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -23,10 +23,10 @@ Required Properties:
   - reg: From mmc bindings: Register location and length.
   - clocks: From clock bindings: Handles to clock inputs.
   - clock-names: From clock bindings: Tuple including "clk_xin" and "clk_ahb"
-		 Apart from these two there is one more optional clock which
-		 is "clk_sdcard". This clock represents output clock from
-		 controller and card. This must be specified when #clock-cells
-		 is specified.
+		 Apart from these two there are two more optional clocks which
+		 are "clk_sdcard" and "clk_sample". These two clocks represent
+		 output and input clocks between controller and card. These
+		 must be specified when #clock-cells is specified.
   - interrupts: Interrupt specifier
 
 Required Properties for "arasan,sdhci-5.1":
@@ -40,9 +40,9 @@ Optional Properties:
   - clock-output-names: If specified, this will be the name of the card clock
     which will be exposed by this device.  Required if #clock-cells is
     specified.
-  - #clock-cells: If specified this should be the value <0>. With this
-    property in place we will export one clock representing the Card
-    Clock. This clock is expected to be consumed by our PHY. You must also
+  - #clock-cells: If specified this should be the value <0> or <1>. With this
+    property in place we will export one or two clocks representing the Card
+    Clock. These clocks are expected to be consumed by our PHY. You must also
     specify
   - xlnx,fails-without-test-cd: when present, the controller doesn't work when
     the CD line is not connected properly, and the line is not connected
-- 
2.1.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
