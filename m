Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58AB7A8530
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 16:09:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YaUnQoO1bbcEnqAB24OhJz0AKdJBbIl4azkh1JjO0/4=; b=ln27b3OjMwCjyu
	Oqec5G6ewhTqiCY5O9OcuzH9fGCKq71Fth0t5N1ho55UKWIOSqmhomg3048hKMhP8iQr8MW+2SLEb
	WXkZpnl0S2iiDEGir7xIJB9DpvcYymMKAH1jtlfYneoJ9z3Rl6s8Kqv5dVYiHEdYnoozWafY5/Gzh
	x6VBbG9wXtUQcrhHRIV+NuwLzZAkzJdrPtgRE9M9L6HT5CMsrVLIUr8Zibamhb8sE6x2j7/ycSBBl
	P4rnDhAGHJH6urHnGik0JSpV7/g8XTICf75DWPjlgSX8rKP9aejlfLAYWi9brXlDy//s7+R9P/396
	kvzWRfO3SDdO+/1iEOjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5Vxz-00076P-OF; Wed, 04 Sep 2019 14:08:59 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VqD-0005W6-OX
 for linux-arm-kernel@bombadil.infradead.org; Wed, 04 Sep 2019 14:00:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/V4f60/Nx26StgbMQdFv46yJ98WHK/ltwx48sogd1Uo=; b=G+mZjWIVu5r820Cfhk75wFPCZ
 63ADIneHw0T5V/p4vgRSri86rZGsyqLIbnr3GW4N08qkH4h7ySJwr0l6qa4VBYS1/Ij4l9BWOho10
 RyCws+52hkNA3Djtxle+Ya5JkpM8c/rXKgzmf965+w/sfSo9jb84LPWAIDtKH4Q0OSbcwuBqsQgEI
 4aXG41stzuE8j0tJvhjOiP1o4FnI2Yxq6qK/uT/cpxgwV5XS5zWIiDEL0JMpDoRk0JhmyO1tkudcy
 //q2wf1V4uvDq35tjdVj4jjcld/1cXGlkrQiIU91QOtWi+qQ8+6Nz8McKnxJxAX+X98N3uQqURrJS
 9zKAoivLQ==;
Received: from mail-bn3nam04on060a.outbound.protection.outlook.com
 ([2a01:111:f400:fe4e::60a]
 helo=NAM04-BN3-obe.outbound.protection.outlook.com)
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5VqU-00029Q-LO
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 14:01:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OcMru5ImdBXMqxGbiQJk8ur/WTIgM948nw2Qcdsk3sByT1goFILyHd9/2Hz5BBR4sI1PypTMv7qhV4mT5wSM1P9qMX9+a89K8do4RbyGWze8r90EmNggMxDacvhBZEKS2YeJz0Q5i0mEs7UVfEV55Kwsr7m4CdMHhBnW7i98jUQ7NM3smdnnKBLzzmhAAiiwyp8FLjK9RAwf3gkfiECDJx9/ccVHbZSHaBDfN6iZwdAYwPrETCXhepYdA78lewLZPv+hKDIYlOmuQRWVo1aX56fBPXE3gd8OVOBO0PBThq9H01exNC2PXRlZVXb5DCU/M1eh5iBQOKKFmu6mwVx+9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/V4f60/Nx26StgbMQdFv46yJ98WHK/ltwx48sogd1Uo=;
 b=TRv7M6+5xh1aSk0DF/Y1eVBWJrzN1pObbe8fSLl8A7kBdguzEbJRxgb7UVT7M7fFXshV07rjTKw8WvhAaa5Dj8Y1eBDiyIrsYdjC9t2FthP5yysoOEJh3bLU1GRtdYH4nTOIJNX9otMqpgZWpbsCjNKQmldl0etxIEwON3nx2plrCSjKxZaq2WVz3jHbt5gV3afZuBBMXtDYookPTxPlXt/MXQ+jstL5Cj/BPTwjgMCdDN80LLmXN49WJlYQA/vnPwXbGhxvENhVCFaxclOTw78wlUUCdfeCZtvZVaw7JRq2QX4DadMKXWk4Z/iAHIi+jcBLP7oTsjtjXvL2M6JHRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass (sender ip is
 149.199.60.83) smtp.rcpttodomain=gmail.com smtp.mailfrom=xilinx.com;
 dmarc=bestguesspass action=none header.from=xilinx.com; dkim=none (message
 not signed); arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/V4f60/Nx26StgbMQdFv46yJ98WHK/ltwx48sogd1Uo=;
 b=ev74SlvCQvJjfWSNOEIHCHdDpwZzNlH7fBU3Eq74GszP0BVTkqVcm6bhu+Cqzvy2DeN3996zN8LLGPrGan9lhVycS99q5GSR/l/oqMmnZ6El+kkosHlTW4Byw4+/qTjb+mI1bpUFe8UJhhLA9c8JO0rogW+wU7fQ/InizHPrgLA=
Received: from MWHPR0201CA0005.namprd02.prod.outlook.com
 (2603:10b6:301:74::18) by DM6PR02MB5260.namprd02.prod.outlook.com
 (2603:10b6:5:51::30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2220.22; Wed, 4 Sep
 2019 14:00:44 +0000
Received: from BL2NAM02FT045.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e46::206) by MWHPR0201CA0005.outlook.office365.com
 (2603:10b6:301:74::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2241.15 via Frontend
 Transport; Wed, 4 Sep 2019 14:00:43 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.83)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.83 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.83; helo=xsj-pvapsmtpgw01;
