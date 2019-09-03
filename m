Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8542A637F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 10:04:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLSHescPscrGlTj5CsWxXdFVU7YFIpkqE1AwLVNYtBE=; b=uRqvpqC2lUIIiy
	bSDNML56v00UPmCuTlMrqS77wuLVqNPgtSJnO+TghKuHg4BSgG0E69wPRqSLKM++WgOLPK45ZZvSz
	pyyIhjxTOUSHZ0WzYOJz1RaNw0fLfvoauJ2q4j9X7C2l4iKajg2jzIp2LcvyQC31tbpRCsEZ5ccqp
	D0NDNMF03RtLY/MQvuPKh2XtFaDa3Zmfyt7rUG+XpowQsyNJBcH4qfoJhg9A9XYH0RF96iGcX8o6q
	DbsFxf+SKpHqpjb8lE9TiTKgX1csHsoJ8RdDEwHIdv+DusLg2bgWmL3dDiQuF4mLCucTlYug/I/at
	JziO+FVYGCM8mexG5OVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53nw-0004jx-QU; Tue, 03 Sep 2019 08:04:44 +0000
Received: from mail-eopbgr80135.outbound.protection.outlook.com
 ([40.107.8.135] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53nE-0004E0-OP
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 08:04:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ktkq4MTcTcmhWLAQk4KIdlFm56mXXrQOximKDx24sO2Km851bAZEk7bjysBsToLAcjPjcBOIlflnWqy31h/bCVA012T468J5/b9o/sbHa3JS6pje1QOFdr3c4KwNEolGv20ZRMdLtNHTLInW0BPct7KpQnM+Ph+Mai5poFKkGcZIyWkma7wOCeO8M6hG5QG9/f0NlfKwCQboUYPQqWpeOLxxb6porGBOreBPjpzi/HpM0zwwWpvSM16vyYjwVERZIVuG1ZBJ6wwikgnzNZ75RS/QpivULeJfiCzjcZgfbRqRXuOr0E7JFboSFoVGNLUP6wC+ZIjqMsPaInCShcSHhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bEgRLsbzkLrfeBS5G4W+sYllsyyyYJOWE4eQFNNxvmc=;
 b=MigaTzJCO6t1w7lk/6oKytfx8hpJqzJGieOpwPB4m01SSge7KKhhy40YqkI0OQWfpgjanS5UFboEL1o8rG2UI3Ch0N3DfpdVFMMttHxeDBb5r8Tl4fLeuT8Ywx94FvwLURIeCI/WzMpgrWUsfTIfQVMiGLO0i+S0BwgtI1DsVCN8EO0FT8QnxSlVtKUHKtaLDdGq6c2wYiB1c9GzvIgTdUlW/cNw+E1xowehxrFvzZZ0HTNwuHFZjd1WpiwfAT7CvlB60IhD495fd3TiwlkUvSWq+Q2gRNK8X/dtb5j/iegCbDT+0GIHtq2o1N+RzFN8Rd0SvO3pKaKJ63cWKMthaQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=bEgRLsbzkLrfeBS5G4W+sYllsyyyYJOWE4eQFNNxvmc=;
 b=IScayxGl/DbgfJ9BhMXAWEKpd/aQlKpqYF6enrnORFS2DHlGrdXNCHXN1FRCNSSHnBJ33kYOojwI1y4EUvTAV66dRcjc4xBMqHRQCCX9SUq9orXx0HM7Wi6v6e+bNkVWtwXn3ChPQkx5dSXq1II4RAP43eEy8LJZCFWWK4Lzjwk=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB4014.eurprd05.prod.outlook.com (52.134.18.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Tue, 3 Sep 2019 08:03:48 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 08:03:48 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Mark Brown
 <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH 2/3] ARM: dts: imx6ull-colibri: add phy-supply and respective
 regulator
Thread-Topic: [PATCH 2/3] ARM: dts: imx6ull-colibri: add phy-supply and
 respective regulator
Thread-Index: AQHVYi4dgCofqQaHw0euB7fgm+76EA==
Date: Tue, 3 Sep 2019 08:03:48 +0000
Message-ID: <20190903080336.32288-3-philippe.schenker@toradex.com>
References: <20190903080336.32288-1-philippe.schenker@toradex.com>
In-Reply-To: <20190903080336.32288-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0802CA0015.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 25618a1b-46c4-48f8-3152-08d730453feb
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB4014; 
x-ms-traffictypediagnostic: VI1PR0502MB4014:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB401433A0AAE959057A37044AF4B90@VI1PR0502MB4014.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(376002)(346002)(136003)(396003)(366004)(199004)(189003)(6436002)(66066001)(81166006)(110136005)(54906003)(5660300002)(71200400001)(305945005)(2501003)(25786009)(476003)(81156014)(2616005)(44832011)(6512007)(66446008)(99286004)(66946007)(66556008)(186003)(64756008)(66476007)(26005)(6486002)(71190400001)(4326008)(53936002)(446003)(52116002)(486006)(102836004)(11346002)(1076003)(7416002)(6116002)(478600001)(86362001)(50226002)(14454004)(2906002)(36756003)(8936002)(76176011)(3846002)(6506007)(386003)(316002)(256004)(8676002)(7736002)(32563001);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB4014;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: vGDY6ey//ua0XfWuOXEAIwabyuvQsJZ3+tqslkQlcHwPYdOAJ9Hu7NlA+e0jkhgOtObPfMOyWX5WCjjNhqDJC36QIhI2uGdAT4mA4inrsaO33EZAgZXFnNmE3yO3Z38WBRa89RYwVjiwy/BmAg+ncnKcvtsE1Uq0k84w/XKayzShhBLdm0Wlo9COBI/7srQ/0PzHCqc0CZqsxH96VLELZC6uoAVbcrQ8Rh7riGaRC3KF+qUjxmN2u+kFPwn5RNGqoz6AEo79Rnc+rRr41EEV9sNSLlKjf6eMOC8mRHEw4D4VX0WbEq7ecfn/mTAsM4pvFaTg37U6usDBoMOFJ8574pfgkeu/pptSJXSGYlswRWXk80lmWM6bogAsyz84kgAXyCqy4eX4JaPeA9ni3RgbQZbSZod3vz5WYUEvU1tVU9c=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25618a1b-46c4-48f8-3152-08d730453feb
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 08:03:48.1478 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: NQ6RxuET5OLB/e5sh5KafK4gln9dnvRvDNP11PjR5rUSho9E5oM74I+CXQ7Au7keCkVkI7ra61dk/jaYOBE5HWEEjbOXw8oTn7/V1JC6nO8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_010400_889150_14471F63 
X-CRM114-Status: UNSURE (   9.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Luka Pivk <luka.pivk@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This adds regulator-fixed-clock, a fixed-regulator that turns on and
off with a clock and add it to the phy.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>
---

 arch/arm/boot/dts/imx6ull-colibri.dtsi | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ull-colibri.dtsi b/arch/arm/boot/dts/imx6ull-colibri.dtsi
index d56728f03c35..76021b842a97 100644
--- a/arch/arm/boot/dts/imx6ull-colibri.dtsi
+++ b/arch/arm/boot/dts/imx6ull-colibri.dtsi
@@ -47,6 +47,17 @@
 		states = <1800000 0x1 3300000 0x0>;
 		vin-supply = <&reg_module_3v3>;
 	};
+
+	reg_eth_phy: regulator-eth-phy {
+		compatible = "regulator-fixed-clock";
+		regulator-boot-on;
+		regulator-name = "eth_phy";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		clocks = <&clks IMX6UL_CLK_ENET2_REF_125M>;
+		startup-delay-us = <150000>;
+		vin-supply = <&reg_module_3v3>;
+	};
 };
 
 &adc1 {
@@ -66,6 +77,7 @@
 	pinctrl-0 = <&pinctrl_enet2>;
 	phy-mode = "rmii";
 	phy-handle = <&ethphy1>;
+	phy-supply = <&reg_eth_phy>;
 	status = "okay";
 
 	mdio {
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
