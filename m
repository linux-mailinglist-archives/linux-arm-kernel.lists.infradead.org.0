Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 844AECEC32
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 20:53:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ceiohtEXOpfLL7gr1sVfL0VV/s98LicqmO8E/cjCqg=; b=K6pHg/HZzWQcfk
	3kQJGFwZwX92SWoLioCdVaTofeBCguuHh/goPTYP6M8X/AxFQQhO7tts+bVqNJcEm3BwPYFezm9cO
	DaVdB7hEpCNK6+Ev/54H7+/CR7RGQJZwoY/biPVhCmy6TTzvW4yVeZH1lH/BavTXHZ8mvRRAvPemN
	l05/m5Lrb05q1AtQoHqVl/3bUmFrP6nTGvWHW9YI0vlyVG9T09UHRRzwrIwtsZY2GWZLLviArXH0B
	eDewYFMaQKOygwuLcDNUB9YgwznZe5usy0UvyQFcCDAY+oFkVOgurZV4p//p4orgWi3GHznogEnED
	GlZpOatPnq4l+gSce/aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHY8W-000246-7S; Mon, 07 Oct 2019 18:53:36 +0000
Received: from mail-bl2nam02on062d.outbound.protection.outlook.com
 ([2a01:111:f400:fe46::62d]
 helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHY7u-0001g7-4u
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 18:53:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gxnfwTDXyT++wLeM+1VpHUUuls3zJyrq+DVPRVxMmzN2+rShmN2O8VcmzEiguWG3rqNVDzyun/GycH0zCCTFLX4ywHBVutnrr9k8ntqogFvXOMliBErHmfgU3AwjKuQ+Mm6Yehh2Ab4g7Fh4RHAijaD+Gl8ln5v/oftKM2YPXjH9DUcYi45Mwjxx58EVXH0Ou05JhW63RQID9c1oMb9a6OE6fuhBmmv8CQkHZR+SEHf4dL76tKBC+JCqC4/uvOh4dFr/xDTOxQ2hSYRlg3vjsSZTKxlGvLMdqysKxgsBiBt705RRFI/cVGOUpifSKc3m/6pTVuqrWEQvCEmwxllBpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VTaKeHXgf5Prw5VTRo31RjtpleuswlB5qdV+CG0qalo=;
 b=Bzgy3NlmbpEIBs2DkM9JRZG01goDEFFKWcIAzAhmdTrszB7wz3RQP3hRP1PTRWVRE5aN1g9eNghV4Z/wnBDLKmwdK9i+qdVZAykYi6yOpbQ/3kBrwCbIgiL3hG1a0G4C5tNiJPjdhZH/Pr2S4xjjFQ35buBa9mOiybNS+dDUXZhStf+1QMG0zMNF/vagoO0o8JjGuL3vincSsi8FVwHEhSg9LiHmEPm9GmBF5//LTIlvYhoyhIWLUlgNpPQpBVMrk5rbu8S3OVq/5i4miaUjATq7q7LPjXekAcSanOFNjdzCJulqTs3PI8F4EYplFD2/8/VGBqrih0SfeND5J87GGg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VTaKeHXgf5Prw5VTRo31RjtpleuswlB5qdV+CG0qalo=;
 b=qEMFQsu10sjKOUGTfUksijxZOEQ/nQ8gxvZ4ksjKBJai9kIdmHjwiiUjw97NpV0ff6CxrMEEFy9tQv+MEtSh+SFMqFV9TY8v541HhVQHPGGnwklKNi1QAo6N0ixRDP51sasqsX/5FYmRHJ9RPhG6B+UwIknO/hN0DxPmnR24klI=
Received: from CH2PR02CA0023.namprd02.prod.outlook.com (2603:10b6:610:4e::33)
 by SN6PR02MB4912.namprd02.prod.outlook.com (2603:10b6:805:99::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24; Mon, 7 Oct
 2019 18:52:52 +0000
Received: from BL2NAM02FT028.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::208) by CH2PR02CA0023.outlook.office365.com
 (2603:10b6:610:4e::33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2327.24 via Frontend
 Transport; Mon, 7 Oct 2019 18:52:51 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT028.mail.protection.outlook.com (10.152.77.165) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2327.21
 via Frontend Transport; Mon, 7 Oct 2019 18:52:51 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7n-0003TZ-0l; Mon, 07 Oct 2019 11:52:51 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7h-0002EM-Td; Mon, 07 Oct 2019 11:52:45 -0700
Received: from xsj-pvapsmtp01 (mailman.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x97Iqf94022517; 
 Mon, 7 Oct 2019 11:52:41 -0700
Received: from [172.19.2.91] (helo=xsjjollys50.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <jolly.shah@xilinx.com>)
 id 1iHY7c-00027p-TL; Mon, 07 Oct 2019 11:52:40 -0700
From: Jolly Shah <jolly.shah@xilinx.com>
To: ard.biesheuvel@linaro.org, mingo@kernel.org, gregkh@linuxfoundation.org,
 matt@codeblueprint.co.uk, sudeep.holla@arm.com, hkallweit1@gmail.com,
 keescook@chromium.org, dmitry.torokhov@gmail.com,
 michal.simek@xilinx.com, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH v2 2/2] drivers: firmware: xilinx: Add support for versal soc
Date: Mon,  7 Oct 2019 11:52:23 -0700
Message-Id: <1570474343-21524-3-git-send-email-jolly.shah@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1570474343-21524-1-git-send-email-jolly.shah@xilinx.com>
References: <1570474343-21524-1-git-send-email-jolly.shah@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(376002)(136003)(396003)(39860400002)(189003)(199004)(48376002)(126002)(476003)(305945005)(76176011)(486006)(426003)(478600001)(2906002)(107886003)(2616005)(11346002)(5660300002)(9786002)(446003)(7696005)(36756003)(51416003)(106002)(336012)(47776003)(316002)(7416002)(6666004)(356004)(81156014)(81166006)(50226002)(4326008)(44832011)(50466002)(8676002)(186003)(26005)(16586007)(8936002)(70586007)(70206006)(36386004)(921003)(1121003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4912; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a8372303-7a9a-457a-9718-08d74b578e51
X-MS-TrafficTypeDiagnostic: SN6PR02MB4912:
X-Microsoft-Antispam-PRVS: <SN6PR02MB491222265DE6696A0A3AD26CB89B0@SN6PR02MB4912.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:561;
X-Forefront-PRVS: 01834E39B7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ECxILLhfrlHHfrdMNYFiC7r9HiBe/PX7FZ1Bkuguylm5//nBKE14zTlsMDvVr9DntiLEi+C1S3vD62zPvl3bKlb5A9MoGh9tpsmpdrjjf7kgUvqZ24hqYvD+4ddLRsxxDHddy6vZLMy4cn+KLIwwuMuAvC6hVLbKZytJ+XqOuwb6s/P5ZqbuiExVPBK0DGT/8I9jHTlagC7eqEI8nJyTYJ71CfzArI6uWF/5hbkSWRY0Lx1+DD445foc9fSOJqDhcm8J6DdNN2VFXNauUiaaWojhNyNsJ7ZTmmMK/WgmE8dWj5mR1BpYJihX1VmYBVtsVxpLgkIJZwrYn7U8lg5Dcearg6iXs/cFSePE573tzyewzh0pqp6Ps1jDKxgJJb9Saw9dFvG7HFTiU8+zhacKKoh2VhBmT2iXsr+8f+fwH3E=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Oct 2019 18:52:51.6422 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a8372303-7a9a-457a-9718-08d74b578e51
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4912
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_115258_189380_3B51008A 
X-CRM114-Status: GOOD (  13.01  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Jolly Shah <jolly.shah@xilinx.com>, devicetree@vger.kernel.org,
 rajanv@xilinx.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Versal is xilinx's next generation soc. This patch adds
driver support required to be compatible with versal device.

Signed-off-by: Jolly Shah <jolly.shah@xilinx.com>
---
 drivers/firmware/xilinx/zynqmp.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/firmware/xilinx/zynqmp.c b/drivers/firmware/xilinx/zynqmp.c
index fd3d837..75bdfaa 100644
--- a/drivers/firmware/xilinx/zynqmp.c
+++ b/drivers/firmware/xilinx/zynqmp.c
@@ -711,8 +711,11 @@ static int zynqmp_firmware_probe(struct platform_device *pdev)
 	int ret;
 
 	np = of_find_compatible_node(NULL, NULL, "xlnx,zynqmp");
-	if (!np)
-		return 0;
+	if (!np) {
+		np = of_find_compatible_node(NULL, NULL, "xlnx,versal");
+		if (!np)
+			return 0;
+	}
 	of_node_put(np);
 
 	ret = get_set_conduit_method(dev->of_node);
@@ -770,6 +773,7 @@ static int zynqmp_firmware_remove(struct platform_device *pdev)
 
 static const struct of_device_id zynqmp_firmware_of_match[] = {
 	{.compatible = "xlnx,zynqmp-firmware"},
+	{.compatible = "xlnx,versal-firmware"},
 	{},
 };
 MODULE_DEVICE_TABLE(of, zynqmp_firmware_of_match);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
