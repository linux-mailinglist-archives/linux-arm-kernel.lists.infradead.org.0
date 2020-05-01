Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BD5D1C2150
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 01:44:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hwx3Nlq+/SeWKfyywBEoWhkc2i1oW1K2ZnokxihO6OM=; b=ch9+7MfImluSzv
	GvI5Val4wnYxTczt2gP62Yh4fdCnlVbrtpTuDXzDw0KosngXcVj6oq3PA3+bsaV9jIk4rDBrRajc2
	a5hplRbXeznOkmV8CB3//Sutia/Fh54PDCx9DpGqGpER9SwPVZAoq2cHoNC3P0wa6haRpuho4GdCH
	Z4JjhKsEW75WaiTFEqdJG838qa/L0QrXEUG4JzdqtbLkZLx8WP1EYWljRcNV5UyoJxWO3MsVWKBZ8
	kzIWfjAqtEJF5pqH/i5UNvOApulFR9eqgw9aSVFfOtlx1dXi5jWwXygrbTdf+gWIBF91JDV0kdHt8
	YcEXVRXjqyP2Bxtshp6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfKI-0008Jw-Dn; Fri, 01 May 2020 23:44:14 +0000
Received: from mail-eopbgr680051.outbound.protection.outlook.com
 ([40.107.68.51] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfJy-0008Cy-FK
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 23:43:56 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=csxw6GaveqYkFlWmPFM+MDPEihDwRAb9YToWcH/qqgcwje1bZdGc0HdXM+bHj5o2TxgaWsjzxjGTXhiTio/c7BHmPjO+rhwprdH5gRW05/F3tachebjeU+6hCTzSvHDQxjlVejk6oZzwaoNC7IQ18GoYzUCyvmQARdLOnoPtSaxwX2/UwIYS8vOUxxOop2FO36nVjSKGMUblQM/wqupAm2Nk6tEJHNGlr+pRJx2xP9pPnMsnS0ASpXmkvVphAZ+n3MTy+GSMWaRna58ALle82x6UHoTJnjdZEBDyN+5cZcwj9GOd0PmtiX9ofsOAQ3uW17UE2atPXTB2ps7Icj6vuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZ+0Yya6Zh3QNFdgQ32NxswT2FmGYZJlfGAnmOhYjC0=;
 b=Do5WMEXy2CD0m/OelG8XGt6qk7af5UbRB9Uss/ldcyMjVabNSWeofIfFR1hS7lbC0X/NAxcKx8obGgytJNBtmPi5AiYs6/FGeWc0pc5ZxV+qW9YecHmriCGV9LvK3tYEirgz1Nh73Ci83UqzXae3sL5POeKWr+qE7C4SRAq8famivoVJI7cz31V7nsHa5BiQlXNAcUj00ZA4zcoSISqF8/p22pA2KFqCMVyNSFM9cp07BoeytjaFotH7i9ZlDgvzf8gWW0a6jcDK4ZqqvzmyUFEh2zpF+jzw/vK8UnM/PV2wgec8Q1fwF2sOUlN+26hFV5Dq1w2JiQtifzfxXzvh+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=temperror (sender ip
 is 149.199.60.83) smtp.rcpttodomain=baylibre.com
 smtp.mailfrom=xilinx.com; 
 dmarc=none action=none header.from=xilinx.com; dkim=none (message not
 signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZ+0Yya6Zh3QNFdgQ32NxswT2FmGYZJlfGAnmOhYjC0=;
 b=AT/wJl2fOPU67sa/7VjMPW6XWV9KpLXrQkNBOJAvWgv3eDNCBygyopsa8EdXzF+RfKC0GgpnUBXXovMSUbNh6iheAUS8NyjR2J+baJdWFy5mYE/MyECQD7x03oXWqRh2B8pG622X4IkuvxyFJv+mj0YuxMKXqIelLlzJY0JmCrw=
Received: from SN4PR0201CA0018.namprd02.prod.outlook.com
 (2603:10b6:803:2b::28) by MN2PR02MB6240.namprd02.prod.outlook.com
 (2603:10b6:208:1bd::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.22; Fri, 1 May
 2020 23:43:49 +0000
Received: from SN1NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2b:cafe::43) by SN4PR0201CA0018.outlook.office365.com
 (2603:10b6:803:2b::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.19 via Frontend
 Transport; Fri, 1 May 2020 23:43:48 +0000
Authentication-Results: spf=temperror (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; baylibre.com; dkim=none (message not signed)
 header.d=none;baylibre.com; dmarc=none action=none header.from=xilinx.com;
Received-SPF: TempError (protection.outlook.com: error in processing during
 lookup of xilinx.com: DNS Timeout)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT047.mail.protection.outlook.com (10.152.72.201) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Fri, 1 May 2020 23:43:48
 +0000
Received: from [149.199.38.66] (port=36404 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfJp-0005UU-Ot; Fri, 01 May 2020 16:43:45 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfJs-0001S2-0C; Fri, 01 May 2020 16:43:48 -0700
Received: from [172.19.3.8] (helo=xsjamitsuni50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfJn-0001RY-1q; Fri, 01 May 2020 16:43:43 -0700
From: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
To: mturquette@baylibre.com, sboyd@codeaurora.org, michal.simek@xilinx.com,
 mark.rutland@arm.com, linux-clk@vger.kernel.org
Subject: [RESEND PATCH v2 1/2] drivers: clk: zynqmp: Add support for custom
 type flags
Date: Fri,  1 May 2020 16:43:29 -0700
Message-Id: <1588376610-253693-2-git-send-email-amit.sunil.dhamne@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588376610-253693-1-git-send-email-amit.sunil.dhamne@xilinx.com>
References: <1588376610-253693-1-git-send-email-amit.sunil.dhamne@xilinx.com>
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(136003)(376002)(39860400002)(396003)(46966005)(9786002)(26005)(5660300002)(82310400002)(478600001)(4326008)(316002)(107886003)(186003)(2906002)(82740400003)(7696005)(6666004)(54906003)(356005)(47076004)(81166007)(36756003)(70206006)(70586007)(8936002)(2616005)(426003)(8676002)(63350400001)(336012);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e811cc73-72da-4c79-fb65-08d7ee297eb5
X-MS-TrafficTypeDiagnostic: MN2PR02MB6240:
X-Microsoft-Antispam-PRVS: <MN2PR02MB6240219E3C1B9F594CAE01B8A7AB0@MN2PR02MB6240.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:172;
X-Forefront-PRVS: 0390DB4BDA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LfSCZcJ/ovko00h4hSMSi2gouUvRjU0UJ9J9xr33GLtVTpWZv+X5qgzC9kQ/WfbG8eauuNWlf8MaB4GUenauTguzs5jK+11AfQ9R+udldAXIwluVBNERQBn7IsmhIrWUmA+cjPMSkkr3Z1pEJegAFxtPRvkjBGJUSzYWwVydGfpFoMCmsBwHn0hwFvkRFpJQoquux1rXBwqvxaEXqsyx0tpddGGiAcwJfkdX1DASVe6NKYwNlrBfDy8vpM9lQmmTAFe83cA45WpI5p+ZQpByBLe3iHgRR065bh5xOS6pUstc2Jvi5lAWCxKnY25mE8sVxn3MQ5M48F0HYg9x8aoA2c9jkRwjAmpEPHB+PdmnyJkIb2Mm4rxxYcMHOXBDJUQZ+Wey4I3Zu/hVWJ4jr7Juul1z5QkBbrn7DXkKiberyV5dRtmm+SRZH5L18MXc5FBOUp7wUm2q8cQQrkMGi7TGoqK31DNOJhBavBuNv0tchU6Bpo8Lb4kpDRqjItUee2vY8dpW4Nx317tsGHB/455fAw==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 23:43:48.3049 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e811cc73-72da-4c79-fb65-08d7ee297eb5
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6240
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_164354_532150_F5B883C7 
X-CRM114-Status: UNSURE (   9.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.68.51 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.68.51 listed in list.dnswl.org]
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
Cc: Tejas Patel <tejas.patel@xilinx.com>,
 Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>,
 Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 jollys@xilinx.com, rajanv@xilinx.com, Jolly Shah <jolly.shah@xilinx.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Rajan Vaja <rajan.vaja@xilinx.com>

Store extra custom type flags received from firmware.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
Signed-off-by: Tejas Patel <tejas.patel@xilinx.com>
Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
Signed-off-by: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
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
+       u8 custom_type_flag;
 };

 struct clk_hw *zynqmp_clk_register_pll(const char *name, u32 clk_id,
diff --git a/drivers/clk/zynqmp/clkc.c b/drivers/clk/zynqmp/clkc.c
index 10e89f2..4dd8413 100644
--- a/drivers/clk/zynqmp/clkc.c
+++ b/drivers/clk/zynqmp/clkc.c
@@ -84,6 +84,7 @@ struct name_resp {

 struct topology_resp {
 #define CLK_TOPOLOGY_TYPE              GENMASK(3, 0)
+#define CLK_TOPOLOGY_CUSTOM_TYPE_FLAGS GENMASK(7, 4)
 #define CLK_TOPOLOGY_FLAGS             GENMASK(23, 8)
 #define CLK_TOPOLOGY_TYPE_FLAGS                GENMASK(31, 24)
        u32 topology[CLK_GET_TOPOLOGY_RESP_WORDS];
@@ -396,6 +397,9 @@ static int __zynqmp_clock_get_topology(struct clock_topology *topology,
                topology[*nnodes].type_flag =
                                FIELD_GET(CLK_TOPOLOGY_TYPE_FLAGS,
                                          response->topology[i]);
+               topology[*nnodes].custom_type_flag =
+                       FIELD_GET(CLK_TOPOLOGY_CUSTOM_TYPE_FLAGS,
+                                 response->topology[i]);
                (*nnodes)++;
        }

--
2.7.4

This email and any attachments are intended for the sole use of the named recipient(s) and contain(s) confidential information that may be proprietary, privileged or copyrighted under applicable law. If you are not the intended recipient, do not read, copy, or forward this email message or any attachments. Delete this email message and any attachments immediately.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
