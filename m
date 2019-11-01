Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1987EBF44
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 09:37:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a563sGw0ViFBwB/cckuzfJgqt75nzV/+xDf3D7t4zGI=; b=etam1actB/UZyO
	ssMFs/DeJQY/CYG5WndH0KyeuQfaH7Wj+BEmUT3uKxmCjcADwS4Wb0ykP2ma9QzwgEjbHz8qEfXjb
	q28/TpsrBD/DrdjFYVtnrVzFji9qBy7NV2UKRUxqfB1JnYWxMaREs82DLZakHCyfw6Ksurk9CJXNs
	WWgwMxrxjvTKIMOsmJk0MrCCgrAQxjDvJCcK2tXeUMVAFercbRx3+kZgcn3WxqpTmQ1rvZaV/kkXN
	ZXtu7LkTWFViuQ1wuQU+O8W/VHY7WWGmxSVw+eZh27+AyfyFYsIBW4ew6aj8H5mVnK8s/uAf+7HAP
	6FjYJxpBrLN5fUKVk9Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQSQY-0005ov-7Z; Fri, 01 Nov 2019 08:37:02 +0000
Received: from mail-eopbgr150051.outbound.protection.outlook.com
 ([40.107.15.51] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQSPu-0005BG-Rx
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 08:36:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GX/iRnvvzvdxzt24V9XjSJjiVQlNGv9smdmCs0CGJnQFPmZldxS4ZWWs637DbqYKmtg8GbtWp2y493iaXQwUhsfjxegs5COpViRJYf4WVxaQLqcxQbPQxIpctrOEcno0998FplajmVhRq6ihUnieW6xgJUvZ1Qj2vDvVVZULken3dkgmdPFq6lOE6ug4Rp/omhcVI/d1qLoY63bJd+v5pumZdOs3jmLSdSC6J0WZCAAfhsyj0G2X8dPnXUXqyQyL+02onf9Kdi7uv/7DWm+kgLcHKz0ezzqv+JvEpyImsNv7TeFDDwnNUfak+bfplsBeloBIkDQiQqWmef6tIvl0vQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vAyeJN92LNQcn29C6mRPqr3YXPFZ5VzJXqMKDAfDTP8=;
 b=nBZOu6T70yQuFVNZUOi3wHCRkdh6KqcOJh0cw21oKFD5u+Fyq0gJr6EJ+i3XAlXN2y20oBeVy3EOxiB4V6ZVi2MmccISnrbLAo1zooMgNR2xcVQyAwSOKJUEUbQlByoXl02O/jqGrWAKb+3WXowONAyoWCWjhxRKiwAB4NU8+++sKFNmwpXExWIO6NXez0LoSV86SF/VDxZW0wMWoLP1eamg8vhTMYHtoVL/4jtHiEdc1yqVzmzrLvJEzqZ7Sd9orIibQB932rxuz4iGcPMIqMWoJaP+UQJTVmmgpT5yHLsRiFxEaZ5PdgnpIgU/TkTjMKzq2W4y/J8W3fsoIf+xEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vAyeJN92LNQcn29C6mRPqr3YXPFZ5VzJXqMKDAfDTP8=;
 b=Od7VwqHSwPddkwmu+rsJWlmlWbnk9hNce09UkqzG8knSNsgKCzt+2PPHqyCpkgbfmwOkeajmaQV6ZM+AI4tVy5niEJ6z3cvYGKfCG3mYlkuuWKWn1u5TkL36kwUxqB9M1LoMrJkEpn92I2kgxugzKDwiSwvylFhUtu721xL0wyE=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB5948.eurprd04.prod.outlook.com (20.178.106.213) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2387.24; Fri, 1 Nov 2019 08:36:20 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::79f1:61a7:4076:8679%3]) with mapi id 15.20.2367.031; Fri, 1 Nov 2019
 08:36:20 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: "will@kernel.org" <will@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robin.murphy@arm.com" <robin.murphy@arm.com>
