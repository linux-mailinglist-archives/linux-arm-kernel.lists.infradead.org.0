Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0392897E0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 09:30:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N0ycp66VnSzD+Fk4u87XVZMscHzVEk43bMnC8/lFEKE=; b=ajkg6U/5H53z8T
	0Ag0I4IJ9vwm7ASImr0ZfOCMTbWJyzRK7uAW6eWz2BX+bbzOI3dgjoX8HZLmH27DhF+rJ1jCvaxwg
	sw7IBsxl0TszIndRgyGGdn90fsU/5BAsUie5wmS9b782IAo5eZjSsTN18pm5NJePV6H+T3GkLf6Xl
	rkGz6MTrSR9hxDw43tCyluI32j5p1ZsOgBMB4AYcttK5VigIaFcAg1o5YHyNqYmfmaGXiOyFmzKqr
	aJrVFIaflaXVXguosFupkSfsuXP1XpRYpwTK4CSCOpn1gm+UDE1D1WIhxJEA74lFVUnzX/yeIDwMH
	70XJucdWQCm7Nt387tRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx4mt-0004eg-PF; Mon, 12 Aug 2019 07:30:39 +0000
Received: from mail-eopbgr690065.outbound.protection.outlook.com
 ([40.107.69.65] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx4lW-0002X1-TB
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 07:29:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Y48GWkyDWbU8hsGUymZsZAkFH98ENCsXe7Uu1pJjJ0iJ7d3a57OrDPDbXTwqbwZIUhfhK6Trb7FZOnxcBUimpT1/8WHvIbelZcu4ZisMKLwZnwAOf/kPtZAhL9H/+QAhqyXBOOj7tM+HfO9yTbD6y4SeMIajf5GXfx9qCIEWcXkYLIvHuSfJbkVIB7RHNCeJcw2JBCkWIuVorkwghX574GA36MpSVjjf5vuLCFkUvyGPapg/e3D8r/oCQwPCwPpuop021hs/KOHP5YFDAAZTOh9tJ8fee7AVZRuN0cQtH/nz9vJ13yv/YQVtB412wBUEFpVGb2D7LgWE4sPB17SdgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XmYCJiOPkOguhih9u3keBjFyHQJiwN9tjcr4KkyQS/E=;
 b=c1I7khnjAmmJ0Ivl+rRp150Y65L9C0ehlbFi4EWRba84NFW9JlX72hvkB7Fs1zXi0xfHTw3R6e+tWxYSyDelR2ePytkAltmS9Nw+9AysNlHptK9fM/4JRPgpUkqJ9Hkxx0+YrDgryXX1c+/ayaoDNC5LCflzw59ELqtpDTEzDCtaMxSUn6qXbZJrrXuCX0vRZbC88IKYRsN0WT+RpHPajgOFZWrRYbmuGh6+6ddzULcuyat11Lj9tqZuYFvoVq2wftjAZflLX4gn+xMGTnNB8nKCKo6/nk0lcMe1coSTo2r4DOXXhE7RUXlItvtJYJXFDcg4fn7lZ4Pl6TopfLHy7A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=vger.kernel.org smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XmYCJiOPkOguhih9u3keBjFyHQJiwN9tjcr4KkyQS/E=;
 b=ZJd1+i9Mz2pvMWsU/JLU7I8QtuKA3SI46fml0wSCFwpqI0EcA1q0Wp4sQyupMwHTYxkAkicfEOKkQgbORpxz4bOHY/i/IoJJjhMoEFP2jsvrJl0HX5r0rJRB5//EM0HIVfsvMWGwMGHqx/7meRpFWP8kSedu5LEXOiog495cBww=
Received: from CY4PR02CA0017.namprd02.prod.outlook.com (2603:10b6:903:18::27)
 by MWHPR0201MB3626.namprd02.prod.outlook.com (2603:10b6:301:77::39)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.18; Mon, 12 Aug
 2019 07:29:12 +0000
Received: from SN1NAM02FT032.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::209) by CY4PR02CA0017.outlook.office365.com
 (2603:10b6:903:18::27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2157.14 via Frontend
 Transport; Mon, 12 Aug 2019 07:29:12 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; vger.kernel.org; dkim=none (message not signed)
 header.d=none;vger.kernel.org; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 SN1NAM02FT032.mail.protection.outlook.com (10.152.72.126) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2157.15
 via Frontend Transport; Mon, 12 Aug 2019 07:29:11 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:47951
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4lS-00072d-FV; Mon, 12 Aug 2019 00:29:10 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4lN-0000hp-CK; Mon, 12 Aug 2019 00:29:05 -0700
Received: from xsj-pvapsmtp01 (smtp3.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x7C7SsGs021540; 
 Mon, 12 Aug 2019 00:28:54 -0700
Received: from [10.140.6.6] (helo=xhdappanad40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <appana.durga.rao@xilinx.com>)
 id 1hx4lC-0000d9-5D; Mon, 12 Aug 2019 00:28:54 -0700
From: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
To: wg@grandegger.com, mkl@pengutronix.de, davem@davemloft.net,
 michal.simek@xilinx.com
Subject: [PATCH 5/5] can: xilinx_can: Fix the data phase btr1 calculation
Date: Mon, 12 Aug 2019 12:58:34 +0530
Message-Id: <1565594914-18999-6-git-send-email-appana.durga.rao@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1565594914-18999-1-git-send-email-appana.durga.rao@xilinx.com>
References: <1565594914-18999-1-git-send-email-appana.durga.rao@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(346002)(396003)(136003)(39850400004)(2980300002)(199004)(189003)(8676002)(70206006)(70586007)(63266004)(81156014)(48376002)(81166006)(478600001)(6636002)(186003)(4326008)(486006)(305945005)(126002)(426003)(9786002)(336012)(76176011)(6666004)(356004)(7696005)(51416003)(106002)(16586007)(446003)(316002)(4744005)(36386004)(2616005)(476003)(5660300002)(47776003)(14444005)(2906002)(11346002)(50226002)(107886003)(36756003)(50466002)(8936002)(26005)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR0201MB3626; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 6b36ce4f-5e3e-4a94-2a69-08d71ef6c594
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:MWHPR0201MB3626; 
X-MS-TrafficTypeDiagnostic: MWHPR0201MB3626:
X-Microsoft-Antispam-PRVS: <MWHPR0201MB3626DEEBD9112FDC4B32EEF7DCD30@MWHPR0201MB3626.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:4303;
X-Forefront-PRVS: 012792EC17
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: XVvaD0A9dfnjEGSqvWcz0IQo+v4oaUiALxBC5skXGnJw1MKtsO2yp/Nv4H1ZO49r7KIVGlj+9GU9Y3rWCjyUmvScdX7ic70POl7mrSGPdEsiHGkv9EA6Vek8ZkFwun7DakwCvIecYEFtq9L9tvSG/lSxdUKNQsl1AixEw6LrfXfaLlRgFQfmT9ke+M9eQgZUyGxXuXcO2MerVg0H5c2aY2mNWpG/96C3WOgWZeH0vI0tFVw8qXLiy9cvBGOpUZjzrjIbH8zoqtR0fItBOQyakQlNNK9NLjPhpQFXfk4m7F37fnmizHykXtbnnCWlg/+IJEz2upTvLHLVlagMlyl3LtdI7GDdbX9C5CJXnsyOXaXQFv+5GkCLPgorZRk5rSHnZqe1Y9RvrQv3SIOR+BWA6LztRsfIV5Pg5ueA6QjKDf8=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Aug 2019 07:29:11.8932 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 6b36ce4f-5e3e-4a94-2a69-08d71ef6c594
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR0201MB3626
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_002915_050020_7C5A7C9D 
X-CRM114-Status: GOOD (  10.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, Srinivas Neeli <srinivas.neeli@xilinx.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-can@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Srinivas Neeli <srinivas.neeli@xilinx.com>

While calculating bitrate for the data phase, the driver is using phase
segment 1 of the arbitration phase instead of the data phase.

Signed-off-by: Srinivas Neeli <srinivas.neeli@xilinx.com>
Acked-by: Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---
 drivers/net/can/xilinx_can.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index 4cb8c1c9..ab26691 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -425,7 +425,7 @@ static int xcan_set_bittiming(struct net_device *ndev)
 		btr0 = dbt->brp - 1;
 
 		/* Setting Time Segment 1 in BTR Register */
-		btr1 = dbt->prop_seg + bt->phase_seg1 - 1;
+		btr1 = dbt->prop_seg + dbt->phase_seg1 - 1;
 
 		/* Setting Time Segment 2 in BTR Register */
 		btr1 |= (dbt->phase_seg2 - 1) << priv->devtype.btr_ts2_shift;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
