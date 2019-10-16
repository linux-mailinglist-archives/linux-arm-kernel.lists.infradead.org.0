Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B653D975A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 18:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tdMts6MLIao4u5xgsr/WkXCpmYCyKiVoxaZDtGXwlaA=; b=DfUMDJ4mMWHNpj
	3g6FKJgQ2EskeWsUqw96FfK5SVsqaJd6+qfhQQVDPn2+PTdHyNtO0NXL+IkoW0RjO8awZHuoCTt9H
	aHWDSVSDgxMvVXx9NskLQbuw7MJ3+CMphc77VC8x7diOZAc3P0SOho5KIhLYf6TrKnfN1CAlZ7CZk
	7wH8mj8UD8QTK2Lao5yY1Zz2cBcS1Iyzh8vFsJ1fx5w4A8O5XoDZeRj52lXgvbQWd3JJULTje2x5h
	SIbU/c/FaOa8nPtQV349efKvDiC4hJKzvD2dq0x2DEAoKbA1N2GRHJ6dGHg7qinxjjr559i4wF4HA
	o01lfSQtrROr65WhU5rQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKmAa-0000zP-Jc; Wed, 16 Oct 2019 16:29:04 +0000
Received: from mail-eopbgr30131.outbound.protection.outlook.com
 ([40.107.3.131] helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKmAN-0000yJ-GN
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 16:28:52 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=T4XIA9QH5uxGOZ+JeporiFSHKvU19eu4hU+429EBsajvVIdjyHU1PN6arHKGyWhsvTek0mKtKOJu/dHq7rr1PujPqZfHpK3zeXnZsAbni4C/D1Iubq5zaUNO6r7cIneqV32V5yHsMvKqdK2RnLQ1QpSsONYU2NGYn4gbdDTgYGAB86BCLAn5SBeorlNWWd0QRlxLmidqmoHV2wUZFSYjdHog9q4TsRGirkJfey6cjxc16stk1X+jBIvXjZFM5UKj6QhXM/kmlMwm3aanSQk/HDSs6nAnLKZwK8KvTheuPz7DH/2u6t8Gcf95eUXp+CclBBEj5kKDPmQaQYoSfe/8GQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EljIL6vBnzA0UbaGNyDZQxy2ZR+kT+6Lb4aBMLRCIf4=;
 b=C7CDCJqQK1MhwePC6j2ij69FxXRtNn+QgGPPyLwozuJAWaQzjrNewjVO47lagqsNJ1zHtU5D+ksVtqKD0ZWW57j6p2dK9sK1C7oZst7r7rzcNNnpfTzejmEUf6fx5SEJLPP+G2isieP+URFYL0QkXPf34NocRJuGXP4xPbIUayP6Spk3ANHA5kCaRnLJKqoysD9vhy/9AWaWm4sZ7ya5KEppkxQKDCffFewBJdHnw3ZsG3vQgPM5MB9+e+mAKpoLo06VxZWKKOoV6v9jDSp/EFTQBUryXzEZmJOgL46L0cMjaPmmKXoyOjPy5vJXpjpUoAuai74JAcSbzADoVDAF7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EljIL6vBnzA0UbaGNyDZQxy2ZR+kT+6Lb4aBMLRCIf4=;
 b=lS7aToNdkm6QKIWiv6+TEdSCUS+HAdz2UVvQJW6oYjUbT9vFUTjUECkWjh0gcvGkGbDRhKSLwvyDY1RXdYSP4mJoM0JepQAejv5vfwV8lgdvzoqCXuqnJvietbaiBQcpQMzdEiwkfwqSqf/lu0pmvbGBVOvTOWgcHTtDVl/qf20=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.19.20) by
 VI1PR0502MB3629.eurprd05.prod.outlook.com (52.134.7.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2347.21; Wed, 16 Oct 2019 16:28:44 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f427:26bb:85cf:abad%7]) with mapi id 15.20.2347.023; Wed, 16 Oct 2019
 16:28:44 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, Shawn Guo
 <shawnguo@kernel.org>
