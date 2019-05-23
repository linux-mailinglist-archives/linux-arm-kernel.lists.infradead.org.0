Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB25127477
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 04:34:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9bNgP9roPTs4a1Qoql17xUOfiqIWdTi0m42nUqyhVM=; b=suh5i9HVU12HCd
	f6iUpoTu7/EmzA+MvtPoqn5Yd1kbsk8972XxbMyO0ywsut4+c1MvmP+CdXpNpkwWev9TI5GEFpcad
	7jGODFrEYbxBD9lu9yFAUmCOISV+1KRZoC74hrvmZK3uFDhArfzuLB8kHm5Vvbfd9UgPzea65YFvc
	yk4qSXKTtNoDL+UOVcWxbtKoGqChmISFtJjILpd65mFCU1E7AC2XiRwdI8wZJO1fdv2nKOUp0mYi7
	1BvX4d9MuKmKu4YLotzP0SRVxfrpG0MZmpDOMIGRas/vb5sDFOY+VjaB+IPs7hw8m7tsh3JqPPlMC
	9hGZbRGGJH0vo/IAPyAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTdYy-0004v8-Cm; Thu, 23 May 2019 02:34:36 +0000
Received: from mail-db5eur03on062b.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::62b]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTdY8-00046N-H6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 02:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=b//ZxvIhXEez1zzSZxCUcYIrQDYbYlc30WtJRLcUERU=;
 b=qgq5SILzIokVnyrrljdAetkV5KaiqMsLl0JNpR1di0itL+BeKgFWZrKwHtzpRnuup6YHfcx6eNlxG33hd7Q6NffmoK86boipboHfoQ6bkzUl+mTOPAd6dakoZmqbFwKY/RLbf7fCxY2/U/cv0lVT1MyrhMpk7EH6gUlsD4qIt7c=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2494.eurprd04.prod.outlook.com (10.168.65.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Thu, 23 May 2019 02:33:41 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1922.016; Thu, 23 May 2019
 02:33:41 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, David Miller <davem@davemloft.net>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Alexandru Marginean <alexandru.marginean@nxp.com>
Subject: [PATCH net-next v2, 4/4] arm64: dts: fsl: ls1028a: add ENETC 1588
 timer node
Thread-Topic: [PATCH net-next v2, 4/4] arm64: dts: fsl: ls1028a: add ENETC
 1588 timer node
Thread-Index: AQHVEQ/vPTs5mfNGK0egcnpKtIEjVA==
Date: Thu, 23 May 2019 02:33:41 +0000
Message-ID: <20190523023451.2933-5-yangbo.lu@nxp.com>
References: <20190523023451.2933-1-yangbo.lu@nxp.com>
In-Reply-To: <20190523023451.2933-1-yangbo.lu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR04CA0053.apcprd04.prod.outlook.com
 (2603:1096:202:14::21) To VI1PR0401MB2237.eurprd04.prod.outlook.com
 (2603:10a6:800:27::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b900c2f2-f138-4b41-fc08-08d6df2711a8
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2494; 
x-ms-traffictypediagnostic: VI1PR0401MB2494:
x-microsoft-antispam-prvs: <VI1PR0401MB24941CD3ACE777C886CF456DF8010@VI1PR0401MB2494.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(346002)(376002)(136003)(189003)(199004)(2616005)(54906003)(66066001)(86362001)(478600001)(110136005)(26005)(476003)(52116002)(486006)(76176011)(8676002)(66476007)(25786009)(81166006)(81156014)(186003)(66946007)(66556008)(64756008)(66446008)(99286004)(73956011)(2906002)(102836004)(3846002)(6116002)(6512007)(386003)(53936002)(2501003)(6506007)(256004)(36756003)(68736007)(50226002)(305945005)(6486002)(7736002)(8936002)(71200400001)(71190400001)(6636002)(5660300002)(316002)(1076003)(4744005)(14454004)(446003)(4326008)(11346002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2494;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: RzUDCbv37KKgNMSS57JeXEGOKzis74x3gW+e4IsK718FidOaRYmDUdGvqaH6zyFbtWVr35E01SQvWbyfWn2kRXMyOkPWAYkZ+ZX0G//vVOZUhFiNS/yytCwyy5uDnyUGLFi7YRl23tXR0v5/33zvPhhRj1a94y64KhsjzTJUY1SZroxE+6Rcw5INI3fEMFz3dJWjdwlEXpbsL2tN+FMrdwPCJiUWMyJlp7kWOLEhsTnqWITxGCgqIlnJsduoxnfCk7WwPEWV8maNJDNQ0jd+M5XIakrL1+ug2yB3PVJMYJLDRDI34VSNoY2BF7677WFkA10+zQR4c8A/f1qovGxrq6m6QGucmGUJZndzPn2yhFpAI0KUkKEoTklW/qDi2yo2i1bsQL4YQ+DDDqLouUMjSXZ9RfmgxCUiKspDicQrqqs=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b900c2f2-f138-4b41-fc08-08d6df2711a8
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 02:33:41.7183 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yangbo.lu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2494
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_193344_580290_BE182004 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe0a:0:0:0:62b listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "Y.b. Lu" <yangbo.lu@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add ENETC 1588 timer node which is ENETC PF 4 (Physiscal Function 4).

Signed-off-by: Yangbo Lu <yangbo.lu@nxp.com>
---
Changes for v2:
	- Added compatible.
---
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index b04581249f0b..4cdf84c63320 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -431,6 +431,12 @@
 				compatible = "fsl,enetc";
 				reg = <0x000100 0 0 0 0>;
 			};
+			ethernet@0,4 {
+				compatible = "fsl,enetc-ptp";
+				reg = <0x000400 0 0 0 0>;
+				clocks = <&clockgen 4 0>;
+				little-endian;
+			};
 		};
 	};
 };
-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
