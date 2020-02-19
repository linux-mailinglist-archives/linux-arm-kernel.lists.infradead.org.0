Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AFFE1644DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 14:01:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LUoo68gxiPzA2DF8w/MaEo4NA5758SF2SUVuBml6CBs=; b=ZrNyFdsyGkSf2o
	+YZDXwPGAbzacMRNlrY+laWWi+3Fmf+TNWor0FeY4q5gLxSg0ZXFiztxnFVS2LaDZhILkEVLSxREK
	7jGg25kvnjt3+3xDN8+aX7QtYzQsQbf+cI8or4DCtCnowrsjjYtBfBHt11hnwlGkzXbKKa6/WbeJe
	I0vNBaR4RMWnKyVcHtzbG0Lbr8/ZJznOK7N4gc+NGxkQjSOjVLjFvA6yXPg65eoSkTj+m8BbU9aVP
	oCt2XU+hIDsimy/v5IAs6c+6HIoMZJRLcYwX+chdFXQsvhSmse4Yyl9yBjOq/X8FUDTSvPCO9UDcP
	fRNRL2kxZbegKXfJodkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4OyQ-00018E-Jg; Wed, 19 Feb 2020 13:01:06 +0000
Received: from mail-vi1eur05on20728.outbound.protection.outlook.com
 ([2a01:111:f400:7d00::728]
 helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4OyF-00013r-MF
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 13:00:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TI3+zbcccony3TBt0HmudyxILPU4Npesdph0L5rba88zYxDP0w4FvarmzZWW0Tn7TBseOrLSlbmVvH5rwHwynxkz36bF17cTrwmaeyiU7H9cB934joKRYLb20xQjJEo57mBDaHPBDPbyjr03x3yOjzhjtWOgxdhZ1EJLO8GgmOtnCp+uLh67hFuQaNGHoXV73PYZUeQjb/n+nGicwhp6ovGtpEtxYig2zv36BSsatFu8tMbnXBqtK38aUxmBThmtMRHaTBsXQVIhYDgsE0DJGHe9h+ZEXMURFrNPCj2weqpVIslLg+htIIdy/TUpEc6YQ7lGgVE5moxZGUycZdoX1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hYpTI11WUhk8i2wGRu8ScNZf5lmon5LgE9t3hmjZgAk=;
 b=Dttu3hHH8d2Z9q8pwp7QRFrCGnlOCjbkbmhbcWsKz7tqzOwhc6EgkjzL25AupehHhtv4zSqrljOvJwKAIo+2laVnIjxTyWe2iCFuq07xFI1W6cK0vgQQsLMfEj+OVjDt8FqTF4JSj4kBCQkGQA+v50PREM5El/a7ba/q28PIa7zq7zJKIPUxMolqNwU9bRJpLeoewKMyvGiCbH1kRoQquX7GQHEUph5k3f47bu+YI10D7Eezfruc/pXitYnSF5SBcFDsmPRjtOk9uIM3lPZRYR4SYcAksu7WHz85MRGry8A9Wz0f9btymPC6TWIwPHMvdxQDIGv0oiBq29M6OO2GoA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toradex.com; dmarc=pass action=none header.from=toradex.com;
 dkim=pass header.d=toradex.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=toradex.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hYpTI11WUhk8i2wGRu8ScNZf5lmon5LgE9t3hmjZgAk=;
 b=co6vSdm60JpYBYyf8hw84aMXCsHh7NBs3gLJPXardEI2ht5Ugb7emAnlTVBt+Z5KxRdpwvT5cI+WCDoeJ+q6D/xomPlEZLqkThxYgNLSKZ0o8NSFXne3V6uqKMlkea5NnAT6aNHm+Aa7z6aPirLSn46xUb7UCMff+oVLE5xrvU0=
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com (10.170.238.24) by
 VI1PR05MB6495.eurprd05.prod.outlook.com (20.179.24.146) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.18; Wed, 19 Feb 2020 13:00:49 +0000
Received: from VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52]) by VI1PR05MB3279.eurprd05.prod.outlook.com
 ([fe80::c14f:4592:515f:6e52%7]) with mapi id 15.20.2729.032; Wed, 19 Feb 2020
 13:00:49 +0000
Received: from localhost (194.105.145.90) by
 PR0P264CA0146.FRAP264.PROD.OUTLOOK.COM (2603:10a6:100:1b::14) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2750.17 via Frontend Transport; Wed, 19 Feb 2020 13:00:48 +0000
From: Oleksandr Suvorov <oleksandr.suvorov@toradex.com>
To: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: [PATCH v2 0/3] Add Aster carrier board support for Colibri iMX7 CoM
Thread-Topic: [PATCH v2 0/3] Add Aster carrier board support for Colibri iMX7
 CoM
Thread-Index: AQHV5ySb67pU5Yy2iEe/NYkAPxlyFA==
Date: Wed, 19 Feb 2020 13:00:48 +0000
Message-ID: <20200219130043.3563238-1-oleksandr.suvorov@toradex.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: PR0P264CA0146.FRAP264.PROD.OUTLOOK.COM
 (2603:10a6:100:1b::14) To VI1PR05MB3279.eurprd05.prod.outlook.com
 (2603:10a6:802:1c::24)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=oleksandr.suvorov@toradex.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 2.24.1