Subject: [PATCH v1 2/2] arm: dts: vf-colibri: add recovery mode to i2c
Thread-Topic: [PATCH v1 2/2] arm: dts: vf-colibri: add recovery mode to i2c
Thread-Index: AQHVhD7H8G6VDxhlKU2zTwJWkgHwYQ==
Date: Wed, 16 Oct 2019 16:28:44 +0000
Message-ID: <20191016162833.1893-2-philippe.schenker@toradex.com>
References: <20191016162833.1893-1-philippe.schenker@toradex.com>
In-Reply-To: <20191016162833.1893-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR02CA0006.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::19) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:26::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 72a7f2c7-4080-4be9-3a74-08d75255e98c
x-ms-traffictypediagnostic: VI1PR0502MB3629:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB3629D6F2504775636C87C829F4920@VI1PR0502MB3629.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:626;
x-forefront-prvs: 0192E812EC
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(136003)(346002)(396003)(376002)(39850400004)(189003)(199004)(66066001)(26005)(86362001)(54906003)(36756003)(8676002)(7736002)(4326008)(66946007)(71190400001)(71200400001)(478600001)(6512007)(256004)(14444005)(44832011)(386003)(66556008)(66446008)(66476007)(2906002)(64756008)(6506007)(5660300002)(102836004)(99286004)(316002)(11346002)(186003)(446003)(25786009)(4744005)(1076003)(486006)(14454004)(8936002)(2501003)(81156014)(3846002)(2616005)(50226002)(305945005)(6116002)(76176011)(476003)(6436002)(81166006)(52116002)(110136005)(6486002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB3629;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: B9ZOc+bfuQlrryLjwVFKbjTzv7lgnTLAuglU6L0sxKgVQnaWELhkzPZlCwAcuhfSA1qJoQ3F7DPmHFY7v1mHqftiCt6OMj3jpjJAYNcQ7P7TLZ/HpIRataYUc7S/QfPXcgYC6nad75SmqjrrCs6Sr2/CCmhi6YxjEgg0ZsWmXgUDu5vrD3JoaPvceFHX2E3dn50vNZZcSSqBKbFZpGfWcUguS8Aq3vzAePNh33rLsHggbgI+LNw6eGtU52j8SnydJECd9NUhTX53tCTPi/5gnqdfjZcIUtLqaIMkfGECYZmkWGKVMS3j4Nckizif0+uPo1MDQ54mkZvoRNXjj1E4oa6/hTzIUQh0eYqSqxr66b8hQNoZxuQrbiLoc5lGc+04sXUe0rON3hX6MhfHtPvMin52hlt1uzlP+CCpIQqQw14=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 72a7f2c7-4080-4be9-3a74-08d75255e98c
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Oct 2019 16:28:44.2522 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: YiCLaikWFDhQE9ks6aGZk9XsEVXi8K9PZ7bQ7v2tc39va7SVZMMaHLSZSyGvUZDwgaEDw5sdnMqI6YW1lbHmgGtsr+RAwRvxpQfvNi/yx8A=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB3629
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_092851_547335_65B5B9A5 
X-CRM114-Status: GOOD (  11.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.3.131 listed in list.dnswl.org]
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
 Max Krummenacher <max.krummenacher@toradex.com>,
 Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, Luka Pivk <luka.pivk@toradex.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch enables the recovery mode now available.

Signed-off-by: Philippe Schenker <philippe.schenker@toradex.com>

---

 arch/arm/boot/dts/vf-colibri.dtsi | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/vf-colibri.dtsi b/arch/arm/boot/dts/vf-colibri.dtsi
index b6a1eeeb2bb4..254402c4f872 100644
--- a/arch/arm/boot/dts/vf-colibri.dtsi
+++ b/arch/arm/boot/dts/vf-colibri.dtsi
@@ -129,8 +129,9 @@
 
 &i2c0 {
 	clock-frequency = <400000>;
-	pinctrl-names = "default";
+	pinctrl-names = "default", "gpio";
 	pinctrl-0 = <&pinctrl_i2c0>;
+	pinctrl-1 = <&pinctrl_i2c0_gpio>;
 };
 
 &nfc {
@@ -308,6 +309,13 @@
 			>;
 		};
 
+		pinctrl_i2c0_gpio: i2c0gpiogrp {
+			fsl,pins = <
+				VF610_PAD_PTB14__GPIO_36		0x37ff
+				VF610_PAD_PTB15__GPIO_37		0x37ff
+			>;
+		};
+
 		pinctrl_nfc: nfcgrp {
 			fsl,pins = <
 				VF610_PAD_PTD23__NF_IO7		0x28df
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
