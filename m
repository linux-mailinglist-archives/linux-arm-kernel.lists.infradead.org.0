Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37AFF133C10
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 08:12:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4bVxDjKS4YxVmNb6ZCpGoKZvyFNy7bPH1YD/BtsIG6o=; b=SyioRD668/g+Qt
	H6M1U5+bUJgEdBF0rg/wkG3wB1MhgfN35LlJM5pAHoAjTsznm3rRwVqq0JR26fcfg1bYtNXL9TB74
	8BiZAn7nOyvWna/XrVgjqAN9yOzpILcKBlrP9jFL4Aev7r60ALEd6UJVd1dfOGyan6gKHQRWpeYDI
	5mtrsUIgfNQCzapCLwP6qjwQtBqfQLfFIb18ORZkgVYqcJakW3joKKacbTUepgy+5ZjOUgq1Yj1Q7
	I2iocKu5vkpMJV1EClZPaZYPcHle37zut3HAiKBNxZXyNHfBgEiKBauVG+tItuGzPqtHz3nx4ktXu
	2k3c2KoGwQAypaJtFwnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip5WT-0007eZ-Od; Wed, 08 Jan 2020 07:12:57 +0000
Received: from mail-db3eur04on0627.outbound.protection.outlook.com
 ([2a01:111:f400:fe0c::627]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip5WL-0007dM-Cj
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 07:12:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=V7Key2wQeMcXhoY2/w9eSXufu1AmhYNUFxRQF/Vj1ofieWSWPxqv5XbRgLiTI+GpMDKe0zc3aQvSudVQ+KlOu+HqPbIzzwk0AFiJC15g3pHbs9aSCoovBEMvIrAsMGokzNaCwnWDHYMiZJTTCYtUm+DhXIWAebn/txaj7yUVMduC30QzTNimWHZNZ8GmV0BJJpA6FB9KrHwVlfoT1QoPX46JdlMPSluevGd2QzAsdS8fdVaP2SjVNw48MNTfRk05h/unLChpJPCRDbLv1omFk4noIdTHQl+VaghadPDMc+q6YMmx+Qf3AK5q1p/50a1xsYcuja+f0TKiesCDEizJKQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JHBc7bhKL1JTAicntMKpuXc3mIEe4ThyvkYFvoOguPs=;
 b=TnK8bBNHnr4S/qtQbIBZcwcO/XYc9SwQY57JM6QMPMpAeYFwLjxftWni2s1aheDFriXezyOhfwnx4YWLcl63Fz+PW39uNiH101RIiHzAGmI3vcHOxUIzaSPbf//AbjtgJw2PV1vfR1IyKN5ewjS+nNyaeStQbzV5Q6cMIfFDXXEoloLgwDym1MA/5/tCFIU+fektwH5Z5EG9TU2uTkQXCtzXLgImXgPtVJUUXvWo9SShVOK7+hK8Rr7RcYTfJvOxW4sL0xGX0sEl84czay9UitdcRhcGhvGbjidh8WDJN7XxF+qqty7ycOVUcRdaLrP+0e2+Pkn16sZD9b1D+AvmGA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JHBc7bhKL1JTAicntMKpuXc3mIEe4ThyvkYFvoOguPs=;
 b=FN4Rpd6YpnlCg7UomGyAkDAWMwTjC04C5lHhF6tLQ9xoG64/4fI5XuNk1EXKN4sgAU4qJGUJmSnnbiYxTeQRvjXzhZYS3/LD6Qz4XLCdNSH0Q0B6u8ziukJfdQIU+EVlYZmSkCPpddlMUHUV3uTBDf2is4dlsieLdEqY/sF67gc=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB5185.eurprd04.prod.outlook.com (20.176.214.95) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2602.10; Wed, 8 Jan 2020 07:12:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::c58c:e631:a110:ba58%6]) with mapi id 15.20.2602.015; Wed, 8 Jan 2020
 07:12:46 +0000
