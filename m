Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795B11246B6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 13:22:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3V+PZY90hPmbVat3Bsac7hiuqc6VmVsUkN4+aazHYBo=; b=eOy4wSkfKNbYY7
	0PRX0Ofz86RLSv6ok5Tv2C9xx7uBK8jyuCGQUwDiFRG84ZxUFAKGpKXGBuqRCzlPIZeidDBe9l+G2
	aLkgDZKwa80VMtC5bbYhJG5y8OFzgqt2STa2qp4tMR52DgEj6wBInOmGbUOAZsrCsBa3n3jix86Fa
	X/r6udEqMrs3FmLx2+AV1+ETRHW1fcw6UShhCUkQQX70mtuzcBFJ68l381Ix8DRT/FdcMLJFvkrgL
	gh6gAhgDFI/3tn69Iyg3wQVSW+my5hnUN539xAR4qdsyjSClZn23UpXf2xUCKB4lP3g6baLbyoS3y
	19uG5Zh3bSi4dkiDlIPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihYLj-0008H4-Kj; Wed, 18 Dec 2019 12:22:43 +0000
Received: from mail-eopbgr20069.outbound.protection.outlook.com ([40.107.2.69]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihYLb-0008Eu-F2
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 12:22:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nMZTKDuJtSzPi0YXMVIBZt9VLe2lm8+gJ35mRKPjU7VNtwHa5LyCOPAonwrmBbIPhEKnMAIdfZZM1eYCilT4XBZ1nsFcwVxw8lJwFivu6UlQ60ALayWeJGUJHLfzgFZZaFiBXBr1etYW7fLFrcDm7TFI0Yi3U9FqI3u+PURSl42Yd/rgYijLh4qkdW4uSf9YeQ94ljnMOQyr2KPH4I5HnTl/kr/ybbYiaTUEjswYOmbbNP+LIwP4wF001wspz4jnu9QNksEqk5MkGN/Neggcl3rLZXCTqnJUfLOrpe+5iav/ElVyVCRgj+m73Yy5QtVd9u6U1V0pvzLtno4pBRJbPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tTuEKf/EFCkW1Qb+E8gvrSXlS3d4O/B7qA3Y/w4rAg4=;
 b=AIQRS95Tf6B4iRbxEwWbkqWIGA+s5ngNDgDOe3Op6vzr+c/gFqFOMWG1ORJffnoWqR9IKVPZAmchCRUeu/lOFVUJhs0v2Qfb+BmR5BlF1G1+OP00ci5Ez7Ftj/RpO/+EHU3IHM8pUA0A7BEjPZP1stywz0lB6lu6zd3k6XqAjiY+poKtGX1ap6CDgbHcel6tHzgECM7f7EPxNoOkoLpDuXqxOlG0+EdzsPSeqq1t4BOIkMz+wThKJFiMDPpW5jSMRpjauUUqjWVZtu4i6hT2qbPwP2VLAo+6+eq9aDBq/NSL5jUwOIuB63BdcyDKZrlqps51TUJ6cXF2/CCmOm+fjw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tTuEKf/EFCkW1Qb+E8gvrSXlS3d4O/B7qA3Y/w4rAg4=;
 b=ZNenrH4d82KJjv2QBc/J3t1CE0Mw/zr7oUCjIpy48HS/rzDQc2tMqT/jgM9sQYwmdcGvG2kgqJ3/yV0rdXNsgYOshWweWvVv+XkC5brmykdH7wgJ/hBEueBXuxwhPYjI6S64hj/4B1Y88oiYwwIQz6yOqR5DE+CIQ7DyhiCnuhg=
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com (52.135.147.15) by
 AM0PR04MB4339.eurprd04.prod.outlook.com (52.134.126.158) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.18; Wed, 18 Dec 2019 12:22:32 +0000
Received: from AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29]) by AM0PR04MB4481.eurprd04.prod.outlook.com
 ([fe80::505:87e7:6b49:3d29%7]) with mapi id 15.20.2559.012; Wed, 18 Dec 2019
 12:22:32 +0000
From: Peng Fan <peng.fan@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>, "festevam@gmail.com"
 <festevam@gmail.com>, "baruch@tkos.co.il" <baruch@tkos.co.il>
Subject: [PATCH V2] arm: dts: imx7ulp: fix reg of cpu node
Thread-Topic: [PATCH V2] arm: dts: imx7ulp: fix reg of cpu node
Thread-Index: AQHVtZ3S73Uc6dGN4kqEDXQASKgQOQ==
Date: Wed, 18 Dec 2019 12:22:32 +0000
Message-ID: <1576671574-14319-1-git-send-email-peng.fan@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.7.4
x-clientproxiedby: HK2PR0302CA0015.apcprd03.prod.outlook.com
 (2603:1096:202::25) To AM0PR04MB4481.eurprd04.prod.outlook.com
 (2603:10a6:208:70::15)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peng.fan@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.67]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: ae239e32-a8e9-4754-33ee-08d783b4f494
x-ms-traffictypediagnostic: AM0PR04MB4339:|AM0PR04MB4339:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM0PR04MB4339CB32E29DA7F51A3763A688530@AM0PR04MB4339.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 0255DF69B9
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(346002)(39860400002)(376002)(189003)(199004)(52116002)(5660300002)(6506007)(54906003)(186003)(316002)(110136005)(2906002)(4326008)(86362001)(64756008)(26005)(81166006)(81156014)(8676002)(8936002)(6486002)(66476007)(66556008)(2616005)(36756003)(71200400001)(6512007)(44832011)(478600001)(66946007)(66446008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM0PR04MB4339;
 H:AM0PR04MB4481.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: zeIt0R+qomnIKd8y0uT4leZgWbu7kvbMZjW4IuQSSN6J+V3L4rI48JaJCvL7le1/hV6vvNRVZxp3NPN+InrLVCWcrHUWRIVCrdfGxRbFS/CRM/LNqV4ieVgPZktlHcJxSZgoX21ybNBEhIdj8KgxiFTXQqht7/cPNkqORHOSAO9Ee4A5e5b46q9cVuP6TiQAXc6b3aMX2CT0b6bCQL4jT9hRWThNP7gGqgFKItvjFRFTHGHWiLqbcShvZEgKUFaYV3oeAD+WlwnfyZ4In+vqSje4F5xqI6ZXNDRyiEhNSYCe+ubZbFKetYJiPQUYD2sEhoxFTAcA4myXg0yb8onYpmgnCosa56F/m4BiCIC0VJmDa/bJL+wBYjAdL10k9epS6rxySc5Or7gTPFgNAWJow+UMFOCM7F3h6hpvIzOYXl6kIo4FauerZINs8PODh/wD
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ae239e32-a8e9-4754-33ee-08d783b4f494
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Dec 2019 12:22:32.0187 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: T2qj9/4AsgMtwiHIAv23FEAbeDvsbEdJXW/Xyfnagkmn87uZUwjJfOh+IEQVkf/0m0sTd7sFh4EIuEZ2KqjFfg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM0PR04MB4339
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_042235_509255_8819962D 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.2.69 listed in list.dnswl.org]
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

V2:
 Fix suffix, from 0 -> f00

 arch/arm/boot/dts/imx7ulp.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx7ulp.dtsi b/arch/arm/boot/dts/imx7ulp.dtsi
index d37a1927c88e..ab91c98f2124 100644
--- a/arch/arm/boot/dts/imx7ulp.dtsi
+++ b/arch/arm/boot/dts/imx7ulp.dtsi
@@ -37,10 +37,10 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpu0: cpu@0 {
+		cpu0: cpu@f00 {
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
