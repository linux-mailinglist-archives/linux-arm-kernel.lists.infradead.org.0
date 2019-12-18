Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D42E124667
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:03:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cuEGF2bR45AgF9EIjFZS5sLzXM6iKtyGz6HpxzTMEqQ=; b=nzlTGZqloUajqm
	iAWJ2q0nNwn+WbxoBL5FFDeosoCrQ+/wSKY9h83BA8Srge4x56lCJjiT65axRA7OQLvoyvlT43SwV
	+Y19tz2WT8pLtZIbbuOHb2TL4g5uqLHUgeWktN60FIhtDOb8TB3RPYwwZD8+SphrHygYwrhPfQHCy
	L6eaSjRfDf77asKe+0+lH7NmUYQrs7SjTqt6OGYhiKjAw27hpRFtH+ZglfEAK08qchiHuD8/+bIg5
	w8sabx6ayw8k+nh2oDn1Lo6rwYxsxTUWvsCNd5FAwuxoEV0wjKM9G8s/2qI5fVadKSpJed4x0+oSQ
	9m1Bee3glqjJsvEXsOgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihY3J-00005B-Q9; Wed, 18 Dec 2019 12:03:41 +0000
Received: from mail-eopbgr130072.outbound.protection.outlook.com
 ([40.107.13.72] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihY3A-0008WF-JC
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:03:33 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IneQ+aeGNYyx/SDRxdf6NVUrj4afFCGBOlhu8AN1HXSWq3zx+MsE8aIocieN/7WvQBRk5pMoq72ooNK79xNad5x8l7/pRLY0SthM1A4IjL+hNOn57gbXN0ydJapW7+QpyyTBjIvkE3S6SBAAI9+srdKI9Frw3BMLgrdf5p1KhYBFM11Tl5qv6cdPDYA7cR/KSD2KG6msV966qOpJpwjoiTi15C2G/lCGCMjIX+mV5515cKvSVuiKXIyLfe8RJGUDFTbjQZdwW8EaQC2oRUC/RvlftoOYM9V2UNTOdOz07n3jcxM2bG5nb2dqkexgJYXVcS0Fe9HLdMu200NMWSst9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PPejmARIY3bXlVxJaiO/1bWA33kWUWy9eLsu/vlv0oE=;
 b=FED9F13C9ksRMtjinOAFBTNrtvRHSahglhozvC8COlaASx70dwSoIs8p49rZ9dYsYjZrzCpdTl4Pe65jQ4ang/4oJv4Chvhxnx6E+rIUZNRUzVTE1ZwfqCx4kT+P3tiPwWVoEQDfUoiCVxGoXltupcE7jP3afO5DGp+pKQ+ZOwINGQroH+dItojyw3keJD3/s4tFRIRLuEb9iFMWCX+WHqV58yV42YVT2SJ7wlpSGOkvq8gwwgMFa5YPpvNv+dNjn4i0gzddCKqv73U7K+ilUN3NXen9FAoYmZ1dEgVDZ6rXw7biTa1vfR/PGtKIxCkRZ3WN6MKDYE/DvQ412mQI4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PPejmARIY3bXlVxJaiO/1bWA33kWUWy9eLsu/vlv0oE=;
 b=Pz6zak2kAX5hJUxCcKj0adTn2o4Gl4utw5Oe31Dks9PlZ5CpqINBqgvXYzbE0TsNDbXNubddB5+aurPOBvPQGOWYe/mW5tAqb05HM43YmnKAkVWETluV5NBwboxdVT7pqKBIQbGyQyfYMX7q0DBYIwkKS9Epgem0RhnpbotJhJw=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB6148.eurprd04.prod.outlook.com (20.179.33.208) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.15; Wed, 18 Dec 2019 12:03:25 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 12:03:25 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>
Subject: [PATCH] arm: dts: imx7ulp: fix reg of cpu node
Thread-Topic: [PATCH] arm: dts: imx7ulp: fix reg of cpu node
Thread-Index: AQHVtZsmfGvwTi+ciE+LrR2fcO2bIg==
Date: Wed, 18 Dec 2019 12:03:25 +0000
Message-ID: <1576670430-14226-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR03CA0055.apcprd03.prod.outlook.com
 (2603:1096:202:17::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: d7d7c33a-99b6-48a9-d40c-08d783b2492c
x-ms-traffictypediagnostic: AM0PR04MB6148:|AM0PR04MB6148:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB6148675D241CAD0A655EA44988530@AM0PR04MB6148.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(39860400002)(136003)(396003)(346002)(376002)(366004)(199004)(189003)(6512007)(4744005)(316002)(71200400001)(6486002)(26005)(110136005)(5660300002)(2906002)(54906003)(6506007)(81166006)(186003)(4326008)(64756008)(66946007)(86362001)(66476007)(66556008)(44832011)(36756003)(8676002)(81156014)(52116002)(478600001)(2616005)(8936002)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB6148;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:3; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: hWZhBeIhaQ3eTmXljcb2R6SX6G7kxxWQqegYs6SBg/SGKv+Ec5CYxEHzGPqSgSnjBMcB4dGVdTDlE+2poQHIhkiAJNkUsUNI3Ox42am5Up9Rla4symPL1Pj03Su5stsMUVR0DOcMH0BpYyIg4pqtyzyJfTIez32/JttXEPfpcrjA8ap9oaixD5gc477sncPcnHQCFe7HzXjPY9bDOYLDE0TFJKYehIdc0v8RP0i4Q3dbQ3927TtbGMF4XnR570tBezE09ByInIVgagQsmUO4CVeMi0o7x2qHwAsBQ8rRbGwCPdSIAmIdm+wj8yI/sajqmMZbv+FvZHEiFZJ0ftc0mtVcbDzXnUZibmRCv5bfHOBNP4JHAdJDUxAf0x9Y+pdwbg9Kyit47bMnyro4iDPIOv2SLZITRUv83vjywJGofkHpFQ5kTWnjI6pM0+drdO+k
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d7d7c33a-99b6-48a9-d40c-08d783b2492c
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 12:03:25.4794 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sLqCyxjb/6KwjXB4hCQmJEfgm4K0VuPP1bGSH81UhaZGUl+M7Lcfvt9umsrSqoiF/+sUzm2EMXUdu09NsSZYKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB6148
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_040332_634823_4C0B0AF7 
X-CRM114-Status: GOOD (  10.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.72 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peng Fan <peng.fan@nxp.com>, Alice Guo <alice.guo@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Peng Fan <peng.fan@nxp.com>

According to arm cpus binding doc,
"
      On 32-bit ARM v7 or later systems this property is
        required and matches the CPU MPIDR[23:0] register
        bits.

        Bits [23:0] in the reg cell must be set to
        bits [23:0] in MPIDR.

        All other bits in the reg cell must be set to 0.
"

In i.MX7ULP, the MPIDR[23:0] is 0xf00, not 0, so fix it.
Otherwise there will be warning:
"DT missing boot CPU MPIDR[23:0], fall back to default cpu_logical_map"

Fixes: 20434dc92c05 ("ARM: dts: imx: add common imx7ulp dtsi support")
Signed-off-by: Peng Fan <peng.fan@nxp.com>
---
 arch/arm/boot/dts/imx7ulp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index d37a1927c88e..aa9e50178d6b 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -40,7 +40,7 @@
 		cpu0: cpu@0 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
-			reg = <0>;
+			reg = <0xf00>;
 		};
 	};
 
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
