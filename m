Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 949082DD41
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 May 2019 14:38:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rIQyrjuaaiWiueeSxgIYKV9pe/XU1Rv1CbIgtEPr8oA=; b=awWHD8fV/YjDZY
	vIgzVsZTpHaVspqcGe8ggeQxvR/vJmRL0QYE6XSy+E/jQlCNzBZ+hUki1vbs75cOFH92GAH3EDZ1h
	hht28OwVLPU03sU8iiEfkwvlEuzaaTSoJmlcNtoJZ4jCBtoOrzB9sQT1p4td3FjmJuq3MoGJ/sDL/
	H1vuwp+SQa0u6tFPRaakXu19v4RouXYYcsKSLom2a7GcMfx40iKXaz05mCtY1FeEuZD3IRea5RHa2
	9nnSEVw7H5vhuKP6E8TcRuLhRRRnl4eadtd/GeBbTrS0gBYfmZkPphXTpUXfXGsFfvqO3H6AD3jy9
	oE467/pQU5udTgFRI1dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVxqX-0001dA-A7; Wed, 29 May 2019 12:38:21 +0000
Received: from mail-eopbgr790082.outbound.protection.outlook.com
 ([40.107.79.82] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVxqP-0001ck-60
 for linux-arm-kernel@lists.infradead.org; Wed, 29 May 2019 12:38:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LBcmx/KENxhE0ujPCHiGBKa5lU2O95Cy+wgpQ9dVzJY=;
 b=ge8iltB5+H6ofXjwpabq8cHEMZ0gISPD+GZUjJViDwG1xyLGN/19VuUzPTrpPD4Xwe6q8q3zKEqKLXTLl4udifppm7mjENr/9RNJPTuFaeQc4X/ErZTr2uA6o+0ZYh3Ciqi5p93VBjHsth9Nf0/ffCrSkDaZEO+5UN+LF2YSxOM=
Received: from BN6PR02CA0038.namprd02.prod.outlook.com (2603:10b6:404:5f::24)
 by CH2PR02MB6230.namprd02.prod.outlook.com (2603:10b6:610:d::24) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.1922.20; Wed, 29 May
 2019 12:38:10 +0000
Received: from SN1NAM02FT015.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::204) by BN6PR02CA0038.outlook.office365.com
 (2603:10b6:404:5f::24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.1922.17 via Frontend
 Transport; Wed, 29 May 2019 12:38:10 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 SN1NAM02FT015.mail.protection.outlook.com (10.152.72.109) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.1922.16
 via Frontend Transport; Wed, 29 May 2019 12:38:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:56878
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <bharat.kumar.gogada@xilinx.com>)
 id 1hVxqL-00005B-9j; Wed, 29 May 2019 05:38:09 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <bharat.kumar.gogada@xilinx.com>)
 id 1hVxqG-0002AV-60; Wed, 29 May 2019 05:38:04 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x4TCbsxb027015; 
 Wed, 29 May 2019 05:37:54 -0700
Received: from [172.23.37.224] (helo=xhdbharatku40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <bharat.kumar.gogada@xilinx.com>)
 id 1hVxq6-00023F-9c; Wed, 29 May 2019 05:37:54 -0700
From: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
To: lorenzo.pieralisi@arm.com, bhelgaas@google.com
Subject: [PATCH v3] PCI: xilinx-nwl: Fix Multi MSI data programming
Date: Wed, 29 May 2019 18:07:49 +0530
Message-Id: <1559133469-11981-1-git-send-email-bharat.kumar.gogada@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(376002)(346002)(396003)(39860400002)(136003)(2980300002)(189003)(199004)(81166006)(81156014)(26005)(8936002)(186003)(77096007)(8676002)(36386004)(106002)(107886003)(336012)(5660300002)(6666004)(36756003)(63266004)(305945005)(50226002)(356004)(478600001)(4326008)(2616005)(476003)(316002)(16586007)(2906002)(14444005)(47776003)(126002)(50466002)(426003)(48376002)(7696005)(70206006)(70586007)(51416003)(9786002)(486006)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6230; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:xapps1.xilinx.com,unknown-60-100.xilinx.com; MX:1; A:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1ee35d64-b865-4320-01ec-08d6e43281f0
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709054)(1401327)(2017052603328);
 SRVR:CH2PR02MB6230; 
