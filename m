Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9220284774
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gx2CKieEY6eYYha50T+QVN7OabpkkIFF0RqfuzRbHzQ=; b=hltjEX2M0rVWV+
	3V9ZWinN0cuaXWMl/Yr7y5qN5vnMeHv8CUKgyqQ3+Nky/u7sgyPJ8ZhgLr92LNgqgRVxioJZCRhuy
	9Wst/JaokLN4mLX3Vo5h3FHFHUYMRFO/8bUJzlGs0tlCe2a6Wmz3vW4YFih/PA9Pq7pozvQNknIpt
	0L3mF5JBcXCM0ARaFyD6xnaMMDWUzqxHB7b+yhdoD89RCS5bkcd6kLpLpQ5M4OYcPcX5pnN/dd/YV
	5sQfdEB9lYRT9aVHZ449LRvYk8yi+IM1vXpUHBTx2FdjmPkyu0lLEIi6XHqwnkMyBylaOJY7ZUPjc
	3D5mWse5hVcnN0ncbN/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHOF-0000P4-P0; Wed, 07 Aug 2019 08:33:47 +0000
Received: from mail-eopbgr00129.outbound.protection.outlook.com
 ([40.107.0.129] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHHR-0002zW-3v
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 08:26:46 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GNIlHmsXiakh5o3pG+fUzYoZRB6lIeLg6AqDPQrwaVrD5iKXYweOswfi9nb1IaitbJX96KNbkjDDTUxreRoCRzbTsgDmZ+HG3yIH52Pn/aEWNdwJDVpXKKxzi8snnbr+JqbprWN2CjgnJ8N+38tIgsHDTF1yFcnCDqEUWyum8IJh09X77vqDxVBY9GXE/AKm4jezfth3WW4wiqJbQYuQnUyXj6Vtps2Qt7qDX1xRRf1eQ2MGx01aA/GMxPYhMTuBYgWOVQZkjV9HD1veEaW9nmhp4bbCF84cZO1+g7ePn5MxMLUW2TUwF8FDiB5lUlQS/XGMP4iJakoQ1hnAbpoaYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wb37TPY43ONmiWA1cnZoreqUjLGoT8tdv5O+I0YIJes=;
 b=eQaotfXYcg41Yh2Xg4YbyAyEyvcr7saprVl8DA/A3gDAzUM++8ehHQXkQv5Yz3TMVx/AI19IdoYR8fVwrcRTp3XeX/BrXBIRvR6KkRB5M0/cnEIDH4uvKllCOxDKXEdLDpWRHkiaGag6WdYrlrnwQGRwGSe+x0b/GhLU9l6QYkf8o/au++UBY5BlPhTJ8iwylpNcMje5rZzgKNejE1BSa9it/aZDrJ7i9Cix0ATuACyblxwLLHPwL+9pgBHKHFjCrFiojzSfE1ddCvWy9sQ2KPUUTghwUBjmBBT3Rzhfwk443WSB9Mk1oL14Mum8KYTmuOA/bxaYgZqc/tEs3BCzzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wb37TPY43ONmiWA1cnZoreqUjLGoT8tdv5O+I0YIJes=;
 b=jhS7+n42HTK1sSXK7j5gYOjjrZwSbphxrNC5fO3OWltVRrq0p4YtVYBTvg7aewCOmNlWg+acFELicsOxKwPOJRAR8lKdu8YEM+wcaEJWg3MVsf2b6fwGsQLl0XkYkyJySFEAoovJyAxljuHiOmsdjILuN3tlVgk0k0CenWGZEaQ=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB2928.eurprd05.prod.outlook.com (10.175.25.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.15; Wed, 7 Aug 2019 08:26:42 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::8405:5b51:b25d:39a2%6]) with mapi id 15.20.2157.015; Wed, 7 Aug 2019
 08:26:42 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: Marcel Ziswiler <marcel.ziswiler@toradex.com>, Max Krummenacher
 <max.krummenacher@toradex.com>, "stefan@agner.ch" <stefan@agner.ch>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, =?iso-8859-2?Q?Michal_Vok=E1=E8?=
 <michal.vokac@ysoft.com>, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v3 18/21] ARM: dts: imx6ull-colibri: Add general wakeup key
 used on Colibri
