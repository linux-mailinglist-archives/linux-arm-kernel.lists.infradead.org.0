Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D4E19DAE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 15:00:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LTdrgeFls7WTOA8sEKQwGoqjKGaUzSS7GpO2OfwDrxY=; b=IfgRgBDxg2q7i4
	1ziTqIpN8NKiv8BAIuzt6u+E+vyPuL/c0r/8+wr+PcBbQtqE5ih7O1ZxKzFcadp09aoNMGXmEdLzS
	8H6uniI2SnEG9iy/lzGjB6H/o9CynXcVvIXXiKbbTVBvz3/p9JaXjWmZ1IjXYIhKQCa7km9mA1qNF
	3M8ak/eRX0YjSMIw79oTHjY52gfrjnndSE0sSWN/q1rySVhfYfYkx2pgDfZ+MOeXLbKsaIHebOL4k
	9uSBnueaf5PcnEz1fnwyfQtVYjTQMDb1BgQ+IBozcITNDbEXPLxU607f9LLL2ZoNDB+1YzMMYdiPz
	Qz7n0ptVE2tSu4dg/hDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP58Z-0006c5-Bu; Fri, 10 May 2019 13:00:31 +0000
Received: from mail-ve1eur03on0630.outbound.protection.outlook.com
 ([2a01:111:f400:fe09::630]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP58N-0006TA-1P
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 13:00:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=B3nAIffZWJtiZei8PXmyXUVi/mz6wf4IYQ+H6UL+HKg=;
 b=SopPsFDNh0ykzSFIGxYVysXBApPwpaAvxTfZnOL3+n+q3+2B1od9PLYuNJ8wiYSXfbHAyuocgfZOtq4HrfaWnYqnFPu3uB3SQjVDValkJIJi/E5mrEKGt5RFIs3hqesrPhLKdW0HBq+K5E1beinUnBztT5y1umHBk/aHdMP0F94=
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com (20.177.34.92) by
 AM6PR04MB6182.eurprd04.prod.outlook.com (20.179.6.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1878.21; Fri, 10 May 2019 13:00:13 +0000
Received: from AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::15c1:586e:553c:3cda]) by AM6PR04MB5032.eurprd04.prod.outlook.com
 ([fe80::15c1:586e:553c:3cda%6]) with mapi id 15.20.1856.016; Fri, 10 May 2019
 13:00:13 +0000
From: Pramod Kumar <pramod.kumar_1@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "manivannan.sadhasivam@linaro.org" <manivannan.sadhasivam@linaro.org>,
 Aisheng Dong <aisheng.dong@nxp.com>, "Michal.Vokac@ysoft.com"
 <Michal.Vokac@ysoft.com>, Leo Li <leoyang.li@nxp.com>
Subject: [PATCH v2 0/3] arm64: dts: nxp: add ls1046a frwy board support
Thread-Topic: [PATCH v2 0/3] arm64: dts: nxp: add ls1046a frwy board support
Thread-Index: AQHVBzBOJHZGTIZmHEO+Z8xAU6v8Bg==
Date: Fri, 10 May 2019 13:00:13 +0000
Message-ID: <20190510130207.14330-1-pramod.kumar_1@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.17.1
x-clientproxiedby: SG2PR04CA0183.apcprd04.prod.outlook.com
 (2603:1096:4:14::21) To AM6PR04MB5032.eurprd04.prod.outlook.com
 (2603:10a6:20b:9::28)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pramod.kumar_1@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [92.120.1.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bfb1743-11e8-4a16-2e77-08d6d54770aa
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600141)(711020)(4605104)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB6182; 
x-ms-traffictypediagnostic: AM6PR04MB6182:
x-microsoft-antispam-prvs: <AM6PR04MB61827E85A7D23DA8EC410457F60C0@AM6PR04MB6182.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 0033AAD26D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(396003)(39860400002)(346002)(376002)(199004)(189003)(50226002)(2906002)(6436002)(99286004)(6486002)(186003)(4744005)(110136005)(53936002)(6116002)(52116002)(3846002)(8936002)(4326008)(25786009)(26005)(8676002)(81156014)(81166006)(54906003)(2501003)(66066001)(6636002)(14454004)(6512007)(386003)(102836004)(6506007)(36756003)(478600001)(305945005)(71190400001)(1076003)(486006)(256004)(476003)(2616005)(86362001)(71200400001)(66946007)(66476007)(66556008)(66446008)(316002)(2201001)(7736002)(73956011)(68736007)(64756008)(5660300002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB6182;
 H:AM6PR04MB5032.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: rrJhgjucL9Yj4f9TagoUidfXepBEAAA3ddCHQcfPyRS+1Yor1D1YFKhWdugpZ05b/8heo9ithF4LFBw0CtrXZ+MC4jV1AyV0G+lcrN065h8EWfUBb3oUnqVbFaJrGOmdljfCFF2+lTIxFx1mt4a0RlGGRhPGsnG4s/n16JF/Is2wg6Lo7GwdynNb44GUT4Bq8IS6T/QnTILnEPUsNXXzRu1dtJ1KQYn8VlgK2nS9vm0ydIvEbMmm3xLMKaPEhm3frHY88kanMrFYXWBkAkJzV5P+34bbjmRSzqrDMCIzwrVgKsHsQ/PMxyzWRhINd+ELcmdLqHe1WLfVhZUZsyt7AvGr6/9DbUFi7v6VGXmUZOq6molHkNoLNV19JOTWHy+QoyEguGs/PceneI91hP/IgMhGDu2Nw5lMVLfiZ6yLI+M=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bfb1743-11e8-4a16-2e77-08d6d54770aa
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 May 2019 13:00:13.2841 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB6182
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_060019_191805_76B318F2 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe09:0:0:0:630 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Changes for v2:
- Modified comit message
- Add dts entry for qspi nor flash

Changes for v1:
- Add dts support for ls1046a frwy board.
- Add "fsl,ls1046a-frwy" bindings for ls1046afrwy board based on ls1046a SoC

Pramod Kumar (3):
  dt-bindings: arm: nxp: Add device tree binding for ls1046a-frwy board
  arm64: dts: nxp: add ls1046a-frwy board support
  arm64: dts: nxp: frwy-ls1046a: add support for micron nor flash

 .../devicetree/bindings/arm/fsl.yaml          |   1 +
 arch/arm64/boot/dts/freescale/Makefile        |   1 +
 .../boot/dts/freescale/fsl-ls1046a-frwy.dts   | 173 ++++++++++++++++++
 3 files changed, 175 insertions(+)
 create mode 100644 arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dts

-- 
2.17.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
