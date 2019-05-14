Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A5681C3F9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 May 2019 09:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+kF0HbrW+Geu8IjiK8XbGTQWq5e7bRe2pGvtN+hoWAY=; b=jSvwJVXUKdS+dv
	4v3TQY5Fwm0Ss1LZDJplfKesw0F02d/hq8X9cp7p5w27gq9YZS/NoLxtH25zZazQN+8ly5iRYZdgz
	YwY3Die5u2QGepGjKWadk4wbzaJYtluKKk4nwNIMGZQs5I3efXAY3/X3Cdw7/qAHb+v/beUDjDUG/
	R3QEW/ts5yH52ps9rrOXodAuPlA2O5OzCYGWAXOSHRc7snqz8FjvtIWUpRiC9+ZYDWg2Md7qdLj+L
	mJQwe+1XI7Z8lhMHhn6F9RSMbCPz4ySUJvARjE9tZu/yGQ9S9nYToIuwKNsGe/XkhOS3gXbBNb6wb
	sRKCGNcaIommxC1b1Tkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQS10-0007r1-9O; Tue, 14 May 2019 07:38:22 +0000
Received: from mail-eopbgr70043.outbound.protection.outlook.com ([40.107.7.43]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQS0i-0007iP-EZ
 for linux-arm-kernel@lists.infradead.org; Tue, 14 May 2019 07:38:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nvhjJwPJQAmt6osV58d0ZPm+fi0QlH40uyS1LvKq4OA=;
 b=C/PnVRX7jMcHyY1Sm0kpTzHMbvl3/KZQEoX/NsvbxC39P3FrdEuzT9biNFTLy2mUs0lwZFNMp7OL5NRnde3jTicLv4OUHZD+bdhyrd45K/Y0vMHhFe4ndHzJ3Zg0ze9GBrebn8GNUfS7E+F857p/FWj4xgUCv3jgatBWZBprWGY=
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com (20.177.52.16) by
 VI1PR04MB5392.eurprd04.prod.outlook.com (20.178.120.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1900.16; Tue, 14 May 2019 07:37:59 +0000
Received: from VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61]) by VI1PR04MB5327.eurprd04.prod.outlook.com
 ([fe80::4923:8ad8:62c1:3e61%5]) with mapi id 15.20.1878.024; Tue, 14 May 2019
 07:37:59 +0000
From: Peter Chen <peter.chen@nxp.com>
To: "shawnguo@kernel.org" <shawnguo@kernel.org>, "balbi@kernel.org"
 <balbi@kernel.org>
Subject: [PATCH v2 1/8] doc: dt-binding: mxs-usb-phy: add compatible for 7ulp
Thread-Topic: [PATCH v2 1/8] doc: dt-binding: mxs-usb-phy: add compatible for
 7ulp
Thread-Index: AQHVCif0oaNedQipEk+Q4CDINsOA4A==
Date: Tue, 14 May 2019 07:37:59 +0000
Message-ID: <20190514073529.29505-2-peter.chen@nxp.com>
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
x-ms-office365-filtering-correlation-id: f57f3d8a-7a4b-43c1-530f-08d6d83f1689
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR04MB5392; 
x-ms-traffictypediagnostic: VI1PR04MB5392:
x-microsoft-antispam-prvs: <VI1PR04MB53921E5EF7178F1B594BEF918B080@VI1PR04MB5392.eurprd04.prod.outlook.com>
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
x-microsoft-antispam-message-info: /Luzuwk5IGfW+xv5JTKPYSmAw5rPkZOQi59PCeFJr3Vw/r8y/5fUz/+KSR9QnDQDDlDuhXLuKm+JUfDdXDhfn3VCGAVUWfgIkPt5qnwhpcGOXnMRm0kOSDCPWhPFcdcEJkuC1vvbVPv/stRq/bhYI1KxH0EhzltCpJ7hW+2JR72fAgTHOTYBv8/5WlDPV/STrUPZO2Nxdx887AIzBulwbg2wsJJZOIX8uf8YLvT6ZX+r3W109fDvoq1ySlBP8XQNwyN6F2HTaSIdeJ8qQSp4EVYY5V7cMiWeD6rcF4hiKo47vDRjduVuEMiXgYJ7ZF38s9T0AXeXEbxjJjGBFDI+wfWmXR6CbVEpOYDULnFSEz3hbUQvQO4a1/MmCINFg7SytMkEYDO+bYHSjYCfgYd+OX37oFWNAf1uUtJOztE0FaA=
Content-ID: <E46D016D49C7C94F816436B461741B6D@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f57f3d8a-7a4b-43c1-530f-08d6d83f1689
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 May 2019 07:37:59.7385 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR04MB5392
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_003804_485491_DB9CBED2 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.43 listed in list.dnswl.org]
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

Add compatible for 7ulp USB PHY.

Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Peter Chen <peter.chen@nxp.com>
---
 Documentation/devicetree/bindings/phy/mxs-usb-phy.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt b/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
index 6ac98b3b5f57..32da8d17759a 100644
--- a/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
+++ b/Documentation/devicetree/bindings/phy/mxs-usb-phy.txt
@@ -7,6 +7,7 @@ Required properties:
 	* "fsl,imx6sl-usbphy" for imx6sl
 	* "fsl,vf610-usbphy" for Vybrid vf610
 	* "fsl,imx6sx-usbphy" for imx6sx
+	* "fsl,imx7ulp-usbphy" for imx7ulp
   "fsl,imx23-usbphy" is still a fallback for other strings
 - reg: Should contain registers location and length
 - interrupts: Should contain phy interrupt
-- 
2.14.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
