Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 97F38FA9CF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 06:41:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b/ygPoCf+rE57qs4GhLznI/KFYiFG3q8l+xgRHbN9sY=; b=L3H0Wb5ef5SKM4
	KrM7zI4aKAWSrj375yyBpsDBS5dpI42jlfMG7HgjfI1ggp3t27yUybEbMW9RHJuEEKT8QpN5ql3ho
	TRcTkv2v/xGywtgh1IdtHICFIRwSI5J5uzumIdF2QJP2nYR0jPj+r377Zi2/oHyxdumbeVxFeHEAc
	B7OvsAbA+uRNiAchnhz0bURYmJVXMQMj4NvOMDkpDV8038sSdFZB347uNUDjZgfChYWoCtt0wpG+u
	JSvKrdq0XfaqRGm+Ywva465cNpYE1Vqaz1Lhnn4ZXa94VcvkP0qRdwBbXFYBXx1pqTJ9aXLDfKcLy
	XqqZTe5Emq5WrDGUFOZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUlP2-0004rg-VN; Wed, 13 Nov 2019 05:41:16 +0000
Received: from mail-eopbgr800052.outbound.protection.outlook.com
 ([40.107.80.52] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUlOv-0004r9-Pt
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 05:41:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Kgdk1WVI+jgjqIuVQ3lsxTkXV8XRPOeazvvZHbUKnQUYKh9e9thnohNOD5t4e46hQJpvDJKQYYIy1goWu0IhMNabwE7EPOeoaUW6h+ayMPrSXaKfHx4zMpCl0eADM0Z5d7My3PLW14Y059QTBSapyinTSQ357BDxATruvtMQW1D55G7d373IVE5w65HKz9c+hIyxOKP9Fa5LzMA6mQXzX5xLcM13FABggKzf6ng+crRWufiEFuW61D/Jh1HNmg+hiNuB0fv2FhZ/7t/ctLabqvOHoN0edCQl1cL5mYgelBRFQVuX/lpKQTihAMvph+hlhabhHLY0NrH+fU0L12UZ3A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=acetoaqJiNUMgz/SIJPNWBTXIyByhfTXXiuTSMlr6DY=;
 b=BBcY2sX27L5f3+vv31yNs7ii1jFcvRsZrkWZuobs61Ufk7X5AZ8qrJyvgFlO+uqjQ7T2zHVvdAhvxlMzl5caPnuOSgIIFv1t82ndcuByVGaUuZsXok/5yjaszokB7WT3cEBJOVBEn5FumIqjMMLqSjPpHKXj1gM/1OvVf1V4dLLMjtaDoGf5bVv5ImVBUk+4fbBzvWatR2dr321jXFF4oQwCe69Hn2CUkpH06XkKoGt77zpJZPUnTgMDAmWDquD/DLeC/Ah1LITmqhjIjeDror70XCg3B2TcfyVOpIBvBpN4QXEL+5nlPjC+qNnFEDXpKByAKhiFDmKOblIwXsCZnQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=acetoaqJiNUMgz/SIJPNWBTXIyByhfTXXiuTSMlr6DY=;
 b=tOJg0yP2IXxrLGr74qI0v6NBBXqHBnQ1Rva0zgAhfLDLvLx5iGB9uioLdsfUVYEVRU95jnq2q/WPJVzcA6VOCYg7g2e/xMMKm20aaYzRIeIuyIDYsMa7UmJ4hsQOEI6ENfqZOxZTOkIdMORFF7l+k1+Tu3k0qTgeIA+1fv4O714=
Received: from CH2PR02CA0020.namprd02.prod.outlook.com (2603:10b6:610:4e::30)
 by BL0PR02MB5377.namprd02.prod.outlook.com (2603:10b6:208:37::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2430.22; Wed, 13 Nov
 2019 05:25:05 +0000
Received: from CY1NAM02FT051.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e45::201) by CH2PR02CA0020.outlook.office365.com
 (2603:10b6:610:4e::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2430.25 via Frontend
 Transport; Wed, 13 Nov 2019 05:25:05 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT051.mail.protection.outlook.com (10.152.74.148) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2451.23
 via Frontend Transport; Wed, 13 Nov 2019 05:25:05 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iUl5w-0000Nb-V6; Tue, 12 Nov 2019 21:21:32 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iUl5r-0008AH-Q9; Tue, 12 Nov 2019 21:21:27 -0800
Received: from xsj-pvapsmtp01 (smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xAD5LQHb028116; 
 Tue, 12 Nov 2019 21:21:26 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iUl5q-0008AC-Fl; Tue, 12 Nov 2019 21:21:26 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id AE74E1001C6; Wed, 13 Nov 2019 10:51:25 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, netdev@vger.kernel.org
Subject: [PATCH v3 net-next] net: axienet: In kconfig remove arch dependency
 for axi_emac
Date: Wed, 13 Nov 2019 10:51:23 +0530
Message-Id: <1573622483-2033-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--3.773-7.0-31-1
X-imss-scan-details: No--3.773-7.0-31-1;No--3.773-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(396003)(376002)(136003)(39860400002)(428003)(249900001)(189003)(199004)(81156014)(50226002)(16586007)(42186006)(81166006)(8936002)(316002)(103686004)(5660300002)(70206006)(70586007)(26005)(51416003)(336012)(486006)(2616005)(126002)(2906002)(476003)(356004)(50466002)(305945005)(36756003)(47776003)(48376002)(8676002)(498600001)(107886003)(4326008)(6266002)(42882007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BL0PR02MB5377; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; MX:0; A:0; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 62f6adaa-6e5d-419a-60f5-08d767f9d75a
X-MS-TrafficTypeDiagnostic: BL0PR02MB5377:
X-Microsoft-Antispam-PRVS: <BL0PR02MB5377EEFB13CBA9A7A803DD49D5760@BL0PR02MB5377.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:758;
X-Forefront-PRVS: 0220D4B98D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yD4Z9w9ACwQBickFGmU9jWMb0wWv/IfNL2mFVrkILNNG2EKOBwl6QT9EjffAmHh4mEwbYb0qb7UAWLNrBqF3wAn7TCXPzCC14led/l/bVaK1jnPjmPHUFaIxO/0jhLBq36ofHRJJCNRguzwIAFPXQji4PLVH0w6AJAWK1uhUKCllNmsUD7iPP3zM0r3txaNdNVVCf/mBEGEIAmN/H7hqoH0HFXEYEvKp1eIq7RfAL5uSE7jGrX+MnhlTgz357Ysft++pOQYfyYWbpvKCWZJ2Q9MUnYgPl4s6FvG9/6Eq3rjuZjJuVjpi+RrVZ3nISPBnodW8u9Y9mzyvuDRRDFHetn7DpCfu7SrJs71XCfkuaXSlPGXupaMEywOYgV4B9ryvnzasJCHRwE7vIYypwfVaun5vesskaMcxHGpVkoIWMQwp/9FlLuN3rSsMYIRu8fTt
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Nov 2019 05:25:05.2475 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 62f6adaa-6e5d-419a-60f5-08d767f9d75a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR02MB5377
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191112_214109_840910_ED24BA64 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: 2.5 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.2 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: linux-kernel@vger.kernel.org, anirudha.sarangi@xilinx.com,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>, michal.simek@xilinx.com,
 gregkh@linuxfoundation.org, mchehab+samsung@kernel.org,
 jakub.kicinski@netronome.com, john.linn@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

To enable xilinx axi_emac driver support on zynqmp ultrascale platform
(ARCH64) there are two choices, mention ARCH64 as a dependency list
and other is to check if this ARCH dependency list is really needed.
Later approach seems more reasonable, so remove the obsolete ARCH
dependency list for the axi_emac driver.

Sanity test done for microblaze, zynq and zynqmp ultrascale platform.

Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
---
Changes for v3:
Remove obsolete dependency list. Suggested by Michal and Jakub.
Modified commit description.
---
 drivers/net/ethernet/xilinx/Kconfig |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/Kconfig b/drivers/net/ethernet/xilinx/Kconfig
index 8d994ce..6304ebd 100644
--- a/drivers/net/ethernet/xilinx/Kconfig
+++ b/drivers/net/ethernet/xilinx/Kconfig
@@ -6,7 +6,6 @@
 config NET_VENDOR_XILINX
 	bool "Xilinx devices"
 	default y
-	depends on PPC || PPC32 || MICROBLAZE || ARCH_ZYNQ || MIPS || X86 || ARM || COMPILE_TEST
 	---help---
 	  If you have a network (Ethernet) card belonging to this class, say Y.
 
@@ -26,11 +25,10 @@ config XILINX_EMACLITE
 
 config XILINX_AXI_EMAC
 	tristate "Xilinx 10/100/1000 AXI Ethernet support"
-	depends on MICROBLAZE || X86 || ARM || COMPILE_TEST
 	select PHYLINK
 	---help---
 	  This driver supports the 10/100/1000 Ethernet from Xilinx for the
-	  AXI bus interface used in Xilinx Virtex FPGAs.
+	  AXI bus interface used in Xilinx Virtex FPGAs and Soc's.
 
 config XILINX_LL_TEMAC
 	tristate "Xilinx LL TEMAC (LocalLink Tri-mode Ethernet MAC) driver"
-- 
1.7.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
