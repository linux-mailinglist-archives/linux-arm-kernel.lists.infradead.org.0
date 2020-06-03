Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D821ECCBA
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jun 2020 11:40:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RPZI8PjDylRpaLWTOpOwnOkZ8Lc4RkwpBpCjqJbPjdw=; b=dHF1ritPo6bOjE
	2OZC6UDU0GUPHteDcQqVHZmysE7F0EshiUjbm5Qw2FcBzdAB36O2PoPtCtoXQayD2Nx9ZyQUugz7N
	oNvDBmXQT96KQSxANfjc58+SjtjUkJi61EyEujVRzfiw8FHkl6qqwPoFiJlDDnrY0GLsE2NYhdeGv
	QgoV/jh/tWEjkktlaPKAs2blRmaB+qmESjWtI1zCBv2iXlmpsmqOQPd/C4UMdb0PPE3p1NlNVqsUi
	tSRk3SL64UJlWzIcrhhsxvX3jy3UOMjcwdnIUgbyhiEr5hMUyzWAL02tVDnqyzmuWBdKWpi79U2lN
	6RDsJd5LEA8jLcP7aO9w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgPsj-0007QQ-Hd; Wed, 03 Jun 2020 09:40:21 +0000
Received: from mail-eopbgr30087.outbound.protection.outlook.com ([40.107.3.87]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgPsW-00064H-MD
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jun 2020 09:40:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aztJNJL/D2fgvn4taM6gQUOjKEFNU1ctl0ziAjJxc65Y7BH/Um3Q0YO5sqddLvvNA6R1dZ44+8Li05KJrGy744mdlFZGN7h3eHEpXbk29Z7651UVnzYk1/lml9v4YGfK0Ckld0em0avAkOLit01yRyC091KNIGEFIPw1ph8UhqC47LBrNY2736O1bbmeKP+4OSfUhgwMdajxJrPFlGZW/IsQhrRPu4g9AXMf7kjiQaI3IiDYgOA7fyHh8iUfX/xmkRXpCIhsUde6mdUcZs6o1uA4Gq4PYob0p99TqoFlQ1Th4G8JLg6c0iF03ANRN7Ta0LZmmxq0Modab30W4jGuUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMEY2ra3VmJNtDhGs/eKIOXbVsOomvkoqWKOLXOIapQ=;
 b=EjD1Wx7bU0RY0UAqHQbBEWCTm/zGBxJ/uQ29EYUZ/3DABSTSPVRhKOX5m6itD5B/p3lefEG+JvmTPlN5BsBeC5J+IEKViOFmkjgPJdKAZEC+JxT1En6deoGu6lsbiRMNjf9pNH57N+C2SaPfX1st14BpNn9A8YSWgsjJvZX49ciMyyGg4ge+yiAgPTqbsBHu8LYzEDqT79zJIwCVhKkC2TYYKuhFVO9zW2V1ezLfV+LK1ParXN5WbDxjjCt8Fu8V6w0P+hlgszUNoph49db+TPBEZNE9XUA3bx+4KTCnQtLKtzW+CNMOU1a+EQtJMuxyCq7KOUSe3tdFYM05RcW6qQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fMEY2ra3VmJNtDhGs/eKIOXbVsOomvkoqWKOLXOIapQ=;
 b=ACXS2IXLrAqd3BYvstNzD54vVT0ICxUlWzP8ElP5WWU6TlZw75L/n01C2KCnK0b5QQ+IaXdYLynm2thfUY/hX+KOd/FwdnKtpz8b4gK8Xltg92Rx05V7hKsi3OfzPs1RJg6xgcUOPWKgY6f+7YJ0+EH8jfLMG8xXHkBfxXm3x7Q=
Authentication-Results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=nxp.com;
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2856.eurprd04.prod.outlook.com (2603:10a6:4:9a::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3045.19; Wed, 3 Jun
 2020 09:40:03 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.3066.018; Wed, 3 Jun 2020
 09:40:03 +0000
From: peng.fan@nxp.com
To: shawnguo@kernel.org,
	s.hauer@pengutronix.de,
	aisheng.dong@nxp.com
Subject: [PATCH] soc: imx: scu: use devm_kasprintf
Date: Wed,  3 Jun 2020 17:29:32 +0800
Message-Id: <1591176572-9693-1-git-send-email-peng.fan@nxp.com>
X-Mailer: git-send-email 2.7.4
X-ClientProxiedBy: SG2PR02CA0070.apcprd02.prod.outlook.com
 (2603:1096:4:54::34) To DB6PR0402MB2760.eurprd04.prod.outlook.com
 (2603:10a6:4:a1::14)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from localhost.localdomain (119.31.174.66) by
 SG2PR02CA0070.apcprd02.prod.outlook.com (2603:1096:4:54::34) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.3045.25 via Frontend Transport; Wed, 3 Jun 2020 09:40:00 +0000
X-Mailer: git-send-email 2.7.4
X-Originating-IP: [119.31.174.66]
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-HT: Tenant
X-MS-Office365-Filtering-Correlation-Id: 968e6474-ad19-4ef5-a439-08d807a21764
X-MS-TrafficTypeDiagnostic: DB6PR0402MB2856:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB6PR0402MB28560A4A78E4B58086F52AA488880@DB6PR0402MB2856.eurprd04.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:324;
X-Forefront-PRVS: 04238CD941
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 12XAsF9tEZf4nQsGfd+jV9EykKeYnJw/fNUDp0drfiO+fW6ezIKiZawKl/VwD0pk87levIH8YiSYBqQxBiN4Tmj/KrxE96YXj6ItokC/72FXeZrVjnN3jjQazznsH+ci4UCSoNfp1ScPDCrM3S76JA2xrQZaz3hoOSqYe/Hzm+37TGtVB4JvdNAJnXczLDM7HM5NgM2OWtiDOCMf9M32axiMO68gIx34IK/hkdP4zlsUN8iAqL4KQ8p4Inu8beht9BTHbefaWxd5IJmD6RkWAySC4IuoreQgxaApSYVk03y48kVfOihsc/nQ0ACf2+ZxP4keuUs0xOJpS3iDI18DUU1b8F5atx7r/B3CZMscqaijM+s3NepA/SI3zgPWUs/6
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(366004)(346002)(376002)(396003)(39860400002)(136003)(316002)(5660300002)(8936002)(69590400007)(86362001)(83380400001)(6506007)(36756003)(478600001)(52116002)(66556008)(66946007)(8676002)(4326008)(66476007)(6512007)(9686003)(2616005)(186003)(26005)(16526019)(2906002)(956004)(6486002)(6666004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData: LCE4Jv334FGUoRWjfS4gtftsAfbXAfT4aDGgtmNEKOyyHIZzkryruNoMQoc5qB5bt/qF60v7fr2VYqVbI5uITKJFLrgGLx/m2Z7xY0CpMEUye8gfAXeC7TJp2IdtStAHoATq6CqXnDdTZamqyz65lJrwKwkKkPLyUQsOV0sdE3bQuW44KVH5xwTV9Yt6AZe4xuV3mNP6sKOJ2Y9KhiMHPTv6BF2rv6Fu47THrNYt1z5u6g8ITMftWmuR2g4jLhfOnOCQZ0nOkbRPUtBO5POQqrdizan0r4T928bkmxw3Ublj/FbyTHbKSEHb0yk+ekhJYOJ5HwgigKUcR/hkwU9q6ApaJE0V0DPjDI9ivduEt59AD7NYG36D281lI6vArnDUfHOutiuA9ocm0uJvTgVlDOhUqf1761XLs7KX8Ba7HpG3lgUn4fQZ00rW4MJqXrZOKmikMCCt/nMu78sRRm6nblD6YVsusEugVgT6ft2WGMv5LQoeb5c0QngpIKqJgtAO
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 968e6474-ad19-4ef5-a439-08d807a21764
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jun 2020 09:40:03.4002 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ccq5Biz/yie/NneAkByHNAEBsvDwUTyx+XnNBD6zbkD4f6Z5BoA5snLGyXhCl2qTnU0EFJBAjTMgDAWZPnSwrw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2856
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_024008_747344_7AEE6B30 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.3.87 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.3.87 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 MSGID_FROM_MTA_HEADER  Message-Id was added by a relay
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
Cc: Peng Fan <peng.fan@nxp.com>, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, leonard.crestez@nxp.com,
 festevam@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Use devm_kasprintf to simplify code

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/soc/imx/soc-imx-scu.c | 37 +++++++++++--------------------------
 1 file changed, 11 insertions(+), 26 deletions(-)

diff --git a/drivers/soc/imx/soc-imx-scu.c b/drivers/soc/imx/soc-imx-scu.c
index 20d37eaeb5f2..92448ca9a6f8 100644
--- a/drivers/soc/imx/soc-imx-scu.c
+++ b/drivers/soc/imx/soc-imx-scu.c
@@ -115,43 +115,28 @@ static int imx_scu_soc_probe(struct platform_device *pdev)
 
 	/* format soc_id value passed from SCU firmware */
 	val = id & 0x1f;
-	soc_dev_attr->soc_id = kasprintf(GFP_KERNEL, "0x%x", val);
+	soc_dev_attr->soc_id = devm_kasprintf(&pdev->dev, GFP_KERNEL, "0x%x", val);
 	if (!soc_dev_attr->soc_id)
 		return -ENOMEM;
 
 	/* format revision value passed from SCU firmware */
 	val = (id >> 5) & 0xf;
 	val = (((val >> 2) + 1) << 4) | (val & 0x3);
-	soc_dev_attr->revision = kasprintf(GFP_KERNEL,
-					   "%d.%d",
-					   (val >> 4) & 0xf,
-					   val & 0xf);
-	if (!soc_dev_attr->revision) {
-		ret = -ENOMEM;
-		goto free_soc_id;
-	}
+	soc_dev_attr->revision = devm_kasprintf(&pdev->dev, GFP_KERNEL, "%d.%d",
+						(val >> 4) & 0xf, val & 0xf);
+	if (!soc_dev_attr->revision)
+		return -ENOMEM;
 
-	soc_dev_attr->serial_number = kasprintf(GFP_KERNEL, "%016llX", uid);
-	if (!soc_dev_attr->serial_number) {
-		ret = -ENOMEM;
-		goto free_revision;
-	}
+	soc_dev_attr->serial_number = devm_kasprintf(&pdev->dev, GFP_KERNEL,
+						     "%016llX", uid);
+	if (!soc_dev_attr->serial_number)
+		return -ENOMEM;
 
 	soc_dev = soc_device_register(soc_dev_attr);
-	if (IS_ERR(soc_dev)) {
-		ret = PTR_ERR(soc_dev);
-		goto free_serial_number;
-	}
+	if (IS_ERR(soc_dev))
+		return PTR_ERR(soc_dev);
 
 	return 0;
-
-free_serial_number:
-	kfree(soc_dev_attr->serial_number);
-free_revision:
-	kfree(soc_dev_attr->revision);
-free_soc_id:
-	kfree(soc_dev_attr->soc_id);
-	return ret;
 }
 
 static struct platform_driver imx_scu_soc_driver = {
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
