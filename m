Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 198FBDBDE4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 08:55:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NWufnWRVaaPiiZqFYauqmX17TO3AHVxx7amrD9A2B9k=; b=qAfo+FRlKkMhxt
	on26e7sDF0LMU3nlbZO3uO1QaKSAYChsnX9s33Tmy3vPdEWsyheBNrY4Djdus8SYcbsJxnZUu0LjW
	weyHuKvROh60OS5687NBMp7TqEkzfCDfvO59c73W5lcMT7cHSUGKYDEn0SfjPrxczAndQI3gZxDil
	6iM2xxKZa7U6zvbtvaVRefXFlQVsVTGaQ2zNn2xE43RHayXRKyMV6IZNByc8RWJci7Bq/7iwZwzPF
	iLFxXg4mmKBVaJ+uVL6TD58ANRKhnlJdE/gXJMNinW44nhvCTNh1M8iUauNh3UQxFyxKrCfq9x/f7
	GTsn+ig8Iv1D8INgQlSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLMAN-0004tZ-1h; Fri, 18 Oct 2019 06:55:15 +0000
Received: from mail-eopbgr700088.outbound.protection.outlook.com
 ([40.107.70.88] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLMA9-0004cc-FD
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 06:55:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QCHbjngCPcDIrbSOgPvX9pOytBcvA0uZPcd7syP8kUBVfucBcS3z9gaGjumnfvFbrYw7aAffABUZiIdwfO5cbHOBTZctf7ce8LNFB8zoh3fVKJczzdpZ6spF2TCXMh/CeCFyjnxRjK/jE5JiMLx928Wgzax1EK53CLbPbHukATJX2sp5/D9iWenjurE2Y8DUAgHQWfRWbowgstrqFqS+UKafE7eCZFvA8/IyAVha9QRWHPl2KiX8htew8B30mFoDAcXoh9FoU1psXQfMEz5FtxnBcSBjFvdbBOJtJE+gZLqDHLFAudXq4BM27hezwW8Rmh9W9FCQNstFNRigZyr46w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xO1G94WDG+asGTLvtKONPCA/vXBzNm8of9S3xLiQpsQ=;
 b=YXTzQblSqV7UKDw22Nc8v1UkSDn1HLfnQGSveju9PCxz7htVMsu39Wb+35wptOuaW9sW7XTW+Bgdvtp00exRKyHqPUjnfdQ7WmNwpA2xUqjNjspgdZev7hqV6kAY7GlDwA7eOT9T150FrVH4hLM/wWpOHIjT5roZtO81E7a26dBbEBg9BhPqyhnNa10/hEZqnbGo8MhZ4d7UUrWhFQB6UmvvTJhKqZVheBBeRWV+V/XHFb+thOFve/8qr5TmY0s1BswIe23GKGarYtB9SUT6GJg33QdTqCDQFR4lxQXZYtGRjAEHmX/mnn8hMiuKXLo8NC/AuJXteEIkPJTMvMctTA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=davemloft.net smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xO1G94WDG+asGTLvtKONPCA/vXBzNm8of9S3xLiQpsQ=;
 b=ZhSs/Sc9bTXZm7t4qsZmBzQYP1QPLTgMXVoRTFKSGr+2xGTVpH1K64bMmGo1xg0xaIBHm+YPx6Fzp7GN/KAZnNw3cqhZcybtXmcKlpwfx2UBzp1FHPOyMePhjPfhNAA5hQhOE6im3pf26GmSR/O/gWyo+EP436sfD56fxoX6+xE=
Received: from SN6PR02CA0010.namprd02.prod.outlook.com (2603:10b6:805:a2::23)
 by MN2PR02MB6864.namprd02.prod.outlook.com (2603:10b6:208:1d3::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.23; Fri, 18 Oct
 2019 06:54:55 +0000
Received: from SN1NAM02FT017.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::208) by SN6PR02CA0010.outlook.office365.com
 (2603:10b6:805:a2::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2347.24 via Frontend
 Transport; Fri, 18 Oct 2019 06:54:55 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; davemloft.net; dkim=none (message not signed)
 header.d=none;davemloft.net; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT017.mail.protection.outlook.com (10.152.72.115) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2367.14
 via Frontend Transport; Fri, 18 Oct 2019 06:54:55 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radhey.shyam.pandey@xilinx.com>)
 id 1iLMA2-0005hV-NB; Thu, 17 Oct 2019 23:54:54 -0700
Received: from localhost ([127.0.0.1] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radhey.shyam.pandey@xilinx.com>)
 id 1iLM9x-0006T4-Hl; Thu, 17 Oct 2019 23:54:49 -0700
Received: from [10.140.184.180] (helo=ubuntu)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@ubuntu>)
 id 1iLM9w-0006Sv-Ud; Thu, 17 Oct 2019 23:54:49 -0700
