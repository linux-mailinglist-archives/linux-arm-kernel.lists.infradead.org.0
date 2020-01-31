Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 170DB14EC44
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 Jan 2020 13:05:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b7xf++GIvzZXXoHlYjaJ58TNGKwYqA88Yu+TQvRS+vg=; b=pDvuEcauYB2fh1
	z82SNvWM/9IjzlURRZ2tj9xTdXl4Mbkonb455IPx9eIfPG8wojSfOfMVKC1koQS9tWa6gI8pWcGIN
	B1EZxolqEJWzcBqP0BUMSVZENn2cJm0K9FPcSDizJkOXTWxODn1LDf5iHlmlIthnBr3B7NQC0bo+T
	/r0L016yIeqhRoSHK3c+f25lAlKnkAwQTtAxjmDPrV1BtmK8BtBJFHMwHAcRCgJbt7b2mYvkMKaXV
	rm9MW9pZg/t37qGhUGw6lLoxc5DW8xD0gf/5kiAPfUTPtKEHK0s9UoBI17kKDz03kz+LhxpzFFbkf
	7MYVoWozrJUxN1qzzIsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixV3R-0000k3-Gz; Fri, 31 Jan 2020 12:05:45 +0000
Received: from mail-eopbgr690082.outbound.protection.outlook.com
 ([40.107.69.82] helo=NAM04-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixV3I-0000jg-3y
 for linux-arm-kernel@lists.infradead.org; Fri, 31 Jan 2020 12:05:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=VdST0YepNWRXm0FIcKsnxXKjkqVz4NcN61quXKWFlMddg+VECkTt3skjYiLIKd2Tg3aFlhYj+cyoFS567R8eO/Bp4Z1SvBnV54SZp4kvbcC59kN+wugCQl4s/YARWduIPsAKJ3t89BGqreapHvkpH1UQ/+6223cmg63BqjR+8dyuz9s/zknIejnKcpPh/8ExpuiJqiclJlglKSKCJJV3Ze8lb2kY11LCbAqm8pbMxzkn7XRLdD3XXHx5lFp/EQkZGpkU6ubLGZzQpeCxE6fKh61Rus0Q3heEIrLiL8U4zV1P9ySUw8sa8vOQKH90jzW3RMMXtOnwAQNhUGqVRkY70A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auJpoj+XQ/2W7uDSB/weHG8Z/SeOluHv2B1ra2HsIek=;
 b=GR9ZfBWNHwHNQTfnvGUvoVp2zah8vGZrV+nDkPeQjF2r8g4aMfmiXXLUj07bMOugfrhbnpqfE4h0QKpH1VB6poS9HykSqPdLfPHYhDVYJPRmTKbv9GwxiIZHJ39DZ5/8inALkoK1F3ruSeQ0H4XXaVSU01+dV+et1kzinrfpbDOGJGWBJAYjNaK1H39LCArxQC2xJEM6aGLjeTHURp+6X6dDQeK2MOdRcajWNdZsE1z5qDi59Xe9bqQRXbHqV4iGfT2RI+TzHuHx+gFp/AN7GhOT+gEpXwMG76OkT5vkh9jdWJ6D1PdQ7nDeKtxc9/fN2u8A8kNg+8g4JnYbpSkzqg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none (sender ip is
 149.199.60.83) smtp.rcpttodomain=lists.infradead.org
 smtp.mailfrom=xhdpunnaia40.localdomain; dmarc=none action=none
 header.from=xilinx.com; dkim=none (message not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=auJpoj+XQ/2W7uDSB/weHG8Z/SeOluHv2B1ra2HsIek=;
 b=mp1tysg3+34FmXVaTONm/cR8O0eP6URIKFvszhWp6+8tw8512GBa22TGOZ4K9LQNVv6oyGnm2jlc3mvBB0osDxRcAP1riOaLbdDJJzGIqDUpTnyTyu1mTCoLXX9jR4xlc6Als2nXNkJTxrofE2h6ce0kpgGt3ufQDIUdy6HH5Kc=
Received: from SN4PR0201CA0018.namprd02.prod.outlook.com
 (2603:10b6:803:2b::28) by CY4PR02MB2791.namprd02.prod.outlook.com
 (2603:10b6:903:122::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2686.26; Fri, 31 Jan
 2020 11:51:16 +0000
Received: from SN1NAM02FT023.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::202) by SN4PR0201CA0018.outlook.office365.com
 (2603:10b6:803:2b::28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2665.24 via Frontend
 Transport; Fri, 31 Jan 2020 11:51:16 +0000
Authentication-Results: spf=none (sender IP is 149.199.60.83)
 smtp.mailfrom=xhdpunnaia40.localdomain; lists.infradead.org; dkim=none
 (message not signed) header.d=none;lists.infradead.org; dmarc=none
 action=none header.from=xilinx.com;
Received-SPF: None (protection.outlook.com: xhdpunnaia40.localdomain does not
 designate permitted sender hosts)
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 SN1NAM02FT023.mail.protection.outlook.com (10.152.72.156) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2686.25
 via Frontend Transport; Fri, 31 Jan 2020 11:51:16 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmS-0006bN-0U; Fri, 31 Jan 2020 03:48:12 -0800
Received: from [127.0.0.1] (helo=xsj-smtp-dlp1.xlnx.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmM-0004pp-Rq; Fri, 31 Jan 2020 03:48:06 -0800
Received: from xsj-pvapsmtp01 (xsj-smtp.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id 00VBm57D012170; 
 Fri, 31 Jan 2020 03:48:05 -0800
Received: from [10.140.184.180] (helo=xhdpunnaia40.localdomain)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <radheys@xhdpunnaia40.localdomain>)
 id 1ixUmL-0004os-F7; Fri, 31 Jan 2020 03:48:05 -0800
Received: by xhdpunnaia40.localdomain (Postfix, from userid 13245)
 id A70F9100116; Fri, 31 Jan 2020 17:18:04 +0530 (IST)
From: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
To: davem@davemloft.net, netdev@vger.kernel.org
Subject: [PATCH v3 -next 4/4] net: emaclite: Fix restricted cast warning of
 sparse
Date: Fri, 31 Jan 2020 17:17:50 +0530
Message-Id: <1580471270-16262-5-git-send-email-radhey.shyam.pandey@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
References: <1580471270-16262-1-git-send-email-radhey.shyam.pandey@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-Result: No--3.791-7.0-31-1
X-imss-scan-details: No--3.791-7.0-31-1;No--3.791-5.0-31-1
X-TM-AS-User-Approved-Sender: No;No
X-TM-AS-Result-Xfilter: Match text exemption rules:No
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39850400004)(346002)(428003)(249900001)(189003)(199004)(107886003)(8676002)(81166006)(498600001)(36756003)(82310400001)(42186006)(6266002)(316002)(2616005)(26005)(5660300002)(4326008)(2906002)(70206006)(6666004)(356004)(336012)(70586007)(8936002)(81156014)(42882007);
 DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR02MB2791; H:xsj-pvapsmtpgw01; FPR:;
 SPF:None; LANG:en; PTR:unknown-60-83.xilinx.com; MX:0; A:0; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 34f4bc02-124b-4f35-8f21-08d7a643e121
X-MS-TrafficTypeDiagnostic: CY4PR02MB2791:
X-Microsoft-Antispam-PRVS: <CY4PR02MB279129D1C36832889478707AD5070@CY4PR02MB2791.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:549;
X-Forefront-PRVS: 029976C540
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: H6lxPAGE0VRL78w91xwuf6eR21wvOAp5pmBeWyxUyzgjKa6M7QWoTHcQIC+CKx+YhVBlr7VXov5cnzylIdXNaXSCWK47yFqesy0A9G4RnA7PCygOHoPcBvsdYTipaugfJWtnQtLVvlL4uyYROBreQszW8D5aD8+FPYmX1UcM03oejEFLkKLtnC+F9cAKYR8IF0cc6zq1hJ2W8MCsiY9fD1Qyo6GzfikPwI/P1wqKGo+69nxGcPoBBRUQZsmfzqYt+fFLQ46vZUHAKIIsA/PF0V2Osfj8nCA2RL77Kh3bsRk+zASHoscNoXR9NLcuuDvqXyP9uLftQUeHDhUbNPgqc5JKIEdBqYCBO1Mp/2IZ7LGBsHcv17uF4U9ql7/zCBMwks8O/x9OiHXTtC0Kex3sn8q96eXj8mEvhctM+asY2YmJlQIpbCUIi0u3TZDPzKnI
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jan 2020 11:51:16.5186 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 34f4bc02-124b-4f35-8f21-08d7a643e121
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR02MB2791
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200131_040536_163946_557A6954 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.69.82 listed in list.dnswl.org]
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

Explicitly cast xemaclite_readl return value when it's passed to ntohl.
Fixes below reported sparse warnings:

xilinx_emaclite.c:411:24: sparse: sparse: cast to restricted __be32
xilinx_emaclite.c:420:36: sparse: sparse: cast to restricted __be32

Signed-off-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
Reported-by: kbuild test robot <lkp@intel.com>
---
 drivers/net/ethernet/xilinx/xilinx_emaclite.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/xilinx/xilinx_emaclite.c b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
index 96e9d21..3273d4f 100644
--- a/drivers/net/ethernet/xilinx/xilinx_emaclite.c
+++ b/drivers/net/ethernet/xilinx/xilinx_emaclite.c
@@ -408,7 +408,8 @@ static u16 xemaclite_recv_data(struct net_local *drvdata, u8 *data, int maxlen)
 
 	/* Get the protocol type of the ethernet frame that arrived
 	 */
-	proto_type = ((ntohl(xemaclite_readl(addr + XEL_HEADER_OFFSET +
+	proto_type = ((ntohl((__force __be32)xemaclite_readl(addr +
+			XEL_HEADER_OFFSET +
 			XEL_RXBUFF_OFFSET)) >> XEL_HEADER_SHIFT) &
 			XEL_RPLR_LENGTH_MASK);
 
@@ -417,7 +418,7 @@ static u16 xemaclite_recv_data(struct net_local *drvdata, u8 *data, int maxlen)
 	 */
 	if (proto_type > ETH_DATA_LEN) {
 		if (proto_type == ETH_P_IP) {
-			length = ((ntohl(xemaclite_readl(addr +
+			length = ((ntohl((__force __be32)xemaclite_readl(addr +
 					XEL_HEADER_IP_LENGTH_OFFSET +
 					XEL_RXBUFF_OFFSET)) >>
 					XEL_HEADER_SHIFT) &
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
