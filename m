Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7C5AF2CA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 11:36:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jdhVM+u7izuoii0zNDkZ+bK9jvzkZu4YI+8JNrZ8byg=; b=FK9yl6gAvMrA+2
	g/XS9HbI0Ot501QbhcUdgRXyO9x2klRjqAETf/QJKD+JNiZeTNgaSuHNzbIK3lhqyv80fskij+zGx
	JqMJdVNBkwYRzpvGy/oN3+eQWhKRufVZD671y2iZJ4zRf/a3TQg2y5UFXIpYAW1ri8pA68HytazMX
	KTIUJpsTpekf423hrreTS4hq0RqV0GCyUckNPlfwj2lerAs/fOD58dYmaDRk14zzHCm9WBhSzcI8a
	IWOWv9VGQBeVUk/zfChjqKHObpatbPvE+vb1qHYHZLIR1srkHFD/mSUVmnbW2AavUD+CvgSpz08p4
	yzVY7O+UN8e57JbPnbtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSf97-0001Vf-F9; Thu, 07 Nov 2019 10:36:09 +0000
Received: from mail-ve1eur01on060b.outbound.protection.outlook.com
 ([2a01:111:f400:fe1f::60b]
 helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSf8W-00012T-UO
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 10:35:35 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F4CkVaX3UnneSMXuQQ97oHX7GrvZFPiaKpQBYpJzhfOOcGDI443Si5INrt/9Q1LCpd8BZ6D/Kb1utSqGGMxGW6TQL4mmigzCD34eEXpxFTfyjDIotgVYn5ZMz5UDMsPu799mYGoIf+p5BmSwYY6kACZ9v133TRc7MZfzIe7MAI6FlcW8jmrUFNG0jpHw3ZgF+NtO0eiDdfPyWqD7b4lFIcQIeR9XCOvXx8QlltT4q3CBgWFDXZL9w5yUzXo5vkEULzFdZSDvOGUsBIVrFm+GZgutIfc3Y30gdwwpi7GzgQNzT1wuifI6ubL0B7lcvaENVlU+iDhBzpWF7jb7zW1lAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YKf+5L3MZg4fcshelIzTHEsxVSKEUbVUJWC194TshvM=;
 b=MOI4vismKUq4irvr3Ri2wYLKojWJt7zK3wV4I92BPmngVc3TA8Zg6fP12TSvf/gsgywFeW/zWnuVInAYhn6jhYCQjqbVmWdvkCavwA6RGHtnFHjGeHXw6MPmeG39eXYHWzCOIactlWAUJUkJxbePyZ7iHnwBU3UzaKBuB3ECdOVKL3qTKv34Z83IK6OjuIuvC6PW0zMciUaCmifaxehgxlggq87s26KYy0o3wl8z0rYKH+BYIpFk9knilmVxYHeK8/WR74V8+xkigkE2INea89NgBNq2uND4+IN+J/FcKSsnHzpcPJqLkrOJiVw3l/R7GgzgyIIlCjx0Mwn8NhXpvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=YKf+5L3MZg4fcshelIzTHEsxVSKEUbVUJWC194TshvM=;
 b=YJ9i30mVg/zrqlHHjvISY7fCBVkEa7r0AUyY7X/4bR51MVQ6kIYF56G69LbmooLaLzIXd1HuNVI9EKucw6yBXqPNv3Vk614yXV7MjXgnoMWveC+EPj2dli8yV7EGhYP1NCs1ssc8N9bagcb9V3pPk0fsMDjCgMzruJ2K650VoXU=
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com (20.177.34.20) by
 AM6PR04MB5543.eurprd04.prod.outlook.com (20.178.94.28) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Thu, 7 Nov 2019 10:35:26 +0000
Received: from AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::912a:3593:7e23:72d0]) by AM6PR04MB4936.eurprd04.prod.outlook.com
 ([fe80::912a:3593:7e23:72d0%7]) with mapi id 15.20.2430.023; Thu, 7 Nov 2019
 10:35:26 +0000
