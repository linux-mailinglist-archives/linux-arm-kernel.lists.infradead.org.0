Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C2D2EBD84
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:06:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/K9EVwUxpRTav+uuOJbrxWGjzeTH7scw0rGgixXzX5E=; b=JEB+XS43mzazxg
	jSV/+RrVrS2e5jqQQ4h+6u6ulnZeDJ1z6jsooYrUdOUoqkyXBN3dMWRCaVZec/133VGrbuLwDS1gj
	500/7mxuzShPc7oGmys+Kyh7JZY1ETnx6jFDAu7uhyF4C/AS1RTiYkO0NoDNj6wqfSKTl9Y9Uwfdd
	z+Tq8uztj7KPEB7hz8VmCT/qBR3zYp2wZeBj3ZU6aDzZtaa73TvKVDcjIEvNELaPC/iUNxkClBhJk
	oeT0WK2iNjBWOFAWtycdVxRoVGRsVRZN2UW7YEVYO0RQWhPGmHNkdoLyMc1/jelgs3HjW07ko7W5m
	ZZ0BG0izFYZrn3fya0Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQ4o-0001xZ-Ji; Fri, 01 Nov 2019 06:06:26 +0000
Received: from mail-eopbgr800083.outbound.protection.outlook.com
 ([40.107.80.83] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQ4b-0001ue-0Z
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:06:14 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ne07BTbih/2+IaF9XoCuyq65G3mC0SLybFkL3Anv0TPK1/feBx03hiEnBc+o6w7B9b8nCziDvuNyxzz49MuNdQ4NAbBxQ3deWbFZh6VwteVSvoUXcbgiFV0WHEviMl5tCREurZ9uRsNsb5qqx3qssUkN/86BQ3N1eesFh9biiGRB1bLPVaXb/tutiGhzFQF92pcmWn7uIMqvy6SHZuq1HR2wu2+hnGdBtTzQzJSQE9eIKhZIJkMwRLOWylZc8vRb7RJZliAf40oNMp370Q978thyyS39DHsqANT0rT9KBQ6rn3QNjTspG4qAw3Ml7kpmRnaxx6s0wfgYb5umcg/Ilw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qzXvD+IcJGqNn9EqJ780uC5HVrfKOntSd7rWjYG8Csg=;
 b=R6lVbzxAECWfiKWxjiRmhzqAgLb6izDwKpMt8l97+u0FciJ4Qk9eQyX1jlzIOQo5C5kFDIOhsX+z1CZlxWVwPW021bJAf7dMfd5FxtfNAXUdkkaaG1Djx0Kdj/tMnRFEQRsmedkP1JwJWN4uJZMPvKvrnZvcysvGsAINc5nNztWw9sFatesb67cS4SRhisJmDA539+YS5P1ORb5e7HIOUV3Bf9Z6N4/8ZidTOo2jTG1OjkWuu6LepnP+qOFNBqtLuFj+1Z7pcs4SFbwSPXqQOmrxsVeeK7JfAqUp8OoW0uQvbzTLQ26wGMu/KwBRcBCAX6sZJpQ+R9e1XC5iW/L/ZQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=qzXvD+IcJGqNn9EqJ780uC5HVrfKOntSd7rWjYG8Csg=;
 b=N66EEaVgw2Te8HM65AfDbmTqD/03yQh9tispybXrsgDhaUP6WuPv4O4UG3je+DopQkSzbZxmRPXomQ6ea31u0PbPGIq5icuxQuVJxiW1uw5FfADux675Q+OvrUpOrYAFnavTxazMXwc1aNwlDJulBCIC8c/gLruYfcd53ckZw8Q=
Received: from SN4PR0201CA0051.namprd02.prod.outlook.com
 (2603:10b6:803:20::13) by CH2PR02MB6727.namprd02.prod.outlook.com
 (2603:10b6:610:ac::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2408.18; Fri, 1 Nov
 2019 06:06:10 +0000
Received: from SN1NAM02FT006.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by SN4PR0201CA0051.outlook.office365.com
 (2603:10b6:803:20::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2408.21 via Frontend
 Transport; Fri, 1 Nov 2019 06:06:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT006.mail.protection.outlook.com (10.152.72.68) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2387.20
 via Frontend Transport; Fri, 1 Nov 2019 06:06:10 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4X-0005mX-Nn; Thu, 31 Oct 2019 23:06:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1iQQ4S-0007dN-Is; Thu, 31 Oct 2019 23:06:04 -0700
Received: from xsj-pvapsmtp01 (mail.xilinx.com [149.199.38.66] (may be forged))
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xA165wT3005661; 
 Thu, 31 Oct 2019 23:05:58 -0700
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1iQQ4L-0007Zu-ML; Thu, 31 Oct 2019 23:05:57 -0700
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id E355E121380; Fri,  1 Nov 2019 11:35:56 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 adrian.hunter@intel.com, michal.simek@xilinx.com,
 jolly.shah@xilinx.com, nava.manne@xilinx.com, rajan.vaja@xilinx.com,
 manish.narani@xilinx.com
Subject: [PATCH v5 2/8] dt-bindings: mmc: arasan: Update Documentation for the
 input clock
Date: Fri,  1 Nov 2019 11:35:47 +0530
Message-Id: <1572588353-110682-3-git-send-email-manish.narani@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(396003)(39860400002)(346002)(376002)(199004)(189003)(36756003)(6666004)(16586007)(316002)(8676002)(36386004)(2906002)(48376002)(81166006)(50466002)(103686004)(8936002)(81156014)(42186006)(356004)(106002)(70586007)(70206006)(4326008)(476003)(478600001)(486006)(47776003)(51416003)(50226002)(126002)(26005)(2616005)(186003)(107886003)(11346002)(76176011)(6266002)(5660300002)(44832011)(426003)(336012)(446003)(305945005)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6727; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d576206d-ae71-4bb1-598a-08d75e9197a2
X-MS-TrafficTypeDiagnostic: CH2PR02MB6727:
X-Microsoft-Antispam-PRVS: <CH2PR02MB672774A070CC56A62D9001CAC1620@CH2PR02MB6727.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-Forefront-PRVS: 020877E0CB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FqsK8ePPEcInVTZs3GAK8aMjWCCQLZI/uLFsp1+JzO5Yf3AgKjZXeG8VZyEgoHjzpT+UedaLG7ZOhKDU+odHmchtQ3z7c8uvLZsoTFyfeevpvi/1vzRgad6tiaxw3Dc4Ln95FdHQ69/I1Z3VE4FvtWDur40cpx50vGVnrhuZS9FRZ7GEl1xyx6+iVov5Fdc2xcinxbeTP/KbDrFiVBEVW9euypSV2MIc6XPZDMh2JqdBqU6Vhvn8R/vumc8IOJEHlzUWtlTlGS2AONbEVg+PSVqus3+CMMgsDKg+m1paPBNqJu9CkolVlw/d3+icXDDLfIfnda+DUSKGpY9gL2A7uIEyVmCzGGlZEx44EF7ijlPAuXRIdo/Tv/thK1DUiJPlyboJzQJm11vymxhmc5KGBFmcNCEvR+nl8WT611MKWnZ1o1vMmaxO2vbejksx98Y1
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Nov 2019 06:06:10.2111 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: d576206d-ae71-4bb1-598a-08d75e9197a2
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6727
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_230613_117987_B3B1AA4A 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.83 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.80.83 listed in wl.mailspike.net]
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

Add documentation for an optional input clock which is essentially used
in sampling the input data coming from the card.

Signed-off-by: Manish Narani <manish.narani@xilinx.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/mmc/arasan,sdhci.txt | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
index 7ca0aa7ccc0b..b51e40b2e0c5 100644
--- a/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
+++ b/Documentation/devicetree/bindings/mmc/arasan,sdhci.txt
@@ -38,9 +38,9 @@ Optional Properties:
   - clock-output-names: If specified, this will be the name of the card clock
     which will be exposed by this device.  Required if #clock-cells is
     specified.
-  - #clock-cells: If specified this should be the value <0>.  With this property
-    in place we will export a clock representing the Card Clock.  This clock
-    is expected to be consumed by our PHY.  You must also specify
+  - #clock-cells: If specified this should be the value <0> or <1>. With this
+    property in place we will export one or two clocks representing the Card
+    Clock. These clocks are expected to be consumed by our PHY.
   - xlnx,fails-without-test-cd: when present, the controller doesn't work when
     the CD line is not connected properly, and the line is not connected
     properly. Test mode can be used to force the controller to function.
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
