Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AEB8F908A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 14:22:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yHg0pgkwGjwbPumuojhRsGABRM6XFxz1PPNm3NU3y1I=; b=OWPcc2vtKf2czp
	iKk8EYqsSG44cHd0GTrM4cAVPVK5UKYnJlf57AHgB0Aq3efMqxQFLgHqxi0h3I0y2MitWwj4PkfnZ
	p6/bAsFe2nW4R+jfnUY77s3Yo1UAdSJg1DvMGSMYBiyG+ORXCks2I0KdQfa1drjqn+uXrHF5L+6sm
	+InAD3GG4jfkV+h4yzf6WlFccF8Wb4kbcH7KltvByEcLMoxF9PjRIq2/kMmg6mO9kY4h7x7aN9HvR
	LJRT58+N8HEtE410/Qx3FDI5YqQSEsz9BQBDrE02HqU8nl9WLj9szP+XM2O4FOLUObvd5hW2XiSMM
	KEkGwz80nvYABn9q/72g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUW7a-0003a0-OU; Tue, 12 Nov 2019 13:22:14 +0000
Received: from mail-bl2nam02on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::60b]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUW6y-0003Ft-FC
 for linux-arm-kernel@lists.infradead.org; Tue, 12 Nov 2019 13:21:38 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eWS2Bqg17HURnKV5Gntq1IK4neUgvymCr8tSPF6X1iXiuTv3Xfd/62pfCq0LDm0jRikdRAtPp8CgyxNDbcQcK5vAERyAZWvLHRayRR44b/NY0Bo21LvJh2fX7VaXK2cMPfOuntzxDLOdQyXbwsdU6BfT5Xx2g2bnwFtfMWya366cE9Q9OKAQ02qfMzJHD09UOGUoS6EdLs164ohxV9mu7Fg2HxuqyoXWdOaXoqqPt8S5v+Fx2H4cKhlZsN3YvHbAXM8QOQb+o/jf1adZ2ZOANL2w0YuGGzb8/I2U3lA+FprRzX0e5KDpJdC2NHLai/9XoYQd7k9xzr+/cWux1M4WIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qn2mROzth7dOG3yMwH/39kZrvRMRwcHzbwU0cdZgneg=;
 b=S6FDGgrISFYUOSEX+yP6Jm3Bn2+Au6uZtLSG06fgYerhyzLZHXlpK3fNVJHUUSj7T3+TuVHMbToWkbv8iCnN4dgAcjwtLKvqp6ZG8qtIem3AWmYaSzpbjH5SQEDtHz2MhNPHIyjP1Kphe2aIliHmewOF8OFXc0xhkMso8jEbwyAbyWTweadxW1Sw8KMQ8psOnCodwTXFgBAxct5BD7wLBpM1fCmeql0Ni5ra5YF1yZGRo/4NqPZMaPB2eV3zsXdz4U1qev5ukPJxqH985t2cKGBdXNk0nRrjLB1sGFMKfPpzUJGESd806QM1OVkf75UCNm1TeyWZDsINQFBHLu48DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Qn2mROzth7dOG3yMwH/39kZrvRMRwcHzbwU0cdZgneg=;
 b=kWIeVuxNeB6hMkmtqkWsAIgRxmmwyxXXDsQpdgnRRTjqeZ3FpFJ1R22et+ZjnAeyOecxU/sV+U8cMfbEBIXKouFjjPMzhdMyarfDHnlwe5Gjg1oyc4z8vbxT8nWA4JkEptiBpgF7GptAf1RajN3gXddMmZCdMKw2QqX7GrMvbjo=
