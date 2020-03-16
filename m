Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CD0186CAB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 14:56:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jLKop/G0WEDJwVPJwDi78slcTp8jJFxCkAsOTcCtMLM=; b=C1epfJycDgNvCb
	MiLPdfl1ER/SGwyl6sGHONC3vJ8AqTvsVbMwP8wq7sBbTfWQhM0c1Mo5uuMhFERbSh2UasLVJqc3q
	X+zgQ5kKyqmHHNXSoJ+j9PUspUJJxt5/kM4XqMaZFYIriNcELB45OnDGEiaEsVDbylGeY0L3ZlzNQ
	6U58EgeYd4PTgAn17i4aEN6dpbwsoRNDivuXZrlT/9+u8fwD2bh1fUjNJ/VYahxrhNWhXdQEoD1Rd
	limh2Nl/0G17NrpyaHeJauFABfbNPKvaZReDJZHJSdYS1eGoqybxd5wfK+VsjcaZoeMeNTY7NixXj
	uafZaHdcmmIgJvpUnz/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDqDr-0008Op-EL; Mon, 16 Mar 2020 13:56:03 +0000
Received: from mail-eopbgr680073.outbound.protection.outlook.com
 ([40.107.68.73] helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDqDQ-0008CB-D0
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 13:55:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P28pGAownRqLZZRyepnTF4pm3ZLbJ+Slk0jJbYCLaLHAu2X/ACEX5YZzPKEcdLcPJGTUaihsrQzWn7KiKj3DCkD1C94u65OQcqJ945UNoAdtfdGLkjQp7ex0M7tf3oh32EVhlOFVJI4j1Yg64j/hqMOLZyin21YtCmscPV+M1WKPPG+ICPMA4FkFfeGO8R3B886EI74w0MaRyaVziT9+QeJcQ5wND/dRydZewCZsS+j97wZBkRq/PnolsLD4HmOT/EBQ0ZRDhHYZp2rUoaDY6GuPbSNgpy3Xaf8L8cDpGmGhgsOlfPSqgZYS49G62NZGsIyrpwaONtY/ZIrn4Cx0aA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J3raUk+8AGjP8UhMqs5JVUkYwIsQhPIfxJhq5La3E9Y=;
 b=bOVhZMqCyL8ez5G5ozCbklgizjeBdWfIg5JiyaYGZS0NNi67CpZixj8PU5ZrXM2OWnd196xPy3Uc6kFNaY7Cd9vJya/gmZt7Eszz/q25+6aGmkw95kTbedLy4Ysdh5YWV7aW3oCh+s46IG59sb3pptBpboM4K42KhA85seUdNRBKy8MUSg/EXne1dYL65hTL7zY4eNSPKUuy1StIQzeGPkESVBq57wlXSHnWO524/xFch8CC1am75ZkEqIA58J6DgOfPvAxCvnpOBJdPfT+c0MCKNW9+F+ipZAnYhxpJRURlnX53mvlbsgwfQmamkd/kQRhgoiyUlZn7PArA9C0pjg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=J3raUk+8AGjP8UhMqs5JVUkYwIsQhPIfxJhq5La3E9Y=;
 b=Hpi5njMyW6FbWrADyK7Y/6IbHVTOrwwaIhum2VrN41lynhEU8pMHaA7xBXJmOzicwvdyVVRj5F8KLxu75ONYJZAogGTKdRvxF8m6O/5mVG2RBb+lYPLOsAfFOJwgZ7l1PQfILH+6r2X9TQNiOkHN83A7mtdeK3GSRVWTmKY/QWo=
Received: from DM5PR11CA0007.namprd11.prod.outlook.com (2603:10b6:3:115::17)
 by DM6PR02MB6315.namprd02.prod.outlook.com (2603:10b6:5:1f7::26) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.14; Mon, 16 Mar
 2020 13:55:32 +0000
Received: from CY1NAM02FT018.eop-nam02.prod.protection.outlook.com
 (2603:10b6:3:115:cafe::6d) by DM5PR11CA0007.outlook.office365.com
 (2603:10b6:3:115::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.18 via Frontend
 Transport; Mon, 16 Mar 2020 13:55:32 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 CY1NAM02FT018.mail.protection.outlook.com (10.152.75.183) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Mon, 16 Mar 2020 13:55:31 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqDL-00041Q-9U; Mon, 16 Mar 2020 06:55:31 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqDG-0003xV-5y; Mon, 16 Mar 2020 06:55:26 -0700
Received: from xsj-pvapsmtp01 (xsj-pvapsmtp01.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02GDtKUD027795; 
 Mon, 16 Mar 2020 06:55:20 -0700
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jDqD9-0003l2-Rv; Mon, 16 Mar 2020 06:55:20 -0700
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michals@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v4 2/3] irqchip: xilinx: Fill error code when irq domain
 registration fails
Date: Mon, 16 Mar 2020 19:24:46 +0530
Message-Id: <20200316135447.30162-3-mubin.usman.sayyed@xilinx.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200316135447.30162-1-mubin.usman.sayyed@xilinx.com>
References: <20200316135447.30162-1-mubin.usman.sayyed@xilinx.com>
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39850400004)(136003)(396003)(376002)(346002)(199004)(46966005)(186003)(5660300002)(6666004)(356004)(2906002)(26005)(70206006)(70586007)(7696005)(478600001)(47076004)(4744005)(1076003)(2616005)(81166006)(4326008)(81156014)(103116003)(54906003)(9786002)(107886003)(8676002)(316002)(8936002)(336012)(36756003)(426003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB6315; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 639afe8f-2939-42dc-1096-08d7c9b1b167
X-MS-TrafficTypeDiagnostic: DM6PR02MB6315:
X-Microsoft-Antispam-PRVS: <DM6PR02MB63152B6857E8E7B1C1EDE537A1F90@DM6PR02MB6315.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1728;
X-Forefront-PRVS: 03449D5DD1
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: P7KjoxBwUSIUrt68em+REuYzZLFqj7/67bM6zfVjWp+oP+auflGvzEzJvxDfbKbRrPCzXig16so+/KoGeiHzJBGG6SlBcWqEpPuUdPZtQniSIxK1fq8ciOhiffvtqCy+2JzqgXhWt8QxC0iFiSqgFg3lDn8n9p/pFUMHCoo9VOiXjOLixHGCl7LPkr1pj5NlG9rOCCwAnefLqRc7+6RKAmB8R9R8zGm5A6bDm4JP/fY7IMBeExWzws4udicyufgkjWPaLkOI76cdePr3TQFU1wego/qG+EOalOE/0fxaDwtLa8VA2qTCwSym8QPwiQ3B8My7D9WOY+QdDB31oAlrnXFKds0HNt1GUjnUV2uZtLJkCB/d6IiQYPqafiVoBKDnOqYSqPmHJYUfyXGmg0YjQ5SxPuBeWUG30/QPdC9a3SAU/VBWUkE55qIf7UoyHkIO75FIMwWXgOOvWCi0S+WsOHV0uEvPjlNbRFN0e6nC5lOCxkYifz7ugmZl0mm+jM1UcfshKeASpimqMdm6y4sWbA==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Mar 2020 13:55:31.7639 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 639afe8f-2939-42dc-1096-08d7c9b1b167
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB6315
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_065536_437142_43842728 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.68.73 listed in list.dnswl.org]
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
Cc: Stefan Asserhall <stefan.asserhall@xilinx.com>,
 Michal Simek <michal.simek@xilinx.com>, linux-kernel@vger.kernel.org,
 anirudh@xilinx.com, sivadur@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Michal Simek <michal.simek@xilinx.com>

There is no ret filled in case of irq_domain_add_linear() failure.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Reviewed-by: Stefan Asserhall <stefan.asserhall@xilinx.com>
---
 drivers/irqchip/irq-xilinx-intc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index 65b77720ef2e..f2a359e2feaa 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -230,6 +230,7 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 						  &xintc_irq_domain_ops, irqc);
 	if (!irqc->root_domain) {
 		pr_err("irq-xilinx: Unable to create IRQ domain\n");
+		ret = -EINVAL;
 		goto error;
 	}
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