Subject: [PATCH V3 4/4] perf/imx_ddr: Add driver for DDR PMU in i.MX8MPlus
Thread-Topic: [PATCH V3 4/4] perf/imx_ddr: Add driver for DDR PMU in i.MX8MPlus
Thread-Index: AQHVkI9vv4SK7CRzBUGqIx/n4cRLXQ==
Date: Fri, 1 Nov 2019 08:36:20 +0000
Message-ID: <20191101083317.29510-4-qiangqing.zhang@nxp.com>
References: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20191101083317.29510-1-qiangqing.zhang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0156.apcprd04.prod.outlook.com (2603:1096:4::18)
 To DB7PR04MB4618.eurprd04.prod.outlook.com (2603:10a6:5:38::23)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 2a9d8d78-8c04-405d-8195-08d75ea691e1
x-ms-traffictypediagnostic: DB7PR04MB5948:|DB7PR04MB5948:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB5948ED516058FF35D3893AEDE6620@DB7PR04MB5948.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1091;
x-forefront-prvs: 020877E0CB
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(396003)(39860400002)(346002)(189003)(199004)(54534003)(478600001)(2201001)(66946007)(26005)(11346002)(4326008)(3846002)(25786009)(186003)(5660300002)(486006)(2616005)(476003)(7736002)(4744005)(54906003)(110136005)(86362001)(2906002)(256004)(6512007)(71190400001)(2501003)(8676002)(66446008)(52116002)(81166006)(66556008)(8936002)(316002)(446003)(36756003)(6436002)(305945005)(50226002)(66476007)(64756008)(6486002)(14454004)(1076003)(76176011)(102836004)(99286004)(386003)(66066001)(71200400001)(6506007)(6116002)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB5948;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VVvJbTB+S4CSmlHf/26fB4S3R1HDFgJVoTpRrh09iX8602NfYuL4HlhkSB8hZkw8QjIQT4hqVK5dHPXMxkQfuav2P1uABXTorgMec1YGJwNQXf2nhi0sWsHiUClNYUe6jBc0dzfX9NmXwbXgtQLN080a+qxQ6yLluWjnvupuQBhRXY9pJoUy4NtJfQCpNemuUThw7XuJEzwbV2EBNIEV8cIYwhGFneN79jJgNmF+uD/hlT17NtcT74enHQkA/yQDlFoJI2Q1lrIM8/D5IIzLS6tzsQKFO9qiQL/8rg+gtmrIdlaqWMOSyXUrCuhtrW3oRCd3fg0gnty6sjl8VFeOhs/Apq+6Sbp97cNgj7Vvbycg5XGZcSxZulWTkl5upaACnXA2CeV8p04sBE9PnpPzjQIfpbvF/LNjGAxO6hVezvF7ewaV9FMVy/9SRBVdkujp
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a9d8d78-8c04-405d-8195-08d75ea691e1
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2019 08:36:20.5389 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EwVeR1mP/v6jlx875Mk9aU4Fvhhg9ntK34wYx0CcRvbQnv/7ymkHEdROFyakLy02xDsfDiesSF3qX23qfvxHNw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB5948
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_013622_914160_31822FB3 
X-CRM114-Status: UNSURE (   9.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.15.51 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Frank Li <frank.li@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Joakim Zhang <qiangqing.zhang@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add driver for DDR PMU in i.MX8MPlus.

Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>
---
ChangeLog:
V1->V2:
	* new add in V2.
V2->V3:
	* change quirk select for imx8mp.
---
 drivers/perf/fsl_imx8_ddr_perf.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/perf/fsl_imx8_ddr_perf.c b/drivers/perf/fsl_imx8_ddr_perf.c
index 2a3966d059e7..3bbf806209a6 100644
--- a/drivers/perf/fsl_imx8_ddr_perf.c
+++ b/drivers/perf/fsl_imx8_ddr_perf.c
@@ -58,9 +58,14 @@ static const struct fsl_ddr_devtype_data imx8m_devtype_data = {
 	.quirks = DDR_CAP_AXI_ID_FILTER,
 };
 
+static const struct fsl_ddr_devtype_data imx8mp_devtype_data = {
+	.quirks = DDR_CAP_AXI_ID_FILTER_ENHANCED,
+};
+
 static const struct of_device_id imx_ddr_pmu_dt_ids[] = {
 	{ .compatible = "fsl,imx8-ddr-pmu", .data = &imx8_devtype_data},
 	{ .compatible = "fsl,imx8m-ddr-pmu", .data = &imx8m_devtype_data},
+	{ .compatible = "fsl,imx8mp-ddr-pmu", .data = &imx8mp_devtype_data},
 	{ /* sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, imx_ddr_pmu_dt_ids);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