Thread-Topic: [PATCH v3 18/21] ARM: dts: imx6ull-colibri: Add general wakeup
 key used on Colibri
Thread-Index: AQHVTPnXHLWlu04kPkWBd19IVBhRuw==
Date: Wed, 7 Aug 2019 08:26:42 +0000
Message-ID: <20190807082556.5013-19-philippe.schenker@toradex.com>
References: <20190807082556.5013-1-philippe.schenker@toradex.com>
In-Reply-To: <20190807082556.5013-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM4PR0101CA0044.eurprd01.prod.exchangelabs.com
 (2603:10a6:200:41::12) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.22.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 267702ad-f333-446c-73e7-08d71b10f9d0
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB2928; 
x-ms-traffictypediagnostic: VI1PR0502MB2928:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB292848B0702C1CCBB4CA5BC1F4D40@VI1PR0502MB2928.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 01221E3973
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39850400004)(366004)(396003)(346002)(136003)(376002)(199004)(189003)(64756008)(66556008)(66476007)(66946007)(36756003)(11346002)(476003)(6436002)(76176011)(2906002)(316002)(305945005)(2616005)(66446008)(1076003)(54906003)(110136005)(68736007)(486006)(14454004)(5660300002)(446003)(256004)(4744005)(86362001)(44832011)(50226002)(4326008)(66066001)(53936002)(6486002)(186003)(8676002)(26005)(71200400001)(99286004)(6512007)(2501003)(2201001)(71190400001)(102836004)(386003)(8936002)(6506007)(478600001)(7736002)(7416002)(52116002)(3846002)(81156014)(81166006)(6116002)(25786009)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB2928;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 0OHxEVqBO4f3T/QJUJAp/uTThlRtyZixrlgRd+HdkS7xJX8JOsvIoIvempQvAmbSl3N6z5fhot9VsB1ssSM8I1U/HwoGc5MqUlQrEbhmTyXD4ZQI2L5jKhm5lx32JEXz5Mcf6V+Hn82RrR3IaDGXwnW7th38P2pmsAgT9db4sFGTZHnYTfpZC/EippMmj4T20E/UKBVsjbRS0qW4uwu/wYGDgDx17igUG4swyzHwfJ4U5RVT+ccd2cqbSBjt3QsfzSn0oeQcIE5o4eUQHb6ES5fpGZHcANH1/m/fYy+oCjAF/YBEcLrhVdVYWfzV84Qk2VeYIYYBbCmzg/vwtAW5lI+hpZdCmeLl2H5Pxb+4AD4DpIV813SttTxhFK6KdPSlfJXtqgfq6dM8IkYpir0Gghzd5HY2j57oruOMUOFXmGA=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 267702ad-f333-446c-73e7-08d71b10f9d0
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Aug 2019 08:26:42.3557 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T6LqHIZEKNlZxvdmEqLRysxd4HDCVAXs2L74DB3444bMPIz3WcFUJ8MbjvgvRw19V5/DThntsXo94DL2LZje1ck/fxx3Zq7cZgiy00YyFeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB2928
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_012645_319898_915D94F3 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds the possibility to wake the module with an external signal
as defined in the Colibri standard

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

Changes in v3: None
Changes in v2: None

 arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
index 3bee37c75aa6..d3c4809f140e 100644
--- a/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri-eval-v3.dtsi
@@ -8,6 +8,20 @@
 		stdout-path = "serial0:115200n8";
 	};
 
+	gpio-keys {
+		compatible = "gpio-keys";
+		pinctrl-names = "default";
+		pinctrl-0 = <&pinctrl_snvs_gpiokeys>;
+
+		power {
+			label = "Wake-Up";
+			gpios = <&gpio5 1 GPIO_ACTIVE_HIGH>;
+			linux,code = <KEY_WAKEUP>;
+			debounce-interval = <10>;
+			wakeup-source;
+		};
+	};
+
 	/* fixed crystal dedicated to mcp2515 */
 	clk16m: clk16m {
 		compatible = "fixed-clock";
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
