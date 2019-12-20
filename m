Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF4E1277D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:16:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kFKwCTfqAo8FGyQfxOr78Rze2DbGBqA2Kym2AVvLcas=; b=InTxazR8eVd49g
	GAEBiZCgn7+Uww54C4DEs4fN9GbLckZoCNlsS0dtCMvMnLpbgtAI+5wd2YrepHBGPsZiPULPJFsso
	X9a0OlVydWbmPGx7dNz4mV2vDMR7OvkUyWKRp21NGVM0qj9Af2TjbtBUyx4xoUBrWPS/NJMci60WH
	rEk+arm/vcnSSb/hMDvzA8kDGSO5x3kWhCIBBeNtJkCp6X0ogxeZOhO0lnYzuzwUYN2dn2q53MKI2
	Fis0HRZozu0Xea9aj+/sc9VP52zI3hmz9dRsRXhUWX3Yb4t/sRKlyMq+wi7QPcwAaKFdNL/s170hG
	XMrzybxCT6b/SxeV8KKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEOw-0001rL-Bc; Fri, 20 Dec 2019 09:16:50 +0000
Received: from mail-dm6nam10on2053.outbound.protection.outlook.com
 ([40.107.93.53] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiEOm-0001px-06
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:16:41 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iCERGxcneaMVehUIpHfsqrPtuoICErxUn9j6jbwsGhz+mkhm+NYORZ4S9MSMHmF/xs2bXL0zLzG/XYqRZYpbX7uJkd0+f7KkVjgcKJg2DzYgERebDK9KKWaLTo2PkpJkYS/AUoYOf9bGL8gqFdjPhRA5BpehhaKk235O+yxmR4haDVuTpOhpFWy4DUeLUillRSii6NZd0KbGV6B5d++EcbAnONsUScnTixVowVOPC/oRfTKYDVmBChH47c5wlFRfKl2dl52L1CTcobs6+nB6e7dwA6LsoXnPrl61qjawanx7+b74PpZjokgvf6VUkqsOe3E84Uz1ID4pJcetb0cZyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dvc+2z3f1d2YnIHf5PXpxa1mRPpFheqQ8eot7NzEjY8=;
 b=ITc9lz3GFaJUzu8fIM+R1GqmzmUPerNORKF6Qqt2fcNo8qJmg3gxGvcS7m4aWW/HS4JiVikMEEk8hc/8ErnVb40rPLFXKE3LqgR9i+HTR6PYAQEiz9rBcJhZJmcAqLU5XJ+2VvNb7Gw+QSme5cW4wq3ZoahE0XSA1bdGTRQaS6zousgSMOiCfrIBVyJ4flSG/BRZXNtLvHfql3mJZtDTqC+j+XL0OhFSpmb+ZPOcMWRdiX7mx4Bu6N+3B20fSL9XXRzQvoBCDoe6o+1a5IR+MW/CfGNCwS54Xop7W5CNMz4bRN1MVywpLksMdnqT3bxISW4HRbfKT5C2on4jgS7tFA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Dvc+2z3f1d2YnIHf5PXpxa1mRPpFheqQ8eot7NzEjY8=;
 b=e7X8lPnvZKoXbOmRfzUGq1IIsgCGLCdaVSKG8WrOi2pIro8YyiNHNcln2He+hLS3Pw8QSbtIx075l002htygfPJFQmQqJ5NTl1D8ntWHlnEcnfUyLNBpq9bmqe1S2K0ExB8vzxgMTIX5qYzE3HIRLuwGEzLG3OPpR/PTQJRxORo=
Received: from CY4PR02CA0006.namprd02.prod.outlook.com (2603:10b6:903:18::16)
 by CY4PR02MB2262.namprd02.prod.outlook.com (2603:10b6:903:9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.16; Fri, 20 Dec
 2019 09:01:10 +0000
Received: from BL2NAM02FT047.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by CY4PR02CA0006.outlook.office365.com
 (2603:10b6:903:18::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Fri, 20 Dec 2019 09:01:09 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT047.mail.protection.outlook.com (10.152.77.9) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Fri, 20 Dec 2019 09:01:09 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5x-0003Di-Tr; Fri, 20 Dec 2019 00:57:13 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5s-000100-5o; Fri, 20 Dec 2019 00:57:08 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp1.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBK8v7Rn010840; 
 Fri, 20 Dec 2019 00:57:07 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5q-0000zg-Qm; Fri, 20 Dec 2019 00:57:07 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 07325103F29; Fri, 20 Dec 2019 14:27:05 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, michal.simek@xilinx.com
Subject: [PATCH net-next v2 0/3] net: emaclite: support arm64 platform
Date: Fri, 20 Dec 2019 14:26:57 +0530
Message-Id: <1576832220-9631-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--1.562-7.0-31-1
X-imss-scan-details: No--1.562-7.0-31-1;No--1.562-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(39860400002)(428003)(249900001)(199004)(189003)(42186006)(498600001)(316002)(107886003)(336012)(4326008)(42882007)(70206006)(70586007)(6636002)(2616005)(2906002)(8676002)(36756003)(26005)(6266002)(6666004)(356004)(5660300002)(81156014)(81166006)(4744005)(8936002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2262; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; A:0; MX:0; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a11cfc12-36b1-4e21-4e73-08d7852b27fe
X-MS-TrafficTypeDiagnostic: CY4PR02MB2262:
X-Microsoft-Antispam-PRVS: <CY4PR02MB2262796B64E69AA1562C1DB6D52D0@CY4PR02MB2262.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5236;
X-Forefront-PRVS: 025796F161
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OaGd2wsFDtekFqpKhgS/D6aPy1Z86SSUAyWkUL6WYx80UNmI7EnLDZjigiQwisLSOao9PUGDwz2dCzWf6/8Uj+vZpglQVkFlefiNLQVxWs+O+LpohnQaGPyMfD15d8NYXL/IvhWQmKlBCVDMC15v1panenwCiLBI0bGVMyqgu7qB+l1v7bYFyo42iBuIn7qb8dnkHYvBXonP3blOjsJHSKD0qcTAXS+gpzDT3/fEhZakOBLnPk6gyZoVNOKmvd0SMqY3w49iQemdz14lcunbUHewaLyegLysi+ruAOjRwHJpRQG7x1J9rQmflCrz85LT3+G3dZu4qIidFD8z4LfE+hl8Ea17DH/AFCGRFlkFGuzcddA0INS3tveE9R/tJNanv0e1dXLIWzNzz3p004Cil7YyP1j/SfnCzfS6dXZ/FOq3UuW8PRTaxlDUSHok/LYs
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2019 09:01:09.5540 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a11cfc12-36b1-4e21-4e73-08d7852b27fe
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2262
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_011640_039159_8BC8546C 
X-CRM114-Status: UNSURE (   6.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 3.2 (+++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (3.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.53 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 3.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
Cc: netdev@vger.kernel.org,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 git@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patchset fixes the checkpatch warning reported in xilinx emaclite
driver. It also remove obsolete arch dependency in kconfig to support
aarch64 platform and fixes related gcc warnings.

Changes for v2:
- Modified description of reset_lock spinlock variable.

Michal Simek (1):
  net: emaclite: Fix arm64 compilation warnings

Radhey Shyam Pandey (2):
  net: emaclite: Fix coding style
  net: emaclite: In kconfig remove arch dependency

 drivers/net/ethernet/xilinx/Kconfig           |  2 +-
 drivers/net/ethernet/xilinx/xilinx_emaclite.c | 47 ++++++++++++---------------
 2 files changed, 22 insertions(+), 27 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
