Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF7842C7A9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 15:21:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T/xk5YiEmzo9FesUT7CEPioSYPiZwz5zabm25XOESCs=; b=aeg25+O7YyNfpy
	89mk/rkQPykhmhVaV0sJtwf9iXchVNPolnGM0/BCQGt7QqQG+Vex5G7J+F/M3xSxIIsreVXeB/Xx9
	m3Gx29hI3M4ozLmZGu4rI6nMkBWyPyuBHJGhxR6jD7xeU2LgXyPbxoO5hZ3RIj/sfMfFqqACRPBFs
	fUwUxlXxguNuVOJyI8tLAgaVsPnhsVKxRYoc5b/Rk12xEZlW7qmMJcbOSPzooK1zWoEpMrbvxOPP1
	gpQzEhHiScaLgyXM6PgRpX+COBThZHtxFXV9deLWa/fkWzGr4RcI0xijGZRs59TeiVWHvPsII7Z0t
	9ruTmzQp+/p4RmO5kQxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVc2U-0001kM-Nl; Tue, 28 May 2019 13:21:14 +0000
Received: from mail-eopbgr10047.outbound.protection.outlook.com ([40.107.1.47]
 helo=EUR02-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVc2L-0001jG-RZ
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 13:21:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TxQkmAR3/nC4h/iM+VsfJ2M4qbq6Dn4Xax/aaZ3e42Y=;
 b=YoU4Dd3aLu1OJFqS08Vr+noccKz98wxSDY+SMa6RLBIoCeHFWQ4Hv/O78kGlHT20HWfaJZaHA4sMG8Rqsgsxfodt4NAMMhPrXUpriQGZ0os7UphgfhPfnhupbKZctB7CHwFIOLCxp/Wr+SlujZJs7U8c8djrdLpyDTdTeQC4RNU=
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com (20.177.35.159) by
 AM6PR04MB4261.eurprd04.prod.outlook.com (52.135.168.151) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1922.15; Tue, 28 May 2019 13:20:59 +0000
Received: from AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::fd2a:e078:f9d7:cb6b]) by AM6PR04MB5207.eurprd04.prod.outlook.com
 ([fe80::fd2a:e078:f9d7:cb6b%7]) with mapi id 15.20.1922.021; Tue, 28 May 2019
 13:20:46 +0000
From: Daniel Baluta <daniel.baluta@nxp.com>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "timur@kernel.org" <timur@kernel.org>,
 "nicoleotsuka@gmail.com" <nicoleotsuka@gmail.com>, "broonie@kernel.org"
 <broonie@kernel.org>
Subject: [PATCH 0/3] Add mclk0 clock source for SAI
Thread-Topic: [PATCH 0/3] Add mclk0 clock source for SAI
Thread-Index: AQHVFVgpjX4j9HD02UiVNkRH/YGV5Q==
Date: Tue, 28 May 2019 13:20:46 +0000
Message-ID: <20190528132034.3908-1-daniel.baluta@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR09CA0114.eurprd09.prod.outlook.com
 (2603:10a6:803:78::37) To AM6PR04MB5207.eurprd04.prod.outlook.com
 (2603:10a6:20b:e::31)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=daniel.baluta@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.17.1
x-originating-ip: [89.37.124.34]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 9bf85019-402e-42f0-49c1-08d6e36f4b4c
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:AM6PR04MB4261; 
x-ms-traffictypediagnostic: AM6PR04MB4261:
x-microsoft-antispam-prvs: <AM6PR04MB4261B611E6F38679AC25DE78F91E0@AM6PR04MB4261.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-forefront-prvs: 00514A2FE6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(366004)(136003)(39860400002)(396003)(346002)(376002)(199004)(189003)(66066001)(71190400001)(305945005)(71200400001)(8676002)(81156014)(102836004)(2906002)(386003)(2501003)(6116002)(3846002)(7416002)(478600001)(53936002)(68736007)(50226002)(5660300002)(81166006)(7736002)(1076003)(14454004)(8936002)(86362001)(256004)(186003)(26005)(6512007)(486006)(476003)(2616005)(54906003)(110136005)(44832011)(73956011)(64756008)(66946007)(66556008)(66476007)(66446008)(316002)(52116002)(25786009)(36756003)(6506007)(99286004)(6486002)(14444005)(6436002)(4326008)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:AM6PR04MB4261;
 H:AM6PR04MB5207.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: KyJZdGjWJHl4Fn5nlwMq+O4xb85yLkxz9PifqhrC42FFMqkYsJNsxmTLLNfsglGCwBjU/9KcVtJF3FuCZma+hYRSfEluO0rs3X5jJ4NqIgKDyBJEWlJDvGHl7/l3ZZ5d5QSVBpjFuOEqF3oW2V94porIMrMRtK7YaGPnZ0TnvZqqeaE7klh/IhdBA5UTWdi/XqI1afrUXaujMFgVuimIGzqXvsmnYF43+j3M9dPafa5fbd01PT4FzjISA6U3Ffisy7Fp2CEwRMYPHUKugYdPOnko34uBp5YPtPT0ZmG1da16LwX6TO7A3C3UMsCSHOulp2pVo3QApfvhqqXv4W3OY2KsSpc/ONMZSlEF3+5YAzXHVyN2cujOLk4Zr7WoxwTHp9nzQalqrtk49R1CDzqM35eEDaVV9ebqj2WsvLbI9yE=
Content-ID: <27ECECFB133A6741B1718F4D42309625@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bf85019-402e-42f0-49c1-08d6e36f4b4c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2019 13:20:46.8556 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: daniel.baluta@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR04MB4261
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_062105_920333_F4DD8E7D 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.1.47 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "Xiubo.Lee@gmail.com" <Xiubo.Lee@gmail.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "tiwai@suse.com" <tiwai@suse.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "lgirdwood@gmail.com" <lgirdwood@gmail.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch series brings together patches [1] and [2] which
introduce mclk0 clock source via DT.

mclk0..3 are the four clock sources options
of SAI's clock MUX. 

mclk0 option selects:
 - Bus Clock on i.MX8
 - MCLK1 on i.MX6/7

Finally we also update the DT binding information for SAI clocks.

In [1] and [2] Nicolin had a very good point on the fact that
mclk0 might not be needed in the DT. Anyhow, there are two reasons
for which I think mlck0 should be added to DT:

1) SAI clock source select MUX is really part of the hardware
2) flexibility! We let DT tell us which is the option for MUX
option 0.


[1] lkml.org/lkml/2019/4/20/141
[2] lkml.org/lkml/2019/4/20/56

Daniel Baluta (2):
  dt-bindings: sound: Clarify the usage of clocks in SAI
  ASoC: fsl_sai: Read SAI clock source 0 from DT

Shengjiu Wang (1):
  ARM: dts: imx: Add mclk0 clock for SAI

 Documentation/devicetree/bindings/sound/fsl-sai.txt | 5 +++--
 arch/arm/boot/dts/imx6sx.dtsi                       | 6 ++++--
 arch/arm/boot/dts/imx6ul.dtsi                       | 9 ++++++---
 arch/arm/boot/dts/imx7s.dtsi                        | 9 ++++++---
 sound/soc/fsl/fsl_sai.c                             | 3 +--
 5 files changed, 20 insertions(+), 12 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
