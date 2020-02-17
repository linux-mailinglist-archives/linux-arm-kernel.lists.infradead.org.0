Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44D42161222
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 13:34:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5dRW9FGUUMIAu2+GPZItkMVRSUh8rZJ3n3OdfF0k56M=; b=n7K/XwkH+q/uhC
	3pPYLaekd2oGJQMjl2MkSpPY1Cx4nzr8o3KcExZYJfaiA/12Kiq8eewa+zK53A8LEEw58onMVj62/
	QUhlsZadiY7jtZQLBoNgQyNEPlt3VOJM5I2ocUnlyp04gdnEgx5qmHsta8x2TfLu5e+0iL/GqHo4T
	iXeAqR+mpDG0jkuF70uexG8ThOhVWnbEP8uIvoyeeeQMHhlxE1xy73tqwZB3ny75fBdV2YVCVz0PP
	7z2Bjx6ASmO7nwor0aUHhKOUayIZgiSU61sxLzBX8oM0KLvzOY7UaKHs9M8yAp5wxfJyJnTjr//PV
	wqFH2JUcz2NY7gzUesJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3fbR-0000r8-W1; Mon, 17 Feb 2020 12:34:22 +0000
Received: from mail-bn8nam11on2067.outbound.protection.outlook.com
 ([40.107.236.67] helo=NAM11-BN8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fam-0000RO-MI
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 12:33:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Bfb+JRitMA3K6kbEMg3EcM0+Up1JfxSoIKdGhqYBL2g0ToTbJ+b4/IHqmJl8Rj5PBeRCWWi1m2Ssd/MeqVj6qvCSJq5f3Ck80FXJi/aSnfp1I0HPX8c/eYlLcnWCskeOYlhZPwKvu3yjz+w6F682c12DfY+GCsOLL0oU8uaf2yUzR3PeMx1LfYT4bG8Vjc/7vOoZ6hi0UpkNNjDNvhZ8S/g9iYT7/kCPbOwNSHbD/t65j4RW3/Mi+kf7nULbhC0m6jl23vf/g6T1WcW/qjvAiFNPEQi25t2tCRt85VhLl38vqupY2tbWXV3XdkmLcl1bxzGVsD6hkyS/u9OiAWlz1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GklJFrMzQVMm4jnGo6isE2E2T26F0WppHCWthHoA48Y=;
 b=P4AOiPQwRmftUWTu0x7jQ7GOvt56gMQLNJLM6QuYglM4ak4obYYOMjFRjnWk+8MpOnXP4ftpHh7T9epwIfcBHw5N2iGAAylOMk4TQJVM4dfAnws2pQN5CgMy8wgj42xasA4RH8QSRu+G4LadFHo8uVvEs8dkjedtPs62Ack6oK15ObUnKwyQb4db1H7GrYgYsg76RN1ERPU3nOsxLujERM2iuqsUIl9Jx6ljAwrThL5RKOZE95h4yYPF9IVoVsLMo+G3PAE9JB86DhridzN1AMJ8yO2K1vGz6whD1H0QHlNkPsmPd3a2H6OG5uh3KoPzH+UL+qKusUdVXcwnOmhqbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GklJFrMzQVMm4jnGo6isE2E2T26F0WppHCWthHoA48Y=;
 b=OXiPw0GqvILGdr65Us8u4EqQomB30Q3jS/5t4DuiFD/ILBCoisPUBZ/ol0IMcARqCQoesszamQtvOX4aUZlAMiqfojDgrHDLabb3jvQxZQVwA+85/zKCT80iQIQO70V67mDJLgS1FeT0GcRy8cXzdVKxJyVJTpwLZakp+i3iYBo=
Received: from SN4PR0201CA0018.namprd02.prod.outlook.com
 (2603:10b6:803:2b::28) by BN6PR02MB2737.namprd02.prod.outlook.com
 (2603:10b6:404:fd::11) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.25; Mon, 17 Feb
 2020 12:33:37 +0000
Received: from CY1NAM02FT036.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::207) by SN4PR0201CA0018.outlook.office365.com
 (2603:10b6:803:2b::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.27 via Frontend
 Transport; Mon, 17 Feb 2020 12:33:37 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT036.mail.protection.outlook.com (10.152.75.124) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Mon, 17 Feb 2020 12:33:37 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3fai-0000Sc-UL; Mon, 17 Feb 2020 04:33:36 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3fad-0001wt-RB; Mon, 17 Feb 2020 04:33:31 -0800
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01HCXOlR025870; 
 Mon, 17 Feb 2020 04:33:24 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1j3faW-0001uE-5v; Mon, 17 Feb 2020 04:33:24 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: linus.walleij@linaro.org, bgolaszewski@baylibre.com,
 michal.simek@xilinx.com, shubhrajyoti.datta@xilinx.com
Subject: [PATCH V3 3/7] devicetree-binding: Add pmc gpio node
Date: Mon, 17 Feb 2020 18:03:09 +0530
Message-Id: <1581942793-19468-4-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
References: <1581942793-19468-1-git-send-email-srinivas.neeli@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(376002)(39860400002)(199004)(189003)(6666004)(426003)(356004)(336012)(9786002)(70206006)(70586007)(5660300002)(316002)(186003)(81166006)(81156014)(8676002)(8936002)(4744005)(2616005)(26005)(107886003)(7696005)(4326008)(36756003)(478600001)(44832011)(6636002)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR02MB2737; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f71f82ac-8855-4f20-cee3-08d7b3a59c9f
X-MS-TrafficTypeDiagnostic: BN6PR02MB2737:
X-Microsoft-Antispam-PRVS: <BN6PR02MB27374CEC635A3348684B654EAF160@BN6PR02MB2737.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 0316567485
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n1ZmHC7ZTHJHuslVd62kWqsqH1OaaDM/OUvRBDwJ+FxpUsLsnmPFEMxsKBfigOu1xe2lY3IanI6BpY1vyfkD6Tcqu48IRRdFykyPeqR/mqX4331KWrB1qab8aLtlZ1GKSXQCJYg/AyfoF4SAxjFlIsxgLE1V3SUmEIGlMUH3PzibvIzs6S6v8PwCc2pml6eIS2STfRYkJda5XQherNJeNj9v7yImnlFGOyrBt1VrFSinmh6ETRCuXKwPPK4xpbOXsST+7gyk9aTWzSfOY7imqjoRSkHxgd0J739ZivFfBdNwhMdp7Xqn4O4bwjH6QSbubO+Jy4YrIjf77CCnlIQlrauR3UdstSAZL1bG9UMWemXEp+4M8F35EbeDbwV5ifJvtrSxWqiElTZKdY71KtiX8JnbrPNaOJTVj5s+GcN7R4UwaWVLzoZq+p1CovY1F7vI
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Feb 2020 12:33:37.3608 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: f71f82ac-8855-4f20-cee3-08d7b3a59c9f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR02MB2737
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_043340_772069_8DCAC114 
X-CRM114-Status: UNSURE (   9.07  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.236.67 listed in list.dnswl.org]
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
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>

Add the pmc gpio node to the device tree.

Signed-off-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 Documentation/devicetree/bindings/gpio/gpio-zynq.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-zynq.txt b/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
index 4806d846c0fc..f693e82b4c0f 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
+++ b/Documentation/devicetree/bindings/gpio/gpio-zynq.txt
@@ -8,6 +8,7 @@ Required properties:
 			    parameters (unused)
 - compatible		: Should be "xlnx,zynq-gpio-1.0" or
 			  "xlnx,zynqmp-gpio-1.0" or "xlnx,versal-gpio-1.0
+			  or "xlnx,pmc-gpio-1.0
 - clocks		: Clock specifier (see clock bindings for details)
 - gpio-controller	: Marks the device node as a GPIO controller.
 - interrupts		: Interrupt specifier (see interrupt bindings for
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
