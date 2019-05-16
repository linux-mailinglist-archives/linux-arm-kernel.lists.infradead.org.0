Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E021320301
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:59:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GEmqyfZKwc0hyRVwPDUufexKF2gS2K82d4wpxQ69uQQ=; b=UPlhEUOpmRKu2Y
	uzqe1Zc33qWhuDOsrcsK97HBOMM7UJy3/fysaBqT0XJwlLVRbfoXFEVH6RMfSBagL9Z2cA8aB/1vI
	ohxBQUH1ZChgx1QC85+u03fRhQ7A9vepRqwES3VBZcx+BC/G5AQQOHLPnp7s4gbJxhu5x30lwhg3W
	ioiGNG8wtdwsg5cjJX72UvlDq8aj9WiXO7Ta/6F+29dmxCL0NNq9U3O1D0/Pl7bpxuhxY9+zbXHar
	v5Vt8WQt7Y8pNCwvbd9L52ZWOg8x6nuega7kBEou1wsTsQV5+Bi/08p/Jrpq03nK3QPMbIbVla3D/
	iN9tFp8xbh/e5Q6Ft/wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRDAV-0006qu-CU; Thu, 16 May 2019 09:59:19 +0000
Received: from mail-eopbgr130081.outbound.protection.outlook.com
 ([40.107.13.81] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRDAM-0006pY-SV
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:59:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cQye0XYGDhY/V2eNEpm+XUPUaowSGWduKigo6cr4DVE=;
 b=oLi3RECuuykNEG7GrQNE8dfq672wfCjFT9mm+urW3oXwBtMTL5htgclT4CVmcDDbiusz/R30nrYsdhfyiEphh+KKMBcfch9B901JfaQwLN7vkOcuRaWMdEicfH+vbmSK/xIPtNJawz+rY3eldfcakvn0UgF6xvXweQ135Ym+BX8=
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com (10.169.132.138) by
 VI1PR0401MB2637.eurprd04.prod.outlook.com (10.168.61.7) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.24; Thu, 16 May 2019 09:59:04 +0000
Received: from VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986]) by VI1PR0401MB2237.eurprd04.prod.outlook.com
 ([fe80::b091:6395:e853:5986%3]) with mapi id 15.20.1900.010; Thu, 16 May 2019
 09:59:04 +0000
From: "Y.b. Lu" <yangbo.lu@nxp.com>
To: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, Richard Cochran
 <richardcochran@gmail.com>, David Miller <davem@davemloft.net>, Claudiu
 Manoil <claudiu.manoil@nxp.com>, Shawn Guo <shawnguo@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 0/3] ENETC: support hardware timestamping
Thread-Topic: [PATCH 0/3] ENETC: support hardware timestamping
Thread-Index: AQHVC83+OKxQcRjJ5kqAZ0JrDGOFvA==
Date: Thu, 16 May 2019 09:59:04 +0000
Message-ID: <20190516100028.48256-1-yangbo.lu@nxp.com>
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
x-ms-office365-filtering-correlation-id: 86b880af-a1be-4ed7-bbf8-08d6d9e520a6
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR0401MB2637; 
x-ms-traffictypediagnostic: VI1PR0401MB2637:
x-microsoft-antispam-prvs: <VI1PR0401MB2637642DB7DD1BD6F083FE43F80A0@VI1PR0401MB2637.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0039C6E5C5
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(396003)(39860400002)(136003)(366004)(346002)(189003)(199004)(52116002)(7736002)(3846002)(6116002)(14454004)(8936002)(81166006)(305945005)(81156014)(8676002)(36756003)(5660300002)(316002)(2616005)(476003)(6486002)(68736007)(6512007)(6436002)(486006)(25786009)(66066001)(66476007)(1076003)(66446008)(66556008)(64756008)(2906002)(386003)(6506007)(71190400001)(71200400001)(256004)(86362001)(4326008)(186003)(53936002)(50226002)(99286004)(110136005)(54906003)(66946007)(26005)(102836004)(478600001)(2501003)(73956011);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0401MB2637;
 H:VI1PR0401MB2237.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: JB4b/oQQo4TS1EChMl+ObEXbjX7Z18ddJ+oWSZCh9DQmZO633ORHyryCYIP5XLgom9AwDV41IRJ8YD8U09vbN1sMPLq/XbRo2/3cqXGu8fYB+YwVI83CRoSXZoKMsEyXQwla12S46bE7mrOrcpLyvYuPEI/WvLHj9DywSgcXnn/D7cgkZQDK08rLtj6pKmMGABXkITtVMU63G2l7EgDWXGl0RSXZenF2slLRX1npgF3MrCQSswVKHIKSeyy9+I6RN90exAKZSE5NToBzPXUo20fPZ8+mgSMygUNFf+D/rDRdmvsAfT781vQ6/H/rMPcG/8hycAyegeRqyhpVj8DKwOC7pJs1RyZFVJAv+TJSnpZxJlReFFkXNyK2tkyLnLzi+SOem9s6Rbp0NubQmwOcluMkt+MG+PBL1zsGiCqSv4A=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 86b880af-a1be-4ed7-bbf8-08d6d9e520a6
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 May 2019 09:59:04.3364 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0401MB2637
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_025910_925143_0EFD834A 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.13.81 listed in list.dnswl.org]
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

This patch-set is to support hardware timestamping for ENETC
and also to add 1588 timer device tree node for ls1028a.

Because ENETC RX BD ring dynamic allocation hasn't been
supported and it's too expensive to use extended RX BDs
if timestamping isn't used, we have to use a Kconfig
option to enable/disable timestamping for now. This
Kconfig option will be removed once RX BD ring dynamic
allocation is implemented.

Yangbo Lu (3):
  enetc: add hardware timestamping support
  enetc: add get_ts_info interface for ethtool
  arm64: dts: fsl: ls1028a: add ENETC 1588 timer node

 .../arm64/boot/dts/freescale/fsl-ls1028a.dtsi |   5 +
 drivers/net/ethernet/freescale/enetc/Kconfig  |  11 ++
 drivers/net/ethernet/freescale/enetc/enetc.c  | 156 +++++++++++++++++-
 drivers/net/ethernet/freescale/enetc/enetc.h  |  14 +-
 .../ethernet/freescale/enetc/enetc_ethtool.c  |  31 ++++
 .../net/ethernet/freescale/enetc/enetc_hw.h   |  13 ++
 .../net/ethernet/freescale/enetc/enetc_pf.c   |   1 +
 .../net/ethernet/freescale/enetc/enetc_ptp.c  |   5 +
 .../net/ethernet/freescale/enetc/enetc_vf.c   |   1 +
 9 files changed, 231 insertions(+), 6 deletions(-)

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
