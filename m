Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5173714A116
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 10:46:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wy8oPR3jatTxrgQwLdgjxTv3CFWv1QCqQIMHGD3Sf/I=; b=WZxtqvyTEr0dQR
	l2bi4/49dQhuzoL0WcZxNeEU9rZpmDCrDkpgF2r92zmTwj0hu6GKtQG3tnHc0ykX1nnWtnazLwSaW
	40Z8ztIlTlzQVH0Y8MzI269rHVahWANRRDPK7B9sAQdYFsUzZbt3MTuNOGxljSlhSNw6CYkBWNlJM
	Zo3D7eMNSS8P8WnINCWjtQs23uVXuir+6e1172Q6D7HNUMWl43TIqX7zDu2wAt8R7A6XVZUXC5cf6
	h7nWL8pJhWtT49Mufrxs4bRUUjEPD8vDsX9TzXmxf2/YCalGfMi+9r0dlJjEiSpj9s71mdDRdr0Kq
	hDLjEwPdgUwPb/X6UCcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw0y1-0000RJ-Eg; Mon, 27 Jan 2020 09:46:01 +0000
Received: from mail-eopbgr70085.outbound.protection.outlook.com ([40.107.7.85]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw0wy-00073r-63
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 09:45:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iTphzVULhX7CsWLuxRfC1sZmdxZWSrWp/BdfyRUcJpC2wVANksG6CbrU7grfcuUynEgRLIZb83ov5A2R5Sg5kEbBVfU0l7DbWeBuVxd/4za94GzMA5j7QZCkdz0BdG+RYq7ydnhBKJsyfaJJJ0k5S+XaFDp8/IMU/arILArhHg1wDhPN6E9PEYrBaKxn/qCsylNubKWGn37NfrPZXW7RFYLt8TP893l4JuZtZyO/DE59d6qugOh9g2TZBd9saou+esa/wZaUkUqJJLW987cAXbB39b/ff1Qjv2AjPBv3zp8ZznH/3aEjLeGgnjR2xmVkTamm/oUNx6xM7gjn6w+QMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FGkBReNHid2tbFpJ/KMkqQsGvktMf6lNDp4/59YfdGk=;
 b=etyURQYjwFPJQ8tmWccOpO7eIsR4m9Uo/CIRaPoDJubp8iRItSwIlt6NWaLZsRdvP9cVuUj9BeMUiDQeJb9DEr9wv9Mo7Ayn5fNpUa4oGfcKFuuYV/V4Q8m8ieHBsoNxFsXLavMWoBhOKTV4xqZkp4gaJEGwJKE4CM9oQpe3L8CkguQm57Pl+MxlrxATuQ7dtVFrr6y1CfRbLNbz7YwHKKojsYl1VM2aNpDUcouvqfWt3vuPKZewHulcAo2c90+7aFzfyMyEkkiPqyBejDhD6/job1gYhBZ9Cy9tWajoT14opZQFdrJYhEu2WcFSs+9jTm3qgahnz0i5jHjzYdqXCw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FGkBReNHid2tbFpJ/KMkqQsGvktMf6lNDp4/59YfdGk=;
 b=RvYoNunvaJxAzZUeGWO/AhIzCJ5tTrw4WPh7kDXd40t6kkr5qXAm6DChaXoe1L+SyvrJj7rd6Sqy2/yeERjE2VmsKerlrhlbDiouS5r4bfBVgdvnnka2vSt30uiwrg5epXqZ1dmf0qAs/aNR7tV+Q+Tj067Wy6nZWF6MjsZuluY=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6436.eurprd04.prod.outlook.com (20.179.252.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2665.24; Mon, 27 Jan 2020 09:44:52 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::91e2:17:b3f4:d422%3]) with mapi id 15.20.2665.017; Mon, 27 Jan 2020
 09:44:52 +0000
