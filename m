Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B54282030C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 12:00:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=laryPGxraaZx0Q2uptwyAI2S2ED851kGRbZoDgfzsJ4=; b=FQSiokdofpvavs
	DTCx+BY+V5g0Ethe/FeXydV5Xd1vmTwezsF4+m3kLJxSu1SdT3BGVJRJZQV47BRUqhb5jFMxnG+Tl
	ItebrAT9cMOnU5JcRiOXk2bBgBUgBszqiUe2U7XDlzjM2vLxE3BAQeWIMMZgItCMuobpaGMy283vG
	idrUPPQHsaBechRpI60t/Y40FuNXY4Ad4WKRwxH95AX2eC09C7j1B4rD4K8Wd9yi8HcOx8yGSplVE
	a2Kbr6Dehf9iL+Jvt/TglIH9tpWp/r8sUTmeE3DRoP9g8B4ZbpN4OPiQ25maazgrJi247U3PerGiB
	RFc/D8JyEYwNQP9D/uaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDBB-0007bJ-7U; Thu, 16 May 2019 10:00:01 +0000
Received: from mail-eopbgr140050.outbound.protection.outlook.com
 ([40.107.14.50] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDAW-0006rB-3g
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:59:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3oqcAU1kVA1ub98bL2yBCizXoCsaLON2Rz+UkYSGjL8=;
 b=QknrASxbeZdxd3FgSNZglSe32RRmKlVb+V1bq5twq+V5mhSmJu6wy6AT+sX98W2/qgGwCo6aUGw+OD4rvz6WdowF4lpVcrw6keTAiCyTtNXSqsHK8VPzf9Z2SeIg8nBjl12rI+azo90CwpXiWkwQSgK7f9UYe/vSAR2BgSkIhIo=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2445.eurprd04.prod.outlook.com (10.168.64.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 09:59:17 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 09:59:17 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, David Miller <davem@davemloft.net>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 3/3] arm64: dts: fsl: ls1028a: add ENETC 1588 timer node
Thread-Topic: [PATCH 3/3] arm64: dts: fsl: ls1028a: add ENETC 1588 timer node
Thread-Index: AQHVC84G1nIRmQ4iwECD7FOpa1iiEg==
Date: Thu, 16 May 2019 09:59:17 +0000
Message-ID: <20190516100028.48256-4-yangbo.lu@nxp.com>
References: <20190516100028.48256-1-yangbo.lu@nxp.com>
In-Reply-To: <20190516100028.48256-1-yangbo.lu@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: HK2PR0302CA0017.apcprd03.prod.outlook.com
 (2603:1096:202::27) To VI1PR0401MB2237.eurprd04.prod.outlook.com
 (2603:10a6:800:27::10)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=yangbo.lu@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [119.31.174.73]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f54b599-2ff1-481c-9f10-08d6d9e5283b
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2445; 
x-ms-traffictypediagnostic: VI1PR0401MB2445:
x-microsoft-antispam-prvs: <VI1PR0401MB244504AE692A8FD3A97135EEF80A0@VI1PR0401MB2445.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:296;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(376002)(136003)(396003)(346002)(199004)(189003)(6506007)(99286004)(386003)(14454004)(76176011)(52116002)(5660300002)(54906003)(4326008)(478600001)(316002)(102836004)(66066001)(6116002)(3846002)(2906002)(68736007)(36756003)(71200400001)(4744005)(8936002)(53936002)(256004)(64756008)(66556008)(66476007)(73956011)(66446008)(66946007)(486006)(6512007)(7736002)(446003)(8676002)(186003)(11346002)(476003)(2616005)(71190400001)(305945005)(2501003)(25786009)(26005)(86362001)(6436002)(6486002)(110136005)(81156014)(81166006)(50226002)(1076003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2445;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: cADOvOveZ3jcgAiJerPAVu0cApHIkVtVzvjaB334UfTrzf6WkT+xTXO0VEPTcFE+9BkZt2LqxkdWga7LC4aEzHm8FgvlG4okrcTBtkBB2+JmexGaVjIpHgdcWdGbKKyI7L3VsjY93/K7X+s0yJ+nCkaJhVXeYIy0CEV2232BxHvxjnah+B9aigLAUN2b9XBpkMDMtHkOw4hV50URxe3cg6tSm7Up+W3m5M37cTwO4JZGNwY4+AVtjTzQcZVTTgn40DlJugwFKWBmWeMtRaJPkZ/LjAqdBXTh4V6xbzQSPekDUf/z1dfBC5eMnfFw9T0Q8kDL+ijKhf02IboTExGKM8EeXRj3WbpwSlKxH1dcCRKS4Q6m9zeWyBODA9++um+3YsqtpaWmNRsUOaFSqQPmGPDs/vmbCeZTWcl+BYdCujo=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f54b599-2ff1-481c-9f10-08d6d9e5283b
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 09:59:17.0972 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2445
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_025920_344856_BB6730D7 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.50 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.14.50 listed in wl.mailspike.net]
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
 arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
index 2896bbcfa3bb..d732a63754fb 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
@@ -369,6 +369,11 @@
 				compatible = "fsl,enetc";
 				reg = <0x000100 0 0 0 0>;
 			};
+			ethernet@0,4 { /* PTP clock */
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
