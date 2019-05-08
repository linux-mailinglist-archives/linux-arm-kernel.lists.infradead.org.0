Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D084D1725B
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 09:11:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EgEX2BvFmxL5E9R95BcCABxhSzdIOERRf7vwXAGqCgs=; b=UMZ8d2o0k17zwj
	GENlsR8An+3VqG7MdpG2WDZ3S6/39kKcDuDh8q7J1ouzmIDIAKWJf9a7PGey3RcMmzUcyJE7LkuY+
	Z1cy9G3XFwIIggxcOej2wmQCCqQMb1U6enMSGXN/0ppg/IyMgECCXsOW84ObCycUvtJDThrRtb7s6
	maWh7iZEb4SovleaeopIPc+BJt4xkdjRf9LMZ80E2MAuFTyees7N38oqpfW37kMsDhMRceRAC8eWK
	NLOqr8OZM6Oqn6j2Txq5yYjJz6Wsuihukol8afVL/0YNfrFQFYyMUJ8qIoidiGJiCdvLqVPC1rqgq
	uVdXp1LMfqQ8iCHo2cfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOGjZ-0001Nd-AU; Wed, 08 May 2019 07:11:21 +0000
Received: from mail-eopbgr00058.outbound.protection.outlook.com ([40.107.0.58]
 helo=EUR02-AM5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOGjH-0001EK-DG
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 07:11:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fYai1Jw0xFNYTIJz3DBdoBUYq/FaVCz9WjPVRNeowUA=;
 b=K98dhjJcT6xY8RGG+XnVXbufWGQuUL44SwWEASsHJtBi+s3VfrnMJxqLYoNdvFWN8uN+IezANZ4atDjeaTZ3s7apDFA3tj2Wxrdo2W6N2glOJhdbMSRAwt2KOnh0bzCYJuxo3UCgzKtvmAFg+HwdqE0waANDknFf/qmDZEtAgeg=
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com (52.134.1.18) by
 VI1PR0402MB3695.eurprd04.prod.outlook.com (52.134.15.25) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1856.15; Wed, 8 May 2019 07:10:55 +0000
Received: from VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::c16b:662d:9299:6be6]) by VI1PR0402MB3357.eurprd04.prod.outlook.com
 ([fe80::c16b:662d:9299:6be6%6]) with mapi id 15.20.1856.012; Wed, 8 May 2019
 07:10:55 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>
Subject: [RESEND PATCH v3 0/2] Enable wm8524 codec on i.MX8MM EVK
Thread-Topic: [RESEND PATCH v3 0/2] Enable wm8524 codec on i.MX8MM EVK
Thread-Index: AQHVBW0tmuRPzu4TeUu6rOV/fWl/SA==
Date: Wed, 8 May 2019 07:10:54 +0000
Message-ID: <20190508071032.31808-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0278.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::45) To VI1PR0402MB3357.eurprd04.prod.outlook.com
 (2603:10a6:803:2::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 61558c64-afb4-4a95-9bd6-08d6d3844fbb
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0402MB3695; 
x-ms-traffictypediagnostic: VI1PR0402MB3695:
x-microsoft-antispam-prvs: <VI1PR0402MB3695FFDA2AAC4A961CB838F9F9320@VI1PR0402MB3695.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-forefront-prvs: 0031A0FFAF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(366004)(376002)(136003)(39860400002)(346002)(199004)(189003)(1730700003)(81156014)(256004)(71190400001)(6916009)(6116002)(3846002)(36756003)(2906002)(25786009)(66066001)(8936002)(44832011)(486006)(186003)(316002)(71200400001)(305945005)(478600001)(7736002)(7416002)(50226002)(2616005)(5660300002)(26005)(476003)(6486002)(4744005)(5640700003)(2351001)(14454004)(66476007)(66556008)(64756008)(66446008)(2501003)(6436002)(8676002)(81166006)(53936002)(86362001)(6506007)(386003)(102836004)(52116002)(73956011)(68736007)(6512007)(54906003)(99286004)(66946007)(1076003)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB3695;
 H:VI1PR0402MB3357.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: bWCukq7qUiPXbep1oojpahO6bIVgb+gPQC1fhGknyT3+V2GFa2Mlig3s73xMAZ3fgCj5jODofd7SXg9C2I1uPszyDHmzvlj+16AVv4kuwRvUyXaxiwEZ5RYm8Q9JUdgLkaVEBvvb/uPq2hbMgBiWburzkW8INoy3kEGSCvd9fs4nhxU1axW3Dq29LvcfhJfpashGrCvT/zhTLBIrO038uB6m+U6OtT2T1Kk3gZFSLbxB2FUhXLS13B/dpPtxBOdFiokTZ+Vx3H539gQN8qynDKZO8oymEdNGYeKypzj2RalJylAjponMCd5FljNFUHL5UADo0XFidHaY5tSd/kdlh75RDO5xELD1bp/qO3gHQWmi3Zo23UeIkdDhs4LwpzKCD6+58d9otb46gjsPOBmFaErHVpS6wJ3bwwc5rK7BJAE=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 61558c64-afb4-4a95-9bd6-08d6d3844fbb
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 May 2019 07:10:54.9455 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB3695
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_001103_506497_179512A4 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.0.58 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 Aisheng Dong <aisheng.dong@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "m.felsch@pengutronix.de" <m.felsch@pengutronix.de>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>, "S.j. Wang" <shengjiu.wang@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series introduces the SAI nodes on i.MX8MM EVK then
creates the wm8524 codec node and finally uses simple card machine
driver to create a sound card.

Changes since v2:
       - place compatible strings one a single lines
       - move GPIO pinctrl in a node of its own
       - remove codec phandle

Changes since v1:
        - use "fsl,imx8mm-sai", "fsl,imx8mq-sai" compatbile strings and
          remove "fsl,imx6sx-sai" because SAI module on i.MX8M is not                                                                                                                                              
          compatbile with SAI modules form i.MX6

Daniel Baluta (2):
  arm64: dts: imx8mm: Add SAI nodes
  arm64: dts: imx8mm-evk: Enable audio codec wm8524

 arch/arm64/boot/dts/freescale/imx8mm-evk.dts | 55 ++++++++++++++++
 arch/arm64/boot/dts/freescale/imx8mm.dtsi    | 66 ++++++++++++++++++++
 2 files changed, 121 insertions(+)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
