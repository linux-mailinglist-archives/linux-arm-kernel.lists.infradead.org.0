Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 789901C21EB
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 May 2020 02:25:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hwx3Nlq+/SeWKfyywBEoWhkc2i1oW1K2ZnokxihO6OM=; b=TI1mDM9oJjqXph
	uYExxQi4UP+VPh0VSDzchi2M4/w6BcWzWru0pzGV+JERYxN+oyNbM4w5v6oolvoIkUOXZnMc2drqJ
	IhjwzynDg1K1CVQtqDszQPV2ZJH7znJ3VEqo11AaLRfjhuiTE1B9JvgnCycyGMQOOEzPQdxvHhdLG
	UOiNzCu3gyc8extZuFG1X/oIL4Sg1kTDSQ2jP3QMXJePJwUVAL+SrSV4lRC1Ueroh0i84sQgNXMx/
	3blhsvoTvdLOSJl5TFNYb66CxSafAqiwnngu96M6UkWffE6/E9JAS/iG8MirfPPR5t83goREyx8gY
	sfEfNK/V3znOKtxKEduQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUfyO-00011c-7o; Sat, 02 May 2020 00:25:40 +0000
Received: from mail-dm6nam10on2077.outbound.protection.outlook.com
 ([40.107.93.77] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUfyD-0000zk-VE
 for linux-arm-kernel@lists.infradead.org; Sat, 02 May 2020 00:25:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mMnGop6OdwN4Y0DPc9SDhpV1VmNWR/BaCOMG7ngV8Iy1SQaQhiw4/qBZnQ6y3AjGrrpFK5ivEVkqGCH3VP5+A7JAyTjiunQ2OI6lWoUCfIh9tBYGWGFKoil6/oliYRG6xLFfbJJTPgmbDTyrlftSje8Lj7X6O6C/dYsxYCBHdOsnENG5qPKeReJo/9bktTGIdX4AOnFyGg0L/NOoVslfuO8KiMiN338N9bN3xsTljvcNbYlQPRYgujdDUTiKppfQ1kXj60e9CWLQnKnm4a2U9iInw2Fg0gcPZlM3kd8BonVTFdmIQJw2v3spI4F9+HcJXngxUEp4rcoBZJGbtZBzWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZ+0Yya6Zh3QNFdgQ32NxswT2FmGYZJlfGAnmOhYjC0=;
 b=Q4M/ZcEIsRvnFSHB8if8B2sJxT5cJGS4+yMAkHZqru8Y9I9RLQ9Jju+e5EHAlW7q/UKv2jSXz3ZFfAaDJdDdRD6YtQusdjjpmU7mhzHQ4uT86MNuCbjMxxeTLeL9evJosQSe9mjXAsf6yXj0GYRyRIc6HDrqtyt7MyB3I26AqPvXqhq33egYPtfgPKJIo+kSc5YWMKJrHXCNxWQWl9ESlJpnCE6DmPr/DfsGDybmuSYP5HQ16XXaJwN/Iyn1N9nwkmexnA/gB6kOSNFH8SVv68UzR43v1rEScJZwo+0w5ZEoLrDOOCUm+TFlRqIppVnPdT3YqY57n5sfXkSU5yurBg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vZ+0Yya6Zh3QNFdgQ32NxswT2FmGYZJlfGAnmOhYjC0=;
 b=fWeXntUR9N1Ha3wE+oQz0xeZonAbolycOt8FfQHy6KOjoVTFEJvxNZ45BdNV5S2M2VKb+rCWqYLUkg3DKqXp5PDyoMdHQZ6QWrant0/0zG0CaXk8JqY3AQipg3UCVb+7ETcxzDqn4Lo+zCBUjg5PKbn23YMpvfDlJHjHEVOaObw=
Received: from MN2PR15CA0018.namprd15.prod.outlook.com (2603:10b6:208:1b4::31)
 by SN6PR02MB4176.namprd02.prod.outlook.com (2603:10b6:805:2e::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2937.13; Sat, 2 May
 2020 00:25:26 +0000
Received: from BL2NAM02FT057.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:1b4:cafe::1) by MN2PR15CA0018.outlook.office365.com
 (2603:10b6:208:1b4::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Sat, 2 May 2020 00:25:26 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT057.mail.protection.outlook.com (10.152.77.36) with Microsoft SMTP
 Server id 15.20.2958.27 via Frontend Transport; Sat, 2 May 2020 00:25:26
 +0000
Received: from [149.199.38.66] (port=38220 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy7-0006Qj-C1; Fri, 01 May 2020 17:25:23 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy9-0004NS-Ka; Fri, 01 May 2020 17:25:25 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 0420PI69027415; 
 Fri, 1 May 2020 17:25:18 -0700
Received: from [172.19.3.8] (helo=xsjamitsuni50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <amit.sunil.dhamne@xilinx.com>)
 id 1jUfy2-0004Mq-2A; Fri, 01 May 2020 17:25:18 -0700
From: Amit Sunil Dhamne <amit.sunil.dhamne@xilinx.com>
To: mturquette@baylibre.com, sboyd@kernel.org, michal.simek@xilinx.com,
 mark.rutland@arm.com, linux-clk@vger.kernel.org
Subject: [RESEND PATCH v2 1/2] drivers: clk: zynqmp: Add support for custom
 type flags
Date: Fri,  1 May 2020 17:25:16 -0700
Message-Id: <1588379117-254190-2-git-send-email-amit.sunil.dhamne@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588379117-254190-1-git-send-email-amit.sunil.dhamne@xilinx.com>
References: <1588379117-254190-1-git-send-email-amit.sunil.dhamne@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(346002)(376002)(136003)(396003)(39860400002)(46966005)(9786002)(4326008)(107886003)(81166007)(316002)(7696005)(426003)(26005)(54906003)(336012)(2906002)(356005)(70586007)(82310400002)(70206006)(8676002)(47076004)(5660300002)(186003)(82740400003)(478600001)(36756003)(8936002)(2616005);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2ad18674-00bd-4545-3687-08d7ee2f4f79
X-MS-TrafficTypeDiagnostic: SN6PR02MB4176:
X-Microsoft-Antispam-PRVS: <SN6PR02MB41768D6F0B8B5433BE547901A7A80@SN6PR02MB4176.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:172;
X-Forefront-PRVS: 039178EF4A
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: fj3XhqG1ClH9Sk9MaWHQ354FjwFpSxIiBaISvrR+XODVxk117JPLrDExfz4KtGw0z5wFhC3W1tPXHHO7ke41zMUN62BXMgX3BXA6sgbShogYXcPFn7FQ7QgtRy7Xdm81plLBdZddy3B5lWGEI1hJw63aJy1aJDbM93xijw+6y8qQbQl5DxnoIiJDg7Ou1yIFouQ08o5qnfVYE6+NAQUpHdg2qKWIMtMCG50uTb1AeGYAI8TDIXKSJ2bM2SVUizMVH0Tpt1WzZZw+g2ZzVuL08NQmLo704VnpupeeePQkE+GG4VM1PjaSQw507q3BEBbsoV0KKklXJJetUm/NpzCHxTkC3iR5GQ/K6M9hl2H0h9rNcZwmtUJzElRaX5CvjpgQT3vfTUUU33KXHLyFaMBdyxLePSJ/Egu6mBNSyY0uf6UQ0ZKw0ie+Mq9L7fYGPldtbAEWVD0obgUtuKTqpTIs0hE4CeebE3U8OtIx4L8BRxoUQt5JhqgIjQvOly0wV6jKU8aKZdxZuiRj6xuCXZrYgA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 May 2020 00:25:26.0342 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 2ad18674-00bd-4545-3687-08d7ee2f4f79
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4176
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_172530_018675_9791B5F5 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.77 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.77 listed in wl.mailspike.net]
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
