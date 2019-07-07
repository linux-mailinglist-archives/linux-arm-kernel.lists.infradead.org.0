Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1238061352
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  7 Jul 2019 02:18:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yrSu2ffKA+vSFON9+5KUeyGml0nf5A36ONTBoOhmvhw=; b=MW131MDKNv520c
	RzwqQoQOrsdzDblNNbhuaE99BiBNyT8IU9qW24WeBOQyOOUvt+ZWFPxqJif83yx0eac94r+dSpBmY
	411YzwDrSOw+i/6hFmNIpguDOO0EkHQHoTQhpaujaEkHa/DuQuvARj772hT5YFN4DMWv89IvoOa1s
	Am6xw9ek69Dd+430q1V+dJIaPsjvq/eQEaa2NGwuoy9SiRCkl51D/YTbnbqaM0aZpfg7/zOpkBpnT
	KN6pbDJsGjRcUSA1XLvHlnm/wTdTYFoOp8dDaxfm9kEDrzRihiXAvSM5mIRJHm0mnQ53PgnzvYbeB
	uMvBctDF86qVRHKbw4Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjusn-0003aD-Ci; Sun, 07 Jul 2019 00:18:21 +0000
Received: from mail-eopbgr760058.outbound.protection.outlook.com
 ([40.107.76.58] helo=NAM02-CY1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjuqT-00027V-IN
 for linux-arm-kernel@lists.infradead.org; Sun, 07 Jul 2019 00:16:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector1-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jwbDJkzilP7DmymYO/JI/NbOe5Mi309nAY5nqBncFYA=;
 b=rwT2JQ+rG7fI57bFL28aGbmpt8x09xF8xWtFQlmEW3+bqR4D1pcKMwVMoL/2t6LzKFa7IK9wl6YrZqFFy1mODolS82HT4epp2Pw8ZMIo8GjNcX5QO4Niwr3f6rUD0F3Iz+bsun7r9RLYVYgKAryEsskJ+tSZW+2uJkRavoI5VGU=
Received: from DM6PR02CA0010.namprd02.prod.outlook.com (2603:10b6:5:1c::23) by
 CH2PR02MB6759.namprd02.prod.outlook.com (2603:10b6:610:7c::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2052.18; Sun, 7 Jul 2019 00:15:51 +0000
Received: from BL2NAM02FT029.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::200) by DM6PR02CA0010.outlook.office365.com
 (2603:10b6:5:1c::23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2052.18 via Frontend
 Transport; Sun, 7 Jul 2019 00:15:51 +0000
Authentication-Results: spf=pass (sender IP is 149.199.80.198)
 smtp.mailfrom=xilinx.com; arndb.de; dkim=none (message not signed)
 header.d=none;arndb.de; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.80.198 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.80.198; helo=xir-pvapexch02.xlnx.xilinx.com;
Received: from xir-pvapexch02.xlnx.xilinx.com (149.199.80.198) by
 BL2NAM02FT029.mail.protection.outlook.com (10.152.77.100) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2032.15 via Frontend Transport; Sun, 7 Jul 2019 00:15:51 +0000
Received: from xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) by
 xir-pvapexch02.xlnx.xilinx.com (172.21.17.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1531.3; Sun, 7 Jul 2019 01:15:45 +0100
Received: from smtp.xilinx.com (172.21.105.197) by
 xir-pvapexch01.xlnx.xilinx.com (172.21.17.15) with Microsoft SMTP Server id
 15.1.1531.3 via Frontend Transport; Sun, 7 Jul 2019 01:15:45 +0100
Received: from [149.199.110.15] (port=58228 helo=xirdraganc40.xilinx.com)
 by smtp.xilinx.com with esmtp (Exim 4.90)
 (envelope-from <dragan.cvetic@xilinx.com>)
 id 1hjuqH-0004ON-6f; Sun, 07 Jul 2019 01:15:45 +0100
From: Dragan Cvetic <dragan.cvetic@xilinx.com>
To: <arnd@arndb.de>, <gregkh@linuxfoundation.org>, <michal.simek@xilinx.com>, 
 <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH V8 7/8] Docs: misc: xilinx_sdfec: Add documentation
Date: Sun, 7 Jul 2019 01:15:41 +0100
Message-ID: <1562458542-457448-8-git-send-email-dragan.cvetic@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562458542-457448-1-git-send-email-dragan.cvetic@xilinx.com>
References: <1562458542-457448-1-git-send-email-dragan.cvetic@xilinx.com>
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.80.198; IPV:CAL; CTRY:IE; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(346002)(136003)(39850400004)(2980300002)(189003)(199004)(7696005)(76176011)(36756003)(51416003)(6666004)(356004)(47776003)(26005)(336012)(186003)(26826003)(478600001)(4326008)(50226002)(4744005)(28376004)(36906005)(107886003)(9786002)(316002)(54906003)(16586007)(106002)(48376002)(110136005)(50466002)(426003)(44832011)(446003)(2906002)(2201001)(60926002)(956004)(70206006)(76130400001)(71366001)(305945005)(126002)(8676002)(5660300002)(11346002)(476003)(2616005)(486006)(70586007)(246002)(7636002)(8936002)(102446001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CH2PR02MB6759; H:xir-pvapexch02.xlnx.xilinx.com;
 FPR:; SPF:Pass; LANG:en; PTR:unknown-80-198.xilinx.com; MX:1; A:1; 
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e9692e11-4830-4cfa-6290-08d70270451b
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:CH2PR02MB6759; 
X-MS-TrafficTypeDiagnostic: CH2PR02MB6759:
X-Microsoft-Antispam-PRVS: <CH2PR02MB6759990735D2F917353A7CB8CBF70@CH2PR02MB6759.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:296;
X-Forefront-PRVS: 0091C8F1EB
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: Tb3ouulCY3IVmKNBQxr04AwztK6be5lw9DTmeeH2pD2eI4DIJCqcau/fGKUUrTLIajJb+y/M9sIIgWviCJ61ovbFBgRi/tgFllqo258cSJ0OFjWExBGEbUIUe5RQpqFc4YYPqoMLG1dmbNMub/LMFIjzSISwl41kagEtlP2dDIRED5uOrMuq1FDIX4W4F2mOn36Lh3iJmYulW1wEMBoqoDB8buPAJawMzzvj0/cnVg5EVrd/gqVdzTYYpCfnhHHY5Kt2kvSDw9+J0rD/VeUD8zMZEfvLXd/806RJarnXQ44SHukurfHIPH6GkZehAw17yOYXnDCxwGxDcotJcZZqmI6WDhTwdUsiJ1uOExaw5gZaJs+7mwBJKS15GOELgrd1aS8XnjVmZUfVBFqOmZib4xK8/JlpkXrtue/sb71p1bU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 07 Jul 2019 00:15:51.3578 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: e9692e11-4830-4cfa-6290-08d70270451b
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.80.198];
 Helo=[xir-pvapexch02.xlnx.xilinx.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR02MB6759
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190706_171557_630247_251E448B 
X-CRM114-Status: UNSURE (   6.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.76.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dragan Cvetic <dragan.cvetic@xilinx.com>,
 Derek Kiernan <derek.kiernan@xilinx.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add SD-FEC driver documentation.

Signed-off-by: Derek Kiernan <derek.kiernan@xilinx.com>
Signed-off-by: Dragan Cvetic <dragan.cvetic@xilinx.com>
---
 Documentation/misc-devices/index.rst | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/misc-devices/index.rst b/Documentation/misc-devices/index.rst
index a57f92d..f11c5da 100644
--- a/Documentation/misc-devices/index.rst
+++ b/Documentation/misc-devices/index.rst
@@ -20,3 +20,4 @@ fit into other categories.
    isl29003
    lis3lv02d
    max6875
+   xilinx_sdfec
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
