Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA62D176600
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 22:31:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kWEZf0wLDbAGfT9maicZyEeSThMBm3pZ5Bzm6n1o8Q=; b=d7y8Pa/YmFfUz8
	F+D8qWx6oCfNaobd/boDO9FhjAwn9WHTPIpvZDYa8p9o09t+jSK2YhhLb8iFq68gY0BR9MEwJ43O5
	Fm80UI5zyGq9fEZmf3emBnR8QqW1eaaAccm/RjjYnQzE8P3J3MpukqI4xIpat9gNp065TN1InZ2iI
	YnXGXM97unFivCWM39Pkps/L9lyQRjKuVNxE7msMBID9ylfIGkVyZjX0xFhmODEBO4zEGpXn/Nd2b
	tQaUXp9W7w4oSl7DMdpHamLyWH11hKsdOwQEj1sgfKTX5J79cOorjeHd8qI/zoUqHbRKsvaH6BI3R
	FhlaNIkPXur48bkOT8bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8sf3-0006KG-T7; Mon, 02 Mar 2020 21:31:37 +0000
Received: from mail-co1nam11on2044.outbound.protection.outlook.com
 ([40.107.220.44] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8seh-0006Ay-Vm
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 21:31:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nHqHSckRLwE+JjkH6sKV1N2OqvjUb5MVnnv1+Cmbft6eVhJ9iCl0TXWKveS+jzl6rPiiHLmdMl0pkPYP3GbeqTeMkFlTRxRneu1pjcSEwFTAp7aN0PhiJ1qg1dvqm9JViiDv+ZDYumxWyuTqjXRbYSISaqTQm9HpxYI38qPMm1cXWNgRHxzICRo3kty3j6lZ1atWF5jKmGjQfg3jpgF0wWKJtBCg6sUrxDmqGrGBilAUzvjTbApITMYwRkcslh3i6o1wAFBwkRTObzSV7y0LzpiSRHTuo/VBG1X0Emn4EwDlrHVCTYe46ZkcaYUd1kAoYRge1p44BwVpCs8zNxQdVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3yJf1f0mIxDvXiv4OsERXQoRbFfow58jM0+Mecczycc=;
 b=LV+SjBOPThotr3ZdYuc2kb56EQRfsdPddQjkO/P2edsg2kgTj9XIwCGEZ/8NZ0dmwB0cic9f5d89S72SScmJoLT0THHQu/kisFPflethn6RH5cUIQRjpddoz3naEaOwKYEsah6eHgSWdDtcR/qpFVDewzlEKDQqjXXjo8X+dRUKUZ+79GWD1/Ow1+jehMgX+Y4YL3UY8Eca8BdIk9WlDUB+09dN72Eaohv+T4YlMO9IvJiHubW6ig66NRz2Em2yn6+1qMnHxYeFmkmNc6m4awDK21tHHHcPpNVvcNX7ZWrI1yd+LjHyL3dJ/7M9t+OmKYGGwXbDuj8DGC72DilrLGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3yJf1f0mIxDvXiv4OsERXQoRbFfow58jM0+Mecczycc=;
 b=ZucypnZKdpn/6jhqcwo7h13iYKnDkJ/xSanwydBF2HhtJglbGGDpFLdKQEQlzjnoDM8TFLPUv7thY3Ectw1En8yDS+WYGnqYSZOTDMfk8Y0RjhU/jBSczJ5duLJKFsXT5x73JIDgfRrFLUu7A22NRCNNhFnxNme1ONE+ry/HFHs=
Received: from MN2PR11CA0007.namprd11.prod.outlook.com (2603:10b6:208:23b::12)
 by BN7PR02MB3939.namprd02.prod.outlook.com (2603:10b6:406:f5::25)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.19; Mon, 2 Mar
 2020 21:31:13 +0000
Received: from BL2NAM02FT004.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:23b:cafe::22) by MN2PR11CA0007.outlook.office365.com
 (2603:10b6:208:23b::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2772.14 via Frontend
 Transport; Mon, 2 Mar 2020 21:31:13 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT004.mail.protection.outlook.com (10.152.76.168) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2772.14
 via Frontend Transport; Mon, 2 Mar 2020 21:31:12 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8seb-0001vA-H9; Mon, 02 Mar 2020 13:31:09 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8seW-0005hD-Dx; Mon, 02 Mar 2020 13:31:04 -0800
Received: from xsj-pvapsmtp01 (smtp-fallback.xilinx.com [149.199.38.66] (may
 be forged))
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 022LUxwR030791; 
 Mon, 2 Mar 2020 13:31:00 -0800
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1j8seR-0005dg-Pi; Mon, 02 Mar 2020 13:30:59 -0800
From: Jolly Shah <jolly.shah@xilinx.com>
To: olof@lixom.net, mturquette@baylibre.com, sboyd@codeaurora.org,
 michal.simek@xilinx.com, arm@kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 1/2] drivers: clk: zynqmp: Add support for custom type flags
