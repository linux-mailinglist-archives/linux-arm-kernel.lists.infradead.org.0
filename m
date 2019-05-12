Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1169D1AB60
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 May 2019 10:57:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nX6jKAkexDMajqxyqqH9ZZOqV3IMo/ANVKjghYMIdFA=; b=d+Qy/BGGEf1j+8
	Fal/jOoHmnWKKZv2wQzXhMhOKU3SvyPG1x4ThgZVmafr9yhplyMqS20cP+rn7V3Us6d7nL7hrzYMb
	t2KhASVZWLY5fQAXH5+5HdWMazTGwBwY24gbpio381skYDpUVa8zl3QPujGiSS0/CCmJdSOb0yygk
	y5oZGv8nC278td3i5n2npb2fvowWkLUvynyOJteJXXen1/fyp9H5eBokr/YSCrEC8sOBnYRceW4OY
	uwS9K3T0Vx2bP2ZpwvhTmF4etOFRisEOfuWe5KVyP88Mz0LumzxJJze9TVtSjqh5aST4v+BqY+waA
	R4kJkS1xgZ6I2sZFmRig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPkIY-0003Iy-QT; Sun, 12 May 2019 08:57:34 +0000
Received: from mail-eopbgr130077.outbound.protection.outlook.com
 ([40.107.13.77] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPkIR-0003IJ-Ei
 for linux-arm-kernel@lists.infradead.org; Sun, 12 May 2019 08:57:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jzJpsZXPD9zD/JA0xH5Wy3U6IfLBo8uuPbcPUcgS0nE=;
 b=NStWGiXvaiT3KaiUYN21JoaGIfvS8aTNHZHmv+8qJT/U0wjc0YSH6Xl6r0AxWIGrqxNFcA2ZiMu1WCFGSGdFmiRPxblQcjQEhjdA3FkKdez++CKurNheC9/flPJ8YW85tC49SW/JP2udvevDdJEXLv1FXnOFNycXyjecL0iaJFQ=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3802.eurprd04.prod.outlook.com (52.134.71.150) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Sun, 12 May 2019 08:57:16 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::d035:3bd0:a56a:189d%2]) with mapi id 15.20.1878.022; Sun, 12 May 2019
 08:57:16 +0000
From: Anson Huang <anson.huang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>, "kernel@pengutronix.de"
 <kernel@pengutronix.de>, "festevam@gmail.com" <festevam@gmail.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Subject: [PATCH RESEND] ARM: dts: imx6ul: add clock-frequency to CPU node
Thread-Topic: [PATCH RESEND] ARM: dts: imx6ul: add clock-frequency to CPU node
Thread-Index: AQHVCKCyUPBMYq44Sky2cK4SYDJN/A==
Date: Sun, 12 May 2019 08:57:16 +0000
Message-ID: <1557651135-12109-1-git-send-email-Anson.Huang@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR04CA0051.apcprd04.prod.outlook.com
 (2603:1096:202:14::19) To DB3PR0402MB3916.eurprd04.prod.outlook.com
 (2603:10a6:8:10::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 60e347f6-f58f-4d82-b69c-08d6d6b7d523
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3802; 
x-ms-traffictypediagnostic: DB3PR0402MB3802:
x-microsoft-antispam-prvs: <DB3PR0402MB38020B9E60A964B912090DE5F50E0@DB3PR0402MB3802.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1388;
x-forefront-prvs: 0035B15214
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(366004)(396003)(346002)(376002)(199004)(189003)(66556008)(66476007)(66946007)(73956011)(8936002)(256004)(14444005)(36756003)(305945005)(66446008)(64756008)(6512007)(478600001)(110136005)(2201001)(5660300002)(14454004)(4326008)(8676002)(6436002)(81156014)(81166006)(25786009)(68736007)(6486002)(53936002)(50226002)(71200400001)(7736002)(71190400001)(476003)(2616005)(486006)(6116002)(386003)(6506007)(52116002)(26005)(2906002)(316002)(186003)(102836004)(3846002)(86362001)(99286004)(66066001)(2501003)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3802;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: v8wSCxpeejuUb87JKiEDhDQE+XZ1ekFwg3bvwv5LXOActHtaP8PiyMahQnWjpBCdkLTylSK/pUDXEQ2ya6iWDwTWCnoqu4EUsjSrq7hndryoheHB2qm4bPsmwAbWUZRJg9/X9Z5baQYhhbJ7qbGlGMCCFQs/C8CPv7WINwN1URt8pkIWbHLdTMOa4pbFvqH0x83seIi2eLTVDMYm3UEnr49/KFLE/Oe+efhRzR1V2gQPCCPFALaiptjch8VJKVxXUf1rWZPnnMg+Mx2CILDDLz0dOLs/f5MPXHJ2JvUfW90HNnapEvcrN2p1qd3+jmATLofD1xeAT/B/vfwjeZO3RTXr8MMtzFuZ06m83EXvuVMa12kFAQnxTEzbjJwVNzIj5PUv4BSBsZQ1Bkq99opWTSeb+1pvjRWZKfrSWF/QvRk=
Content-ID: <6D9007DE5A2E53489B735BE3A21E20B6@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 60e347f6-f58f-4d82-b69c-08d6d6b7d523
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2019 08:57:16.8434 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3802
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_015727_498245_90E38A39 
X-CRM114-Status: GOOD (  11.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.77 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock-frequency property to CPU node. Avoids warnings like
"/cpus/cpu@0 missing clock-frequency property" for "arm,cortex-a7".

Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
---
No code change, just resend patch using correct encoding.
---
 arch/arm/boot/dts/imx6ul.dtsi  | 1 +
 arch/arm/boot/dts/imx6ull.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index bbf010c..fc388b8 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -59,6 +59,7 @@
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			reg = <0>;
+			clock-frequency = <696000000>;
 			clock-latency = <61036>; /* two CLK32 periods */
 			#cooling-cells = <2>;
 			operating-points = <
diff --git a/arch/arm/boot/dts/imx6ull.dtsi b/arch/arm/boot/dts/imx6ull.dtsi
index 22e4a30..727b92f 100644
--- a/arch/arm/boot/dts/imx6ull.dtsi
+++ b/arch/arm/boot/dts/imx6ull.dtsi
@@ -12,6 +12,7 @@
 /delete-node/ &crypto;
 
 &cpu0 {
+	clock-frequency = <900000000>;
 	operating-points = <
 		/* kHz	uV */
 		900000	1275000
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
