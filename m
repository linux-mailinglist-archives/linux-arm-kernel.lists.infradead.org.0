Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 337EE1277B2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 10:01:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xG7fJE4blswHPiIdu4HvEyXKzclPwKgb7tcS8gy84C8=; b=rPQQYudOdPuWXR
	hDp1OLzdTVe/Gs6fGIzpeKpd/IJEqtXADHOBP+EpHaUCUXqsWwd5NvCftkQdSBnxSEwn5R4StzCv9
	R5OocJZcvkRCILQMLTEorQh02hw/Dh5TkvSUVFrFVjV1es9KhHNLfbpoq6Chh5Vlz8URnsk5gxMrp
	nsSrAjcZep1GTcLi83nR75hwNuYJa0PlJyHFV3rVIxR84rDumjU0Jd83tA4vwrUrh3ZH7ZKywpQNY
	GfK0HuT5AgkXndQubIB7g163GQP2xokVZ5AwVP0RzuOsyMHBWcA9TyyCG/hQWX0tZW5g84gcEJHED
	vekVGtDb7h+8OVZ7R7Kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiEA6-0003f2-Dv; Fri, 20 Dec 2019 09:01:30 +0000
Received: from mail-dm6nam10on2052.outbound.protection.outlook.com
 ([40.107.93.52] helo=NAM10-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiE9v-0003WT-T2
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 09:01:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MMhHob4bpDRn832R4PYSBWgQscQHKTymh4mxn5/qAnbDksOv2twxZmEiFbw4nE6U6U8yu4dyizbfpJBIjEwEqX08G1VL6dPaU04aRHIq5sgNR2T3p/uI3O6+GyCI5k5Ccvm+954i2AvPsPf5M+KntqH2jY9/6X8aB3j7xuRbEy3MqdWpfaOm1w8SYsOMiKDm+89YcUVEm/kZA2OocF46Y+Mi2qsykePTLeWcIP828ctUCbXMM4VHeSmKZb40Zycwu7wx4+rVgq+GJlSwebvId1B/Iv7BCHib1Rpi+TD54z5r1J/s2pPaVkTKh2rgX/hWRnNCWzYAQTT93fFe8pDagw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0uxBbx83RvrSIuPY8exWKLuimI6bnWdhUTj0clOivoA=;
 b=iqEM4jMcr3lPH8XnyJ5mOPGp3B/anYD3e4mZSceNrqIoKaIr3h3G7LU0GQKBtBQIWijhxRwJs8ji6Zd/gNytT/C6tpVX0dct8iJ22sMGnsqVpGggbYEeT1nOBXdefLMUU1gUHWp5u/h/88+LWsXZjPSd7vmPWyYZRsdIuXm0Y+WhuA7nlWpXfa6XQsLDlih7whEk18taGsU956nWAkRWDnf5L+UEV5cZEB6WxItUtXoZWcxFitvbmUZadlSNJIvedwFdy2Y6+zwv16Z8k6IMvXb2QYGQ8G86jyly3DTTn84nE79qk5Ss6+Y64oCffzQwYSnlCkEa8hTrKNfjv7tA8w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0uxBbx83RvrSIuPY8exWKLuimI6bnWdhUTj0clOivoA=;
 b=dsW7C+sczTT4NY56j8PloYnSIfxkuR/bIENLWq04sDHQ3cykqO7o00ueOb5pw+gytuBcXh92fimwzxVZhVZJRsp6/2EJChiVAoHMMmRH8/O/OE2TaDaQ1r1Dc3uOpSVbc8K/8qsBYMtpvPuZLyeVeBK+OTUmKks/aZD3dbkXC14=
Received: from DM6PR02CA0090.namprd02.prod.outlook.com (2603:10b6:5:1f4::31)
 by BN7PR02MB3956.namprd02.prod.outlook.com (2603:10b6:406:f4::22) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.15; Fri, 20 Dec
 2019 09:01:17 +0000
Received: from SN1NAM02FT048.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::206) by DM6PR02CA0090.outlook.office365.com
 (2603:10b6:5:1f4::31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.14 via Frontend
 Transport; Fri, 20 Dec 2019 09:01:17 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT048.mail.protection.outlook.com (10.152.72.202) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2559.14
 via Frontend Transport; Fri, 20 Dec 2019 09:01:16 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5y-0003Dk-4M; Fri, 20 Dec 2019 00:57:14 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5s-000101-Ej; Fri, 20 Dec 2019 00:57:08 -0800
Received: from xsj-pvapsmtp01 (mailhub.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBK8v7Uv010842; 
 Fri, 20 Dec 2019 00:57:07 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1iiE5q-0000zi-RW; Fri, 20 Dec 2019 00:57:07 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 1141C1053CF; Fri, 20 Dec 2019 14:27:06 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, michal.simek@xilinx.com
Subject: [PATCH net-next v2 2/3] net: emaclite: In kconfig remove arch
 dependency
Date: Fri, 20 Dec 2019 14:26:59 +0530
Message-Id: <1576832220-9631-3-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576832220-9631-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1576832220-9631-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No-0.229-7.0-31-1
X-imss-scan-details: No-0.229-7.0-31-1;No-0.229-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(136003)(346002)(39860400002)(376002)(428003)(249900001)(189003)(199004)(8676002)(81166006)(81156014)(8936002)(70206006)(42186006)(316002)(2906002)(6666004)(26005)(6266002)(356004)(42882007)(336012)(6636002)(4326008)(107886003)(498600001)(36756003)(70586007)(4744005)(2616005)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN7PR02MB3956; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; MX:0; A:0; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: bb09de7d-f8a7-440d-2b54-08d7852b2c41
X-MS-TrafficTypeDiagnostic: BN7PR02MB3956:
X-Microsoft-Antispam-PRVS: <BN7PR02MB3956E06CE325A1A8DB0C7A8AD52D0@BN7PR02MB3956.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 025796F161
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 5idxSDGIEy98dMtN/Y/H8IALcAuDy/lqJO1X4/lufkoXcUlbXBwaxkidp7yDmEjVp80AtFoyM8Fya2auaBp5tL0YsIJNaPn4cASIXJhww98siKLkX8QqTwEt1ZXyt8peGHfozMZpEqK4i31tf5AIKEeVAaJ39jiCUU7kYqoqAKjP4vxCUUJy4EtEmi9P8sSQuEFm18MMLeqEVUGwfjgTc03RN+vdDTFau9iOxFTXKDAUDWfaO0XttfiBfqnnywEN7YRD84NJp4KI+5QknoMSgOPYLyAbGkuFXVYpxLfw5wKl2wvlky/dskgvk1Tmp4NguPSqW2cVikz9PGm9vy2PQmZOzn31ANpssaBIbAZplRVQZc3rcGUw3N6lcVT82bMxlZF+CD8j9qFktuHLXWiwyqDkimzhwAIqhBOu7iWOOQsT1wkEnjJKUqbFXCzX/WHI
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2019 09:01:16.7649 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: bb09de7d-f8a7-440d-2b54-08d7852b2c41
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR02MB3956
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_010119_943280_29377313 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.93.52 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.93.52 listed in wl.mailspike.net]
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

To enable xilinx_emaclite driver support on zynqmp ultrascale platform
(ARCH64) remove the obsolete ARCH dependency list. Also include HAS_IOMEM
dependency to avoid compilation failure on architectures without IOMEM.

Sanity build test done for microblaze, zynq and zynqmp ultrascale platform.

Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
---
Changes for v2:
None
---
 drivers/net/ethernet/xilinx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/xilinx/Kconfig b/drivers/net/ethernet/xilinx/Kconfig
index 6304ebd..0692dd1 100644
--- a/drivers/net/ethernet/xilinx/Kconfig
+++ b/drivers/net/ethernet/xilinx/Kconfig
@@ -18,8 +18,8 @@ if NET_VENDOR_XILINX
 
 config XILINX_EMACLITE
 	tristate "Xilinx 10/100 Ethernet Lite support"
-	depends on PPC32 || MICROBLAZE || ARCH_ZYNQ || MIPS
 	select PHYLIB
+	depends on HAS_IOMEM
 	---help---
 	  This driver supports the 10/100 Ethernet Lite from Xilinx.
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