Date: Mon,  2 Mar 2020 13:30:42 -0800
Message-Id: <1583184643-19191-2-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1583184643-19191-1-git-send-email-jolly.shah@xilinx.com>
References: <1583184643-19191-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(39860400002)(136003)(199004)(189003)(478600001)(8936002)(4326008)(8676002)(186003)(44832011)(26005)(81156014)(81166006)(2906002)(9786002)(426003)(316002)(336012)(36756003)(54906003)(70206006)(70586007)(2616005)(7696005)(6666004)(107886003)(356004)(5660300002)(42866002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB3939; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: dfc03e55-62bf-42c2-7f28-08d7bef1080c
X-MS-TrafficTypeDiagnostic: BN7PR02MB3939:
X-Microsoft-Antispam-PRVS: <BN7PR02MB3939C84BF06F1F7AAAC06ACAB8E70@BN7PR02MB3939.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:172;
X-Forefront-PRVS: 033054F29A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: pr1vrrWy9xz8F6YYGX2S+7D7de2+GfeZe6cX60UFi7ApJZk5HZHF/JZfDU8rpgle8JFutkzlI/XnpAKrdxevEoSujU7OyB6mJxFQPbUHaRNYWBnSOjxHGFIeRRCa9HggM6tzlhyOkqf9lPeV0xicM5KYEuqjYY9Q1wpmME3QCGGmTAiozgeiaPocGyhEckERhQPGDrNV4ZjBylcKlSCl0fAjPdOPzzOm3r55qeJVzyEKZrQZlFU1mENqdAyQA+EtvYT7h7R8IGEpHcrGu5iZf1B7/3PE4jLCsDRSvafgBAeKIAqFbOfZAFWKYK6jVoyR4XVIQT0vULVFzXoZujldbh6ISZWr803xsHRN064qyaBHlmS06rjhPDhcgty+/LLwAAELhuUB4ehRsMmW7K5WOeNWkQQSWDchXgVnjZn8j9fCqCwhqdjo5u40+Pfce8u7wqXi/FHrwvKcAe6z3q+ukduvFiMW2cSTmG9hluroJZT5DBCNtipTj9j3r24eF8tv
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Mar 2020 21:31:12.5505 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: dfc03e55-62bf-42c2-7f28-08d7bef1080c
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB3939
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_133116_023704_37B59993 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.220.44 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>, Rajan Vaja <rajan.vaja@xilinx.com>,
 linux-kernel@vger.kernel.org, rajanv@xilinx.com,
 Jolly Shah <jolly.shah@xilinx.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Store extra custom type flags received from firmware.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/clk/zynqmp/clk-zynqmp.h | 1 +
 drivers/clk/zynqmp/clkc.c       | 4 ++++
 2 files changed, 5 insertions(+)

diff --git a/drivers/clk/zynqmp/clk-zynqmp.h b/drivers/clk/zynqmp/clk-zynqmp.h
index fec9a15..5beeb41 100644
--- a/drivers/clk/zynqmp/clk-zynqmp.h
+++ b/drivers/clk/zynqmp/clk-zynqmp.h
@@ -30,6 +30,7 @@ struct clock_topology {
 	u32 type;
 	u32 flag;
 	u32 type_flag;
+	u8 custom_type_flag;
 };
 
 struct clk_hw *zynqmp_clk_register_pll(const char *name, u32 clk_id,
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index 10e89f2..4dd8413 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -84,6 +84,7 @@ struct name_resp {
 
 struct topology_resp {
 #define CLK_TOPOLOGY_TYPE		GENMASK(3, 0)
+#define CLK_TOPOLOGY_CUSTOM_TYPE_FLAGS	GENMASK(7, 4)
 #define CLK_TOPOLOGY_FLAGS		GENMASK(23, 8)
 #define CLK_TOPOLOGY_TYPE_FLAGS		GENMASK(31, 24)
 	u32 topology[CLK_GET_TOPOLOGY_RESP_WORDS];
@@ -396,6 +397,9 @@ static int __zynqmp_clock_get_topology(struct clock_topology *topology,
 		topology[*nnodes].type_flag =
 				FIELD_GET(CLK_TOPOLOGY_TYPE_FLAGS,
 					  response->topology[i]);
+		topology[*nnodes].custom_type_flag =
+			FIELD_GET(CLK_TOPOLOGY_CUSTOM_TYPE_FLAGS,
+				  response->topology[i]);
 		(*nnodes)++;
 	}
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