Received: from MWHPR0201CA0031.namprd02.prod.outlook.com
 (2603:10b6:301:74::44) by BL0PR02MB3714.namprd02.prod.outlook.com
 (2603:10b6:207:44::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22; Tue, 12 Nov
 2019 13:21:31 +0000
Received: from SN1NAM02FT010.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by MWHPR0201CA0031.outlook.office365.com
 (2603:10b6:301:74::44) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2451.23 via Frontend
 Transport; Tue, 12 Nov 2019 13:21:31 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT010.mail.protection.outlook.com (10.152.72.86) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2430.20
 via Frontend Transport; Tue, 12 Nov 2019 13:21:31 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW6s-0003vL-QK; Tue, 12 Nov 2019 05:21:30 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW6n-0005Bb-Mi; Tue, 12 Nov 2019 05:21:25 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xACDLGte023617; 
 Tue, 12 Nov 2019 05:21:16 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1iUW6e-000578-IL; Tue, 12 Nov 2019 05:21:16 -0800
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: sre@kernel.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, jollys@xilinx.com, tejas.patel@xilinx.com
Subject: [PATCH 1/2] dt-bindings: power: reset: xilinx: Add bindings for ipi
 mailbox
Date: Tue, 12 Nov 2019 05:20:50 -0800
Message-Id: <1573564851-9275-2-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1573564851-9275-1-git-send-email-rajan.vaja@xilinx.com>
References: <1573564851-9275-1-git-send-email-rajan.vaja@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(396003)(376002)(136003)(346002)(199004)(189003)(81156014)(81166006)(316002)(305945005)(106002)(8936002)(50466002)(36756003)(48376002)(50226002)(8676002)(478600001)(2906002)(5660300002)(16586007)(9786002)(476003)(76176011)(26005)(11346002)(15650500001)(6636002)(7696005)(70206006)(70586007)(446003)(2616005)(4326008)(126002)(186003)(6666004)(356004)(336012)(107886003)(44832011)(47776003)(36386004)(486006)(51416003)(426003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB3714; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 15d40f35-fa5c-40d9-b66b-08d767733b80
X-MS-TrafficTypeDiagnostic: BL0PR02MB3714:
X-Microsoft-Antispam-PRVS: <BL0PR02MB37140627267BE687CCE14915B7770@BL0PR02MB3714.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:6430;
X-Forefront-PRVS: 021975AE46
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: mVY5wSxx9OhWBkXK6r77YI/+iKbiITnR2FHu+GC+E62yrs+3SUs4vCvD6jqD2+NACNgYEF2a/4EAInyS0JVaymxd2vCPR/UzIwixeQm/FklH4YVzlyyccuoa+KOzSTUfd+zDGXDaEiw+FTfJZcAMuVeTqGOqXx9Piz/uiKc4FKrA4cXXiDnKKi/MnP3S+dilHmbBmqzaRVThUBp+OU+QItoBZg4Bb8uKwjDSbw53G8mUE3hx7InwgIjtifVl0B6SIKlpcJpek8gDj568bNr9QoItKl/7QTERto7KrcPEw7pQll8vkLkoYPcu/5wXlgCjQ7R4WtW1Q8nsqHH97qDeKbOEdKUUYt61CLxoOnQvT2DM3SbFLOXIHs4LoB3pNbHle8qsfqXVTyYLod/cZSw3/5xj8YlcbHB0svED2+/svFTySKWx7mIt956Tl6DPinzk
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Nov 2019 13:21:31.2284 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 15d40f35-fa5c-40d9-b66b-08d767733b80
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB3714
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_052136_634379_C7411499 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe46:0:0:0:60b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add IPI mailbox property and its example in xilinx zynqmp-power
documentation.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 .../bindings/power/reset/xlnx,zynqmp-power.txt     | 41 ++++++++++++++++++++--
 1 file changed, 38 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt b/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
index d366f1e..450f3a4 100644
--- a/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
+++ b/Documentation/devicetree/bindings/power/reset/xlnx,zynqmp-power.txt
@@ -8,9 +8,27 @@ Required properties:
  - compatible:		Must contain:	"xlnx,zynqmp-power"
  - interrupts:		Interrupt specifier
 
--------
-Example
--------
+Optional properties:
+ - mbox-names	: Name given to channels seen in the 'mboxes' property.
+		  "rx" - Mailbox corresponding to receive path
+		  "tx" - Mailbox corresponding to transmit path
+ - mboxes	: Standard property to specify a Mailbox. Each value of
+		  the mboxes property should contain a phandle to the
+		  mailbox controller device node and an args specifier
+		  that will be the phandle to the intended sub-mailbox
+		  child node to be used for communication. See
+		  Documentation/devicetree/bindings/mailbox/mailbox.txt
+		  for more details about the generic mailbox controller
+		  and client driver bindings. Also see
+		  Documentation/devicetree/bindings/mailbox/ \
+		  xlnx,zynqmp-ipi-mailbox.txt for typical controller that
+		  is used to communicate with this System controllers.
+
+--------
+Examples
+--------
+
+Example with interrupt method:
 
 firmware {
 	zynqmp_firmware: zynqmp-firmware {
@@ -23,3 +41,20 @@ firmware {
 		};
 	};
 };
+
+Example with IPI mailbox method:
+
+firmware {
+
+	zynqmp_firmware: zynqmp-firmware {
+		compatible = "xlnx,zynqmp-firmware";
+		method = "smc";
+
+		zynqmp_power: zynqmp-power {
+			compatible = "xlnx,zynqmp-power";
+			mboxes = <&ipi_mailbox_pmu0 0>,
+				 <&ipi_mailbox_pmu0 1>;
+			mbox-names = "tx", "rx";
+		};
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
