Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F43D10EA56
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 14:02:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iC1SAqpu+e0nIQLy+zOmylc4/76JuH+HsEuN3KYTKqA=; b=hOsp6XEHyr/Cqp
	AFzc8lxvb0JesumQ/c5Ffm6BZ3I/b7WcL82aV19chvgyEQAYMhk7HFhZIAD26SAUotdCeOOfiyaC5
	oUwa6GF+7m3dDAi0GJLF+JWtXQYwCohV4oYJcUBTS+J3hsG0WvVJUJLAKSic3B7Yhwqk6TnCXJs4O
	8cAIjDXXsADcratDcYKV0rLyfqtAnYeJLyggbzqT7feLf4pSkUBxcTGIeH8SDmYrn1IN/1Bsi0xF1
	QOQRwvDwzwimhiRoL20bJUbbn0btJzb+rjGUe5TotDLLLI6r4FzuUbvksJ+1mkRRmyF80SEPTMe6n
	u/8N6JRbtSu1obYoDaPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iblLe-0004I8-HA; Mon, 02 Dec 2019 13:02:42 +0000
Received: from mail-eopbgr740054.outbound.protection.outlook.com
 ([40.107.74.54] helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iblLW-0004Hk-P9
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 13:02:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OxzDwtHlsuauTce4MSTn9mmR9clYDr5csPtfow2YCKxsl0oOWMKZmdSZcGroNh4AidIGOyY9PkaCps01DPhOTeFAQnsNVj5CdaQiuIt4O24XVPKNbDz81T7ZQSKENFurAZ6eUA9zeOxplaB7ZgEfJCEBQS2N4wP0RDoktnS9E8FSIqyFjIZOc/jgORVvP5qoDOpPoId4/2bn+X82ZuWKLorWUeuFuxHzI+DjIPhXVE/ThHCcJXmyOpaoT8b2wTesL05tNxuobB1hIFV/XnAh9l/IZ/05NAtt+YI9Wg3pQ3QPFgze4ahDnZiAEvU8JDQKMA+lH3bVKC59CG3lUMmAyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rTlAXqhI5gJcyj6P1xEX3iw2FbZ4NW07IIWRCbtE5/I=;
 b=MMMPvpTg17oXEWf0CtZxyLT1XdiF/eyCHsr4TAHet1vLUHsSSPosN6ZuH7V5s7nnZCrB8Q4xsOLrTQfuuxl5JraVUsgkmCyrsr76/bJkA0dWNi30VSpu7L0z7uetJqmaynjVNXHfOXUFl6aDoe7muTCTtNA4msRpkl9FoGH7o3tPr0s+WNOmjbawonO4ROwtAcPxlzavWE61uENfLvFCuESg+A0J5dpf5zzg3EJLCMtVmPhAKBhip5tBTmuUqcJ+AHVrH9vsMONKGgeVM2S9qGhwoMUdwBulFJMXcF7U7FtuwlCSyRGLib0d7sClRqao2ScQg6dR0ldxmx6cs0ZUyw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=grandegger.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=rTlAXqhI5gJcyj6P1xEX3iw2FbZ4NW07IIWRCbtE5/I=;
 b=bs3Yn7m8Ma+2NOVEzET5fAJGLWkyAnebe/u4UAESRPt28BAvMsHDnL17RPNBdksGdbwNG141HGyGe1nqM/ypadGwp0JR3t5/yKwRzNnd3ZeO9JltBLNbI2lNlukHQzPXabb0RiWJnCdusdNzhtBdHrBxePjV5Gs0er+f+Zt/xm0=
Received: from SN4PR0201CA0051.namprd02.prod.outlook.com
 (2603:10b6:803:20::13) by SN4PR0201MB3453.namprd02.prod.outlook.com
 (2603:10b6:803:50::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.22; Mon, 2 Dec
 2019 13:02:30 +0000
Received: from BL2NAM02FT026.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::201) by SN4PR0201CA0051.outlook.office365.com
 (2603:10b6:803:20::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2495.18 via Frontend
 Transport; Mon, 2 Dec 2019 13:02:30 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; grandegger.com; dkim=none (message not signed)
 header.d=none;grandegger.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT026.mail.protection.outlook.com (10.152.77.156) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2474.17
 via Frontend Transport; Mon, 2 Dec 2019 13:02:29 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLR-00088M-3Z; Mon, 02 Dec 2019 05:02:29 -0800
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLM-0007cC-02; Mon, 02 Dec 2019 05:02:24 -0800
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <srinivas.neeli@xilinx.com>)
 id 1iblLI-0007b6-5u; Mon, 02 Dec 2019 05:02:20 -0800
From: Srinivas Neeli <srinivas.neeli@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com, appanad@xilinx.com
Subject: [PATCH V2 0/2] can: xilinx_can: Bug fixes on can driver
Date: Mon,  2 Dec 2019 18:32:09 +0530
Message-Id: <1575291731-11022-1-git-send-email-srinivas.neeli@xilinx.com>
X-Mailer: git-send-email 2.7.4
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(39860400002)(396003)(376002)(199004)(189003)(36756003)(4326008)(51416003)(7696005)(2906002)(70586007)(70206006)(14444005)(316002)(9786002)(6666004)(16586007)(356004)(47776003)(2616005)(426003)(4744005)(305945005)(36386004)(336012)(81166006)(48376002)(81156014)(8936002)(50466002)(44832011)(50226002)(478600001)(5660300002)(186003)(26005)(107886003)(106002)(8676002)(6636002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN4PR0201MB3453; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; A:1; MX:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7b4a01d3-8bbc-4791-3d3f-08d77727e362
X-MS-TrafficTypeDiagnostic: SN4PR0201MB3453:
X-Microsoft-Antispam-PRVS: <SN4PR0201MB3453701E78740CD143EF39A9AF430@SN4PR0201MB3453.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0239D46DB6
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l5iJD3MWXAUGQKPHvA13FK/QQqZi+VV4mSy0cLyANCiU+3T2OqoBUT3x2wDBRsbFXEcSyvtW0Tw2XHBc0ULpu/f72aGebVHGO3x0MWNBNeR0HrDP2Owe8Ps3YDoV8uqyu9B86QodPj88+yz4gBVigcGfAcsBwY65kbeCZMdIAL7eeZoKYqr2LCQsZi/pMmQXvI4ZD7xA6JzIklL+3IPe6A3DeABQuk2auMTNfv5JzKNjIilt+Cuudo6DDKAHYq5zMon1Je9aBiXuivCGr1+jnwSIlz9gWAfGFxCINuXhW+/beBXcOjjugJs9qe68n0m7aStNtba2aKBaILAQk/8jhByVv4FlLIWc7BuxjtVaDUR1gr/07FeWZy1E/b3uwWDKQrqC/4hu2uJ95T6H6BdH/Ou2Gxyh2xifx6m/l5eby1MNYXpZ1ygxJtzYVRTT3O07
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Dec 2019 13:02:29.6769 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 7b4a01d3-8bbc-4791-3d3f-08d77727e362
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN4PR0201MB3453
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_050234_819076_C2728458 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.74.54 listed in list.dnswl.org]
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
Cc: Srinivas Neeli <srinivas.neeli@xilinx.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-can@vger.kernel.org, nagasure@xilinx.com,
 git@xilinx.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series does the following:
-skip printing error message on deferred probe
-Fix usage of skb memory
---
Changes in V2:
-Called can_put_echo_skb call after usage of skb memory
---

Srinivas Neeli (1):
  can: xilinx_can: Fix usage of skb memory

Venkatesh Yadav Abbarapu (1):
  can: xilinx_can: skip error message on deferred probe

 drivers/net/can/xilinx_can.c | 28 +++++++++++++++-------------
 1 file changed, 15 insertions(+), 13 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
