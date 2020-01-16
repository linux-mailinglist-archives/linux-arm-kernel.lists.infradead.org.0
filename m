Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE6E13D798
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 11:14:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cei630P5jTNXxQFK5CNzXap0jGTqXo7CaofvX4KafxU=; b=ndzoJ5rtCVcekK
	RQoZPEboG3t47BFB8oAdC4JBFLRi+dFzaV5VgIWaWB7yJOFN5VLd4XRNmwkqsrNFjGZyEst5KTyxv
	WIhZIWrPor7Hvol7tBaTytWGt9RAfs2+X7dU4C2iGT72dJX72Ebc7RWBSDPpxxYJU9fvm2HX/wmLz
	0ktlg2Tu4GxqHGe2Plsgsxd0l+u0iqbJ6D7CWl4yG1zcx7338qD3TnyXGGrnhJzOrv7yam8uV95iE
	9fscosIR+f/ivCc1fJucoxxkwzLrlgmlmRHDfcRyZF+vNWXgMEmVBV4nuz8wq5qwooiymkiENfi+f
	bgLbmn2h9Cjy1en2oRbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is29x-0005cA-5J; Thu, 16 Jan 2020 10:13:53 +0000
Received: from mail-ve1eur01on0713.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::713]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is29m-0005ao-ML
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 10:13:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lowAAfNKBBI44s7Sy2zON8yRV/8JDnIw0kEiOZbkgAbgu/Gn2RRAqkJO2v0WfsYd6pOcc5cbwrBLs/6dPUExzAke0FWM62rETbQFbTwyLLgMWK/fF/WCXJa1pADNJFaoHdOMtaVmfdKoaSs+kCpMgkrqVxpiznQTky/gCQQ+tfREh0pVxnI4RW559fmTCmwIwAFeP9cQGiTp7yFk2HL2n91N0cFnD64VWF9ida5AbcoometBDhXXMr8wbr1RHS3NbBVZ5iE1KCsdDopKQD0MWU3lRq3HmLxJxkHy2jK7jML5LFP0NGjuqfsf1K8qpj4VYMGuSV0OtglyM9qV5M2yxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dkKzXsM3s74uTU9S8XWOVC0w3KDZaaTOjQY0qj10Yos=;
 b=ExFCBrP/w9svAEcfQMr2KJLdnog9H6DBOsUYxj8IVGmy7m8JwQG/wYv2B9s9md8pWyf4XKIOkGjt69LSO01RiT09xIaUoVZkCIUekoh60LUpheBiR6Pfb3Y5hyj6wk3Ht5Tq4bTmgChUq2q6GoLTb076dc+hGYWRr/YmHUC2V7yYCEsCMJFNPyG3wFWo5MkfocsxCsIkqAIh6ugELkw6o3ZPehmGegkC9eabCq6Q8WSTf88cSJ76IDKeMPS8cBC3zTbzqbic3MvwGnKeT7QlfFuqpQ/ftWey56cD7zJR4wzElWLFcN/P+RxwgLsOLSNYkpDn19HUOTIt6FHi0fZMNA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dkKzXsM3s74uTU9S8XWOVC0w3KDZaaTOjQY0qj10Yos=;
 b=Q67DKvf3Bn7bq7JZGcmCfxecrxONLLtU7waWw3ZdcjJCLAHj8Z/Rpr59Qu6cAHumfUI4eyelJxLSFvRwBZiFLYyf1V6MYsFVqMrq2sYCAnQmB0CMhLJjms9rciNsB92J7t2t365J23Lh/cGTyg2BIG5w5m0waR5i8m/FZAk+fhI=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB4175.eurprd05.prod.outlook.com (52.134.30.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.9; Thu, 16 Jan 2020 10:13:38 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2644.015; Thu, 16 Jan 2020
 10:13:38 +0000
Received: from localhost (194.105.145.90) by
 PR0P264CA0030.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1::18) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2644.18 via Frontend Transport; Thu, 16 Jan 2020 10:13:37 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: "linux-next@vger.kernel.org" <linux-next@vger.kernel.org>