Received: by ubuntu (Postfix, from userid 13245)
 id 2BDC410104C; Fri, 18 Oct 2019 12:24:47 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net,
	netdev@vger.kernel.org
Subject: [PATCH net-next] net: axienet: In kconfig add ARM64 as supported
 platform
Date: Fri, 18 Oct 2019 12:24:46 +0530
Message-Id: <1571381686-13045-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--1.901-7.0-31-1
X-imss-scan-details: No--1.901-7.0-31-1;No--1.901-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(346002)(376002)(136003)(39860400002)(189003)(199004)(4326008)(6266002)(2906002)(107886003)(36756003)(186003)(316002)(50226002)(42186006)(106002)(16586007)(51416003)(478600001)(8936002)(81156014)(81166006)(70206006)(356004)(70586007)(48376002)(126002)(50466002)(476003)(8676002)(486006)(5660300002)(305945005)(426003)(336012)(103686004)(26005)(2616005)(47776003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR02MB6864; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 34963280-717c-4847-9b9b-08d753981535
X-MS-TrafficTypeDiagnostic: MN2PR02MB6864:
X-Microsoft-Antispam-PRVS: <MN2PR02MB68642FEA057375321FD0E2CAC76C0@MN2PR02MB6864.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 01949FE337
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: srglYuf6HLks9xz+RbADIlAVUE3FGiH5eNBMzbR0QHMEaMmTcEBHgUfL++v7MCBdJki08LBx3cnAqOxK+vSM1Dzhm6UzRZzhb+v4kc4lRcxImIUBG/rd3WO5C61gMKEfMs32kHxGJOfAHfSU18mCdldTnF9xrulKMTMhx2WKuKjEzt4zm2rCotGxX4RN/6pgFDM8eOOEYdNUha63VLxXFz7nRnTuCl/Zra9T3anWj6gU13DPewmMlar5Y2aGFLRBe/w1CvvgNjgPM6FMS7AVWpjN9kptUkocHIL9kNCdghx+n9uRiNZVEMNbRh44uFKPf+mt7/C/1QpUKt04PTxSFL8WPjJDPJLXW2u81hzX9/aOzKN75wqE2zPUdi0jbPo/cLnf9k1pyVG9ON1QPfmnIdCbdtFyuYTlfXY5lhZOTEM=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2019 06:54:55.1042 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 34963280-717c-4847-9b9b-08d753981535
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR02MB6864
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_235501_511125_3759CD13 
X-CRM114-Status: UNSURE (   9.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.0 (++)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.88 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 2.0 AC_FROM_MANY_DOTS      Multiple periods in From user name
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
 gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, john.linn@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

xilinx axi_emac driver is supported on ZynqMP UltraScale platform(ARM64).
So enable it in kconfig. Basic sanity testing is done on zu+ mpsoc zcu102
evaluation board.

Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
---
 drivers/net/ethernet/xilinx/Kconfig | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/Kconfig b/drivers/net/ethernet/xilinx/Kconfig
index 8d994ce..a616bdc 100644
--- a/drivers/net/ethernet/xilinx/Kconfig
+++ b/drivers/net/ethernet/xilinx/Kconfig
@@ -6,7 +6,7 @@
 config NET_VENDOR_XILINX
 	bool "Xilinx devices"
 	default y
-	depends on PPC || PPC32 || MICROBLAZE || ARCH_ZYNQ || MIPS || X86 || ARM || COMPILE_TEST
+	depends on PPC || PPC32 || MICROBLAZE || ARCH_ZYNQ || MIPS || X86 || ARM || ARM64 || COMPILE_TEST
 	---help---
 	  If you have a network (Ethernet) card belonging to this class, say Y.
 
@@ -26,11 +26,11 @@ config XILINX_EMACLITE
 
 config XILINX_AXI_EMAC
 	tristate "Xilinx 10/100/1000 AXI Ethernet support"
-	depends on MICROBLAZE || X86 || ARM || COMPILE_TEST
+	depends on MICROBLAZE || X86 || ARM || ARM64 || COMPILE_TEST
 	select PHYLINK
 	---help---
 	  This driver supports the 10/100/1000 Ethernet from Xilinx for the
-	  AXI bus interface used in Xilinx Virtex FPGAs.
+	  AXI bus interface used in Xilinx Virtex FPGAs and Soc's.
 
 config XILINX_LL_TEMAC
 	tristate "Xilinx LL TEMAC (LocalLink Tri-mode Ethernet MAC) driver"
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
