Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D637BD5F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 11:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uj4y/m/b34AKZZD4h75ISP2w/o0Z8VtqkcQ6Kk6Xe2o=; b=rt4G3i8UjNtRDs
	dCr9/PviD8Mr0Ql3HOBVxJQPECShtRaXF7bNihcuXQT02krhrjT3x+pY30h+KXr1/ig+IfnQl5idU
	MCY2bhcePIT3txbM9PcfPtBxIbwTts1FL8Y5ZMCAE2U7m82GvZbeGyAmPcnLgfqx9iGxTsZTBbVIS
	qR/BzmfXuHcH5Bnjt19Q8SB5Jfi2XtpPZcUYJp2azMNZZHT0UNe5aCSZFVh3FonuUE09syYX8YEKx
	Q7ULVtla260F7atE2Uk6lhXLat3K4ry8IZ0xlJlwALbNMR5k6fFVSOi7liV2dJGzeyEsiDyLGgYmz
	Qzbj6Cmu675vXNNj8ZWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsl33-0007vA-C1; Wed, 31 Jul 2019 09:37:29 +0000
Received: from mail-bn3nam01on0612.outbound.protection.outlook.com
 ([2a01:111:f400:fe41::612]
 helo=NAM01-BN3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsl2O-0007Ra-3L
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 09:36:49 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RU3YiIkWRuPkQyvMUjSosdkV4FkGA0aZqdasGW06TUaoPW8d4skQZv4dUMNeQMNxF4jpKxZbPHhFZ/OxtyDaKllo//JJSEndlOV/dcsBRJGcpX45r+UfhFAEin+pEpxAkbWMy/rl4xft0RIjzMADXairqKRvsJ+eEbMgcd+1hXTFIPnqF5GWkevctFGBi/qCKUoMTFKe4QhPhqhTF9FW0Z060/aDUIQTHWXZXIhaAGmsZVeCd7nVj3JQ0JHKqUQjLxtANQotUYkgo1QYQ8FvG70RhWQvn85TTy3t8PCIggZtRdhf5bFYG14EPy6rlv5cbHZEQHA8sNWdd9+cNfFkuw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4afDGcukJIdW6X2C409pkck7A28OA9dOBxXNr2EDGFY=;
 b=cA16A5nn0AxC5VJtER0xtNTRSizHB1qn3zA65VdQxKF7oIYU7sciii0KCf/djWrsKQluuV9PfzDFZq3858rNW6ZT6Y1V+8VlelmVfvJw1hQgX9Y+kLqnAi6U0UYHg3LRtR35fdOAfZJmnr1heiihC2JbYvvptZ5+IW6QBZ9GkYSZr2UxWEDqqC5Fnizh/6w0+X4Z8Sbv2lMSs/QB9sycWIkKMZkadS8OelrOCOJKM7xTnKHzaro2zfy1UMXciy6e9GRrZeNFU/5KGHPnT0JcR7KcK+9g89ZS6VNSKwOIHiL5rfrf4sUu5HOjHzFFiC42IvVyTZylDDJ06/VOuwJOvA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass (sender ip is
 149.199.60.100) smtp.rcpttodomain=gmail.com
 smtp.mailfrom=xilinx.com;dmarc=bestguesspass action=none
 header.from=xilinx.com;dkim=none (message not signed);arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=xilinx.onmicrosoft.com; s=selector2-xilinx-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4afDGcukJIdW6X2C409pkck7A28OA9dOBxXNr2EDGFY=;
 b=rV+a1zO9+geXmDsY3lyiI+luamil/3XRF8mRU6RFjteKUy+a5Qd2zhV9CFNM2blEK0LxS9USOPfP2BzhqaZa9b166/QivqnxzmkLdwXPuFHzqKFLFs8DHGCEiofGWxOF1wU1Yar/1+IxVwZJKQuhvEyjAtGiRHZbMY72nnVK2uo=
Received: from MWHPR02CA0019.namprd02.prod.outlook.com (2603:10b6:300:4b::29)
 by SN6PR02MB4768.namprd02.prod.outlook.com (2603:10b6:805:90::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2115.15; Wed, 31 Jul
 2019 09:36:44 +0000
Received: from SN1NAM02FT027.eop-nam02.prod.protection.outlook.com
 (2a01:111:f400:7e44::201) by MWHPR02CA0019.outlook.office365.com
 (2603:10b6:300:4b::29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.2136.14 via Frontend
 Transport; Wed, 31 Jul 2019 09:36:43 +0000
Authentication-Results: spf=pass (sender IP is 149.199.60.100)
 smtp.mailfrom=xilinx.com; gmail.com; dkim=none (message not signed)
 header.d=none;gmail.com; dmarc=bestguesspass action=none
 header.from=xilinx.com;
Received-SPF: Pass (protection.outlook.com: domain of xilinx.com designates
 149.199.60.100 as permitted sender) receiver=protection.outlook.com;
 client-ip=149.199.60.100; helo=xsj-pvapsmtpgw02;
Received: from xsj-pvapsmtpgw02 (149.199.60.100) by
 SN1NAM02FT027.mail.protection.outlook.com (10.152.72.99) with Microsoft SMTP
 Server (version=TLS1_0, cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.20.2115.10
 via Frontend Transport; Wed, 31 Jul 2019 09:36:43 +0000
Received: from unknown-38-66.xilinx.com ([149.199.38.66]:59865
 helo=xsj-pvapsmtp01) by xsj-pvapsmtpgw02 with esmtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1hsl2I-00066u-HB; Wed, 31 Jul 2019 02:36:42 -0700
Received: from [127.0.0.1] (helo=localhost)
 by xsj-pvapsmtp01 with smtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1hsl2D-0003pQ-Dl; Wed, 31 Jul 2019 02:36:37 -0700
Received: from xsj-pvapsmtp01 (smtp2.xilinx.com [149.199.38.66])
 by xsj-smtp-dlp1.xlnx.xilinx.com (8.13.8/8.13.1) with ESMTP id x6V9aUSU005112; 
 Wed, 31 Jul 2019 02:36:30 -0700
Received: from [10.140.6.13] (helo=xhdharinik40.xilinx.com)
 by xsj-pvapsmtp01 with esmtp (Exim 4.63)
 (envelope-from <harini.katakam@xilinx.com>)
 id 1hsl26-0003my-3v; Wed, 31 Jul 2019 02:36:30 -0700
From: Harini Katakam <harini.katakam@xilinx.com>
To: andrew@lunn.ch, f.fainelli@gmail.com, hkallweit1@gmail.com,
 davem@davemloft.net
Subject: [PATCH 2/2] net: gmii2rgmii: Switch priv field in mdio device
 structure
Date: Wed, 31 Jul 2019 15:06:19 +0530
Message-Id: <1564565779-29537-3-git-send-email-harini.katakam@xilinx.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1564565779-29537-1-git-send-email-harini.katakam@xilinx.com>
References: <1564565779-29537-1-git-send-email-harini.katakam@xilinx.com>
X-RCIS-Action: ALLOW
X-TM-AS-Product-Ver: IMSS-7.1.0.1224-8.2.0.1013-23620.005
X-TM-AS-User-Approved-Sender: Yes;Yes
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:149.199.60.100; IPV:NLI; CTRY:US; EFV:NLI;
 SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(39860400002)(376002)(346002)(136003)(2980300002)(199004)(189003)(50226002)(51416003)(81166006)(5660300002)(63266004)(81156014)(26005)(9786002)(70206006)(2906002)(107886003)(76176011)(4326008)(8676002)(186003)(7696005)(426003)(50466002)(305945005)(478600001)(11346002)(47776003)(336012)(70586007)(8936002)(48376002)(446003)(36756003)(6666004)(16586007)(316002)(106002)(356004)(36386004)(476003)(126002)(2616005)(486006)(44832011)(5001870100001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:SN6PR02MB4768; H:xsj-pvapsmtpgw02; FPR:;
 SPF:Pass; LANG:en; PTR:unknown-60-100.xilinx.com,xapps1.xilinx.com; A:1; MX:1;
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 9ecff694-c798-4fc0-9b82-08d7159a9925
X-Microsoft-Antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(4709080)(1401327)(2017052603328);
 SRVR:SN6PR02MB4768; 
X-MS-TrafficTypeDiagnostic: SN6PR02MB4768:
X-Microsoft-Antispam-PRVS: <SN6PR02MB476825F7CDF4CEF33ECD0E55C9DF0@SN6PR02MB4768.namprd02.prod.outlook.com>
X-Auto-Response-Suppress: DR, RN, NRN, OOF, AutoReply
X-MS-Oob-TLC-OOBClassifiers: OLM:5797;
X-Forefront-PRVS: 011579F31F
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Message-Info: uPEUEtg/D9tTchgaMfYKttfAxXkM79PaXB+ZgTnUE6VoQY22qV997Av2S/VxoKDIFgE1L903qsb3BOeACpC10pzepwbPZ9rW53xYlNxpnM0Kkjx/du7eWlqACOJ0qzSUrbCy07vuPnHGf1YrePlmFFEKD2LeFn1MytVf8Wwn2u5jLIgR2mOscB7ZSuOXdT2RJ/nmpicNSsb6h+PpcRrQtcujHv9SnhmNotxerS3/DZ/K6qWPL57hxljDqlWjIZNTVnvbkhX141WfFky7D/eyVwkS6scY3Y8xghNqqJaW29Qf9KcRJNz7dMjS+GPjvbuKVAFIV604uMsrF7WQmmPADWlFaQEewr8Vmgv+CWagvs6BjBY8UsDRr6RYcaTiRBSG4VArUBurOFFjC/BIap2ZVU88yQJBUtc2j005jHk+DrM=
X-OriginatorOrg: xilinx.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 Jul 2019 09:36:43.1047 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 9ecff694-c798-4fc0-9b82-08d7159a9925
X-MS-Exchange-CrossTenant-Id: 657af505-d5df-48d0-8300-c31994686c5c
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=657af505-d5df-48d0-8300-c31994686c5c; Ip=[149.199.60.100];
 Helo=[xsj-pvapsmtpgw02]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR02MB4768
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_023648_312169_3D96CFCC 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: netdev@vger.kernel.org, radhey.shyam.pandey@xilinx.com,
 michal.simek@xilinx.com, harinikatakamlinux@gmail.com,
 linux-kernel@vger.kernel.org, harini.katakam@xilinx.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the priv field in mdio device structure instead of the one in
phy device structure. The phy device priv field may be used by the
external phy driver and should not be overwritten.

Signed-off-by: Harini Katakam <harini.katakam@xilinx.com>
Reviewed-by: Radhey Shyam Pandey <radhey.shyam.pandey@xilinx.com>
---
 drivers/net/phy/xilinx_gmii2rgmii.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/phy/xilinx_gmii2rgmii.c b/drivers/net/phy/xilinx_gmii2rgmii.c
index 2d14493..ba31b5c3 100644
--- a/drivers/net/phy/xilinx_gmii2rgmii.c
+++ b/drivers/net/phy/xilinx_gmii2rgmii.c
@@ -29,7 +29,7 @@ struct gmii2rgmii {
 
 static int xgmiitorgmii_read_status(struct phy_device *phydev)
 {
-	struct gmii2rgmii *priv = phydev->priv;
+	struct gmii2rgmii *priv = phydev->mdio.priv;
 	struct mii_bus *bus = priv->mdio->bus;
 	int addr = priv->mdio->addr;
 	u16 val = 0;
@@ -90,7 +90,7 @@ static int xgmiitorgmii_probe(struct mdio_device *mdiodev)
 	memcpy(&priv->conv_phy_drv, priv->phy_dev->drv,
 	       sizeof(struct phy_driver));
 	priv->conv_phy_drv.read_status = xgmiitorgmii_read_status;
-	priv->phy_dev->priv = priv;
+	priv->phy_dev->mdio.priv = priv;
 	priv->phy_dev->drv = &priv->conv_phy_drv;
 
 	return 0;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