X-MS-TrafficTypeDiagnostic: CH2PR02MB6230:
X-LD-Processed: 657af505-d5df-48d0-8300-c31994686c5c,ExtAddr
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-Microsoft-Antispam-PRVS: <CH2PR02MB62309F56CF49C89999E5185FA51F0@CH2PR02MB6230.namprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-Forefront-PRVS: 0052308DC6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: IV0at8q134ZqqSU6891MBzcXec2PcFTZHJ3DPLhnsDPyXCCjEXrp1Ht3WSivI9J0AIAtGXDX9dHVH3twskcOs601hgsdn/L8q01iEVJr3uc0OjKFmKkZsDfqXRXBRgVqk4FBB+zNNIP+pxh4PVdqy4QPFALYdagEm4Qnf7QivO4O2zWI4TLhtebsJK5jLrdsjWTh4cIzfgUC8DzDUEVs/hkpj3JD4Om4GuACNj5lZvi8fj6Afm8CpgENj59gjq1xBesB31Tfzl+1gwV5S7nVv+iNVck+Nc4wz8ROrFZqU2shDrcWJvpBMt0A9SAwgbFrbxoRCVnQWi/V8KTJLn9St7X7SssCUTNVh2PqLvt2OeBdK3kglZSPNMKfhvLVPZpz26EWpg7/Ez1+rSSaz2ZA9AexiZGAQ6j5XkfVDS/ThTM=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 May 2019 12:38:09.6799 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ee35d64-b865-4320-01ec-08d6e43281f0
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6230
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_053813_235279_66D2E0AE 
X-CRM114-Status: GOOD (  10.42  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>,
 linux-pci@vger.kernel.org, rgummal@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The current Multi MSI data programming fails if multiple end points
requesting MSI and multi MSI are connected with switch, i.e the current
multi MSI data being given is not considering the number of vectors
being requested in case of multi MSI.
Ex: Two EP's connected via switch, EP1 requesting single MSI first,
EP2 requesting Multi MSI of count four. The current code gives
MSI data 0x0 to EP1 and 0x1 to EP2, but EP2 can modify lower two bits
due to which EP2 also sends interrupt with MSI data 0x0 which results
in always invoking virq of EP1 due to which EP2 MSI interrupt never
gets handled.

Fix Multi MSI data programming with required alignment by
using number of vectors being requested.

Fixes: ab597d35ef11 ("PCI: xilinx-nwl: Add support for Xilinx NWL PCIe
Host Controller")
Signed-off-by: Bharat Kumar Gogada <bharat.kumar.gogada@xilinx.com>
---
V3:
 - Added example description of the issue
---
 drivers/pci/controller/pcie-xilinx-nwl.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/controller/pcie-xilinx-nwl.c b/drivers/pci/controller/pcie-xilinx-nwl.c
index 81538d7..8efcb8a 100644
--- a/drivers/pci/controller/pcie-xilinx-nwl.c
+++ b/drivers/pci/controller/pcie-xilinx-nwl.c
@@ -483,7 +483,16 @@ static int nwl_irq_domain_alloc(struct irq_domain *domain, unsigned int virq,
 	int i;
 
 	mutex_lock(&msi->lock);
-	bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
+
+	/*
+	 * Multi MSI count is requested in power of two
+	 * Check if multi msi is requested
+	 */
+	if (nr_irqs % 2 == 0)
+		bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
+					 nr_irqs, nr_irqs - 1);
+	else
+		bit = bitmap_find_next_zero_area(msi->bitmap, INT_PCI_MSI_NR, 0,
 					 nr_irqs, 0);
 	if (bit >= INT_PCI_MSI_NR) {
 		mutex_unlock(&msi->lock);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
