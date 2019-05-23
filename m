Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8293827464
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 04:33:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KnCJiBZaMzwkPwr5NV0iKTzipYffnuVAfeqE8Xb7YT4=; b=LQHeiv/rM36JWc
	vbMwXL56Y8bkK7aHtYZF7WT7sAAOSOZwsnihYJbre1MJmiAMlrjJTGpkr92PU9pnjCq1Jy04iTgD6
	AtBWVEGwwxOFAKl+4MUgFEPiH2neQpJQVkl3r9pa0YzKPUOhfL2TUvsUDVigOwoL2aadCQBDlHP5Q
	t55bDcPy8qI/28c8uuY3PY5ia5rIJFiDCaH4sYT8rVB1DpadXDVO/XjtbwrMhF1/oJYpmUGAVANs/
	vqkuQyaz1n7ghHat4nD8FGfMfNKJGaKFHfwfFI0vVG0Ra321RHirNzc0NSXPcfCcg6XS4S04N1/61
	AKZl9iU2nn5JCZa70PEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTdY1-0003tN-Fb; Thu, 23 May 2019 02:33:37 +0000
Received: from mail-eopbgr60060.outbound.protection.outlook.com ([40.107.6.60]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTdXv-0003sn-5V
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 02:33:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=u2pK2nk+jKWXtZXdvMZZ3y8Ol+oaNT6tFDKhSdeVfHI=;
 b=k663+5f2Q231UU38NjSEWWeaDUivRdcGOt/PwSTQd/388AYdqJL+g5oHcYhExYIkAzR3q64G2IRs88pNBUfhxk4JXN/CD9rEv3FCm/zt4dGjK0HXKPPHyCLmLxHcmA1Km/pfaGvUFc3KYWLPM+kxCZZSnQU/Ssidh447Bsl2/BE=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2494.eurprd04.prod.outlook.com (10.168.65.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.18; Thu, 23 May 2019 02:33:25 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1922.016; Thu, 23 May 2019
 02:33:25 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, David Miller <davem@davemloft.net>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Alexandru Marginean <alexandru.marginean@nxp.com>
Subject: [PATCH net-next v2, 0/4] ENETC: support hardware timestamping
Thread-Topic: [PATCH net-next v2, 0/4] ENETC: support hardware timestamping
Thread-Index: AQHVEQ/lOru7YbqaqUKfl9qTVlpeDA==
Date: Thu, 23 May 2019 02:33:24 +0000
Message-ID: <20190523023451.2933-1-yangbo.lu@nxp.com>
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
x-ms-office365-filtering-correlation-id: c2e3befc-ba54-4aac-9fb5-08d6df27079a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2494; 
x-ms-traffictypediagnostic: VI1PR0401MB2494:
x-microsoft-antispam-prvs: <VI1PR0401MB2494730BBFBD78B84F6D6792F8010@VI1PR0401MB2494.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 00462943DE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(396003)(366004)(346002)(376002)(136003)(189003)(199004)(2616005)(54906003)(66066001)(86362001)(478600001)(110136005)(26005)(476003)(52116002)(486006)(8676002)(66476007)(25786009)(81166006)(81156014)(186003)(66946007)(66556008)(64756008)(66446008)(99286004)(73956011)(2906002)(102836004)(3846002)(6116002)(6512007)(386003)(53936002)(2501003)(6506007)(256004)(14444005)(36756003)(68736007)(50226002)(305945005)(6486002)(7736002)(8936002)(71200400001)(71190400001)(6636002)(5660300002)(316002)(1076003)(14454004)(4326008)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2494;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 4UB/wrpE2ABEeUwvDWknJ5GvAcSjcW24nZjCDsO1kCOuY55Eg24gt9x/M34ZDJsen9JYNlacySmrSllk8Dq0oe+ZzWHLqILw5P+E14iZ6MACzuEvT4+xjhvVjJGMcED/jaRZ3scCj2L+XyQ78tSsN/VLiY8srgrBIGaZ+ZVA5SVH6iG4hOiQAg7fTszLMBxa8IiMbIxayKOyMcpucXxQ+Ch3NWRNF4j76PBEjfARupmHnVGQ15G3ptV65cUQzKtallGlHrYWdseX9O1AzEnb0ohdI/l7tbA3vslR41ICW9mzUvC5vThaZQ0dBdK61sttwZQ6B5WD0dnEl8s/5hyELJhSgi+L/M4fLEEVoqret13GsiqE0LdHFuj8izDqwVyw0MIgJ1fsh9U4p7pjKneAInBzjZyaGsG+R0DDQe3iW3o=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c2e3befc-ba54-4aac-9fb5-08d6df27079a
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 May 2019 02:33:25.0872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yangbo.lu@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2494
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_193331_205677_E7D2EE33 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.6.60 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

This patch-set is to support hardware timestamping for ENETC
and also to add ENETC 1588 timer device tree node for ls1028a.

Because the ENETC RX BD ring dynamic allocation has not been
supported and it is too expensive to use extended RX BDs
if timestamping is not used, a Kconfig option is used to
enable extended RX BDs in order to support hardware
timestamping. This option will be removed once RX BD
ring dynamic allocation is implemented.

Yangbo Lu (4):
  enetc: add hardware timestamping support
  enetc: add get_ts_info interface for ethtool
  dt-binding: ptp_qoriq: support ENETC PTP compatible
  arm64: dts: fsl: ls1028a: add ENETC 1588 timer node

 .../devicetree/bindings/ptp/ptp-qoriq.txt     |   1 +
 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   6 +
 drivers/net/ethernet/freescale/enetc/Kconfig  |  10 ++
 drivers/net/ethernet/freescale/enetc/enetc.c  | 158 +++++++++++++++++-
 drivers/net/ethernet/freescale/enetc/enetc.h  |  15 +-
 .../ethernet/freescale/enetc/enetc_ethtool.c  |  31 ++++
 .../net/ethernet/freescale/enetc/enetc_hw.h   |  13 ++
 .../net/ethernet/freescale/enetc/enetc_pf.c   |   1 +
 .../net/ethernet/freescale/enetc/enetc_ptp.c  |   5 +
 .../net/ethernet/freescale/enetc/enetc_vf.c   |   1 +
 10 files changed, 235 insertions(+), 6 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
