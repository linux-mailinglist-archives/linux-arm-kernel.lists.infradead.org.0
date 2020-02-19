Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58409164438
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 13:29:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=M9MbJgXto0U14jBBDFTMKeajC0crrs4pM1Zr0zTLxZY=; b=eqwgou+muuvwvX
	1vSH4w3GBq4DeGlbcnILDO2aDEKdIOu76iszTXT3VWDIVftt113iWVJFx37vs6fkMNnX3Qc5x/iUh
	aBkoJkN75xEqCHFOgBM47L0b5RzrZlHq3KxZ8Jo6wPE7BayFXAjAdBiOj0bYVrDk+oxaFlw9L39eX
	e5zs//Cd+Wp8FSlHJ3n78pYouOSzP2kgjMCzk+/hHa8U3eSMMmWaxqtVsyGQ6JXf5oYljyG20NHbC
	pM5UDM8t9MbpSBmX2lSOv8ylPfW1QtBThlqfgvjZhR34LkijttlxqlLpRP4o/prj20niPCTDdWu80
	nXoL8NnY3XguWetec4/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OTO-0002jY-LJ; Wed, 19 Feb 2020 12:29:02 +0000
Received: from mail-dm6nam12on2065.outbound.protection.outlook.com
 ([40.107.243.65] helo=NAM12-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OTD-0002il-CO
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 12:28:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eDKwHAOkR+LJg2dSDMNF3Hn7O4/wqqrh8nlp5yLr71ZzYzcOOffiio5JbZKyPv54SA5hDXnZRzJ7ANGyAjRK1dKe7Up/LJkcrcGd4oaSnKVnHS9kvbUoFpINLuKqI40z/jrYIcsGFSTM++7dnI/D5pUWHkgnj4In3hme6a9OkSs9cnAucOUJXdkPcRK8IA2Y/dZh8/p5jgPv8ZGugAWHxiTaeiKs44EAhpFWxrKi2ds5OfIO3Dp35MJga3YG5IsTX61/6JsWOznV87qlUc0BtNKJDefFmzEFjlJXmU+MALJxHkF2XzVwK6KnWTq3rogJaY14Pb0OKrH97znQKn1LsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E58wuQu/fKXuTAg0heh2qA0UF98tN3F9EFXdgWH5mOc=;
 b=XnC54JcX+dBL4RUms/uK6Dclr72IlwxVEleBDfjGeJg2fLKdxFAr+G7mz3jlznjrXbdpm9oOLEZLpQ7zUOajAWgavRfAXb07bMX8qA+i8nGaXx+Hs0xoxEanpUz4fBYH9aJjaPVEcCAdBWyf1X9CF3cyVrxsNBwU4A/H3H++q8FeWOz3T3Ec5hnsYAtkyYRBfwBEp0NFj0aBZnCo65Q7w4GFc9YB0q2E7oZG7wGYaN7zzm/pUfkCfeuD84cP3xK25jfnntlmP3+QeA2XWzDolVlEuNjKSzIH+d5tKmHkyURNzI9USWCVfvM4rAfwUKEgMk5MBh9TCUWQ0lz5j4XadQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=E58wuQu/fKXuTAg0heh2qA0UF98tN3F9EFXdgWH5mOc=;
 b=S8PEUFSCRgBUFZPn+VcViIP6eYLa8xaiJVI77BinbSHfuEh36yylvEoycw2EFVwIiCY2ZMZ66lQ52EXoui+6zset3pi2c2s59D0cDAFdkOSQOo/DmCY9fQpvBn95aRRm/geB3BWsKcDH+d5F7GttWOr9m7aJl+GK0Q95jJTOtJ0=
Received: from MWHPR02CA0010.namprd02.prod.outlook.com (2603:10b6:300:4b::20)
 by BYAPR02MB5125.namprd02.prod.outlook.com (2603:10b6:a03:67::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2729.24; Wed, 19 Feb
 2020 12:28:47 +0000
Received: from BL2NAM02FT060.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by MWHPR02CA0010.outlook.office365.com
 (2603:10b6:300:4b::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2750.18 via Frontend
 Transport; Wed, 19 Feb 2020 12:28:46 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT060.mail.protection.outlook.com (10.152.76.124) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2729.22
 via Frontend Transport; Wed, 19 Feb 2020 12:28:46 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1j4OT7-0006bu-PM; Wed, 19 Feb 2020 04:28:45 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <manish.narani@xilinx.com>)
 id 1j4OT2-00064S-Lk; Wed, 19 Feb 2020 04:28:40 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 01JCSdA1016691; 
 Wed, 19 Feb 2020 04:28:39 -0800
Received: from [172.23.64.106] (helo=xhdvnc125.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mnarani@xilinx.com>)
 id 1j4OT1-00064F-2Q; Wed, 19 Feb 2020 04:28:39 -0800
Received: by xhdvnc125.xilinx.com (Postfix, from userid 16987)
 id 419FE1211E6; Wed, 19 Feb 2020 17:58:38 +0530 (IST)
From: Manish Narani <manish.narani@xilinx.com>
To: ulf.hansson@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 michal.simek@xilinx.com, adrian.hunter@intel.com
Subject: [PATCH 0/2] Add support for Xilinx Versal SDHCI in Arasan driver
Date: Wed, 19 Feb 2020 17:58:31 +0530
Message-Id: <1582115313-115667-1-git-send-email-manish.narani@xilinx.com>
X-Mailer: git-send-email 2.1.1
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(39860400002)(396003)(376002)(136003)(189003)(199004)(6666004)(356004)(81156014)(2616005)(8676002)(70586007)(4744005)(81166006)(316002)(186003)(4326008)(36756003)(44832011)(426003)(70206006)(5660300002)(8936002)(26005)(6266002)(336012)(107886003)(2906002)(478600001)(42186006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BYAPR02MB5125; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b5ce6b66-751b-43cf-a295-08d7b537440f
X-MS-TrafficTypeDiagnostic: BYAPR02MB5125:
X-Microsoft-Antispam-PRVS: <BYAPR02MB5125BF2ABB8D9E8E5215FB48C1100@BYAPR02MB5125.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3968;
X-Forefront-PRVS: 0318501FAE
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MRDCwsPLHXh7wmv9/C3lafIJal37aXotrPbphuVfqbxqxuCZ+F4bP6uddneRCkRxCR9MyF1DGtZKO+/cgIX6ApMMPPNblcz/QbnftSeonkkDQHR2vn8UGTxfMRbAiLSWFKW/t51uf23leNs2WvcdqYZmaNrfPeN3AFG1jLcKdzSn64I88id77K1b6cxTpxWXYopmsVi2j38vdQ8xwbxDH/iaL8j+x/UUmD5VdC3idFEuwTHThSaMVYJGB2EwsOiUQgp69XOLHkSBuKkoYVAIR537nmag62nO9ts5YB61ltE1hJwC2X9BvABImggLs0l7G0T+/fh3A5YafyaQI6DC5AhFYsaIJ9CRdVHA3PTWaUVUXJ7SKZfJl2KErEtSVuPHPB3DvbJ0DSacJICvrXG0eGdtfYz7R2cBqDAdF5ptfFWmspNuDJKuIXpI9TNeeQUJ
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Feb 2020 12:28:46.4187 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: b5ce6b66-751b-43cf-a295-08d7b537440f
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR02MB5125
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_042851_422023_EA5D60A4 
X-CRM114-Status: UNSURE (   7.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.243.65 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, Manish Narani <manish.narani@xilinx.com>,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series includes:
 -> Document the Xilinx Versal SD controller
 -> Add support for Versal SD Tap Delays

Manish Narani (2):
  dt-bindings: mmc: arasan: Document 'xlnx,versal-8.9a' controller
  sdhci: arasan: Add support for Versal Tap Delays

 .../devicetree/bindings/mmc/arasan,sdhci.txt  |  15 ++
 drivers/mmc/host/sdhci-of-arasan.c            | 176 +++++++++++++++++-
 2 files changed, 189 insertions(+), 2 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
