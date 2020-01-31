Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EAB5314EC0C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 12:52:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fI7878xTr1KpT+s//qllDT6OaiWho50f8QwjOmWmGtk=; b=e5cB3JUNQDwcWE
	6gXalYEOai03pVmeyU2DiYD55bQ88eyA/je0jujZ9vbE3gm2S/IZy+VCDgpxzRTyzKKrTmYCrN6b3
	Z3sQX2PFNAc4hU728cMmv6/joUHse1k6+26gfF10gI98uOXCC2XZHudKVws0JeLtO4LT1yJ/lVe6q
	OgRtFeDfvLulAAt9aFDQ8Xw9iMFk8Si7U5iSlbC3gjfemMQN1SBu1WwUkIIqTEYrPo1XfcCvQs2LF
	1nDewueHaipJVq8T78X1GOIqTzZGdm+jYSyGucYZIcO/YLFJuMwxUyRpIOJ3bAB6K3cB9XHrtW9j5
	j+I09n9FCSU0C3demOfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixUq8-0002vC-6r; Fri, 31 Jan 2020 11:52:00 +0000
Received: from mail-eopbgr760054.outbound.protection.outlook.com
 ([40.107.76.54] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixUpU-0002UF-Ti
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 11:51:22 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hfVMsnYWPWLID7R47V4HUTMZlbrjby2yw0r/ZTBp/hgyG1GnYv9/lcel2Nk1HIHGrS7NCSyDUXWW3ew/sSz3G1PC+NAeqFnNXUptiooFzZIiv+rJl5mD9CG8oD3CWAxKVeyYzS7g4tuc3uZZM/9LIwvplIGhOHfF+1DcaZP3dwCKXiOgYjoo1DeetOnhw3klHxDis0vEK+AzPIG5oLutnrnKIK7nsM5LYE7Q6nR5D1YYHZEPN+soXra4m2GxG3Fltyc7ev94kk3AD09lNtP8/jk827KHXEEgq4Iqk9vh6kRdxulazvO99QaiQKgk6hMwAwgY6xE59E9XA9swLxonBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSl7E8xxECs4dyA+dTDWm/ZsppKl25xdERZ8frrwWdQ=;
 b=NkWHLfpi1w8ciGHrf7DgEeD+7tiZoxT8KKhQFZw7SyPh3qqaE7tzkjSBv/GtwJX2BRhRrObzRpG2M5vrH6rWvDfIbMayzDIbMbaWi7XUulDWKslRxpjs9Sm+LVJXiVgFHD8cVMIhOO/PgFKJqmk7Suvv2qkkQyiG3qewiplk0uIskWZy7Wt5/4B9nkl06taFAt6mY3Jz5OeVbwa0YNBE1RZlMhiyKUaCBRfNw2R/WHHeshLIiRMAvMcGXluYOdto5DJXMftGRloOlfJNHslaGSYQq1OB+d7fThj0DDharSMRZBhXnoLTCXF2ETmz/n6oO0fbRi4I2uVpbCCoOdf6Fw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSl7E8xxECs4dyA+dTDWm/ZsppKl25xdERZ8frrwWdQ=;
 b=Y2PKmg3GBOuOXohbCAfxQsJykR50UiMu7TPUmefKn1JeSmnVimPvj1QfOp9AXGdDcOTPf7XtP/UzTxQLUXFVnv3IJVEnPUhhvu/GWYJhL7FFvOmc9/1RTXQQ0Mr8f8GOQWRGJfuJJ2Npi2Qa6yl85fpWrEqohsC6TUobtbybsJc=
Received: from BL0PR02CA0115.namprd02.prod.outlook.com (2603:10b6:208:35::20)
 by DM5PR02MB3307.namprd02.prod.outlook.com (2603:10b6:4:69::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.24; Fri, 31 Jan
 2020 11:51:18 +0000
Received: from SN1NAM02FT010.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::200) by BL0PR02CA0115.outlook.office365.com
 (2603:10b6:208:35::20) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.27 via Frontend
 Transport; Fri, 31 Jan 2020 11:51:18 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT010.mail.protection.outlook.com (10.152.72.86) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2686.25
 via Frontend Transport; Fri, 31 Jan 2020 11:51:18 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmS-0006bO-1q; Fri, 31 Jan 2020 03:48:12 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmM-0004pm-TP; Fri, 31 Jan 2020 03:48:06 -0800
Received: from xsj-pvapsmtp01 (mailhost.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00VBm5pT012166; 
 Fri, 31 Jan 2020 03:48:05 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmL-0004on-D6; Fri, 31 Jan 2020 03:48:05 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 8DA29FF8AA; Fri, 31 Jan 2020 17:18:04 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, netdev@vger.kernel.org
Subject: [PATCH v3 -next 2/4] net: emaclite: In kconfig remove arch dependency
Date: Fri, 31 Jan 2020 17:17:48 +0530
Message-Id: <1580471270-16262-3-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
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
 SFS:(10009020)(4636009)(136003)(39850400004)(346002)(396003)(376002)(428003)(249900001)(199004)(189003)(8936002)(498600001)(70586007)(8676002)(26005)(2906002)(70206006)(36756003)(2616005)(6266002)(107886003)(81156014)(6666004)(356004)(81166006)(336012)(316002)(82310400001)(5660300002)(4744005)(42882007)(4326008)(42186006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR02MB3307; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; A:0; MX:0; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 65233047-a574-4ad2-2ff7-08d7a643e24a
X-MS-TrafficTypeDiagnostic: DM5PR02MB3307:
X-Microsoft-Antispam-PRVS: <DM5PR02MB3307E08DAAC8B7158A6B010ED5070@DM5PR02MB3307.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 029976C540
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MGFO33l45B+mCaJO9SGwT2z4WqMq+He0hPDgs0j0JDE5R/VWqcwhn2hWoYmgsUrPWDL0VgLdzS0uEnasXlNUAzxGJaACjdogeCU7gbk6oFcNMBegNE2NraHieudG/fOjzZK0OccpNkRc8Fg+UNzP0E2TGmL6Fqd8987W3AEuzLfVa6izOn9dEop1MiNZHH9wa24HxUZPuUs2sACo1pwyjywxpGuMIoeyk0Nv5w77zGpJ/Ms0YYFrB/eeLjlpFmmhUOO8P8xXk79t3mut/VC4MY7E4oEpjd/E6uk1PO0303qNWCBMFzvPRneid8dg8RBrVUkM4dKvoyJsL0xQsfnUmjglRhRIZ3a4M+pdWyQjuDJ4qozM9x1oDFxy9TAGICIj+AeyPXGFuN9ph116lSS4yA6hlmHFFlLZ2jw6BX8CP7iRBF0M7Xhi3rSziqTfw9Kl
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2020 11:51:18.4626 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 65233047-a574-4ad2-2ff7-08d7a643e24a
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR02MB3307
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_035120_962083_3093BDF0 
X-CRM114-Status: GOOD (  11.58  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.54 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-kernel@vger.kernel.org, anirudha.sarangi@xilinx.com,
 Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>, michal.simek@xilinx.com,
 gregkh@linuxfoundation.org, mchehab+samsung@kernel.org, john.linn@xilinx.com,
 linux-arm-kernel@lists.infradead.org
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
