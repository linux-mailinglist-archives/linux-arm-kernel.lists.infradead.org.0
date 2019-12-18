Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B583124723
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:44:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=je1Zp+5n4TUjicwidO75lSV5+o//JZOrqKQIq1fWh/o=; b=kWZrPpDyNZjESR
	9EFjSaLF54snFO2Mzo+7DTiOc7xewD4vxpLmLKfUrKmvttoo3pUnn7RqE7iDgB1gkVc1Sf9SbKTIr
	FIxySFGFjKuoITsx0Z4oSMAuGY8K/nZ0MZnN2fnZJEpArCTSXrKDW6okunkCjITzp7gyVufRfchcV
	Nf4TShTA+xSY+9CgbZ+nMniopBGD1wSf7Y56cg+gmK6wclfAIyJdRR45mDZrfEpyhBGKTqYl3qztB
	XJAj5+0FLjEziR3YsggAETt0icHvYKlm6a6Orn3dAT5+PPQKO4EutLduKZWdewZnoPP511mojdkl1
	PdEmzf+Tg1j8hgdUUBRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYgV-0000TM-S5; Wed, 18 Dec 2019 12:44:11 +0000
Received: from mail-eopbgr20062.outbound.protection.outlook.com ([40.107.2.62]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYgI-0000SE-Ne
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:44:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=UGe/2rzd7woiJY+bSydVu8ZVaUrph5EuLsvaUhF3/z738znFziHBghYIFn0AcrK/AgBEe8KRM2PJYLl1rUxKqp89Vwu9CYCu16OwT6n++hpfZi5IXp6KWlogBM3tyi/8y4up1VP9SJsL7unmNBonW+LKbsp7ZenzuL19Nxc7SiBz2N0gyDk2WCpG98q7zD5Guw99qV4Glv5SXxbZDWuvZFMobOKduxq8Xh9HOe/y92o4vWYqgGjsaiqS3Hw4jerXQhCV/LIurw1rQX/IrlkmGkZKNbUm4k3+Uk8TkbTb4JerpJ5RA25POsGsxD7Mm8hrPrt+xSv38Gr9/O9cCdDmJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zssb56up1R/q7ZqlqzZltOvkUEbo+1At4Et7FtWROWc=;
 b=ZJ39VXNfFSobej6oDtNgFp0SJz0+Mfg2lQ2Ze2hTNFbDAME1JZZkgs/awG3oPygdrjhFjF1PKstuu2Ld8olFMFx1Y+SjjPalvbWD5OdGxF48wxWP42KVLJqJ+qkUSUOGXY7WeH8NQvblSIJFSbpBDNe9T/33cqO4vwtPxkk6TrmRItF6S7XOlVHfSOlyr4Rw2cd0U8OEMDRBD51+m0fxd+231CsN9wSsvFfpm6LpEQVvx5ns176WMnqAS9FHDKrsLDPxUZ9cRvfuzHNkdujaf0IYsOmtHJdrIZqCxdJ/iKpUYl7fYMm2G3Ea0lxtMFPy10y1aNmvsi2A7fZMuDT/Jw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Zssb56up1R/q7ZqlqzZltOvkUEbo+1At4Et7FtWROWc=;
 b=TqLBvSxOovSV26r20M3B/fgu70MCFLrtB4+H5pXg+vZR864CDF/wPrfupJMcByR+b8ypeiMe6yF98V5VcFlovvInvHisroVs3zFXlPT2F1taKt1rGbpP2/KJBulKETr7oq1pWf/pL70Vp3oA68ZZJajQKY/vK5b213PUEOo3FYA=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4722.eurprd04.prod.outlook.com (20.176.215.92) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Wed, 18 Dec 2019 12:43:53 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 12:43:53 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "jason@lakedaemon.net" <jason@lakedaemon.net>, "andrew@lunn.ch"
 <andrew@lunn.ch>, "gregory.clement@bootlin.com"
 <gregory.clement@bootlin.com>, "sebastian.hesselbarth@gmail.com"
 <sebastian.hesselbarth@gmail.com>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "mripard@kernel.org" <mripard@kernel.org>,
 "wens@csie.org" <wens@csie.org>
Subject: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
Thread-Topic: [PATCH 1/2] pinctrl: mvebu: armada-37xx: use use platform api
Thread-Index: AQHVtaDOy35Q6KpKLESPO8UEr8sdHw==
Date: Wed, 18 Dec 2019 12:43:53 +0000
Message-ID: <1576672860-14420-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR06CA0007.apcprd06.prod.outlook.com
 (2603:1096:202:2e::19) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 5cfbedf3-6676-48e9-6ac9-08d783b7f066
x-ms-traffictypediagnostic: AM0PR04MB4722:|AM0PR04MB4722:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB47229E82078D44E9E632F9FC88530@AM0PR04MB4722.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(366004)(376002)(136003)(346002)(396003)(189003)(199004)(6506007)(110136005)(54906003)(5660300002)(66946007)(66446008)(71200400001)(2906002)(26005)(316002)(7416002)(4326008)(52116002)(81166006)(8936002)(44832011)(8676002)(81156014)(478600001)(66556008)(6486002)(36756003)(6512007)(2616005)(86362001)(66476007)(186003)(64756008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4722;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2zt38CnXp6UZQjLEFBDj/kyNU7gw1do5wuTm/kLdJ5dFUtRk7nEy4ONOuW/RQ376rOQRmDlelQ0emDoPF/RJxYGYhmsYaul6SxYmR+0iEMFYxp4sxWf82WGFSb9liB6LbVzdfWTLobh0YAGCpzGkj8GZhrIB1WV8mZ/B3yMCnqpFTN4iS9VZQj+nb5xvFx03gaXU3V1IsE+Fi6j/FHy1uEkCUSTiE5J/XfWFEcSFl1atOnjOLbdAqKBY8bML9WzJ1ewbNO3fOoKUgS2u8DM41AXVFraBncOYnHgViV5yKhR3aCC30bBNwjVmNMjED89OW2jNVnlAho9nliJlcby/f4duIfdyu5+gG+Wq/n2TeqCpWyIz/n6gI4eCVfW21O9hB1kI8ypIoLpgTm2nixex554FSAIx+KcNRI0kZKs7pWJBrJBSn6DzUXi1A4ESACv3
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5cfbedf3-6676-48e9-6ac9-08d783b7f066
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 12:43:53.3511 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Gr7MxKJ4SsFNJJXERNRLVXv06YjaPYmwMbHk2Q/bpSOCFxSFd8CnBduuH3DibSHSfuaLpukmY+2yaNduwwIZLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4722
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_044358_847829_0F0CE3D9 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.62 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

platform_irq_count() and platform_get_irq() is the more generic
way (independent of device trees) to determine the count of available
interrupts. So use this instead.

As platform_irq_count() might return an error code (which
of_irq_count doesn't) some additional handling is necessary.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index aa9dcde0f069..cc66a6429a06 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -15,7 +15,6 @@
 #include <linux/of.h>
 #include <linux/of_address.h>
 #include <linux/of_device.h>
-#include <linux/of_irq.h>
 #include <linux/pinctrl/pinconf-generic.h>
 #include <linux/pinctrl/pinconf.h>
 #include <linux/pinctrl/pinctrl.h>
@@ -739,7 +738,14 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
 		return ret;
 	}
 
-	nr_irq_parent = of_irq_count(np);
+	nr_irq_parent = platform_irq_count(pdev);
+	if (nr_irq_parent < 0) {
+		if (nr_irq_parent != -EPROBE_DEFER)
+			dev_err(dev, "Couldn't determine irq count: %pe\n",
+				ERR_PTR(nr_irq_parent));
+		return nr_irq_parent;
+	}
+
 	spin_lock_init(&info->irq_lock);
 
 	if (!nr_irq_parent) {
@@ -776,7 +782,7 @@ static int armada_37xx_irqchip_register(struct platform_device *pdev,
 	if (!girq->parents)
 		return -ENOMEM;
 	for (i = 0; i < nr_irq_parent; i++) {
-		int irq = irq_of_parse_and_map(np, i);
+		int irq = platform_get_irq(pdev, i);
 
 		if (irq < 0)
 			continue;
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