From: Fancy Fang <chen.fang@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Subject: [PATCH 1/2] arm64: dts: imx8mm: remove "simple-bus" for anatop
Thread-Topic: [PATCH 1/2] arm64: dts: imx8mm: remove "simple-bus" for anatop
Thread-Index: AQHVlVcRpB4mpaFfY0a5ijwg0EA9nA==
Date: Thu, 7 Nov 2019 10:35:26 +0000
Message-ID: <20191107103332.16485-1-chen.fang@nxp.com>
Accept-Language: zh-CN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR02CA0050.apcprd02.prod.outlook.com
 (2603:1096:4:54::14) To AM6PR04MB4936.eurprd04.prod.outlook.com
 (2603:10a6:20b:8::20)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=chen.fang@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: afb9d01c-4c76-4b0d-1f0b-08d7636e3385
x-ms-traffictypediagnostic: AM6PR04MB5543:|AM6PR04MB5543:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <AM6PR04MB5543B2FCCE1D15CE6ABFB42EF3780@AM6PR04MB5543.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:660;
x-forefront-prvs: 0214EB3F68
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(366004)(136003)(39860400002)(346002)(376002)(199004)(189003)(66556008)(14454004)(5660300002)(64756008)(66446008)(66946007)(54906003)(66476007)(99286004)(71190400001)(71200400001)(14444005)(316002)(110136005)(256004)(7736002)(478600001)(36756003)(2201001)(26005)(305945005)(6436002)(4744005)(25786009)(1076003)(2501003)(8936002)(3846002)(186003)(6116002)(102836004)(81156014)(6506007)(52116002)(386003)(66066001)(50226002)(81166006)(476003)(4326008)(6486002)(486006)(2616005)(2906002)(8676002)(86362001)(6512007)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB5543;
 H:AM6PR04MB4936.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 8nS5yOG8+z6/POkzEgzFfVIKHzfqXCFVzbD9D9WdErqE0TYm/38D5IP8ETbeDw0Zq+Uy4+BMzC4RVaqI34rp+u1Kxu0V/LYsK8nFaABL12NbVULR47ZJkN1JwIBXFAuMQwOp0PXp6/Gaa36+Kf13OKB071bRns6AYGmjJN9Y+tevwt8+xjao9J3SOvp6IMvaHnIww21vZ6X5lTrikegYwC2jH8ckif49RU0FTVWkW/u7XXfcDJdlI7ugrJd/Se8olZ4WyTO3xrXhAwJpuFIhAFrHNn2l6ru494aU1D4jJUKyNB1jCoLeq2fSrO6juHqcSLMHAIfAxcGyQz89/fgPTxrHfpKNKghC9BcrL3tZmYm7zcN5EPsSOdfKvVtTcfFnOaAhXkRhCFR/zK1gou5E1Kgb7bKWPeYzW0zIrfg1yKd5Te2smJrKQQ2v2DlN2adZ
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: afb9d01c-4c76-4b0d-1f0b-08d7636e3385
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Nov 2019 10:35:26.1747 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: B3VuDIWAgmyKXi+gDVaO7ku5NLw2NnA1azyTffARdj58e7OpyZd67vwk4KFFq9RWf2NOQe3SGjTKwDQMtdEimA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB5543
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_023533_144645_FA7FC084 
X-CRM114-Status: GOOD (  11.63  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe1f:0:0:0:60b listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Jana Build <jana.build@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-devel@linux.nxdi.nxp.com" <linux-devel@linux.nxdi.nxp.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Remove "simple-bus" compatible for device anatop,
since no child nodes exist under it and it is not
a populated bus.

Signed-off-by: Fancy Fang <chen.fang@nxp.com>
---
 arch/arm64/boot/dts/freescale/imx8mm.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
index 6edbdfe2d0d7..da297b5e509d 100644
--- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
@@ -438,7 +438,7 @@
 			};
 
 			anatop: anatop@30360000 {
-				compatible = "fsl,imx8mm-anatop", "syscon", "simple-bus";
+				compatible = "fsl,imx8mm-anatop", "syscon";
 				reg = <0x30360000 0x10000>;
 			};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
