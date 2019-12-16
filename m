Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32DC0120517
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:10:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fI7878xTr1KpT+s//qllDT6OaiWho50f8QwjOmWmGtk=; b=X2LIZADTgddO6T
	g24de9j22Ptc3g0G1Wpa8fz7QR6Zy134OXKwqdFfOgrbKcEZ6Egb3RZykv3p+C4xkfijrZGSW8HT/
	IoLReDA612m6XlkrMokz2Fd0z7hPTx0hX8op8yv/LENEhmdaKZ6hx4R5wgxNxEmruYshYtmjbQYNS
	r/j7etA/jbIoJKqcFOIQ/gMpx3CeuFHjPj8Podl95Ea+dlvR9EiVdoKA1lAw0loGh87iohgwb+aIE
	B1asKKrcHZYmVZMlMWZ0iIx6PdEKQ8MkPqHDbv91By4VAmoC+8RqQly4fwANjxr9nmrper8E8+D2c
	Lo75fkcFuakTJlSHVLIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpD5-0007c9-0y; Mon, 16 Dec 2019 12:10:47 +0000
Received: from mail-eopbgr700058.outbound.protection.outlook.com
 ([40.107.70.58] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpCV-0006hg-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:10:12 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jCB2vENI/dXehJGnYUBd7ytawdBzirnAo6W7g8lOLhe8nO+5h6cBfUS3ESmROiGpUFNhoiGMppLvqauc59N874N+/IFZlfLAXRWuKXYU9qSepEqv8VYQ2E3M526+FfeUlqM24HsQeJX/B8joIkRCdiiotTphguNZpaYVVP8zbrMZMgDsm0rOQBWhY+QIpGcOzdLbmy3qJ/Wpg60Bt7luwT/z1FQN1vjfhu+klGRMH9U5FvqbFa6yCsT2UzGm0EvXFND3TMC4XZfdXPqJt4pHEP+Ce/zeafItapq3fDIy7svu/wfpKsFiIf54SAYN7fF79I8W0RgQrb05/iCJtUeiXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSl7E8xxECs4dyA+dTDWm/ZsppKl25xdERZ8frrwWdQ=;
 b=HbaPzkl1wLVIdkEPuC9SCl0qhReMFIH5WHT1EMezJv5TNBUAyVlWZDVZxH1hnujiWTSCfJ3MMR9yLi3WWjTuLnNXOR1vnQCzXYGjLstwkgPw5N7KxKuLfoOz688zpWS6e3oLX1f6PFP3Up/3xTOIp/M6oEL3BUE2ZvvMCws1/DVkI5jnRaNaczAotPDcwwFeZW/6kaR0pUqnfi1CCJhoOyys1Mfz5h7gFYf0o8DpVKzrdXolSS4loKZv2+dsD4YcDkyaJZL7wn2lIMrZZvLBk7Mn1zijOS8vWToboAIB7pm4U4Xik5OjHburiRp2RQ3D6oWAj54NihEx/jsL3tkm8g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bSl7E8xxECs4dyA+dTDWm/ZsppKl25xdERZ8frrwWdQ=;
 b=mEBlxcc7rfnDLbVPjGggj7opw2QrVyhaCo3nIMAMx+prVFpnuykFIwgtO3HTEYl2klIz/4NwXuObU9tlIPEhNk+Um7g1q2eZJyMbdWdvQq6t2aj3PoXR8iTJqGaDxdIPy1Sg93eYUd4ERb8EHc0BDQeoQGUWfq2F9ake6oxiPXw=
Received: from SN4PR0501CA0108.namprd05.prod.outlook.com
 (2603:10b6:803:42::25) by BN8PR02MB5954.namprd02.prod.outlook.com
 (2603:10b6:408:bb::32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2538.15; Mon, 16 Dec
 2019 12:10:07 +0000
Received: from SN1NAM02FT003.eop-nam02.prod.protection.outlook.com
 (2603:10b6:803:42:cafe::cb) by SN4PR0501CA0108.outlook.office365.com
 (2603:10b6:803:42::25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2559.10 via Frontend
 Transport; Mon, 16 Dec 2019 12:10:06 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT003.mail.protection.outlook.com (10.152.73.29) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2538.14
 via Frontend Transport; Mon, 16 Dec 2019 12:10:06 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAz-0001l9-CL; Mon, 16 Dec 2019 04:08:37 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp2.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAt-0000we-Md; Mon, 16 Dec 2019 04:08:31 -0800
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp2.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id xBGC8U8i024878; 
 Mon, 16 Dec 2019 04:08:30 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1igpAs-0000wN-Au; Mon, 16 Dec 2019 04:08:30 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id 88E541053CE; Mon, 16 Dec 2019 17:38:29 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, michal.simek@xilinx.com
Subject: [PATCH net-next 2/3] net: emaclite: In kconfig remove arch dependency
Date: Mon, 16 Dec 2019 17:38:09 +0530
Message-Id: <1576498090-1277-3-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1576498090-1277-1-git-send-email-radhey.shyam.pandey@xilinx.com>
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
 SFS:(10009020)(4636009)(396003)(346002)(39860400002)(136003)(376002)(428003)(249900001)(199004)(189003)(8676002)(36756003)(6636002)(81166006)(81156014)(498600001)(70586007)(4744005)(8936002)(6666004)(356004)(70206006)(316002)(2616005)(4326008)(336012)(26005)(42186006)(42882007)(6266002)(5660300002)(107886003)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN8PR02MB5954; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; A:0; MX:0; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 44d15fa1-0321-4f34-da48-08d78220e3cb
X-MS-TrafficTypeDiagnostic: BN8PR02MB5954:
X-Microsoft-Antispam-PRVS: <BN8PR02MB5954085A963E67A4614C3BB3D5510@BN8PR02MB5954.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5516;
X-Forefront-PRVS: 02530BD3AA
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: qeyF7I8JFl6Yc2+2xej1gOW7Bi31CTmeydEAodZHQCGbhIYX9ZkY+8ZdXXHKWMtahEAYZ6Bd9B+TQJsjJMdwW2ST5TXDNsWYSq8IkiAKBkRghoD/CtZPQcddYmrv1jRaZpmZdx0GUFqYVmbGujIkeYEHoXH552gUl89KyU7hWenRrIR4Y/bw2l1fQ1Wa9hrdO41cmNEeCVYqgJZeX95RFudxHQvuPzhMV+3PYb3jb1EORKiuvIiQyKFwNrR+zrC3Pn3COEjd2AtM12LE0v4vK2p6UTeDtSQog1zOtmHyNdIY5DsfUgmZOknH7S+SCOjqeBGLCiafoq6c0ZudFuFXC94G8YoeFPjjnyRWhjDzbru80Fyg/jCPI8Hl+YCXa2OhRdxw7y88W0FxIT20YMh7cp+YUqgT7xShfG2TKn/id+S6f0a/ZyHrZ2o0iH6TJ991
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Dec 2019 12:10:06.7455 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 44d15fa1-0321-4f34-da48-08d78220e3cb
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN8PR02MB5954
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_041011_081490_9A9EF4A5 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
