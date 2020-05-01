Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36B861C10B6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 12:15:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P95P3JzIFwArsADVYBvqSpGtHXj+8BNowl05eWtsQQM=; b=AMHh7QI3TXSkin
	Mf0faLM7KhXU0wQ84HeLxpRui3P/EQTdvKs8yJkg1RAq5yD9TRvlFbCwgP64VKdbO5lg/RxH0xOP8
	IK6tg36ITrWJI0P3PACTXRgcScmcEhw3vV6EK69LwBKsjxd28TDGQWKiOb4XzND7k5yqTWshVMW29
	335Lv7/nBaVg+RmQgXcGuaSIEnpxYyLZk+CMdvSd0vNpU4qYelCD8LGOlLu1i+LgPq5PuAQIOHyRi
	ef0hTMe4IofJgsR0W4KW2SRzzSkCTTDnVvmfkzHCN8+nfmRDLeFNriZiwdzoJ6BFdJv7rhofuJ8Um
	V9N/tlwGDemHdglTInKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUShm-0008H9-E7; Fri, 01 May 2020 10:15:38 +0000
Received: from mail-eopbgr760043.outbound.protection.outlook.com
 ([40.107.76.43] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUShf-0008GM-Hp
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 10:15:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=O1H3I6c4ULuqL9myjwS/6ZNX2WYCHsvo4nuoipV6fLwYZq9Fa+ZcYIvbCPdLyxgT3mlSZoXuQcBbk0iniCN36Y2Rhtz2TX/xtlzaX1ELMhPJ7ig9NqD9EOd6h8MOersxMpsyEBbx0xFK1j4rRSwlSWM9ADhcz5u43x5T/GpJwYzJi/K14/JWJgzFgJPWumJ8+fIco2fx2jS0N/YbgyKslbBWefmuwvFWQbtnEwrwp5uWGlwMv+wGDI8y5FMqmlhR+UOTzWN67Aoc8exnuSv7flptMbaRyfFa4F/3cjlnPc/PNSsoIvGo/vTX+DyCjMEdnEvc5XtjybRkTq3McnDOWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tTCwm9Dvm7Zuz1+5QpjudlP3iwJF8lYiHxDv3j3ej2Q=;
 b=ZprIFJTvr+kN5bhJusfGKOosK2uZozW8BKxEx4FeMjzYFQMv0mGUZ/lr9Us/4hW2G6yATUQjbsvSOcGEQ02gDCKHpYe5+T6nCjIFSjbF67bJaU+12KFF14XHMWf5yDL06bnnKEQlRm/A8/KuEhJdjorl1sGu+wW9w+PMQvc0kXHSmvtlxUuzTHbComZfr3wyR0Gk/LlqfK65YNZCXFP1Ue9Dqa0Hs/i2YekQY4+GdG/UwyjuDB52s3SnEdg83Gc6msnbf2G0698bLAEYAdECB2CasM8p/M9R+tc0UOdCgGDL2HsncJosfhJ7QSSQ4OSS6k5nvNzkDnZX8eptbQtubg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gondor.apana.org.au
 smtp.mailfrom=xilinx.com; dmarc=bestguesspass action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tTCwm9Dvm7Zuz1+5QpjudlP3iwJF8lYiHxDv3j3ej2Q=;
 b=SFWRdbx7X39bg406bInu/qImycflv9NtgSVByanjwIOnan8wwCjnjsC4Zwo73EQkdtn+1T8lpJ2Ogar5+obQCrVbNfrW0lFZYAqQNCaoUp5IjO9c3RE6EKLaf8G3FPEOT/MbLn32AUhvqGoa2Dp6VAFYsKRDTt6eMqDItq+AZIY=
Received: from MN2PR12CA0017.namprd12.prod.outlook.com (2603:10b6:208:a8::30)
 by DM6PR02MB6778.namprd02.prod.outlook.com (2603:10b6:5:212::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20; Fri, 1 May
 2020 10:15:28 +0000
Received: from BL2NAM02FT060.eop-nam02.prod.protection.outlook.com
 (2603:10b6:208:a8:cafe::2a) by MN2PR12CA0017.outlook.office365.com
 (2603:10b6:208:a8::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.20 via Frontend
 Transport; Fri, 1 May 2020 10:15:28 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gondor.apana.org.au; dkim=none (message not signed)
 header.d=none;gondor.apana.org.au; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT060.mail.protection.outlook.com (10.152.76.124) with Microsoft SMTP
 Server id 15.20.2937.23 via Frontend Transport; Fri, 1 May 2020 10:15:27
 +0000
Received: from [149.199.38.66] (port=34748 helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.90)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1jUShZ-0007Vb-2T; Fri, 01 May 2020 03:15:25 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1jUSha-0006Xo-J5; Fri, 01 May 2020 03:15:26 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <rajan.vaja@xilinx.com>)
 id 1jUShQ-0006VK-4y; Fri, 01 May 2020 03:15:16 -0700
From: Rajan Vaja <rajan.vaja@xilinx.com>
To: herbert@gondor.apana.org.au, davem@davemloft.net,
 gregkh@linuxfoundation.org, kalyani.akula@xilinx.com
Subject: [PATCH char-misc-next] crypto: xilinx: Handle AES PM API return status
Date: Fri,  1 May 2020 03:14:51 -0700
Message-Id: <1588328091-16368-1-git-send-email-rajan.vaja@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; CTRY:US; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:xsj-pvapsmtpgw01; PTR:unknown-60-83.xilinx.com; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(376002)(346002)(396003)(46966005)(2906002)(9786002)(47076004)(336012)(356005)(82310400002)(81166007)(6636002)(5660300002)(107886003)(36756003)(426003)(8676002)(8936002)(2616005)(4326008)(316002)(70206006)(70586007)(44832011)(7696005)(478600001)(186003)(26005)(6666004)(82740400003);
 DIR:OUT; SFP:1101; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e1b10435-abc1-4ad6-a4ac-08d7edb891d3
X-MS-TrafficTypeDiagnostic: DM6PR02MB6778:
X-Microsoft-Antispam-PRVS: <DM6PR02MB67787F5097ED470875F0B8D2B7AB0@DM6PR02MB6778.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 0390DB4BDA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yKzcNiSCEoTbly1XwyfgqhXHzhHOKdW1IPbx3alBHBBiUlW1Kh4IksZIXqkvhW58fXNm6FNFwCeJU0uYFCWF1IgoRuErpqOl1JdU0FwUQZ1xCJMXGFml6dqqs8oalLI8qFFPq6kGPDQmxwR1BcM0tPhpiBBIZI9vg3TRzjpcOgAsPDFki7tolxhLi7LitqjJ7jRAGFWs89d/I93dJuf3CfQHmMkZ0dnOhMBY8tkM6j1TTb8JeXlITkQxzeosOvQJU8G7Dww2rvLfMIeTA9j6xX7AZM4Gd+EHYtOqsFD37ZF3D2Ad0G/S4AszgWcIKyEGOvbkETdRM7YhqP1weyNXIa1IREFeA7+S+VT73qZdBLMmjNQeMo57axDH68JPuH9P4qRi4dk3/SiDRlae2T6YeLINY4sqA4fGMjtD7u6HjQoNlRleTKx871A1aDt2uljEdMWm8FpDzbnMPGh4XGk7uyWanQi6eOvGIfEB2kmi1945C9+LQ0APE319Fy9akgvvwd1rhDEXuVemo4AkqCDcYg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 May 2020 10:15:27.2446 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e1b10435-abc1-4ad6-a4ac-08d7edb891d3
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6778
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_031531_594628_8C674483 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.76.43 listed in wl.mailspike.net]
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
Cc: Rajan Vaja <rajan.vaja@xilinx.com>, linux-kernel@vger.kernel.org,
 michal.simek@xilinx.com, linux-crypto@vger.kernel.org, jolly.shah@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fixes: bc86f9c54616 ("firmware: xilinx: Remove eemi ops for aes engine")

Return value of AES PM API is not handled which may result in
unexpected value of "status" in zynqmp_pm_aes_engine().

Consider "status" value as valid only if AES PM API is successful.

Signed-off-by: Rajan Vaja <rajan.vaja@xilinx.com>
---
 drivers/crypto/xilinx/zynqmp-aes-gcm.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/xilinx/zynqmp-aes-gcm.c b/drivers/crypto/xilinx/zynqmp-aes-gcm.c
index d0a0daf..a27e3550 100644
--- a/drivers/crypto/xilinx/zynqmp-aes-gcm.c
+++ b/drivers/crypto/xilinx/zynqmp-aes-gcm.c
@@ -85,6 +85,7 @@ static int zynqmp_aes_aead_cipher(struct aead_request *req)
 	dma_addr_t dma_addr_data, dma_addr_hw_req;
 	unsigned int data_size;
 	unsigned int status;
+	int ret;
 	size_t dma_size;
 	char *kbuf;
 	int err;
@@ -132,9 +133,12 @@ static int zynqmp_aes_aead_cipher(struct aead_request *req)
 		hwreq->key = 0;
 	}
 
-	zynqmp_pm_aes_engine(dma_addr_hw_req, &status);
+	ret = zynqmp_pm_aes_engine(dma_addr_hw_req, &status);
 
-	if (status) {
+	if (ret) {
+		dev_err(dev, "ERROR: AES PM API failed\n");
+		err = ret;
+	} else if (status) {
 		switch (status) {
 		case ZYNQMP_AES_GCM_TAG_MISMATCH_ERR:
 			dev_err(dev, "ERROR: Gcm Tag mismatch\n");
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
