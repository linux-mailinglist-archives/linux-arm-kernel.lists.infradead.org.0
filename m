Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7221C3FE
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 09:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UXNV6h8NGHTvPqJLH1xIOeGx2TBChiRZeJnkLA6+qdE=; b=TKAo18gVoa33no
	8sWdWDSldGGNl1GEJHhElv7etVThHVsweR6QwrJbV/M9h+rrcFM2AcL6VTJn+Z1hKzVqJVgwOTLsH
	EIacwnZzfMogc2s32X75twq/7JnWVV4UnKbAbtQkz0B/gn3DClg2zas5lpUNPMnu6DgHhxma7H80o
	0tCleedyQgym4c1LuKbYvommxaIify/5QeXT48mtgEqb1UWJC2wW0INFv8RDrdwaEYhE+R3q2GmxR
	gOaKUFowYtiyVzA3808urcxI0wxcSpB9wKlbiBGONx/uKjzqe50P5ZKaZb7ZikLfT7zVhxeZAOWji
	mCnoDt7tCEaO0AeN9L5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQS1f-0000Kn-KD; Tue, 14 May 2019 07:39:03 +0000
Received: from mail-eopbgr40048.outbound.protection.outlook.com ([40.107.4.48]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQS0v-0007vQ-3n
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 07:38:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A4ZcdpJr8Xei9ksyqvIDSKicjibGGIZgt9EpkA+fOyc=;
 b=X55DOfHSLUolOkTTu8oyoS30Mcy8S00GWehtmXklItP1GAfu6Z37ojLHdTUaLckAH5As7c2uCyiL2AbnD4fGqmnLwBPQJer3XOviWxDOuh4dPT+FftYqZTcZJiWNHtZm+zJWDpNM36g9QaSO3Vrp38mzZH3hmZvi01+B5lLzZLk=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5392.eurprd04.prod.outlook.com (20.178.120.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 14 May 2019 07:38:13 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 07:38:13 +0000
From: Peter Chen <peter.chen@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "balbi@kernel.org"
 <balbi@kernel.org>
Subject: [PATCH v2 4/8] doc: dt-binding: usbmisc-imx: add compatible string
 for imx7ulp
Thread-Topic: [PATCH v2 4/8] doc: dt-binding: usbmisc-imx: add compatible
 string for imx7ulp
Thread-Index: AQHVCif8SSyjPIOxVUiRvwXIepLXqg==
Date: Tue, 14 May 2019 07:38:13 +0000
Message-ID: <20190514073529.29505-5-peter.chen@nxp.com>
References: <20190514073529.29505-1-peter.chen@nxp.com>
In-Reply-To: <20190514073529.29505-1-peter.chen@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.14.1
x-clientproxiedby: HK0PR03CA0086.apcprd03.prod.outlook.com
 (2603:1096:203:72::26) To VI1PR04MB5327.eurprd04.prod.outlook.com
 (2603:10a6:803:60::16)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=peter.chen@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 6dd25d1e-0e9f-4c2a-53b6-08d6d83f1e78
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5392; 
x-ms-traffictypediagnostic: VI1PR04MB5392:
x-microsoft-antispam-prvs: <VI1PR04MB5392ED03DEC73E9FB3ACB2F48B080@VI1PR04MB5392.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1079;
x-forefront-prvs: 0037FD6480
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(396003)(136003)(376002)(346002)(39860400002)(189003)(199004)(386003)(6506007)(102836004)(7736002)(305945005)(6436002)(66946007)(26005)(316002)(6512007)(73956011)(6486002)(66446008)(64756008)(66556008)(66476007)(76176011)(11346002)(446003)(2906002)(476003)(2616005)(25786009)(4326008)(3846002)(53936002)(186003)(486006)(44832011)(86362001)(6116002)(71190400001)(71200400001)(50226002)(256004)(66066001)(2501003)(4744005)(1076003)(5660300002)(68736007)(8676002)(52116002)(99286004)(14454004)(36756003)(478600001)(8936002)(81156014)(81166006)(110136005)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR04MB5392;
 H:VI1PR04MB5327.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: jtsYrUpeGoZjpAtQodivhsVjqeP71gavMEt2aaGCqecZHtLEUP1t4U5g3iSuOFjWsLBU+fSTU3tIXId+xwsx/WUVu04Mtbgt4TtISJPWW2oav45fFPQt4PDiM1iTvtIdU+RZMq6ZNESDrUzmMrJnoRT8vy/DGLc5OeLDDlC1AQ6NuSnj0Pj/jvHzrcmioiPWAAUP41wsQT7oPjcAdC3dgUbdoSJR1h3M76nnqTvKK8mMqam7Y+s6xg31+RNBccNJm3pebhJ0yrwbh/7/c5WbgWCEeLakVFoDFfw5EaY+x4yRMAb8akNRXegP+PURIJe9Me1YCctXvFtVMwHvpUq665Yg3oeQaSfkedk49PRZmLJaMghDAQzPnPeIkfLVgIXYgMQvdSu8bCzuhpl6lpiDZOobSCVdPkOCcLobciv0p9U=
Content-ID: <7A9997202107FB488F6692FEBA0E02D1@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6dd25d1e-0e9f-4c2a-53b6-08d6d83f1e78
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 07:38:13.1139 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_003817_618639_4A8B1060 
X-CRM114-Status: GOOD (  11.34  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.4.48 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Peter Chen <peter.chen@nxp.com>,
 "linux-usb@vger.kernel.org" <linux-usb@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add compatible string for imx7ulp

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 Documentation/devicetree/bindings/usb/usbmisc-imx.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/usbmisc-imx.txt b/Documentation/devicetree/bindings/usb/usbmisc-imx.txt
index a85a631ec434..b353b9816487 100644
--- a/Documentation/devicetree/bindings/usb/usbmisc-imx.txt
+++ b/Documentation/devicetree/bindings/usb/usbmisc-imx.txt
@@ -7,6 +7,7 @@ Required properties:
 	"fsl,vf610-usbmisc" for Vybrid vf610
 	"fsl,imx6sx-usbmisc" for imx6sx
 	"fsl,imx7d-usbmisc" for imx7d
+	"fsl,imx7ulp-usbmisc" for imx7ulp
 - reg: Should contain registers location and length
 
 Examples:
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
