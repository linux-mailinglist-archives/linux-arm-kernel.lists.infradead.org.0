Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3A4141D44
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 19 Jan 2020 11:13:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=t4ssNhs9NA+ArYR/FxrNnZnw+89q8p7jMWZuWEEJn7E=; b=mlEDXXFyYPV7yx
	Q+dNf0LfwBw59AZ5Duxd/93aISnUgo0wO3SRgLF1rrj0eLtGRtMC2C+qETpBZyK+nGIWKgYsf3nZv
	1ZZOWCKUgRm3mh+0L5N4jNxaz+iWxajPmg5ppG2M6NBnei1551vsaWLJxL9UC8y6dcaJE/T+k7NO1
	KuK5PUoJxoW5kjVMAXTzDJjYpXRE+JziKMK0f6BWUa4arFP5m7ISLFMjeU7rBmkHmFE7j1R/DVNab
	2PUFLbSzbwSVogPokoEJuND//Ogz301KqAy+DQnpIoqs97IXtAnlCOmW0AsKqtCt2sSW+njhLpeXV
	0QegD2xTQeohnitok8Hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1it7Zj-0005lC-VT; Sun, 19 Jan 2020 10:13:00 +0000
Received: from mail-eopbgr40057.outbound.protection.outlook.com ([40.107.4.57]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1it7ZY-0005kb-VR
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 10:12:50 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RTCcj32Wwq0uKN8EUjlG8PDneNDrRBJkcqvGSBrMAy0cYL4yz3O/lbBRFYb8nSDpxhzh1gw1TQEmAsV/HUrZi4TKfMMz/QKngIYM/izQDNyWfOX3t+0FNmRwQJ17dMvhprn4W7SAajXUD0iXGa4Teq4b6UbYjiNnYfoLrglugoOrptvBw7KZMdNLG6qX1e16pR2FJ+WJBMDhespWLFKIh7dX5Iw+cKKEgYrYNpzbIpqoFHBXfpEIXRU0n0+50Z/1g0F2aMCFquTZUzxgsVQENdBGTqC44Q9vUkRdXb2d6U3es8emet8qsJ9uQzB4Q41fxJyEKCtA0BxbzfmkfF5taQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dW4wqVvrv4KE+Tk5Jysq0WdyDmZh/sj/OhSriDtJQLw=;
 b=SFQJxehZ7qGp6ZpfwImOshHu4y6wy33R2DsySP6q4vJBaaMYxC+iyh8wZUl6LTC32I3F1NKn6kKDXPtrEqyrYlW/UKgm9I+W78l7gYC8S75yt3x32OC1zivZwiJs3IoMfkgEOzx7xlel8Y/V56yB/c2k0oH5kk9jZtX8jaE0DOvqCZIk9oPv0CQdse+jSSLzndTcw8aZeZ7ytxlk1Aap6SF+zKkOBCeDmQ9S7XfAbvg8eXHzrnE+V56qgseUThK9bZJ7/1Oyr4aKej6/zMMzS3ozz77sAh/YVHs235yujq4ndTl1R+Yz0R9ngzYuUW9bpNjLRveK9l2hmSURVUQ5aw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dW4wqVvrv4KE+Tk5Jysq0WdyDmZh/sj/OhSriDtJQLw=;
 b=Vou3mHCa/skQ5X1jPgDyQvrbCIyNbTv2WuAz1eHPEE3IiWc0NVJ46Ev62lW7VaxAXAwgDD5e3Uq4DsjrRf+5aoh87MTM9TKkmpsjw9V67HT1TYLSBiVZvfagqV8SgfbXlsPdVvy/gqp/BL6T1AfEROQrdT4/AeenV9d7UkWoXxI=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0SPR01MB0058.eurprd04.prod.outlook.com (20.179.37.83) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.22; Sun, 19 Jan 2020 10:12:46 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2644.024; Sun, 19 Jan 2020
 10:12:46 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK0PR03CA0104.apcprd03.prod.outlook.com (2603:1096:203:b0::20) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id
 15.20.2644.20 via Frontend Transport; Sun, 19 Jan 2020 10:12:41 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "sboyd@kernel.org" <sboyd@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, Abel Vesa <abel.vesa@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>
Subject: [PATCH] clk: imx: imx8mp: add ocotp root clk
Thread-Topic: [PATCH] clk: imx: imx8mp: add ocotp root clk
Thread-Index: AQHVzrD+KCxt16k/UUaPoEt5ULSIVQ==
Date: Sun, 19 Jan 2020 10:12:46 +0000
Message-ID: <1579428498-10068-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK0PR03CA0104.apcprd03.prod.outlook.com
 (2603:1096:203:b0::20) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cdaf15f2-6689-402c-0dd7-08d79cc8212f
x-ms-traffictypediagnostic: AM0SPR01MB0058:|AM0SPR01MB0058:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0SPR01MB0058475C3FFD38E11A1E754988330@AM0SPR01MB0058.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:546;
x-forefront-prvs: 0287BBA78D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(346002)(396003)(376002)(39860400002)(136003)(189003)(199004)(66556008)(66476007)(66446008)(64756008)(2906002)(16526019)(186003)(6512007)(36756003)(478600001)(44832011)(26005)(66946007)(6486002)(4326008)(956004)(2616005)(8936002)(6636002)(81166006)(81156014)(6506007)(52116002)(86362001)(5660300002)(316002)(8676002)(110136005)(54906003)(71200400001)(69590400006)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0SPR01MB0058;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: dOJ7reTn/7x5QHW5gqu6jc71Gpgb24s8wMQyEGtMLSpob1tHtymzD9UVQstSvdINsfeGVc/z5eAJNQC88Z/qMJWkWRgqb/a/PwSVmMCv/T/5Sdxanhje3TfdxhAsMvOmsXtYZk6BRsn5o5aQh2XpnDY8N5AHRPPKT6DkCyEtI7q90nioGZfmAn1H/IPM2OPhDSk1linXky8UVb08xyhWvvW3xjUD4zRcwEJZ8tCyKbBtE6IFmsXMeUmR6f+sf4SiD+Q1pqgMt5YYAsLLhDi27z298pWRDlj4xnCrZLHX+/7tChM8KsiYILg+fCAOBGAr96+fqxmM5XVhozqjEc84BnMOQMJqy05PP4+VtsRGHeG3S7W9icsyRbCfPG1kI4lJnjPtSK6KNKSEatBH4TX8JrHROf4A/TFL5biMvBT/6qvw1sky7iE8Mja2DSDT5AGZkiqMW44NE9uVtirEkomMdFZWW4j99OJGRljlWQQT5KsGXsC4eVeBqLNJ+i+ENNF/m7JrlYuosKBmprDNtoBk/g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cdaf15f2-6689-402c-0dd7-08d79cc8212f
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2020 10:12:46.4476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: zwfEUGR6/VpzQaxAUA1gZSRz7kx9sCRUANh35HUgMwQr3GebJ8OXwMcwWj1MnXGnlOu7LBHQ6vxbCbZqcMi25Q==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0SPR01MB0058
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200119_021249_016458_BF4F5835 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.57 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Jacky Bai <ping.bai@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "l.stach@pengutronix.de" <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Add ocotp root clk, then when using nvmem to read fuse, clk
could be managed.

Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 drivers/clk/imx/clk-imx8mp.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/imx/clk-imx8mp.c b/drivers/clk/imx/clk-imx8mp.c
index f6c120cca0d4..ee83aa2162d9 100644
--- a/drivers/clk/imx/clk-imx8mp.c
+++ b/drivers/clk/imx/clk-imx8mp.c
@@ -671,6 +671,7 @@ static int imx8mp_clocks_probe(struct platform_device *pdev)
 	hws[IMX8MP_CLK_I2C2_ROOT] = imx_clk_hw_gate4("i2c2_root_clk", "i2c2", ccm_base + 0x4180, 0);
 	hws[IMX8MP_CLK_I2C3_ROOT] = imx_clk_hw_gate4("i2c3_root_clk", "i2c3", ccm_base + 0x4190, 0);
 	hws[IMX8MP_CLK_I2C4_ROOT] = imx_clk_hw_gate4("i2c4_root_clk", "i2c4", ccm_base + 0x41a0, 0);
+	hws[IMX8MP_CLK_OCOTP_ROOT] = imx_clk_hw_gate4("ocotp_root_clk", "ipg_root", ccm_base + 0x4220, 0);
 	hws[IMX8MP_CLK_PCIE_ROOT] = imx_clk_hw_gate4("pcie_root_clk", "pcie_aux", ccm_base + 0x4250, 0);
 	hws[IMX8MP_CLK_PWM1_ROOT] = imx_clk_hw_gate4("pwm1_root_clk", "pwm1", ccm_base + 0x4280, 0);
 	hws[IMX8MP_CLK_PWM2_ROOT] = imx_clk_hw_gate4("pwm2_root_clk", "pwm2", ccm_base + 0x4290, 0);
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