x-originating-ip: [194.105.145.90]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2690287d-b7cb-41ae-4b6f-08d7b53bbdd5
x-ms-traffictypediagnostic: VI1PR05MB6495:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR05MB6495CA840B6FE1E5EFFB527FF9100@VI1PR05MB6495.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:983;
x-forefront-prvs: 0318501FAE
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(366004)(189003)(199004)(16526019)(52116002)(26005)(71200400001)(8936002)(186003)(8676002)(81166006)(6496006)(81156014)(7416002)(44832011)(6916009)(6486002)(1076003)(4326008)(86362001)(956004)(5660300002)(64756008)(66446008)(498600001)(66556008)(2906002)(2616005)(66476007)(36756003)(66946007)(54906003);
 DIR:OUT; SFP:1102; SCL:1; SRVR:VI1PR05MB6495;
 H:VI1PR05MB3279.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: toradex.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9Vs3rJp0bmttjUpkBiYmxhRy53QZoZVSsH3OlyZii5/vUxM2RaHVY6Tg6UVQjRwOG6QFOfWw2NqeKF/lqjWmDn1wq83uTEDMtudx6KfNKjq4npVqZQkS9GLqffKDPJpTQW8Bn86nurhNhm2jWy0JVpRgfnsRvfRoyV4Eh1akTqkMpkzW1No4w8T29iefROWwyzaDwqEqjI2xQnRSdo0M4m7tvcgC6lAoi7P2ARjxwlZw3KhVDXjxVWuRbkV2G6twLQ+OuL7JWAeunW19KZhd9s+Apde1vbACg8jW6MrehrlvrSPedX9qAh6cIl7VRZXqkWdHHXm0dreFnbz55Pc+1AGoaCex66OLboLpJcVgVW0/U4pghflhyCnQZ+jGPw7Pou2NW1aG1yhyECMxS+gREolCnHaJO+Upzz9vYJOpM9GVXL+m73hU6rBXvzQ5pexT
x-ms-exchange-antispam-messagedata: xtGxWj/D+BcqZV882KuR8IqATydymRQjECVrx0yD1kRb5gdeXMy03fAx10qOoP4xoJcTfHuDlW5HYBTCvePBZKapnIFDVlhw1rBLXGNkTVbkRBKHNXW9bsJtd0AXVflZkfCmFHsn73+rVYeVs+5ivw==
MIME-Version: 1.0
X-OriginatorOrg: toradex.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2690287d-b7cb-41ae-4b6f-08d7b53bbdd5
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Feb 2020 13:00:49.0044 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d9995866-0d9b-4251-8315-093f062abab4
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: mG0UVUQdCuQ5jXQE55TJQk5oWAcepdcmlI6PIE5Kg41MdLk/0ZGrj+sioD7JmqCc1k949rIWMCl3NXtRmRLiKXcoHKi3cZnK7aU3ThvNS2M=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB6495
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_050055_789091_6164FB15 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Robert Jones <rjones@gateworks.com>,
 Anson Huang <Anson.Huang@nxp.com>,
 Marcel Ziswiler <marcel.ziswiler@toradex.com>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Walle <michael@walle.cc>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Oleksandr Suvorov <oleksandr.suvorov@toradex.com>,
 Philippe Schenker <philippe.schenker@toradex.com>,
 Igor Opanyuk <igor.opanyuk@toradex.com>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This series adds devicetrees for the Toradex Aster board along with
Toradex Computer on Module Colibri iMX7S/iMX7D.

Changes in v2:
- Change X11 license to MIT
- Change X11 license to MIT
- Sort nodes alphabetically
- Document compatibles for an Aster board in the separate commit of
  the series
- Drop the undocumented device (spidev-around work will be sent in
  the separate patchset)

Oleksandr Suvorov (3):
  ARM: dts: imx7-colibri: Convert to SPDX license tags for Colibri iMX7
  dt-bindings: arm: fsl: add nxp based toradex colibri-imx7 bindings
  ARM: dts: imx7-colibri: add support for Toradex Aster carrier board

 .../devicetree/bindings/arm/fsl.yaml          |   3 +
 arch/arm/boot/dts/Makefile                    |   3 +
 arch/arm/boot/dts/imx7-colibri-aster.dtsi     | 169 ++++++++++++++++++
 arch/arm/boot/dts/imx7-colibri-eval-v3.dtsi   |  40 +----
 arch/arm/boot/dts/imx7-colibri.dtsi           |  42 +----
 arch/arm/boot/dts/imx7d-colibri-aster.dts     |  20 +++
 .../arm/boot/dts/imx7d-colibri-emmc-aster.dts |  20 +++
 arch/arm/boot/dts/imx7d-colibri-eval-v3.dts   |  40 +----
 arch/arm/boot/dts/imx7s-colibri-aster.dts     |  15 ++
 arch/arm/boot/dts/imx7s-colibri-eval-v3.dts   |  40 +----
 10 files changed, 238 insertions(+), 154 deletions(-)
 create mode 100644 arch/arm/boot/dts/imx7-colibri-aster.dtsi
 create mode 100644 arch/arm/boot/dts/imx7d-colibri-aster.dts
 create mode 100644 arch/arm/boot/dts/imx7d-colibri-emmc-aster.dts
 create mode 100644 arch/arm/boot/dts/imx7s-colibri-aster.dts

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