Subject: [PATCH] ARM: dts: colibri-imx7: fix ethernet performance
Thread-Topic: [PATCH] ARM: dts: colibri-imx7: fix ethernet performance
Thread-Index: AQHVzFWee8FNmNUk8keE1wDvLk5RZA==
Date: Thu, 16 Jan 2020 10:13:38 +0000
Message-ID: <20200116101313.2524795-1-oleksandr.suvorov@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0030.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1::18) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.1
x-originating-ip: [194.105.145.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 51da0de7-3c82-4b8f-eb05-08d79a6cc0d6
x-ms-traffictypediagnostic: VI1PR05MB4175:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB417555E88B07EEBA1E0271C6F9360@VI1PR05MB4175.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:190;
x-forefront-prvs: 02843AA9E0
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(136003)(39850400004)(396003)(376002)(346002)(366004)(189003)(199004)(1076003)(54906003)(44832011)(66556008)(66476007)(64756008)(66446008)(66946007)(36756003)(26005)(8936002)(316002)(52116002)(6496006)(4326008)(16526019)(8676002)(186003)(6916009)(81166006)(81156014)(71200400001)(7416002)(86362001)(956004)(2616005)(6486002)(478600001)(5660300002)(2906002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB4175;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: YH6a89kakemV/NTkKgndqp6M8lnqhhJOy7VnFspue1jU3ueJse3WQJNwBcI8ut7ZyMTdcwh+LnxQOw/UfbLYqIUcGtOP2pWyBYhns82+Ulzz5k+SoPk9TuQfmZAscPuLkRRXXHfJzFCFYZ9xEALMyEtA/jXLxQsXJ2kZ+M84ah5gp/wfO6ZIZvdNDUpPjAbE4W7fEdKsQv35D9P2WDIirtcB85+cGhQ1dLU7SlaNowt6TRIlDAfD8/BhzrL4kwU8Bp2DZT0GVxOTMd/wvOvMhLVRKCmxaaZtoW9Q0NWe3s13rdyzM53L1cXi1GwVZZuKECCwCGaTAeRJL4PqVx60Uqel5fyo/YZ3JdGheaSGRUZk8fDGB5N1vM8mEFApbdG11BoaN9Iy2CxfW/8T5kBoedvmGVL8+8sBzG7NBoQhnzkjT7m2CDWQbd22yVpapdgF
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51da0de7-3c82-4b8f-eb05-08d79a6cc0d6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Jan 2020 10:13:38.1178 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YEnwdVGCwTSIVaS2JG9kEhxn8ZlBoYtKkiFzcowJlrUD10gA0kpiVbdZvbIa5RQMFZ3My/TAgDyiLoHFoOQOmPDZ1puv5ljs9UtC/5WkKd0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB4175
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_021342_790220_31357C0F 
X-CRM114-Status: UNSURE (   8.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:713 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Performance test of ethernet interface shows extremely low result:

=== w/o fix =================
Connecting to host 192.168.x.x, port 5201
[  5] local 192.168.x.y port59020 connected to 192.168.x.x port 5201
...
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec  2.78 MBytes  2.33 Mbits/sec  337      sender
[  5]   0.00-10.00  sec  2.66 MBytes  2.23 Mbits/sec           receiver
=============================

Adding correct settings of the mdio bus with the respective phy
fixes this issue.

=== after fix ===============
iperf3 -c 192.168.x.x
Connecting to host 192.168.x.x, port 5201
[  5] local 192.168.x.y port 50702 connected to 192.168.x.x port 5201
...
[ ID] Interval           Transfer     Bitrate         Retr
[  5]   0.00-10.00  sec   114 MBytes  95.4 Mbits/sec   56      sender
[  5]   0.00-10.00  sec   112 MBytes  94.1 Mbits/sec           receiver
=============================

Fixed: commit b326629f25b7 ("ARM: dts: imx7: add Toradex Colibri
                    iMX7S/iMX7D support")
Signed-off-by: Marcel Ziswiler <marcel.ziswiler@toradex.com>
Signed-off-by: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>

---

 arch/arm/boot/dts/imx7-colibri.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/boot/dts/imx7-colibri.dtsi b/arch/arm/boot/dts/imx7-colibri.dtsi
index d05be3f0e2a7..7b6a7c124345 100644
--- a/arch/arm/boot/dts/imx7-colibri.dtsi
+++ b/arch/arm/boot/dts/imx7-colibri.dtsi
@@ -115,7 +115,20 @@ &fec1 {
 	assigned-clock-rates = <0>, <100000000>;
 	phy-mode = "rmii";
 	phy-supply = <&reg_LDO1>;
+	phy-handle = <&ethphy0>;
 	fsl,magic-packet;
+
+	mdio {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		ethphy0: ethernet-phy@0 {
+			compatible = "ethernet-phy-ieee802.3-c22";
+			max-speed = <100>;
+			micrel,led-mode = <0>;
+			reg = <0>;
+		};
+	};
 };
 
 &flexcan1 {
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
