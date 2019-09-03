Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F9FFA637E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Sep 2019 10:04:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U4wAE0Xz62OjoRSzOX2M15q2UFso+afdSOoXBeTHZns=; b=j8R5P64PvFEaf+
	S4jZrSUy4E8JPhogH4hIeaX9Dc3R0pQAJjX/arKth5EepeFEpie9rLmZHWjociUjPrlZbRdAZRap1
	fdvApwheqA1wgWGzlbtjNLPyX2uSGHGxMVJ25iPh3g8Tk8cpClyKxU3COQwiYwVz1UFYAv8Hs2f8L
	cPrbvuy7goqcFsHb9G6ivExF1b+iS3Gfy/uMBAEi8XI1u8s5LywFxTNTgFOvsznbhn3dj92pLeZ4R
	tvO1zRHzGJZh5RXLvLMSVZo3jD6Ts5aEisK09Dx+TfdA+KLt0tAkIvSj1YfP+/vID2ewjHhrd0dq2
	YNyGUisHGz0ol7PULvMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i53ng-0004V7-LK; Tue, 03 Sep 2019 08:04:28 +0000
Received: from mail-eopbgr80135.outbound.protection.outlook.com
 ([40.107.8.135] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i53nC-0004E0-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Sep 2019 08:04:00 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S3W+57ENYAuaA67/05w1PZZIHm+2hzVHoFnNkugpR1xG92IN7HKdoi3XrLiscmBPtx8Z6pdNYOGkuKx/SFPNZnQrwN0FdKDJbdECOJsFFtL4j7N/V9vdp5rIDsuDh1fmHrTCtOFEfCbMea8IYXh0gjajSauzEv4dRCJhUggxP2SQXmPsNYs4968qcIHO84sAAG4gCPEIDwFxtt+blVfZx9klCB8dZa+qYuo4Qmtea/TaSVHIw/He/O5Ee33snbyhRVQrRpciPERmI8fch7EYXixrLg9f0rG+VUOYsytFjZTJBVo112+sV+b/Pxe7iHwwTWGgmrJAUWRg/KRg4TMNew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nG1Ucz8Xr4Q7OcVvlo1D+dPo6jIOhRVdAT2fr3wp9Ws=;
 b=HMpbUfUDfyb2jVfe3/0iajgYSi1zG0N7ddPHGaqzxHzD64VZ3t4CQjYPOCBC/ErOPMjO9w5fuFCeHXxi6zXm4YnubffGZIXsjGa0xy9zn2r4pFH/c1x5si3dQzb5kNzt1w6RQYQpzpqbXHf1frcwHuosSeL3i7Zs5AkIQtHDUEuDH6roOh6HZjVGlKINQ2er8qxqA4QwB2WJr4XDDe323JGRNno2ecrXjuQRlAYJBl11nrtuoXyr52fZXBSebu5fFfd8i6E++kf8ZeoSXap34l0nfl6LLYZ7JHvnlW8mUJxy9apjTQvRqkq93ivYdf2wla2a3RpfL2//IuFkNMF/BA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nG1Ucz8Xr4Q7OcVvlo1D+dPo6jIOhRVdAT2fr3wp9Ws=;
 b=eUdzVphf2TQAEIUtreOLDljNkApucMtkpTQd5YjYX/1mPvsWS/9V2qVHWVI/NiLKiX118cqWgfHOc+LGcBET5vMrrzPFA2DYNoEh7BJqJGHIPCdtrndx+NL354OjUeBSZkgXZKI2+v2uTGRtTiAc2T6Hq/xcS0pDn4lWeJMjbeU=
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com (52.134.17.157) by
 VI1PR0502MB4014.eurprd05.prod.outlook.com (52.134.18.33) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Tue, 3 Sep 2019 08:03:46 +0000
Received: from VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9]) by VI1PR0502MB3965.eurprd05.prod.outlook.com
 ([fe80::f59f:a307:9c53:63b9%6]) with mapi id 15.20.2220.022; Tue, 3 Sep 2019
 08:03:46 +0000
From: Philippe Schenker <philippe.schenker@toradex.com>
To: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Mark Brown
 <broonie@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Liam Girdwood <lgirdwood@gmail.com>
Subject: [PATCH 0/3] Add new binding regulator-fixed-clock to regulator-fixed
Thread-Topic: [PATCH 0/3] Add new binding regulator-fixed-clock to
 regulator-fixed