Received: from xsj-pvapsmtpgw01 (149.199.60.83) by
 BL2NAM02FT045.mail.protection.outlook.com (10.152.77.16) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2241.14
 via Frontend Transport; Wed, 4 Sep 2019 14:00:43 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66] helo=xsj-pvapsmtp01)
 by xsj-pvapsmtpgw01 with esmtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1i5Vpy-0002PY-Jo; Wed, 04 Sep 2019 07:00:42 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1i5Vpt-0002TG-EK; Wed, 04 Sep 2019 07:00:37 -0700
Received: from xsj-pvapsmtp01 (xsj-mail.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x84E0W5S024675; 
 Wed, 4 Sep 2019 07:00:32 -0700
Received: from [10.140.6.13] (helo=xhdharinik40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1i5Vpn-0002Ac-LX; Wed, 04 Sep 2019 07:00:32 -0700
From: Harini Katakam <harini.katakam@xilinx.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, hkallweit1@gmail.com,
 davem@davemloft.net
Subject: [PATCH v2 2/2] net: phy: gmii2rgmii: Dont use priv field in phy device
Date: Wed,  4 Sep 2019 19:30:21 +0530
Message-Id: <1567605621-6818-3-git-send-email-harini.katakam@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1567605621-6818-1-git-send-email-harini.katakam@xilinx.com>
References: <1567605621-6818-1-git-send-email-harini.katakam@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.83; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(376002)(396003)(346002)(2980300002)(189003)(199004)(11346002)(446003)(426003)(336012)(9786002)(36386004)(47776003)(2906002)(44832011)(478600001)(476003)(486006)(126002)(76176011)(51416003)(7696005)(26005)(186003)(106002)(2616005)(36756003)(316002)(6666004)(356004)(107886003)(4326008)(70586007)(16586007)(305945005)(81156014)(81166006)(50226002)(8936002)(5660300002)(50466002)(8676002)(48376002)(70206006)(192303002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM6PR02MB5260; H:xsj-pvapsmtpgw01; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-83.xilinx.com; MX:1; A:1; 
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ae95ccfa-44cc-49f4-8d7b-08d7314046e6
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(4709080)(1401327)(4618075)(2017052603328);
 SRVR:DM6PR02MB5260; 
X-MS-TrafficTypeDiagnostic: DM6PR02MB5260:
X-Microsoft-Antispam-PRVS: <DM6PR02MB52607A6980A607F238C383C3C9B80@DM6PR02MB5260.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:3276;
X-Forefront-PRVS: 0150F3F97D
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: xPGxrXNxEaHFvdf7ogoln7F5UoMR6ChHgvYYgH7n2M7LTr5dIjBA43RVQjh/+Uk/uUhvbndc6rhNGa2WYJGzLNnwGLHggEKc6jAL+kG9lYtMX1zEJdLunHFaiBBtvQrwpzoIF2dT7ZsCTPvOvgQmQN96xB0n2sKNCJZ2+sNtaQ1KeqaC+myN+/NefX3ORKQsIPlFdYsgqcSumhmweUj+d7W/xPNmT1NCuKYnUidu21CqoAzJvNoMeYLQxUO4TJjppyhWM2IqL6qR5RH+/mcfNFHggUtlpKtbvd0gqYKBy1DZLDEs57PFIFjKJhcKwu9KkYmJYtbrT4d6KtcZAsWYzr7uKD6kHeV6IlJawRiZOwfhulG0o3ZH3uo1T+ftACLSe2ozi8SWFG++t74V9QPopOFlQWngoBwRR6X2vSOPSyU=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Sep 2019 14:00:43.1655 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: ae95ccfa-44cc-49f4-8d7b-08d7314046e6
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.83];
 Helo=[xsj-pvapsmtpgw01]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR02MB5260
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_150114_723288_D27913D6 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: netdev@vger.kernel.org, radhey.shyam.pandey@xilinx.com,
 michal.simek@xilinx.com, harinikatakamlinux@gmail.com,
 linux-kernel@vger.kernel.org, harini.katakam@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use set/get drv data in phydev's mdio device instead. Phy device priv
field maybe used by the external phy driver and should not be
overwritten.

Signed-off-by: Harini Katakam <harini.katakam@xilinx.com>
---
v2:
Use mdio driver data helper.

 drivers/net/phy/xilinx_gmii2rgmii.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/xilinx_gmii2rgmii.c b/drivers/net/phy/xilinx_gmii2rgmii.c
index 2d14493..151c2a3 100644
--- a/drivers/net/phy/xilinx_gmii2rgmii.c
+++ b/drivers/net/phy/xilinx_gmii2rgmii.c
@@ -29,7 +29,7 @@ struct gmii2rgmii {
 
 static int xgmiitorgmii_read_status(struct phy_device *phydev)
 {
-	struct gmii2rgmii *priv = phydev->priv;
+	struct gmii2rgmii *priv = mdiodev_get_drvdata(&phydev->mdio);
 	struct mii_bus *bus = priv->mdio->bus;
 	int addr = priv->mdio->addr;
 	u16 val = 0;
@@ -90,7 +90,7 @@ static int xgmiitorgmii_probe(struct mdio_device *mdiodev)
 	memcpy(&priv->conv_phy_drv, priv->phy_dev->drv,
 	       sizeof(struct phy_driver));
 	priv->conv_phy_drv.read_status = xgmiitorgmii_read_status;
-	priv->phy_dev->priv = priv;
+	mdiodev_set_drvdata(&priv->phy_dev->mdio, priv);
 	priv->phy_dev->drv = &priv->conv_phy_drv;
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