Received: from localhost.localdomain (119.31.174.66) by
 HK2PR0401CA0005.apcprd04.prod.outlook.com (2603:1096:202:2::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.20.2665.24 via Frontend
 Transport; Mon, 27 Jan 2020 09:44:48 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "arnd@arndb.de"
 <arnd@arndb.de>
Subject: [PATCH V2 3/5] arm64: defconfig: Enable CONFIG_SOC_IMX8M by default
Thread-Topic: [PATCH V2 3/5] arm64: defconfig: Enable CONFIG_SOC_IMX8M by
 default
Thread-Index: AQHV1PZsY6qPi/hgBEO4sMIC3lyBfw==
Date: Mon, 27 Jan 2020 09:44:52 +0000
Message-ID: <1580117979-4629-4-git-send-email-peng.fan@nxp.com>
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
In-Reply-To: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0401CA0005.apcprd04.prod.outlook.com
 (2603:1096:202:2::15) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ee01c4ac-18e4-4c6b-3919-08d7a30d8ee6
x-ms-traffictypediagnostic: AM0PR04MB6436:|AM0PR04MB6436:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB64366B760992DA9E9F29C6C1880B0@AM0PR04MB6436.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:262;
x-forefront-prvs: 02951C14DC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(396003)(346002)(376002)(189003)(199004)(81166006)(81156014)(8676002)(6666004)(71200400001)(8936002)(2906002)(6512007)(4326008)(44832011)(7416002)(69590400006)(86362001)(36756003)(110136005)(54906003)(316002)(52116002)(4744005)(66446008)(5660300002)(478600001)(6506007)(64756008)(66476007)(66946007)(6486002)(2616005)(956004)(186003)(16526019)(26005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6436;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ciehdpc1wF9bX1o5PXrD+xDV6oN8vm23pRB3NJjlLoRbn7k1S8dFW3h67SIm9gl5ibRJbwoZXnTebCwBzJmZH8vR6Md3a3CnsQz4zpe2bQDCa5sZCEgYNPnSox0dPAEo5/xR7rMMQ7GAUy1qJvO3b5W/wvspSp3Q09zFvsMs1mCCvxKvnffBWzZE94MnMIQIH7Xuvozg4eVLM12NhjN8hrfp0i+8SAL1qXf+eG8FflIvjObVv40E/fvO+RgMvuf5R6JBLhL+Eu1QHhbppKE34jj2aN4z1mLfRQ55Honb1RNrh9l6AYVz7VHfYsrrAuuiBv64C5AIFWR3stQ9gZQ5C6iVcjvgrkqM0JUm4DMrmpdnc6hhFKQgfAkbPxGrZj4XkBlpn2Ie7nwbXfEzL1EUVLdAWZNvhmh/Wn/SsUCWZKDd0+mLuFCPVfyAMDBrQu6toqkNqc8AUQ31qurHNljaG0sAOsfVxP6uMqi98JBO6lg5xaQybb53AY3JxgO6W78R
x-ms-exchange-antispam-messagedata: PHTOigGO3SW8ajy/pcqXEmw9feyfoB/dIWSEYX/E5JgmOFZmhE6+gt+12XrRZQDIEIumU0I5wuCyAgvMd4hIO8qWlCzRdpbi9kJCyabthsYSmLZZPo18Hh0fBMecOVeIg5sUIv6Y/6bgRSiVRwhiOA==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ee01c4ac-18e4-4c6b-3919-08d7a30d8ee6
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2020 09:44:52.7487 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 53zjiyRco0vXBrdUroUczo2iB7CGHcUlRCnWBGoDWPp4VOQhsGlCUXGeYUa+lk+PntAG7Tahnc6JWfAAwhYycw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6436
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_014456_768385_1D3B2EB9 
X-CRM114-Status: UNSURE (   9.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Abel Vesa <abel.vesa@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

Enable CONFIG_SOC_IMX8M by default to build i.MX8M SoC drivers

Reviewed-by: Leonard Crestez <leonard.crestez@nxp.com>
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index d0ea0d0d3b16..20087f1aba56 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -729,6 +729,7 @@ CONFIG_RPMSG_QCOM_GLINK_SMEM=m
 CONFIG_RPMSG_QCOM_SMD=y
 CONFIG_RASPBERRYPI_POWER=y
 CONFIG_IMX_SCU_SOC=y
+CONFIG_SOC_IMX8M=y
 CONFIG_QCOM_GENI_SE=y
 CONFIG_QCOM_GLINK_SSR=m
 CONFIG_QCOM_RPMH=y
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