Thread-Index: AQHVYi4cbo2B9tBfLEa3D4jnCdy4qA==
Date: Tue, 3 Sep 2019 08:03:45 +0000
Message-ID: <20190903080336.32288-1-philippe.schenker@toradex.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR0802CA0015.eurprd08.prod.outlook.com
 (2603:10a6:800:aa::25) To VI1PR0502MB3965.eurprd05.prod.outlook.com
 (2603:10a6:803:23::29)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=philippe.schenker@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.23.0
x-originating-ip: [46.140.72.82]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c20d5a36-9ee3-4f78-d0b1-08d730453e84
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:VI1PR0502MB4014; 
x-ms-traffictypediagnostic: VI1PR0502MB4014:
x-ms-exchange-purlcount: 1
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0502MB4014BA4D63ACBE2E2338AEE4F4B90@VI1PR0502MB4014.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01494FA7F7
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(39840400004)(376002)(346002)(136003)(396003)(366004)(199004)(85664002)(189003)(6436002)(66066001)(81166006)(110136005)(54906003)(5660300002)(71200400001)(305945005)(2501003)(25786009)(476003)(6306002)(81156014)(2616005)(44832011)(6512007)(66446008)(99286004)(66946007)(66556008)(186003)(64756008)(66476007)(26005)(6486002)(71190400001)(4326008)(53936002)(52116002)(486006)(102836004)(1076003)(7416002)(6116002)(478600001)(86362001)(966005)(50226002)(14454004)(2906002)(36756003)(8936002)(14444005)(3846002)(6506007)(386003)(316002)(256004)(8676002)(7736002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR0502MB4014;
 H:VI1PR0502MB3965.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: r281zofcXSOtkHg3Ca5PuqOuDV7THauvNbvjeooMI8u+V2C3hjCEB/6JcV8OYL2f+A3F08mM4d61/nqmgyYaK3avCEBjhGfztjLmbACU7znff1B3pfLcdqBDdoUZfvQyP6kLjC0kiIOKkbRAYG30By355iVDQUxSPTLVD501CHBmsA6H3G76Ojg8BlfhD710A1KfsFzLvHNenilPmaMZJZOvPUS/jYCmQvrxDLgG13Hao5mtN6ibrQNp0CvpJ29Cbg+khTo6Bt8meSFpIQqEVoBv/yAa9BEMcnnwaqgg1obfy86pw6L1fJgAm8zcawdSjD/ltOoy4dWfQq2RoZyC6Ae+ToY5id5gvWGBOrsRUfHGAYqWhvXnmTT8M1OuOdo2jiJhTzjmpui8fDSCyub7OKHUjaGR1Ul6JAEf07Q44S0=
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c20d5a36-9ee3-4f78-d0b1-08d730453e84
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Sep 2019 08:03:45.8641 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EyK0fZ1pybILPSRZMA1d01OBKD+5NvCHlS10qFoGIAVX7LMdc7q6ypUUNOqh5avnv+2i1BtNzBC2h4lLGSskaVdk5uquMpyzJrRJTyvxFgI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0502MB4014
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_010358_605645_DFFC6143 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.8.135 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Luka Pivk <luka.pivk@toradex.com>, Stefan Agner <stefan.agner@toradex.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Max Krummenacher <max.krummenacher@toradex.com>,
 Fabio Estevam <festevam@gmail.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Our hardware has a FET that is switching power rail of the ethernet PHY
on and off. This switching enable signal is a clock from the SoC.

There is no possibility in regulator subsystem to have this hardware
reflected in software.

I already discussed with Mark Brown about possible solutions and he
suggested to create at least a new compatible. [1]
This discussion includes also a better explanation of our circuit as
well as schematics. So please refer to that link if you have questions
about that.

In this first attempt I created a new binding "regulator-fixed-clock"
that can take a clock from devicetree. This is a simple addition to
regulator-fixed. If the binding regulator-fixed-clock is given, the
clock is simply enabled on regulator enable and disabled on regulator
disable.
To be able to have multiple consumers a counter variable is also given
that tells how many consumers need power from this regulator.

Best regards,
Philippe

[1] https://lkml.org/lkml/2019/8/7/78



Philippe Schenker (3):
  regulator: fixed: add possibility to enable by clock
  ARM: dts: imx6ull-colibri: add phy-supply and respective regulator
  dt-bindings: regulator: add regulator-fixed-clock binding

 .../bindings/regulator/fixed-regulator.yaml   | 18 +++-
 arch/arm/boot/dts/imx6ull-colibri.dtsi        | 12 +++
 drivers/regulator/fixed.c                     | 86 ++++++++++++++++++-
 3 files changed, 112 insertions(+), 4 deletions(-)

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