Received: from localhost.localdomain (119.31.174.67) by
 HK2PR0401CA0022.apcprd04.prod.outlook.com (2603:1096:202:2::32) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2602.12 via Frontend
 Transport; Wed, 8 Jan 2020 07:12:43 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "jason@lakedaemon.net" <jason@lakedaemon.net>, "andrew@lunn.ch"
 <andrew@lunn.ch>, "gregory.clement@bootlin.com"
 <gregory.clement@bootlin.com>, "sebastian.hesselbarth@gmail.com"
 <sebastian.hesselbarth@gmail.com>, "linus.walleij@linaro.org"
 <linus.walleij@linaro.org>, "mripard@kernel.org" <mripard@kernel.org>,
 "wens@csie.org" <wens@csie.org>
Subject: [PATCH V2] pinctrl: mvebu: armada-37xx: use use platform api
Thread-Topic: [PATCH V2] pinctrl: mvebu: armada-37xx: use use platform api
Thread-Index: AQHVxfMHPnlAs5oA3UGqZu84LtJVaw==
Date: Wed, 8 Jan 2020 07:12:46 +0000
Message-ID: <1578467325-4189-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0022.apcprd04.prod.outlook.com
 (2603:1096:202:2::32) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: e9d67365-11ed-4a95-90e1-08d7940a2969
x-ms-traffictypediagnostic: AM0PR04MB5185:|AM0PR04MB5185:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB5185E74729D79A510FC91CC0883E0@AM0PR04MB5185.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3968;
x-forefront-prvs: 02760F0D1C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(396003)(39860400002)(346002)(376002)(189003)(199004)(316002)(6486002)(69590400006)(2906002)(478600001)(36756003)(4326008)(71200400001)(5660300002)(186003)(16526019)(6506007)(7416002)(26005)(44832011)(86362001)(66946007)(6512007)(66446008)(64756008)(66556008)(66476007)(8676002)(956004)(110136005)(54906003)(52116002)(81166006)(81156014)(8936002)(2616005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB5185;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZbhHmMYnl6jeezWBbuQBi+gVNrrhbZqLE2j1n31ebC47yImLz4AMgwRm961P99cdzN5h+39vY9NjSZU29mtk9TtqwUAg0LlVJtv2WZ8N0MbvxHhTHKW4k5DlWbtnlVR57Of0RWYeaUj72RgcdkKPMA6KY7ZfuEYPW/p7njmLWputqV8xx49eizKIjcA/AWg310ck00X+ke/QbMvm4TOFu5q97pQiYvHPLXd0pqTGzoP4mKMaB0asRQ7vyCUgjEEmQSULw8nw3QeGaSSyMZ3kqHIk/ODiCRXSnWVb/Lo6bi2Za9y1Y8uzyawoivObosWe0wQFUb+frxqT7PcNRNai8ZEe4aIIjvojphYNeqpWIYJK8xj5j+7hqtACH3FtEGQcLDWoetnTktxlfM4YzKcdguFXunXvErBxjf/bQUqpXgc8u5fs1Ikx5cBSRFwlCBjnbssOdWFrYfriyWxqOEi9QxkFY7D//+Gzon+glPu7bjiRB8PLc3rI7ELJPDOzGrTh
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e9d67365-11ed-4a95-90e1-08d7940a2969
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Jan 2020 07:12:46.3201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wzxEHbzaUNg5JlAz6hQT8xn1mT8xeSFpIRPqqY/vMsIIahw3PHyjcuySgtAJw5G2aS3ZBoiuO5A3ostqIBv0Tw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB5185
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_231249_615169_944BE36A 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0c:0:0:0:627 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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

V2:
 replace %pe with %d for err msg.

 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index aa9dcde0f069..bede168917ba 100644
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
+			dev_err(dev, "Couldn't determine irq count: %d\n",
+				nr_irq_parent);
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
