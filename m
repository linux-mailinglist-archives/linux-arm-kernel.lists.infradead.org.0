Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF56A1884A2
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 13:58:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KvhAkkTeXrg6ibnSPZn4oFa4jN/XHqFE4XRl3Lh6Zr4=; b=ZAsHHFj00z9Qpj
	Lm/KDUXeIifUrcNZvXni6z0IQRwGVMG5nwFoslD6tBe6TTc9q4QuHbNzaanpzpLeOyte24r2LAhLt
	pnNMIJ4ZGeg9P3CqbsjvwET+IRbcq/LobubtzA7yMl3nJ3ZyNmx05snCxHsKuUo6sYHoSv1Z843Vk
	wPcGlFAwHlxHu2TDZnWq2oOT+QEfuLP2SHfdtWgxpYpt2StYm4j29gGUndWlop7ZZJ+agZ1JZIWgO
	D77oX4/f+JFvB+2pVwV5jUIiZRLmmZ94RM1bFl/8rNXvt5wq8C62CZBaDIaIGvTiJMb2L0pdJ9224
	/gcMopPuAadcpa19l3Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEBnm-0005fM-9c; Tue, 17 Mar 2020 12:58:34 +0000
Received: from mail-eopbgr750042.outbound.protection.outlook.com
 ([40.107.75.42] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEBmo-0004ir-Mw
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 12:57:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PAN1iKs5Z3gbEDaArykwdzyrjbOi5uzTCMhn6zbk1ZGpSQlBh3RmuPENkPmSYO5qw06H00YB6YO9Dcq2B7ZQFkva4gH3KvkEkaGGx6WmyE7evMgNJvzdJGymbh0KL1VTAKn90j4q7bbKp5Tev60oYjsMSsnwR4IBNESc78fuFqKTYcrPz0sFKCiZ1dNdP5EPf0QdV0j6dt4aH6DJSe29D9sQC0iqZyDBEUhFxFU4OPOuGQMFFRN/9OwkpXa6lpc++oAkhjOGtu11M+u2dvZHWjSAP24bIaLmbWM2dvdpws/g0rULa/tuc/1kiPof5ZjM3+QBU2WuSAV/ax0m6hS6yQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EW/uTV0LYTLLycwhiPkOXKQV/ElTTa36nqMupT3CV1U=;
 b=bo2zHmsM2G3LQhwt4JC7AvWKzrRTBsDD+Ee+pCNjtrQz+ig145vEjLR++fvuVLBtcl9r/23zofiYiIdx92Uxt4xCSUg/Uy+XSbR/kc4borTHIDcX4FCo9GqWR2E52hPwPE0pc+cmC0y/l9kQJO3Yt4Pa6R2jA/AtP+m98zP81osFeUrIm8FzAytQ7DagYS2YCAE59jlmDx5+TRosyjcS2WQXedNmMJb23rmDakqYSEVvAkRb20trDajUdHLwloHXOgAP65o3jfX2+EBlRYxZ92MXjGoly7DUsZ38nxsVC3Im64SCZZ160GFdfJ0Z7RERaiGe6zbyNnJMkKB3fN+MEg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EW/uTV0LYTLLycwhiPkOXKQV/ElTTa36nqMupT3CV1U=;
 b=iNB+kqLzjNriGQRWOPwEHnotjf5VIDEEOr4gBjeRoIxRF24MGxbs7XbHjjQ17vIQttEZTkeYFNrNjePSb/02G6bJnDwmXRlK99dYzJh2N7Ybefja4wR/zIBUy0RTj95HnRWH2VKTC+nCXty27SyB5PTmCMYFHczl9BG5IgxfeQ4=
Received: from SN4PR0601CA0012.namprd06.prod.outlook.com
 (2603:10b6:803:2f::22) by DM5PR02MB3228.namprd02.prod.outlook.com
 (2603:10b6:4:6b::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2793.17; Tue, 17 Mar
 2020 12:57:31 +0000
Received: from SN1NAM02FT011.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:2f:cafe::23) by SN4PR0601CA0012.outlook.office365.com
 (2603:10b6:803:2f::22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2814.22 via Frontend
 Transport; Tue, 17 Mar 2020 12:57:31 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT011.mail.protection.outlook.com (10.152.72.82) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2814.13
 via Frontend Transport; Tue, 17 Mar 2020 12:57:30 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmk-000212-Ah; Tue, 17 Mar 2020 05:57:30 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmf-0001ih-7O; Tue, 17 Mar 2020 05:57:25 -0700
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 02HCvGOU007593; 
 Tue, 17 Mar 2020 05:57:16 -0700
Received: from [10.140.6.23] (helo=xhdmubinusm40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <mubin.usman.sayyed@xilinx.com>)
 id 1jEBmV-0001dT-QH; Tue, 17 Mar 2020 05:57:16 -0700
From: Mubin Usman Sayyed <mubin.usman.sayyed@xilinx.com>
To: tglx@linutronix.de, jason@lakedaemon.net, maz@kernel.org,
 michals@xilinx.com, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v5 4/4] irqchip: xilinx:  Do not call irq_set_default_host()
Date: Tue, 17 Mar 2020 18:26:00 +0530
Message-Id: <20200317125600.15913-5-mubin.usman.sayyed@xilinx.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200317125600.15913-1-mubin.usman.sayyed@xilinx.com>
References: <20200317125600.15913-1-mubin.usman.sayyed@xilinx.com>
MIME-Version: 1.0
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(39860400002)(396003)(136003)(199004)(46966005)(36756003)(426003)(2906002)(478600001)(47076004)(5660300002)(103116003)(70206006)(7696005)(70586007)(2616005)(1076003)(316002)(107886003)(356004)(6666004)(4744005)(8936002)(81156014)(8676002)(81166006)(4326008)(186003)(26005)(336012)(9786002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB3228; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9bec9b7b-6fe9-40c4-24bf-08d7ca72c0f6
X-MS-TrafficTypeDiagnostic: DM5PR02MB3228:
X-Microsoft-Antispam-PRVS: <DM5PR02MB322893C3A599F885104E2856A1F60@DM5PR02MB3228.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:352;
X-Forefront-PRVS: 0345CFD558
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: imolBzMF6qUdq1qd6f0u6bCU8oj2Yce4jZ8+zq0msEVrq/mM1tV1PhWJ4DAqfee93VNrCuJysmlKdA7CJD0vq4UEekdHA3GkkmM99luiu2FLHJpIweNlXa+m2m3uENPojCrfyUeW/8Tgq0AuxXG40IWdaDmpr1SDtCRxJVC2Gr4TfAuil0vWPFUqA/d7MaP202bNgU7QGuA+BW1fYZIpB5JEYCO9u+fzcMcqYojcmIFV/QrQyP8yiulmx/kdckjjxN51mz1995jpCQbvnrRM7c7QEgPStaOvYQPBZhTz6PxXaXUBrKpYGFEQ/UGLb9s8FMelgSJ/qlMuUx9VzsFdy3Nh2r8r0Y2/2zBIB/2fMUtCB+JntkeQyDtZKTpAyTTb/lcxk29rRgTo+TTj9DNVCOQjRXOT5/gR9Sv2xyjmLegpBiZoT69sqNXDMp5C0+eaaemll+adAahTdSx4mLFUv5R/oPi+1PUAtHo94jsitOT6yFDiaAaHlq8wpjURucMNFHWQbZaZtFiXrBCGjD/qrg==
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Mar 2020 12:57:30.7522 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bec9b7b-6fe9-40c4-24bf-08d7ca72c0f6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3228
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_055734_779033_960B60A5 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.75.42 listed in list.dnswl.org]
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
Cc: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>, linux-kernel@vger.kernel.org,
 anirudh@xilinx.com, sivadur@xilinx.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>

Using a default domain on DT based platforms is unnecessary.

Signed-off-by: Mubin Sayyed <mubin.usman.sayyed@xilinx.com>
---
 drivers/irqchip/irq-xilinx-intc.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/irqchip/irq-xilinx-intc.c b/drivers/irqchip/irq-xilinx-intc.c
index ea741818a1ce..7f811fe5bf69 100644
--- a/drivers/irqchip/irq-xilinx-intc.c
+++ b/drivers/irqchip/irq-xilinx-intc.c
@@ -250,7 +250,6 @@ static int __init xilinx_intc_of_init(struct device_node *intc,
 		}
 	} else {
 		primary_intc = irqc;
-		irq_set_default_host(primary_intc->root_domain);
 		set_handle_irq(xil_intc_handle_irq);
 	}
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
