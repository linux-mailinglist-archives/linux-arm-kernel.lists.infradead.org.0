Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E6A104E2E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 09:40:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U7+dDGCqXasvsAXqngmAUqc1Crfb5WNdHaxGfJXnJUs=; b=As2bq0s4S0T3C8
	4Xgm4aVepSGyVDpMjfslK6xSukJ3WKEXOD61TSiTpW9QJRKNBNMztexzXT3vzA6fTMsyNdBM1tHj2
	UblBC8AAPrwdbQ/6EyBTt4a1qWoPm8RBdWx4OwWti+Y58jfBS4XAziuJtW20OreKns9SZHylNGRjo
	3CS0QImUbJRgBiLdhoGQ1NbX6GsL4UOa1j5/r4CYdxGwGk5ZPqPPjXQN8mpFQvlE2DXk30MD+xiJE
	Ju69A0YRhOhGxZ+AbbVkR4cknlGEAS+QAWd2Y3VbqH+D8JNKkhAXdIyN8zEPENDWjo942Au0Vz1/k
	JY8z8poG0Faz6dbsWrCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXi0S-0004u0-2q; Thu, 21 Nov 2019 08:40:04 +0000
Received: from mail-eopbgr790053.outbound.protection.outlook.com
 ([40.107.79.53] helo=NAM03-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXi0G-0004tV-KX
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 08:39:54 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jcpESoneMiMNWbfVUiB8bKrwPqj5aUWafBcdTarF/RNVtFaZ9wdic+CxSoHIszFVD3185oLsnD8mfpI0czBTTdy28+dKCP2HFtmDgL70h4VOH/gD66SCpDPJWr8niQOD0Hjl1SvkaN0JIlFzuih34XXZk0+Fg2k640ZYr8sOJCjUlYXu4RhdgszJNa9SgCLobdpd4GWnKLZ0p/Io8mLwMXI9Xak3cZgyIkjiHLzbmnrZJxoDzMldf3+VqUwImLxIhLZIIbCX/fvlXoNQZgX9UxWsrkMgMzLGx3281/SAhRUfgBM3x4Zq7ooZXYKYaSL2lHj3eJrRDHsgIiZALxL+EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uO8houtejB5zjNS3R5yQz60B3XHroWij2CxYSLwnUdQ=;
 b=H1e/LTfOKG7b/jxs/It4bQJDgVhCHma+CnFu9Azug3MbPF45D1JbzZI4JiT6ITRsWV0ZwSrda+bxGsy440d+dw1naO3cpcH4gF/pZ1wOpBhrZlJIbfJKlGaCUT2FIcUb6de6K3SALHJT2EHNvF2Ar866nrsisXuaZT6/OEnxj3Zi9rfKIjw+ONVOA3qiQtYkttpadGwCpiL8TzfiL33CC9UtF2oR6aqFpSrdTNKXlHxzouNZQ1M1KuRsAurLAe+Ra+mGEUy2Mje4O/i0Um4NRRYXFgpwdRzywe11s8mDNgtIOATTu+iGNAfEb7R5tRMWM2SLkEvcOznbeOo+2uN8lQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=grandegger.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uO8houtejB5zjNS3R5yQz60B3XHroWij2CxYSLwnUdQ=;
 b=iy4ijtDP5CLQ3zMNAPE+lxoYHqbltETyd/77imek4KGjUGfABnxV1fGbQw3JwZcg0FO+P7zjy1+K0Gh9bF8WoI0+xlHqyZQN5/o+KzIRNqy81KcFStFYN3LyFMdo7lFsHyxjCGd/H2pO+FZ2q5zZ12fABBhClCnMpol9MHB84Tk=
Received: from BN7PR02CA0026.namprd02.prod.outlook.com (2603:10b6:408:20::39)
 by DM5PR02MB2857.namprd02.prod.outlook.com (2603:10b6:3:10d::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2451.22; Thu, 21 Nov
 2019 08:39:50 +0000
Received: from BL2NAM02FT052.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by BN7PR02CA0026.outlook.office365.com
 (2603:10b6:408:20::39) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2474.19 via Frontend
 Transport; Thu, 21 Nov 2019 08:39:50 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; grandegger.com; dkim=none (message not signed)
 header.d=none;grandegger.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT052.mail.protection.outlook.com (10.152.77.0) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Thu, 21 Nov 2019 08:39:49 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1iXi0D-0004iZ-1M; Thu, 21 Nov 2019 00:39:49 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1iXi07-0005Sw-Ti; Thu, 21 Nov 2019 00:39:43 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1iXi00-0005R1-C6; Thu, 21 Nov 2019 00:39:36 -0800
From: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com
Subject: [PATCH] MAINTAINERS: Add fragment for xilinx CAN driver
Date: Thu, 21 Nov 2019 14:09:24 +0530
Message-Id: <1574325564-30529-1-git-send-email-appana.durga.rao@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(346002)(39860400002)(199004)(189003)(426003)(81166006)(336012)(81156014)(50226002)(2616005)(186003)(9786002)(16586007)(8936002)(36756003)(106002)(8676002)(5660300002)(107886003)(50466002)(478600001)(4326008)(36386004)(26005)(316002)(51416003)(4744005)(7696005)(70586007)(48376002)(356004)(6666004)(6636002)(47776003)(70206006)(305945005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB2857; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ea4641c3-012e-429a-7897-08d76e5e5f1e
X-MS-TrafficTypeDiagnostic: DM5PR02MB2857:
X-Microsoft-Antispam-PRVS: <DM5PR02MB28576856C163E368540FA2FDDC4E0@DM5PR02MB2857.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:1227;
X-Forefront-PRVS: 0228DDDDD7
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2JNO0GVHI/gTusEccULJcbyCsnsFOzY2Fch1Bi3brDjJNfQBxsGI9VveMnLZD9lFplJpVlzXi5m8HjrZ61Llfsb1/ah7frU6IYGtyOeBYmyZY5jQCLCqtlmkQE2udTNKb6D4pE7Oshm35hRcBrraZjee6QcJ9MlsxW2JTIdAmuiDcKd+36yH7O+bAQ52MFwl5QJeP46v5eLSzHPB4Rg7jZux2+3TmuORA7aS/Qq1CaPg8NpbNcb7FC4qeNCi4rMlpVgUltfhTPlNoYLAGKnPCzQ6fYX9c8ypvmdofmLMAAKvmv1flAAc8yPqBY6Wkz0za7cb6YRuStEpRt2+ZzzujfUkJUcDtNYp3JCa6d3J82OmcoPnram40XeDGzXVUDqvginxHnk2a0TSbRHw/6bSJkyutzbUfjxM5WolTq/y0lygvNWBOwGdxMnn/1oCnjlY
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2019 08:39:49.6286 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ea4641c3-012e-429a-7897-08d76e5e5f1e
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB2857
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_003952_674103_42C8DB31 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.7 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.79.53 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 2.7 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
 Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-can@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Added entry for xilinx CAN driver.

Signed-off-by: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
---
 MAINTAINERS | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 3e57fc1d9962..d0f590517eaf 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17890,6 +17890,13 @@ M:	Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
 S:	Maintained
 F:	drivers/net/ethernet/xilinx/xilinx_axienet*
 
+XILINX CAN DRIVER
+M:	Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
+R:	Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>
+S:	Maintained
+F:	drivers/net/can/xilinx_can.c
+F:	Documentation/devicetree/bindings/net/can/xilinx_can.txt
+
 XILINX UARTLITE SERIAL DRIVER
 M:	Peter Korsgaard <jacmet@sunsite.dk>
 L:	linux-serial@vger.kernel.org
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
